#!/bin/bash

# --- Einfaches if/else ---
ALTER=20

if [ $ALTER -ge 18 ]; then
    echo "Volljährig."
else
    echo "Minderjährig."
fi

# --- elif: Note bewerten ---
NOTE=2

echo ""
if [ $NOTE -eq 1 ]; then
    echo "Note $NOTE – Sehr gut!"
elif [ $NOTE -eq 2 ]; then
    echo "Note $NOTE – Gut."
elif [ $NOTE -eq 3 ]; then
    echo "Note $NOTE – Befriedigend."
elif [ $NOTE -le 5 ]; then
    echo "Note $NOTE – Ausreichend oder schlechter."
else
    echo "Ungültige Note."
fi

# --- String-Vergleich ---
SPRACHE="Bash"

echo ""
if [ "$SPRACHE" = "Bash" ]; then
    echo "Du lernst gerade $SPRACHE – super!"
else
    echo "Unbekannte Sprache: $SPRACHE"
fi

# --- case-Anweisung ---
TAG="Montag"

echo ""
case $TAG in
    Montag|Dienstag|Mittwoch|Donnerstag|Freitag)
        echo "$TAG ist ein Werktag."
        ;;
    Samstag|Sonntag)
        echo "$TAG ist ein Wochenendtag."
        ;;
    *)
        echo "Unbekannter Tag: $TAG"
        ;;
esac
