#!/bin/bash

# Funkcja do losowego rozdzielenia linii pliku źródłowego do dwóch plików wyjściowych
randomly_split_lines() {

if [ "$#" -lt 3 ]; then
    echo "Podaj co najmniej 3 argumenty: plik_źródłowy plik_wyjściowy1 plik_wyjściowy2"
    exit 1
fi

    src_file="$1"
    dest_file1="$2"
    dest_file2="$3"

    # Sprawdzenie czy plik źródłowy istnieje i czy jest czytelny
    if [ ! -r "$src_file" ]; then
        echo "Brak dostępu do pliku źródłowego lub plik nie istnieje."
        exit -1
    fi

    # Sprawdzenie i/lub utworzenie plików wyjściowych
    for file in "$dest_file1" "$dest_file2"; do
        if [ ! -e "$file" ]; then
            touch "$file" || { echo "Nie można utworzyć pliku $file."; exit -1; }
        fi

        # Sprawdzenie czy plik wyjściowy jest zapisywalny
        if [ ! -w "$file" ]; then
            echo "Brak uprawnień do zapisu do pliku $file."
            exit -1
        fi

        # Wyczyść zawartość pliku
        : > "$file" || { echo "Nie można wyczyścić zawartości pliku $file."; exit -1; }
    done

    # Losowe rozdzielenie linii do plików wyjściowych
    while IFS= read -r line; do
        random=$((RANDOM % 2))
        if [ "$random" -eq 0 ]; then
            echo "$line" >> "$dest_file1"
        else
            echo "$line" >> "$dest_file2"
        fi
    done < "$src_file"
}
create_directory_structure() {
if [ "$#" -ne 2 ]; then
    echo "Podaj 2 argumenty: ścieżka_do_katalogu plik_z_listą_katalogów"
    exit 1
fi

    directory="$1"
    file_list="$2"

    # Sprawdzenie czy ścieżka wskazuje na katalog
    if [ ! -d "$directory" ]; then
        echo "Podana ścieżka nie wskazuje na istniejący katalog."
        exit -1
    fi

    # Sprawdzenie czy jest możliwość zapisu do katalogu
    if [ ! -w "$directory" ]; then
        echo "Brak uprawnień do zapisu w podanym katalogu."
        exit -1
    fi

    # Sprawdzenie czy plik z listą katalogów istnieje i czy jest czytelny
    if [ ! -r "$file_list" ]; then
        echo "Brak dostępu do pliku z listą katalogów lub plik nie istnieje."
        exit -1
    fi

    # Przechodzenie przez plik z listą katalogów i tworzenie struktury
    while IFS= read -r dir_name || [ -n "$dir_name" ]; do
        new_directory="$directory/$dir_name"

        # Tworzenie podkatalogów
        mkdir -p "$new_directory" || { echo "Nie można utworzyć katalogu $new_directory."; exit -1; }

        # Utworzenie 10 plików w każdym nowym katalogu
        for ((i = 0; i < 10; i++)); do
            touch "$new_directory/F$i" || { echo "Nie można utworzyć pliku $new_directory/F$i."; exit -1; }
        done
    done < "$file_list"
}

# Wywołanie funkcji z argumentami przekazanymi do skryptu
#create_directory_structure "$@"



# Wywołanie funkcji z argumentami przekazanymi do skryptu
randomly_split_lines "$@"
