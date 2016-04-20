print("number from C to Swift:", getNum())

putNum(31)

print(String(cString: getString()))

"String from Swift to C".withCString { cstr in
   putString(cstr)
};

print("char[] from C to Swift: ", name)

print(CCONST)
// print(CCONSTDEP) // compile error, cannot resolve

print(String(cStaticFunction()))

var i: CInt = 42
functionThatNeedsAPointer(&i)
print(i)

print(CStruct(value: 1, anotherValue: 42))

print(ConnectionError(0))

var aInt = UnsafeMutablePointer<CInt>(allocatingCapacity: 1)
aInt.initialize(with: 0, count: 1)
aInt[0] = 42
print(aInt[0])
print(aInt.pointee)
aInt.deallocateCapacity(1)
