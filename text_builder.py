import argparse as arg

parser = arg.ArgumentParser(description="Build text for lily")
parser.add_argument('filename', type=str, nargs=1, help='File with text')

filename = parser.parse_args().filename[0]

songlines = []
with open(filename, mode='r') as f:
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

def build_line(s):
    return tab(3) + "\\line{{{}}}\n".format(s)

def build_verse(v):
    return "".join(build_line(l) for l in v)

def build_column(vs):
    text = (tab(3) + "\\vspace #.5\n").join(build_verse(v) for v in vs)
    return tab(2) + "\\column {{\n{}".format(text) + tab(2) + "}"

text = verses
fst = text[:len(text) // 2]
scd = text[len(text) // 2:]

print("\\markup {")
print(tab(1) + "\\fill-line {")
print(tab(2) + "\\hspace #1")
print(build_column(fst))
print(tab(2) + "\\hspace #2")
print(build_column(scd))
print(tab(2) + "\\hspace #1")
print(tab(1) + "}")
print("}")
