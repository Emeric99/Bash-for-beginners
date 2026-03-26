#!/bin/bash

# --- Einfache Eingabe ---
echo "=== Benutzerprofil ==="
read -p "Wie heißt du? " NAME

if [ -z "$NAME" ]; then
    echo "Kein Name eingegeben. Abbruch."
    exit 1
fi

echo "Hallo, $NAME!"

# --- Zahleneingabe mit Validierung ---
echo ""
read -p "Wie alt bist du? " ALTER

# Prüfen ob Zahl
if ! [[ "$ALTER" =~ ^[0-9]+$ ]]; then
    echo "Fehler: Bitte eine gültige Zahl eingeben."
    exit 1
fi

if [ "$ALTER" -lt 18 ]; then
    echo "Du bist minderjährig ($ALTER Jahre)."
elif [ "$ALTER" -ge 18 ] && [ "$ALTER" -le 30 ]; then
    echo "Du bist $ALTER Jahre alt – typisches Studierendenalter!"
else
    echo "Du bist $ALTER Jahre alt."
fi

# --- Ja/Nein-Eingabe ---
echo ""
read -p "Studierst du Informatik? (j/n) " ANTWORT

case "$ANTWORT" in
    j|J|ja|Ja)
        echo "Klasse! Bash ist sehr nützlich für Informatiker."
        ;;
    n|N|nein|Nein)
        echo "Bash ist trotzdem für jeden nützlich!"
        ;;
    *)
        echo "Ungültige Eingabe."
        ;;
esac

# --- Passwort (versteckte Eingabe) ---
echo ""
read -s -p "Gib ein Passwort ein (wird nicht angezeigt): " PASSWORT
echo ""

LAENGE=${#PASSWORT}
if [ $LAENGE -lt 8 ]; then
    echo "Passwort zu kurz ($LAENGE Zeichen). Mindestens 8 empfohlen."
else
    echo "Passwort gesetzt ($LAENGE Zeichen). Sicher!"
fi
