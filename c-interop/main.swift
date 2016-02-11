print("get number from C:", getNum())

putNum(31)

print(String.fromCString(getString()))

var a = "String from Swift"

a.withCString { cs in
   putString(cs)
};
