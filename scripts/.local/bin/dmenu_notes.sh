NOTES_FILE=$HOME/.notes.txt

# Ensure the notes file exists.
touch $NOTES_FILE

cat $NOTES_FILE | dmenu -l 10 -p "Enter Note" >> $NOTES_FILE
