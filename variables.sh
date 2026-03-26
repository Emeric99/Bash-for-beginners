#!/bin/bash

# --- String-Variablen ---
VORNAME="Anna"
NACHNAME="Müller"
VOLLER_NAME="$VORNAME $NACHNAME"

echo "Name: $VOLLER_NAME"

# --- Zahlen-Variablen ---
ALTER=22
STUDIUMSJAHR=4

echo "Alter: $ALTER"
echo "Semester: $STUDIUMSJAHR"

# --- Arithmetik ---
SUMME=$((ALTER + STUDIUMSJAHR))
echo "Alter + Semester = $SUMME"

# --- Konstante (readonly) ---
readonly HOCHSCHULE="Hochschule Bremerhaven"
echo "Hochschule: $HOCHSCHULE"

# --- Umgebungsvariablen ---
echo ""
echo "Aktueller Benutzer: $USER"
echo "Home-Verzeichnis:   $HOME"
echo "Aktuelles Verzeichnis: $PWD"

# --- String-Länge ---
TEXT="Informatik"
echo ""
echo "Das Wort '$TEXT' hat ${#TEXT} Buchstaben."
