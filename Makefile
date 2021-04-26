.PHONY: lua
lua:
	flatc --lua ext-plugin.fbs
	rm -rf lua/A6
	mv A6/ lua/

.PHONY: compiled
compiled: lua
