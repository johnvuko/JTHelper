#import "UIColor+JTHelper.h"

@implementation UIColor (JTHelper)

+ (UIColor *)colorWithIntegerRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue
{
    return [UIColor colorWithIntegerRed:red green:green blue:blue alpha:1.];
}

+ (UIColor *)colorWithIntegerRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha
{
    return [UIColor colorWithRed:(red / 256.) green:(green / 256.) blue:(blue / 256.) alpha:alpha];
}

@end