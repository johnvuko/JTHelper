#import <UIKit/UIKit.h>

@interface UIBarButtonItem (JTHelper)

+ (UIBarButtonItem *)barButtonWithImageNamed:(NSString *)imageNamed target:(id)target action:(SEL)action;

@end