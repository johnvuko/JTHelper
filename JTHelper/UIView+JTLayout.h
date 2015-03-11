#import <UIKit/UIKit.h>

typedef void (^jt_UpdateLayoutBlock)(void);

@interface UIView (JTLayout)

- (void)jt_updateLayout;

- (void)jt_setUpdateLayoutBlock:(jt_UpdateLayoutBlock)updateLayoutBlock;
- (jt_UpdateLayoutBlock)jt_updateLayoutBlock;

@end
