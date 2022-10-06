PROJECT=utb_template
PACK=zip_name


${PROJECT}.pdf: ${PROJECT}.ps
	ps2pdf -sPAPERSIZE=a4 $^

${PROJECT}.ps: ${PROJECT}.dvi
	dvips $^

${PROJECT}.dvi: ${PROJECT}.tex
	latex $(PROJECT).tex
	make bib
	latex $(PROJECT).tex
	latex $(PROJECT).tex

bib: ${PROJECT}.bib
	bibtex ${PROJECT}
all:
	make ${PROJECT}.pdf
pack:
	zip $(PACK)-utb.zip -r *.tex *.bst *bib Makefile bibstyles images

clean: 
	rm -rf ./$(PROJECT).{aux,dvi,log,pdf,ps,out,bbl,blg,fdb_latexmk,fls,synctex.gz,toc}
