.PHONY: lua
lua:
	flatc --lua ext-plugin.fbs
	rm -rf lua/A6
	mv A6/ lua/

.PHONY: compiled

.PHONY: java
java:
	flatc --java ext-plugin.fbs
	rm -rf java/A6
	mv A6/ java/

.PHONY: compiled


compiled: lua java
