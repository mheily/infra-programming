preview:
	mkdir -p tmp
	xmlto -o tmp html *.xml
	firefox ./tmp/index.html

publish:
	git checkout gh-pages
	git merge master
	xmlto html *.xml
	git add *.html
	git commit
	git push
	git checkout master
