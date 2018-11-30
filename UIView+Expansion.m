

#import "UIView+Expansion.h"

@implementation UIView (Expansion)

-(CGRect)getRelativeFrame {

    BOOL iOS7 = [[[UIDevice currentDevice] systemVersion] floatValue] >= 7;
    
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height;
    if (!iOS7) {
        screenHeight -= 20;
    }
    UIView *view = self;
    CGFloat x = .0;
    CGFloat y = .0;
    while (YES) {
        x += view.frame.origin.x;
        y += view.frame.origin.y;
        view = view.superview;
        if (view == nil) {
            break;
        }
        if ([view isKindOfClass:[UIScrollView class]]) {
            x -= ((UIScrollView *) view).contentOffset.x;
            y -= ((UIScrollView *) view).contentOffset.y;
        }
        if ([view isKindOfClass:[UIWindow class]]) {
            break;
        }
    }
    CGRect r = CGRectMake(x, y, self.frame.size.width, self.frame.size.height);
    return r;
}
-(CGFloat)getHeight
{
    return self.frame.size.height;
}
-(CGFloat)getWidth
{
    return self.frame.size.width;
}
-(CGFloat)getX
{
    return self.frame.origin.x;
}
-(CGFloat)getY
{
    return self.frame.origin.y;
}
-(CGFloat)getCenterY
{
    return self.center.y;
}
-(CGFloat)getCenterX
{
    return self.center.x;
}
-(CGFloat)getTop
{
    return self.frame.origin.y;
}
-(CGFloat)getBottom
{
    return self.frame.origin.y+self.frame.size.height;
}
-(CGFloat)getLeft
{
    return self.frame.origin.x;
}
-(CGFloat)getRight
{
    return self.frame.origin.x+self.frame.size.width;
}
-(void)setHeight:(CGFloat)height
{
    self.frame=CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, height);
}
-(void)setWidth:(CGFloat)width
{
    self.frame=CGRectMake(self.frame.origin.x, self.frame.origin.y, width, self.frame.size.height);
}
-(void)setX:(CGFloat)x
{
    self.frame=CGRectMake(x, self.frame.origin.y, self.frame.size.width, self.frame.size.height);
}
-(void)setY:(CGFloat)y
{
    self.frame=CGRectMake(self.frame.origin.x, y, self.frame.size.width, self.frame.size.height);
}
-(void)setCenterY:(CGFloat)y
{
    self.center = CGPointMake(self.center.x, y);
   
}
-(void)setCenterX:(CGFloat)x
{
    self.center = CGPointMake(x, self.center.y);
    
}


@end
