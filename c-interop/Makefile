main: main.swift greet.h libgreet.dylib
	swiftc -import-objc-header greet.h \
		main.swift \
		-L. -lgreet

libgreet.dylib: greet.c greet.h
	clang -dynamiclib $< -o libgreet.dylib

clean:
	rm -rf libgreet.dylib
	rm -rf main
	rm -rf a.out
