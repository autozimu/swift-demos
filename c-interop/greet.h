int getNum();

void putNum(int n);

char* getString();

void putString(const char *s);

char name[] = "IAmAString";

#define CCONST 7

// This `define` cannot be accessed from Swift, as it depends on another
// `define`.
#define CCONSTDEP (CCONST * 2 + 1)

static inline char* cStaticFunction() {
    return "String from C static function";
}

void functionThatNeedsAPointer(int *i);

struct CStruct {
    int value;
    int anotherValue;
};

enum ConnectionError {
    ConnectionErrorCouldNotConnect = 0,
    ConnectionErrorDisconnected = 1,
    ConnectionErrorResetByPeer = 2
};

union TestUnion {
    int i;
    float f;
    unsigned char asChar[4];
};
