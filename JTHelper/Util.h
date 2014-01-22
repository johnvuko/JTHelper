#import "NSString+JTHelper.h"
#import "UIColor+JTHelper.h"
#import "UIImageView+JTHelper.h"
#import "UILabel+JTHelper.h"
#import "UILabel.h"

#define CGRectMakeSize(width, height) CGRectMake(0, 0, width, height)
#define CGRectMakeWithSize(size) CGRectMake(0, 0, size.width, size.height)

#define CGRectSetX(frame, x) CGRectMake(x, frame.origin.y, frame.size.width, frame.size.height)
#define CGRectSetY(frame, y) CGRectMake(frame.origin.x, y, frame.size.width, frame.size.height)
#define CGRectSetXY(frame, x, y) CGRectMake(x, y, frame.size.width, frame.size.height)
#define CGRectSetWidth(frame, width) CGRectMake(frame.origin.x, frame.origin.y, width, frame.size.height)
#define CGRectSetHeight(frame, height) CGRectMake(frame.origin.x, frame.origin.y, frame.size.width, height)
#define CGRectSetWidthHeight(frame, width, height) CGRectMake(frame.origin.x, frame.origin.y, width, height)

#define CGRectGetCenter(frame) CGPointMake(frame.size.width / 2., frame.size.height / 2.)

#define NSLogFrame(frame) NSLog(@"%f %f %f %f", frame.origin.x, frame.origin.y, frame.size.width, frame.size.height)

#define appDelegate ((AppDelegate *)[UIApplication sharedApplication].delegate)

#define IS_IOS6 [[UIDevice currentDevice].systemVersion hasPrefix:@"6"]
#define IS_IOS7 [[UIDevice currentDevice].systemVersion hasPrefix:@"7"]

#define SCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width
#define SCREEN_HEIGHT [[UIScreen mainScreen] bounds].size.height