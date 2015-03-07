#import "UITextField+JTHelper.h"
#import "JTHelper.h"

@implementation UITextField (JTHelper)

- (CGFloat)heightToFit
{
    if(NSSTRING_IS_BLANK(self.text)){
        return 0.;
    }
    
    NSAttributedString *attributedText = [[NSAttributedString alloc]
                                          initWithString:self.text
                                          attributes:@{ NSFontAttributeName: self.font }];
    
    CGRect rect = [attributedText boundingRectWithSize:(CGSize){ self.frame.size.width, CGFLOAT_MAX }
                                        options:NSStringDrawingUsesLineFragmentOrigin
                                        context:nil];

    return rect.size.height;
}

- (void)setHeightToFit
{
    self.frame = CGRectSetHeight(self.frame, [self heightToFit]);
}

- (CGFloat)widthToFit
{
    if(NSSTRING_IS_BLANK(self.text)){
        return 0.;
    }

    CGSize size = [self.text sizeWithAttributes:@{ NSFontAttributeName:self.font }];
    return size.width;
}

- (void)setWidthToFit
{
    self.frame = CGRectSetWidth(self.frame, [self widthToFit]);
}

@end
