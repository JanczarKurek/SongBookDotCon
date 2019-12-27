#!/bin/sh
cat "book_template.tex" > "result.lytex"
for song in $(find ./songs/* -type d)
do
  python build_tex_section.py "$song" --title "Title" >> "result.lytex"
done
cat "book_template_end.tex" >> "result.lytex"
