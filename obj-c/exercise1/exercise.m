#import <Foundation/Foundation.h>

@interface XYZPerson:NSObject
@property NSString *firstName;
@property NSString *lastName;
@property NSDate *dateOfBirth;
-(void) sayHello;
-(void) factory;    
@end 
int main(void) {
    return 0;
}