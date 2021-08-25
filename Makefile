compiler = /usr/local/bin/pandoc
css = pandoc.css
input = ElvenStar.md
output = index.html
title = 'Elven Star'
compile:
	$(compiler) -s -c $(css) --toc $(input) -o $(output) --metadata title=$(title)