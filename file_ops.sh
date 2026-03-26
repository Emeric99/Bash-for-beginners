#!/bin/bash

DATEI="testdatei.txt"

# --- Datei erstellen und beschreiben ---
echo "=== Datei erstellen ==="
echo "Zeile 1: Hallo aus Bash!" > "$DATEI"
echo "Zeile 2: Bash ist praktisch." >> "$DATEI"
echo "Zeile 3: Dateioperationen sind einfach." >> "$DATEI"

echo "Datei '$DATEI' wurde erstellt."

# --- Datei prüfen ---
echo ""
echo "=== Datei prüfen ==="

if [ -f "$DATEI" ]; then
    echo "Die Datei existiert."
else
    echo "Die Datei existiert nicht."
    exit 1
fi

if [ -r "$DATEI" ]; then
    echo "Die Datei ist lesbar."
fi

if [ -w "$DATEI" ]; then
    echo "Die Datei ist beschreibbar."
fi

# --- Datei lesen ---
echo ""
echo "=== Datei lesen (Zeile für Zeile) ==="
ZEILENNUMMER=1
while IFS= read -r ZEILE; do
    echo "  [$ZEILENNUMMER] $ZEILE"
    ZEILENNUMMER=$((ZEILENNUMMER + 1))
done < "$DATEI"

# --- Zeilenanzahl und Dateigröße ---
echo ""
echo "=== Dateiinfos ==="
ZEILEN=$(wc -l < "$DATEI")
GROESSE=$(wc -c < "$DATEI")
echo "Anzahl Zeilen: $ZEILEN"
echo "Dateigröße:    $GROESSE Bytes"

# --- Text in Datei suchen ---
echo ""
echo "=== Suche nach 'Bash' in der Datei ==="
if grep -q "Bash" "$DATEI"; then
    echo "Das Wort 'Bash' wurde gefunden:"
    grep "Bash" "$DATEI"
fi

# --- Datei löschen ---
echo ""
echo "=== Datei löschen ==="
rm "$DATEI"

if [ ! -f "$DATEI" ]; then
    echo "Datei '$DATEI' wurde erfolgreich gelöscht."
fi
