//  rewrite of
//  PersonXYZ
#import <Foundation/Foundation.h>

@interface PersonXYZ:NSObject
@property NSString *firstName;
@property NSString *lastName;
@property NSDate *dateOfBirth;
- (void) saySomething:(NSString *)input;
- (void) sayHello;
- (void) sayGoodbye;
+ (id) person;
@end

@implementation PersonXYZ
-(void) saySomething:(NSString *)input {
    NSLog(@"%@", input);
}
- (void) sayHello {
    [self saySomething:@"Hello!"];
}
-(void) sayGoodbye {
    [self saySomething:@"Goodbye!"];
}
+(id) person {
    return [[self alloc] init];
}
@end
