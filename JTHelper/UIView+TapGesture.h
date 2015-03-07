#import <UIKit/UIKit.h>

@interface UIView (TapGesture)

- (UITapGestureRecognizer *)addTapGestureWithTarget:(id)target action:(SEL)action;

@end
