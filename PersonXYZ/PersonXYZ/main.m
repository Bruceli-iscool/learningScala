#import <Foundation/Foundation.h>
#import "PersonXYZ.m"
#import "XYZScreamingPerson.m"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        PersonXYZ *person = [PersonXYZ person];
        XYZScreamingPerson *screamPerson = [[XYZScreamingPerson alloc] init];
        [person sayHello];
        [person saySomething:@"My favorite color is blue."];
        [screamPerson saySomething:@"I like to scream!"];
        [person sayGoodbye];
    }
    return 0;
}
