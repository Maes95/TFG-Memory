# Make dist if dir did't exist
mkdir -p dist
# Build Bibliography
ruby utils/buildBibliography.rb draft.adoc draft-B.adoc
# Generate PDF
asciidoctor-pdf -r ./rouge_themes/custom.rb draft-B.adoc
# Merge with cover page
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=dist/memory.pdf resources/cover/cover-page.pdf draft-B.pdf
# Remove draft
rm draft-B.pdf
rm draft-B.adoc
