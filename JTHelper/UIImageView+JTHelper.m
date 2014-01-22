#import "UIImageView+JTHelper.h"

@implementation UIImageView (JTHelper)

+ (UIImageView *)imageNamed:(NSString *)imageNamed
{
    return  [[UIImageView alloc] initWithImage:[UIImage imageNamed:imageNamed]];
}

@end