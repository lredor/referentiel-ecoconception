#content="../*.md ../strategie/*.md ../equipe/*.md ../ux/*.md ../ui/*.md ../code/*.md ../architecture/*.md"
content="../*.md ../strategie/*.md ../equipe/*.md ../architecture/*.md ../code/*.md ../ux/*.md ../ui/*.md"

pandoc -s $content -o ../output/ebh.html --toc --section-divs --lua-filter styling/pagebreak.lua --lua-filter styling/html-open-links-in-new-tab.lua --lua-filter styling/html-lazy-images.lua --template styling/html-template.html

pandoc -s $content -o ../output/ebh-standalone-content.pdf --columns 55 -H styling/pdf-standalone-latex-options.sty --lua-filter styling/pdf-center-images.lua --lua-filter styling/pdf-table-size.lua --toc

pdflatex -job-name=ebh-standalone -output-directory=../output/ styling/pdf-standalone-merge.tex
