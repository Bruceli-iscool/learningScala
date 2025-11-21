#import <Foundation/Foundation.h>
#import "PersonXYZ.m"

@interface XYZScreamingPerson : PersonXYZ
- (void) saySomething:(NSString *)input;
@end

@implementation XYZScreamingPerson

-(void) saySomething:(NSString *)input {
    [super saySomething:[input uppercaseString]];
}

@end
