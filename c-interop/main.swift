print("get number from C:", getNum())

putNum(31)

print(String(getString()))

var str = "String from Swift"

str.withCString { cstr in
   putString(cstr)
};

print(CCONST)
// print(CCONSTDEP) // compile error, cannot resolve

print(String(cStaticFunction()))

var i: CInt = 42
functionThatNeedsAPointer(&i)
print(i)
