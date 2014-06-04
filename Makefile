#
# See the COPYING file for license information
#

preview:
	mkdir -p tmp
	xmlto -o tmp html *.xml
	firefox ./tmp/index.html

publish:
	git checkout gh-pages
	git merge master
	xmlto html *.xml
	git add *.html
	git commit -m'publishing it'
	git push
	git checkout master
