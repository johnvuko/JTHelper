#import "UILabel+JTHelper.h"

@implementation UILabel (JTHelper)

- (void)setWidthToFit
{
    if(self.text == nil || [self.text isBlank]){
        self.frame = CGRectSetWidth(self.frame, 0);
        return;
    }

    CGSize size = CGSizeZero;
    
    if(IS_IOS7){
        size = [self.text sizeWithAttributes:@{ NSFontAttributeName:self.font }];
    }
    else{
       size = [self.text sizeWithFont:self.font];
    }
    
    self.frame = CGRectSetWidth(self.frame, size.width);
}

- (void)setHeightToFit
{
    if(self.text == nil || [self.text isBlank]){
        self.frame = CGRectSetHeight(self.frame, 0);
        return;
    }
    
    NSAttributedString *attributedText = [[NSAttributedString alloc]
                                          initWithString:self.text
                                          attributes:@{ NSFontAttributeName: self.font }];
    
    CGRect rect = [attributedText boundingRectWithSize:(CGSize){ self.frame.size.width, CGFLOAT_MAX }
                                        options:NSStringDrawingUsesLineFragmentOrigin
                                        context:nil];

    self.frame = CGRectSetHeight(self.frame, rect.size.height);
}

@end
