#!/bin/bash

create_word_statistics() {
if [ "$#" -ne 2 ]; then
    echo "Podaj 2 argumenty: ścieżka_do_pliku_źródłowego ścieżka_do_pliku_docelowego"
    exit 1
fi

src_file="$1"
    dest_file="$2"

    # Sprawdzenie czy plik źródłowy istnieje i czy masz prawo do odczytu
    if [ ! -r "$src_file" ]; then
        echo "Brak dostępu do pliku źródłowego lub plik nie istnieje."
        exit -1
    fi

    # Sprawdzenie czy plik docelowy istnieje
    if [ -e "$dest_file" ]; then
        # Sprawdzenie czy masz prawa do zapisu do pliku docelowego
        if [ ! -w "$dest_file" ]; then
            echo "Brak uprawnień do zapisu do pliku docelowego."
            exit -1
        fi
    else
        # Sprawdzenie czy możesz utworzyć plik docelowy
        touch "$dest_file" || { echo "Nie można utworzyć pliku docelowego."; exit -1; }
    fi

    # Zliczanie wystąpień wyrazów
    declare -A word_count
    while IFS=' ' read -ra words; do
        for word in "${words[@]}"; do
            word="${word,,}"  # Zamiana na małe litery (dla zliczania słów bez uwzględnienia wielkości liter)
            word_count["$word"]=$((word_count["$word"] + 1))
        done
    done < "$src_file"

    # Sortowanie i zapis statystyki wyrazów do pliku docelowego
    {
        for word in "${!word_count[@]}"; do
            echo "$word ${word_count[$word]}"
        done | sort -rn -k2
    } > "$dest_file"
}

# Wywołanie funkcji z argumentami przekazanymi do skryptu
create_word_statistics "$@"
