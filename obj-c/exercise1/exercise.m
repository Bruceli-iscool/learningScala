#import <Foundation/Foundation.h>

@interface XYZPerson:NSObject
@property NSString *firstName;
@property NSString *lastName;
@property NSDate *dateOfBirth;
+(XYZPerson *)person;
-(void) sayHello;    
-(void) sayThanks;
-(void) saySomething:(NSString*)greeting;
@end 
@interface XYZScreamingPerson:XYZPerson
-(void) saySomething:(NSString*)greeting;
@end
@implementation XYZPerson 
+(XYZPerson *) person {
    return [[self alloc] init];
}
-(void) sayHello {
    [self saySomething:@"Hello!"];
}
-(void) sayThanks {
    [self saySomething:@"Thanks!"];
}
-(void) saySomething:(NSString*)greeting {
    NSLog(@"%@", greeting);
}
@end
@implementation XYZScreamingPerson
-(void) saySomething:(NSString*)greeting {
    [super saySomething:[greeting uppercaseString]];
}
@end
int main(void) {
    @autoreleasepool {
        XYZPerson *g = [XYZPerson person];
        [g sayHello];
        XYZScreamingPerson *s = [[XYZScreamingPerson alloc] init];
        [s saySomething:@"Hello!"];
    }
    return 0;
}