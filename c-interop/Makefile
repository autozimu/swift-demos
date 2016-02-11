main: greet.h greet.o main.swift
	swiftc -import-objc-header $^

greet.o: greet.c greet.h
	clang -c $<

clean:
	rm -rf greet.o
	rm -rf main
