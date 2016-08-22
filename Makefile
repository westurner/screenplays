
# Makefile for a Jekyll site

# When run as just 'make', build the HTML from markdown w/ Jekyll
default: build

JEKYLLBASEURL="/screenplays/"
JEKYLLOPTS=
#JEKYLLOPTS=--baseurl=""

clean:
	rm -rf ./_site/

build:
	# Build HTML from markdown w/ Jekyll
	jekyll build -V $(JEKYLLOPTS)

serve:
	# Auto-rebuild HTML from markdown w/ Jekyll and serve
	jekyll serve $(JEKYLLOPTS)
	#x-www-browser http://localhost:4000/

open:
	web "http://localhost:4000$(JEKYLLBASEURL)"

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
	# dnf install -y ruby-devel || apt-get install -y ruby-dev
	# gem install github-pages # jekyll
	gem install bundler
	bundle install
