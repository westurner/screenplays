
# Makefile for a Jekyll site

# When run as just 'make', build the HTML from markdown w/ Jekyll
default: build

clean:
	rm -rf ./_site/

build:
	# Build HTML from markdown w/ Jekyll
	jekyll build

serve:
	# Auto-rebuild HTML from markdown w/ Jekyll and serve
	jekyll serve
	#x-www-browser http://localhost:4000/

pull:
	# Pull latest changes from origin gh-pages branch
	git pull origin gh-pages

push:
	# Push changes to origin gh-pages branch
	git push origin gh-pages

env:
	# Copy the virtualenvwrapper postactivate script into place
	cp postactivate.sh $(_BIN)/postactivate
	cat $(_BIN)/postactivate
	bash -c 'source $(_BIN)/postactivate'

install:
	# Install jekyll
	gem install jekyll