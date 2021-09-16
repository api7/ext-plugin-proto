.PHONY: lua
lua:
	flatc --lua ext-plugin.fbs
	rm -rf lua/A6
	mv A6/ lua/

.PHONY: java
java:
	flatc --java ext-plugin.fbs
	rm -rf java/io.github.api7.A6
	mv A6/ java/io.github.api7.A6/
	find . -name "*.java" | xargs sed -i 's/A6/io.github.api7.A6/g'

.PHONY: go
go:
	flatc --go ext-plugin.fbs
	rm -rf go/A6
	mv A6/ go/
	find . -name "*.go" | xargs sed -i 's|"A6"|"github.com/api7/ext-plugin-proto/go/A6"|g'

.PHONY: python
python:
	flatc --python ext-plugin.fbs
	rm -rf python/a6
	mv A6/ python/a6

.PHONY: python-release
python-release:
	cd python && \
	python setup.py sdist && \
	python setup.py sdist upload && \
	rm -rf a6pluginprotos* dist

.PHONY: compiled
compiled: lua java go python
