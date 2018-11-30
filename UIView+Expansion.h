
#import <UIKit/UIKit.h>

@interface UIView (Expansion)
- (CGRect)getRelativeFrame;
-(CGFloat)getHeight;
-(CGFloat)getWidth;
-(CGFloat)getX;
-(CGFloat)getY;
-(CGFloat)getTop;
-(CGFloat)getBottom;
-(CGFloat)getLeft;
-(CGFloat)getRight;
-(void)setHeight:(CGFloat)height;
-(void)setWidth:(CGFloat)width;
-(void)setX:(CGFloat)x;
-(void)setY:(CGFloat)y;
-(CGFloat)getCenterY;
-(CGFloat)getCenterX;
-(void)setCenterY:(CGFloat)y;
-(void)setCenterX:(CGFloat)x;
@end
