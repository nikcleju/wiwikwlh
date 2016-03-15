PANDOC = pandoc
PANDOCMY = pandocmy
IFORMAT = markdown
FLAGS = --standalone --toc --toc-depth=2 --highlight-style pygments --mathml
TEMPLATE = page.tmpl
STYLE = css/style.css

HTML = tutorial.html

# Check if sandbox exists. If it does, then use it instead.
# ifeq ("$(wildcard $(.cabal-sandbox/))","")
ifneq ("$(wildcard $(.cabal-sandbox/))","")
	GHC=ghc -no-user-package-db -package-db .cabal-sandbox/*-packages.conf.d
else
	GHC=ghc
endif

all: html slides

includes: includes.hs
	$(GHC) --make $< ; \

#%.html: %.md includes
#	./includes < $<  \
#	| $(PANDOC) -c $(STYLE) --template $(TEMPLATE) -s -f $(IFORMAT) -t html $(FLAGS) \
#	| sed '/<extensions>/r extensions.html' > $@
#
#%.html: %.md slides.md includes
#	< $<  \
#	$(PANDOC) -c $(STYLE) --template $(TEMPLATE) -s -f $(IFORMAT)+latex_macros -t html+latex_macros $(FLAGS) > $@
html:   tutorial.md slides.md
	cat $< macros.md slides.md | \
	$(PANDOC) -c $(STYLE) --template $(TEMPLATE) -s -f $(IFORMAT)+latex_macros -t html+latex_macros $(FLAGS) > tutorial.html
	cp tutorial.html index.html

%.epub: %.md includes
	./includes < $< | $(PANDOC) -f $(IFORMAT) -t epub $(FLAGS) -o $@

%.pdf: %.md includes
	./includes < $< | $(PANDOC) -c -s -f $(IFORMAT) --latex-engine=xelatex $(FLAGS) -o $@

clean:
	-rm $(CHAPTERS) $(HTML)

slides: 
	$(PANDOC) -s -f $(IFORMAT)+latex_macros -t beamer -o slides.pdf --slide-level 3 --include-in-header macros.md  slides_header.md slides.md

slidestex: 
	$(PANDOC) -s -f $(IFORMAT)+latex_macros -t beamer -o slides.tex --slide-level 3 --include-in-header slides_header.md --include-in-header macros.md  slides_header.md slides.md
	
slidesnative:
	$(PANDOC) -s -f $(IFORMAT)+latex_macros -t native -o slides.txt --slide-level 3 --include-in-header macros.md  slides_header.md slides.md

my: html myslides

myslides: 
	$(PANDOCMY) -s -f $(IFORMAT)+latex_macros -t beamer -o slides.pdf --slide-level 3 --include-in-header macros.md  slides_header.md slides.md
