int getNum();

void putNum(int n);

char* getString();

void putString(const char* s);

#define CCONST 7

// This `define` cannot be accessed from Swift, as it depends on another
// `define`.
#define CCONSTDEP (CCONST * 2 + 1)

static char* cStaticFunction() {
    return "String from C static function";
}
