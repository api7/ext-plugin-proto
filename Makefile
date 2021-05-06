.PHONY: lua
lua:
	flatc --lua ext-plugin.fbs
	rm -rf lua/A6
	mv A6/ lua/

.PHONY: compiled

.PHONY: java
java:
	flatc --java ext-plugin.fbs
	rm -rf java/io.github.api7.A6
	mv A6/ java/io.github.api7.A6/
	find . -name "*.java" | xargs sed -i 's/A6/io.github.api7.A6/g'

.PHONY: compiled
compiled: lua java
