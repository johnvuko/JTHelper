#import "UIColor+JTHelper.h"

@implementation UIColor (JTHelper)

+ (UIColor *)colorWithIntegerRed:(CFLoat)red green:(CFLoat)green blue:(CFLoat)blue
{
    return [UIColor colorWithRed:red green:green blue:blue alpha:1.];
}

+ (UIColor *)colorWithIntegerRed:(CFLoat)red green:(CFLoat)green blue:(CFLoat)blue alpha:(CFLoat)alpha
{
    return [UIColor colorWithRed:(red./256.) green:(green./256.) blue:(blue./256.) alpha:alpha];
}

@end