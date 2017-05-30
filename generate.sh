# Generate PDF
asciidoctor-pdf -a pdf-fontsdir=resources/fonts draft.adoc
# Merge with cover page
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=memory.pdf resources/cover/cover-page.pdf draft.pdf
