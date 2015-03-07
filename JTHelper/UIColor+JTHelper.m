#import "UIColor+JTHelper.h"

@implementation UIColor (JTHelper)

+ (UIColor *)colorWithIntegerRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue
{
    return [UIColor colorWithIntegerRed:red green:green blue:blue alpha:1.];
}

+ (UIColor *)colorWithIntegerRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha
{
    return [UIColor colorWithRed:(red / 255.) green:(green / 255.) blue:(blue / 255.) alpha:alpha];
}

@end
