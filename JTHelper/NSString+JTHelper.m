#import "NSString+JTHelper.h"

@implementation NSString (JTHelper)

- (BOOL)isBlank
{
    return [self isEqualToString:@""];
}

@end
