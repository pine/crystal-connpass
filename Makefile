.PHONY: all test clean

all:
	mkdir -p bin
	crystal build example/event_search.cr -o bin/event_search

test:
	crystal spec

clean:
	rm -rf .crystal
	rm -rf libs
