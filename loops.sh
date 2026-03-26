#!/bin/bash

# --- for-Schleife über eine Liste ---
echo "Lieblingsfächer:"
for FACH in Mathematik Algorithmen Betriebssysteme Datenbanken; do
    echo "  - $FACH"
done

# --- for-Schleife mit Zahlenbereich ---
echo ""
echo "Countdown:"
for i in {5..1}; do
    echo "  $i..."
done
echo "  Start!"

# --- while-Schleife ---
echo ""
echo "While-Schleife (1 bis 5):"
ZAHL=1
while [ $ZAHL -le 5 ]; do
    echo "  Zahl: $ZAHL"
    ZAHL=$((ZAHL + 1))
done

# --- until-Schleife ---
echo ""
echo "Until-Schleife (zählt bis 3):"
ZAEHLER=0
until [ $ZAEHLER -ge 3 ]; do
    echo "  Zähler: $ZAEHLER"
    ZAEHLER=$((ZAEHLER + 1))
done

# --- break und continue ---
echo ""
echo "Gerade Zahlen von 1 bis 10 (mit continue):"
for i in {1..10}; do
    if [ $((i % 2)) -ne 0 ]; then
        continue   # ungerade Zahlen überspringen
    fi
    echo "  $i"
done
