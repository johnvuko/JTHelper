#import "UIBarButtonItem+JTHelper.h"
#import "JTHelper.h"

@implementation UIBarButtonItem (JTHelper)

+ (UIBarButtonItem *)barButtonWithImageNamed:(NSString *)imageNamed target:(id)target action:(SEL)action
{
    UIImage *image = [UIImage imageNamed:imageNamed];
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMakeWithSize(image.size)];
    
    [button setImage:image  forState:UIControlStateNormal];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[self alloc] initWithCustomView:button];
}

@end
