compiler = /usr/local/bin/pandoc
css = pandoc.css
input = ElvenStar.md
output = index.html
title = 'Elven Star'
git:
	$(compiler) -s -c $(css) --toc $(input) -o $(output) --metadata title=$(title)
	git add -A
	git commit -m "$m"
	git push -u origin master
