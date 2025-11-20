//  rewrite of
//  PersonXYZ
#import <Foundation/Foundation.h>

@interface PersonXYZ:NSObject
@property NSString *firstName;
@property NSString *lastName;
@property NSDate *dateOfBirth;
- (void) sayHello;
+ (id) person;
@end

@implementation PersonXYZ
- (void) sayHello {
    NSLog(@"Hello!");
}

@end
