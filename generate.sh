# Generate PDF
asciidoctor-pdf -a pdf-stylesdir=resources/themes draft.adoc
# Merge with cover page
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=memory.pdf cover/cover-page.pdf draft.pdf
