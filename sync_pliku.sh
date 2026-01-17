#!/bin/bash

PLIK="wspoldzielony.txt"

> "$PLIK"

echo "1. [RODZIC] Wpis inicjalizujący" >> "$PLIK"

(
    echo "2. [POTOMEK] Wpis przetwórczy" >> "$PLIK"
) &

PID=$!
wait $PID

echo "3. [RODZIC] Wpis końcowy" >> "$PLIK"

cat "$PLIK"
