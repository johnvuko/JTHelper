#import "UIView+TapGesture.h"

@implementation UIView (TapGesture)

- (UITapGestureRecognizer *)addTapGestureWithTarget:(id)target action:(SEL)action
{
    self.userInteractionEnabled = YES;
    UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc] initWithTarget:target action:action];
    [self addGestureRecognizer:gesture];

    return gesture;
}

@end
