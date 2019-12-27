import argparse as arg
import os.path as path

parser = arg.ArgumentParser(description="Build songbook page")
parser.add_argument('songdir', type=str, nargs=1, help='Directory with songdata')
parser.add_argument('--title', type=str, nargs=1, help='Title of song')

args = parser.parse_args()
songdir = args.songdir[0]
textfile = path.join(songdir, "text.txt")
sheetfile = path.join(songdir, "sheet.ly")

songlines = []
with open(textfile, mode='r') as f:
    for line in f:
        songlines.append(line)

def split_list(l, el):
    kek = []
    for x in l:
        if x == el:
            yield kek
            kek = []
        else:
            kek.append(x)
    if len(kek):
        yield kek

songlines = [l.rstrip() for l in songlines]
verses = list(split_list(songlines, ""))

tabb = "  "

def tab(n):
    return "".join(tabb for i in range(n))

def gen_line(l):
    return tab(1) + l + " \\\\\n"

def gen_verse(v):
    return "".join(gen_line(l) for l in v)

def gen_song(vs):
    return "\n".join(gen_verse(v) for v in vs)

print("\\clearpage")
print("\\invisiblesection{{{}}}".format(args.title[0]))
print("\\lilypondfile{{{}}}".format(sheetfile))
print("\\vspace{5mm}")
print("\\begin{multicols}{2}")
print("{")
print(tab(1) + "\\setlength{\\parindent}{0cm}")
print(tab(1) + "\\begin{samepage}")
print(gen_song(verses))
print(tab(1) + "\\end{samepage}")
print("}")
print("\\end{multicols}")
