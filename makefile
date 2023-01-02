BUILD_D=build/

pdf: projeto.tex
	@ if [ ! -d ${BUILD_D} ]; then \
		mkdir ${BUILD_D};\
	fi
	pdflatex -halt-on-error -output-directory ${BUILD_D} $<

citations:
	bibtex ${BUILD_D}/projeto.aux

# deve existir alguma forma melhor do que ter que fazer isso
clean:
	rm -f ${BUILD_D}*.aux ${BUILD_D}*.log ${BUILD_D}*.dvi ${BUILD_D}*.toc ${BUILD_D}*.idx ${BUILD_D}*.lof ${BUILD_D}*.lot