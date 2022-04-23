#!/bin/sh
read -p " Which Javafx-file do you want to compile and execute: " FILENAME
echo "$FILENAME.java"
javac --module-path ~/Downloads/jvgui/jvfx/javafx-sdk-18.0.1/lib --add-modules javafx.controls,javafx.fxml "$FILENAME.java"
java --module-path ~/Downloads/jvgui/jvfx/javafx-sdk-18.0.1/lib --add-modules javafx.controls,javafx.fxml "$FILENAME"
