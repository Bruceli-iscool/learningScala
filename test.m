#import <Foundation/Foundation.h>

@interface Person : NSObject
// Objective-C types requires * before variable name (i think because they are pointers?)
@property NSString *firstName;
@property NSString *lastName;
@property NSNumber *age;
// same purpose as above, but simpler
@property int yearOfBirth;
@end

int main(void) {
    return 0;
}