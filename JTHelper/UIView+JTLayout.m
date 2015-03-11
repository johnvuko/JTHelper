#import "UIView+JTLayout.h"

#import <objc/runtime.h>

static void *UIViewJTUpdateLayoutBlock;

@implementation UIView (JTLayout)

- (void)jt_updateLayout
{
    if(!self.superview){
        return;
    }
    
    jt_UpdateLayoutBlock updateLayoutBlock = [self jt_updateLayoutBlock];
    if(updateLayoutBlock){
        updateLayoutBlock();
    }
    
    for(UIView *view in self.subviews){
        [view jt_updateLayout];
    }
}

- (void)jt_setUpdateLayoutBlock:(jt_UpdateLayoutBlock)updateLayoutBlock
{
    objc_setAssociatedObject(self, &UIViewJTUpdateLayoutBlock, updateLayoutBlock, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (jt_UpdateLayoutBlock)jt_updateLayoutBlock
{
    return objc_getAssociatedObject(self, &UIViewJTUpdateLayoutBlock);
}

@end
