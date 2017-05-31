# Make dist if dir did't exist
mkdir -p dist
# Generate PDF
asciidoctor-pdf draft.adoc
# Merge with cover page
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=dist/memory.pdf resources/cover/cover-page.pdf draft.pdf
# Remove draft
rm draft.pdf
