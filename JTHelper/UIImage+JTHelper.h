#import <UIKit/UIKit.h>

@interface UIImage (JTHelper)

+ (UIImage *)imageWithColor:(UIColor *)color;
- (UIImage *)resize:(CGSize)size;

@end