#import "NSString+JTHelper.h"

@implementation NSString (JTHelper)

- (BOOL)isBlank
{
    return self.length == 0;
}

@end
