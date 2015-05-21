#import "UIImage+JTHelper.h"
#import "JTHelper.h"

@implementation UIImage (JTHelper)

+ (UIImage *)imageWithColor:(UIColor *)color
{
	CGRect rect = CGRectMakeSize(1, 1);

	UIGraphicsBeginImageContextWithOptions(rect.size, NO, [[UIScreen mainScreen] scale]);
	CGContextRef context = UIGraphicsGetCurrentContext();

	CGContextSetFillColorWithColor(context, [color CGColor]);
	CGContextFillRect(context, rect);

	UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();

	return image;
}

- (UIImage *)resize:(CGSize)size
{
    UIImage *resizedImage;

	if(size.height == 0){
		size.height = self.size.height / self.size.width * size.width;
	}
	else if(size.width == 0){
		size.width = self.size.width / self.size.height * size.height;
	}

	UIGraphicsBeginImageContextWithOptions(size, NO, [[UIScreen mainScreen] scale]);
	[self drawInRect:CGRectMakeSize(size.width, size.height)];
	resizedImage = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();

	return resizedImage;
}

@end
