.PHONY: lua
lua:
	flatc --lua ext-plugin.fbs
	rm -rf lua/A6
	mv A6/ lua/

.PHONY: compiled

.PHONY: java
java:
	flatc --java ext-plugin.fbs
	rm -rf java/com.apiseven.apisix.A6
	mv A6/ java/com.apiseven.apisix.A6/
	find . -name "*.java" | xargs sed -i 's/package A6/package com.apiseven.apisix.A6/g'

.PHONY: compiled
compiled: lua java
