LILY=lilypond

SRCROOT=songs
SRCDIRS=$(shell find $(SRCROOT)/* -type d)
SRCFILES=$(shell find $(SRCROOT)/* -type f)
BUILDROOT=build
BUILDDIRS=$(SRCDIRS:$(SRCROOT)/%=$(BUILDROOT)/%)
BUILDFILES=$(SRCFILES:$(SRCROOT)/%.ly=$(BUILDROOT)/%.pdf)

all: buildtree $(BUILDFILES)

$(BUILDROOT)/%.pdf: $(SRCROOT)/%.ly
	$(LILY) -o $@ $<
	mv $@.pdf $@

buildtree:
	mkdir -p $(BUILDDIRS)

clean:
	rm -rf $(BUILDROOT) 
