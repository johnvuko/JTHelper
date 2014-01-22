#import "UIButton+JTHelper.h"
#import "JTHelper.h"

@implementation UIButton (JTHelper)

- (CGFloat)heightToFit
{
    return [self.titleLabel heightToFit];
}

- (void)setHeightToFit
{
    self.frame = CGRectSetHeight(self.frame, [self heightToFit]);
}

- (CGFloat)widthToFit
{
    return [self.titleLabel widthToFit];
}

- (void)setWidthToFit
{
    self.frame = CGRectSetWidth(self.frame, [self widthToFit]);
}

@end
