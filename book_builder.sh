#!/bin/sh
cat "book_template.tex" > "result.lytex"
for song in $(find ./songs/* -type d)
do
  title=$(echo ${song##*/} | sed 's/_/ /g')
  python build_tex_section.py "$song" --title "$title" >> "result.lytex"
done
cat "book_template_end.tex" >> "result.lytex"
