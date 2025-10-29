#import <Foundation/Foundation.h>

@interface XYZPerson:NSObject
@property NSString *firstName;
@property NSString *lastName;
@property NSDate *dateOfBirth;
-(void) sayHello;    
-(void) saySomething:(NSString*)greeting;
@end 
@implementation XYZPerson 
-(void) sayHello {
    [self saySomething:@"Hello!"];
}
-(void) saySomething:(NSString*)greeting {
    NSLog(@"%@", greeting);
}
@end
int main(void) {
    @autoreleasepool {
        XYZPerson *g = [[XYZPerson alloc] init];
        [g sayHello];
    }
    return 0;
}