#import <Foundation/Foundation.h>

// prefix class names with intials, project name, etc
@interface BLPerson : NSObject
// Objective-C types requires * before variable name only in the declaration of the variable (i think because they are pointers?)
@property NSString *firstName;
@property NSString *lastName;
@property NSNumber *age;
// same purpose as above, but simpler
@property int yearOfBirth;
// readonly property
@property (readonly) NSString *birthName;
// - sign = instance method
-(void) printHello;
-(void) print:(NSString*)str;
// syntax for functions (this example):
-(void) print:(NSString*)str withAnotherNumber:(int)x;
-(int) returnNumber;
// create some initializers
-(id) initWithAge:(NSNumber*)s;
@end
@implementation BLPerson
-(void) printHello {
    // uses the method print in this class to print Hello
    // self is used to call the class method in the class
    [self print:@"Hello"];
}
-(void) print:(NSString*)str {
    // NSLog to print something to the standard output
    NSLog(@"%@",str);
}
-(void) print:(NSString*)str withAnotherNumber:(int)x {
    NSLog(@"%@%d", str,x);
}
-(int) returnNumber {
    return 5;
}
@end
@interface ScreamingPerson:BLPerson
// this class extends the BLPerson class
// left blank because the only method overides a method already defined in BLPerson
@end
@implementation ScreamingPerson
-(void) print:(NSString*)str {
    // screaming people scream in all caps
    NSString *upperStr = [str uppercaseString];
    // use super to call the class that the current class inherits from
    // in this case ScreamingPerson inherits from BLPerson
    [super print:upperStr];
}
@end
int main(void) {
    // autoreleasepool prevents a compiler warning
    @autoreleasepool {
        NSNumber *magicNumber = [[NSNumber alloc] initWithInt:42];
        NSLog(@"%@", magicNumber);
        // two ways to create an instance of a class
        BLPerson *person = [BLPerson alloc];
        BLPerson *p2 = [BLPerson new];
        [p2 print:@"Hello"];
        [person print:@"Hi"];
        NSString *test = @"Hello";
        // uppercaseString converts string to uppercase and [] calls class methods
        NSString *new = [test uppercaseString];
        // @ represents NS types
        NSLog(@"%@", new);
        // lowercaseString converts NSString to lowercase
        NSLog(@"%@", [test lowercaseString]);
    }
    return 0;
}