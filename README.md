# Zadanie Systemy Operacyjne
## Lab1
### Z1.0:

Utwórz skrypt [`createDirs.sh`](createDirs.sh). Nadaj mu prawo do wykonywania (`chmod`). Skrypt powinien przyjmować jeden argument.

1. Utwórz katalog do którego ścieżkę wskazuje pierwszy argument.
2. Przejdź do utworzonego katalogu
3. Wewnątrz katalogu utwórz następującą strukturę folderów/plików:
```
./
├── d1/
│   ├── d1.1/
│   └── t1.txt
├── d2/
│   └── d2.1/
│       └── f1.csv
├── d3/
│   ├── d3.1/
│   └── d3.2/
│       └── f2.csv
├── Aa
├── Bb
└── Cc
```
4. Przenieś plik `t1.txt` do katalogu `d1.1`.
5. Skopiuj plik `f1.csv` do katalogu `d1`
6. Zmień nazwę katalogu `Aa` na `Aa1`
7. Wylistuj katalogi, których nazwy kończą się cyfrą 1 lub 2 (`ls`, `wildcards`).
8. Wyświetl rozmiary katalogów znajdujących się na pierwszym poziomie utworzonego folderu(`du`).

### Z1.1:
Utwórz skrypt [`copyDirTree.sh`](copyDirTree.sh). Nadaj mu prawo do wykonywania. skrypt powinien przyjmować dwa argumenty ($1, $2):
1. Utwórz katalog, ścieżkę do którego wskazuje drugi argument.
2. Skopiuj rekursywnie katalog wskazywany przez pierwszy argument do wcześniej stworzonego
katalogu.
3. Przejdź do wcześniej stworzonego katalogu.
4. Wylistuj jego zawartość (long format)(`ls`).
5. Wyświetl drzewo plików, pokazujące rozmiary plików i katalogów(`tree`).
6. Wyświetl bezwzględną ścieżkę do katalogu, w którym się znajdujesz.
7. Wróć do wcześniejszego katalogu (nie do katalogu o jeden poziom wyżej (`../`). Należy cofnąć operację cd z punktu 3.).
8. Usuń stworzony katalog.

## Lab2

### Z2.0:

Utwórz skrypt [`links.sh`](link.sh). Nadaj mu prawo do wykonywania. skrypt powinien przyjmować jeden argument ($1).

1. Utwórz katalog, ścieżkę do którego wskazuje argument.
2. Wewnątrz katalogu utwórz następującą strukturę katalogów/plików:
```
<tworzony katalog>
├── D1/
├── D2/
│   └── F1.txt
├── D3/
│   └── F1.txt
└── D4/
    └── F1.txt
```
3. W katalogu `<tworzony katalog>/D1/` utwórz dowiązanie symboliczne do pliku `/etc/passwd`
4. Wyświetl bezwzględną ścieżkę do pliku, na który wskazuje utworzone uprzednio dowiązanie
symboliczne (`readlink`).

5. W podkatalogu D2 utwórz twarde dowiązanie do pliku `<tworzony katalog>/D3/F1.txt`. Nazwij dowiązanie `F2.txt`

6. Zmień uprawnienia utworzonego wcześniej dowiązania tak, aby tylko właściciel miał uprawnienia do odczytu i zapisu. Pozostali nie mają dostępu do pliku (nie mogą go ani odczytać ani do niego zapisywać).
7. Zmień grupę dowiązania na users (`chown`).
8. Zmień grupę katalogu `<tworzony katalog>/D3/` na users (`chgrp`).
9. Zmień uprawnienia katalogu `<tworzony katalog>/D3/` tak, aby nie można było do niego wejść (polecenie `cd <tworzony katalog>/D3/` zakończy się błędem). Pozostałe uprawnienia pozostają bez zmian.

10. Zmień uprawnienia katalogu `<tworzony katalog>/D2/` tak, aby nikt nie mógł tworzyć w nim plików i podkatalogów (polecenie `touch <tworzony katalog>/D2/X.txt` zakończy się błędem). Do katalogu można wejść oraz przejrzeć jego zawartość. Pozostałe uprawnienia pozostają bez zmian.

11. Zmień uprawnienia katalogu `<tworzony katalog>/D4/` tak, aby nikt nie mógł przeglądać jego zawartości polecenie `ls <tworzony katalog>/D4/` zakończy się błędem. Do katalogu można wejść, a także stworzyć w nim nowy plik. Pozostałe uprawnienia pozostają bez zmian.
12. Dla folderu `<tworzony katalog>/D4/` ustaw sticky bit. Pozostałe uprawnienia pozostają bez zmian.
13. W katalogu `<tworzony katalog>/D1/` utwórz plik `scr1.sh`. Nadaj prawa do wykonywania dla właściciela i grupy. Pozostali nie mają prawa wykonywać skryptu. Pozostałe uprawnienia
pozostają bez zmian.
14. Dla stworzonego wcześniej pliku ustaw SUID i SGID. Pozostałe uprawnienia pozostają bez zmian.

## Lab3

### Z3.0:
Utwórz skrypt [`txtFileStats.sh`](txtFileStats.sh). Nadaj mu prawo do wykonywania. Skrypt powinien przyjmować dwa argumenty ($1, $2). Pierwszy argument będzie zawierał ścieżkę do pliku tekstowego. Drugi natomiast 'słowo klucz'.

1. Wyświetl sposób kodowania pliku tekstowego (`file`).
2. Wyświetl liczbę linijek pliku tekstowego (`wc`).
3. Wyświetl liczbę wszystkich znaków w pliku tekstowym (`wc`).
4. Wyświetl rozmiar pliku, w sposób łatwo interpretowalny przez człowieka (To znaczy rozmiar podany w B, kB, MB w zależności od dwielkości pliku) (`du`)
5. Wyświetl liczbę linijek, w których występuje 'słowo klucz' w pliku tekstowym (`grep`, `wc`)
    - 'słowo klucz' może być fragmentem innych słów.
6. Wyświetl liczbę linijek, w których 'słowo klucz' nie występuje (`grep`, `wc`)
7. Wyświetl piątą linię pliku tekstowego (`cat`, `head`, `tail`)

### Z3.1:
Utwórz skrypt [`passwdStats.sh`](passwdStats.sh). Nadaj mu prawo do wykonywania. Skrypt przyjmuje jeden argument. Zadaniem skryptu jest wyciągnięcie zadanych informacji z pliku `/etc/passwd` i zapisanie ich do wskazanych plików.

1. Utwórz katalog, ścieżkę do którego wskazuje pierwszy argument.
2. Wyświetl linijkę pliku /etc/passwd, odpowiadającą użytkownikowi, jako który jesteś zalogowany (`whoami`, `grep`). **Nie wpisuj nazwy użytkownika ręcznie.**

3. W utworzonym katalogu zapisz do pliku `F1.csv` użytkowników wraz z nazwą ich katalogu domowego oraz nazwą powłoki/komendy. Listę posortuj zgodnie z odwróconym porządkiem alfabetycznym według nazwy użytkownika (`cut`,`sort`,`cat`).

4. W utworzonym katalogu zapisz do pliku `F2.csv`(w utworzonym katalogu) wszystkie nazwy powłoki/polecenia. Nazwy nie mogą się powtarzać. Wynik posortuj alfabetycznie według ostatniej litery w nazwie powłoki/polecenia (`rev`,`uniq`,`sort`).

5. Zapisz do pliku F3.txt(w utworzonym katalogu) nazwy użytkowników zapisane wielkimi literami (`tr`). To znaczy użytkownik student w pliku zostaje zapsany jako STUDENT

6. Znajdź w pliku linijkę odpowiadającą swojemu użytkownikowi, np. user, student. Do pliku F4.txt wypisz 4 linijki powyżej i poniżej tej linii (`grep`).

7. Użyj polecenia `diff` aby wskazać różnicę pomiędzy /etc/passwd, a F4.txt. Użyj formatu dwukolumnowego. Wynik zapisz do pliku `differences.txt`

## Lab4

### Z4.0:

Utworz skrypt [`search.sh`](search.sh). Nadaj mu prawo do wykonywania. Skrypt powinien przyjmować dwa argumenty ($1,$2). Pierwszy argument będzie zawierał ścieżke folderu, który zamierzamy przeszukać. Drugi natomiast ścieżkę do folderu docelowego. **Wszystkie operacje wyszukiwania mają odwoływać się do folderu, ściężkę do którego przechowuje pierwszy argument**

<h4 style="text-align: center;">Każde podzadanie należy wykonać za pomocą jednogo polecenia <code>find</code>!</h4>

1. Utwórz katalog, scieżkę do którego wskazuje drugi argument.
2. Wyszukaj pliki o rozszerzeniu `.txt`.
3. Wyszukaj wszystkie dowiązania symboliczne.
4. Wyszukaj pliki, które mają ustawione uprawnienia do wykonywania i roszerzenie .sh.
5. Wyszukaj katalogi którech nazwy zaczynają się od `A` lub `a` lub `D` lub `d`.
6. Wyszukaj puste pliki, któych właścicielem jest `user`.
7. Wyszukaj pliki należące do grupy `users`, których rozmiar jest większy niż 1MB.
8. Wyszukaj pliki, które zostały zmodyfikowane w ciągu ostatniej godziny.
9. Wyszukaj foldery z ustawionym sticky bit.
10. Wyszukaj wszystkie pliki wykonywalne, które mają ustawione SUID lub SGID.
11. W katalogu `/dev/` znajdź urządzenia blokowe lub urządzenia znakowe.
12. Znajdź i usuń wszystkie puste katalogi (flaga `exec`)
13. Znajdź pliki o rozmiarze przekraczającym 10MB i przenieś je do katalogu wskazywanego przez argument **$2** (flaga `exec`)
14. Znajdź wszystkie katalogi, których nazwa zaczyna się od Z i skopiuje je (rekursywnie) do katalogu wskazywanego przez argument **$2** (flaga `exec`)

## Lab5

### Z5.0:

Utwórz skrypt [`textSearch1.sh`](textSearch1.sh). Nadaj mu prawo do wykonywania. Skrypt powinien przyjmować jeden argument ($1). Argument będzie zawierał ścieżkę od pliku, który zamierzamy przeszukiwać. Wszystkie operacje wyszukiwania mają odwoływać się do wskazanego pliku.
1. Znajdź i wyświetl wszystkie poprawnie zapisane liczby heksadecymalne znajdujące się w pliku.
Jeśli jeden wiersz pliku zawiera kilka liczb, wyświetl je wszystkie. Szczegółowy opis wymagań
stawianych poprawnym liczbom:
    - Liczbę heksadecymalną tworzą cyfry od `0` do `9` oraz litery od `A` do `F`.
    - Liczba może być zapisane także za pomocą małych liter.
    - Liczba rozpoczyna się od sekwencji `0x` np. `0xAB`.
    - Liczby heksadecymalnej nie poprzedza znak `-`, ani `+`.
    - Liczbę może poprzedzać: początek nowej linii, jedna lub wiele spacji
    - Od następnego słowa liczbę może oddzielać jedna lub więcej spacji. Liczba może się także
znajdować na końcu wiersza

2. Znajdź wszystkie poprawnie zdefiniowane adresy e-mail. Jeśli jeden wiersz zawiera więcej
adresów, to wyświetl je wszystkie. Wymagania stawiane poprawnie zdefiniowanym adresom
e-mail (jest to mocno uproszczony opis w stosunku do dokumentu RFC 5322):
    -  Adres e-mail składa się z części lokalnej oraz nazwy domeny. Nazwa lokalna i domena są połączone za pomocą symbolu `@`. Przykładowo `jan.kowalski@pwr.edu.pl`
    -  Część lokalna może zawierać wielkie i małe litery, znaki przestankowe takie jak `. , ; :` , cyfry.
    -  Nazwa domeny może zawierać wielkie i małe litery, kropki, znaki - oraz cyfry.
    -  Nazwa domeny może składać się z co najmniej dwóch członów oddzielonych kropką, np `gmail.com` lub `student.pwr.edu.pl`.
    -  Adres e-mail może być poprzedzony początkiem linii. Może go także poprzedzać jedna lub wiele spacji1
    -  Adres e-mail jest oddzielony od kolejnego słowa za pomocą jednej lub wielu spacji1
3. Znajdź i wyświetl wszystkie poprawnie zapisane liczby zmiennoprzecinkowe znajdujące się
w pliku. Jeśli jeden wiersz pliku zawiera kilka liczb, wyświetl je wszystkie. Szczegółowy opis
wymagań stawianych poprawnym liczbom:
    -  Liczba może rozpoczynać się od znaku `+`, `-` lub może nie być poprzedzona żadnym
znakiem.
    -  Liczbę może poprzedzać: początek nowej linii, jedna lub wiele spacji1
    -  Od następnego słowa liczbę może oddzielać jedna lub więcej spacji. Liczba może się także
znajdować na końcu wiersza1
    -  separatorem dziesiętnym jest znak `.`(kropka).
    -  Dopuszcza się także uproszczony zapis liczb z częćcią całkowitą równą zeru. Przykładowo liczba `0.1` może zostać zapisana jako `.1`

## Lab6

Utwórz skrypt [`arithmetic.sh`](arithmetic.sh). Nadaj mu prawo do wykonywania. Przed przystąpieniem do wykonywania zadań wydaj w terminalu następujące polecenie: `ulimit −u 1000`
Zapobiegnie ono zawieszeniu się systemu przy podaniu nieprawidłowego warunku stopu w funkcji
rekurencyjnej.

### Z6.0
Napisz funkcję przyjmującą dwa argumenty $1 i $2, zwracającą wartość $$\frac{\$1+\$2}{\$1-\$2}$$

- Sprawdź czy mianownik jest różny od zera. Jeśli nie, wyświetl komunikat o błędzie oraz
przerwij wykonanie skryptu, zakończ skrypt kodem błędu −1 (exit -1).
- Funkcja zwraca wynik poprzez wypisanie go na standardowe wyjście (polecenie `echo`).
### Z6.1:
Napisz funkcję obliczającą silnię n! rekurencyjnie.
- Funkcja przyjmuje jeden argument. Sprawdź, czy liczba argumentów jest właściwa. Jeśli nie,
wyświetl komunikat o błędzie oraz przerwij wykonanie skryptu, zakończ skrypt kodem błędu −1 (exit -1).
- Funkcja zwraca wynik poprzez wypisanie go na standardowe wyjście (polecenie `echo`).
### Z6.2
Napsisz funkcję obliczającą silnię n! iteracyjnie.
- Wykorzystaj pętlę for.
- Funkcja przyjmuje jeden argument. Sprawdź, czy liczba argumentów jest właściwa. Jeśli nie,
wyświetl komunikat o błędzie oraz przerwij wykonanie skryptu, zakończ skrypt kodem błędu
−1 (exit -1).
- Funkcja zwraca wynik poprzez wypisanie go na standardowe wyjście (polecenie `echo`).
### Z6.3:
Napisz funkcję obliczającą sumę wszystkich przekazanych argumentów.
- Funkcja przyjmuje dowolną liczbę argumentów (argumenty przechowuje tablica `$@`).
- Funkcja przyjmuje argumenty będące liczbami całkowitymi.
- Funkcja zwraca wynik poprzez wypisanie go na standardowe wyjście (polecenie `echo`).

## Lab7

Utwórz skrypt [`arrays.sh`](arrays.sh). Nadaj mu prawo do wykonywania. W skrypcie umieść rozwiązania
poniższych zadań
### Z7.0
Napisz funkcję dokonującą sortowania bąbelkowego.
-  Funkcja przyjmuje dowolną liczbę argumentów.
-  Przyjmij, że argumenty od $1 i kolejne są liczbami całkowitymi.
-  Utwórz tablicę o nazwie tablica. Wypełnij ją argumentami od $1 począwszy
-  Stworzoną tablicę posortuj za pomocą samodzielnie zaimplementowanego algorytmu sortowa-
nia bąbelkowego **(nie używaj komendy `sort`)**

### Z7.1
Napisz funkcję tworzącą dwuwymiarową tablicę o rozmiarach podanych jako argumenty funkcji.
-  Sprawdź czy argumenty są dodatnie liczbami dodatnimi. Jeśli nie przerwij działanie skryptu
(exit)
-  Do tablicy dwuwymiarowej zapisz ’Tabliczkę mnożenia’. To znaczy pole o indeksie [1][1]
zawiera liczbę 1, pole [1][2] zawiera liczbę 2 itd.
-  Wypisz tablicę dwuwymiarową na standardowy strumień wyjścia.
### Z7.2
Utwórz funkcję dokonującą całkowania numerycznego.
-  Funkcja przyjmuje dowolną liczbę argumentów.
-  Przyjmij, że argumenty od $1 i kolejne są liczbami rzeczywistymi (do wykonania obliczeń
wykorzystaj polecenie `bc`).
-  Przyjmij, że kolejne argumenty zawierają spróbkowane wartości dowolnej funkcji rzeczywistej
w momentach czasowych $$t1 = 1[s], t2 = 2[s], t3 = 3[s], ...$$
-  Oblicz całkę korzystając z metody trapezów.

## Lab8

Utwórz skrypt [`fileOperations.sh`](fileOperations.sh). Nadaj mu prawo do wykonywania.

### Z8.0
Utwórz funkcję, która losowo rozdzieli linie oryginalnego pliku do dwóch plików wyjściowych
-  Ścieżka do pliku źródłowego znajduje się w pierwszym argumencie.
-  Scieżki do plików wyjściowych znajdują się w kolejnych argumentach.
-  Dla każdej linii pliku wejściowego należy podjąć decyzję czy trafi do pierwszego czy do drugiego pliku wyjściowego. Do wygenerowania liczb losowych użyj zmiennej `RANDOM`.
-  sprawdź czy masz prawo do odczytania pliku źródłowego. Jeśli nie wyświetl komunikat błędu
na standardowy strumień błędów oraz zakończ działanie funkcji z kodem błędu -1 (polecenie `exit`).

-  Sprawdź czy pliki docelowe istnieją. Jeżeli nie stwórz je. Jeżeli tak sprawdź czy masz uprawnienia pozwalające na zapisanie danych do tych plików.

-  Jeśli pliki istnieją wyczyść ich zawartość.
### Z8.1:
Utwórz funkcję, która w zadanym katalogu stworzy strukturę podkatalogów i plików
-  Pierwszy argument zawiera ścieżkę do katalogu, w którym będziemy tworzyć kolejne katalogi.

    -  Sprawdź czy ścieżka faktycznie wskazuje na katalog. Jeśli nie wypisz komunikat do strumienia błędów i przerwij wykonanie funkcji.

    -  Sprawdź czy masz prawa do zapisywania do katalogu. Jeśli nie wypisz komunikat do strumienia błędów i przerwij wykonanie funkcji.
-  Drugi argument przechowuje plik, który przechowuje listę katalogów do utworzenia.
    -  Sprawdź czy masz uprawnienia do odczytywania pliku. Jeśli nie wypisz komunikat do strumienia błędów i przerwij wykonanie funkcji.

    -  Plik zawiera jedną nazwę katalogu w jednej linii. Przyjmij, że podane nazwy są prawidłowymi nazwami dla katalogów (nie zawierają niedozwolonych znaków)

-  W każdym z utworzonych podkatalogów utwórz 10 plików nazwanych $$F0, F1,F2, ... ,F9$$

## Lab9

### Z9.0:

Utwórz skrypt [`fileStats.sh`](fileStats.sh). Nadaj mu prawo do wykonywania. 

Napisz funkcję, która stworzy statystykę wyrazów występujących w tekście.
-  Funkcja przyjmuje dwa argumenty.
    -  Pierwszy z nich ($1) zawiera ścieżkę do pliku, dla którego mamy sporządzić statystykę
wyrazów.
    - Drugi z nich ($2) zawiera ścieżkę do pliku, w którym zapiszemy statystykę wyrazów
zawatych w pliku tekstowym.
-  Sprawdź czy plik źródłowy istnieje i czy masz prawo do odczytania go.
    -  Jeśli nie wyświetl komunikat o błędzie, oraz przerwij wykonanie skryptu, zakończ skrypt
kodem błędu −1
-  Sprawdź czy plik docelowy istnieje.
    -  Jeżeli tak, to sprawdź czy masz prawa do zapisywania do pliku. Jeśli nie wyświetl komunikat o błędzie, oraz przerwij wykonanie skryptu, zakończ skrypt kodem błędu −1.
    -  Jeśli nie, sprawdź czy możesz utworzyć plik. Jeśli to możliwe utwórz go, jeśli nie zwróć komunikat błędu i zakończ wykonanie skryptu (kod wyjścia -1).
-  Przyjmij, że separatorem wyrazów jest jeden lub wiele znaków pustych (klasa znaków `[[:blank:]]`)
-  W zliczaniu wyrazów skorzystaj z tablic asocjacyjnych.
-  Statystyka powinna mieć postać dwukolumnowej listy. Pierwsza kolumna zawiera wyraz, a druga liczbę jego wystąpień w tekście. Listę posortuj według malejącej wartości liczby wystąpień.