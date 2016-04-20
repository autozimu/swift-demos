main: main.swift greet.h libgreet.so
	swiftc -import-objc-header greet.h \
		main.swift \
		-L. -lgreet

libgreet.so: greet.c
	clang -fPIC -shared  $< -o libgreet.so

clean:
	rm -rf libgreet.so
	rm -rf main
	rm -rf a.out
