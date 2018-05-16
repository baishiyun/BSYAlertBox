//
//  BSYAlertBox.m
//  BSYAlertBoxDemo
//
//  Created by 白仕云 on 2018/5/16.
//  Copyright © 2018年 BSY.com. All rights reserved.
//

#define DefalutTime 1.5

#define DefalutTextColor [UIColor blackColor]


#define DefalutBGColor  [UIColor grayColor]

#define DefalutBgViewAlignment ViewAlignmentCenter



#import "BSYAlertBox.h"
@interface BSYAlertBox()
@property (nonatomic ,strong) UILabel *centerText;
@end
@implementation BSYAlertBox

-(void)show
{
    [UIView beginAnimations:@"show" context:NULL];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView setAnimationDuration:0.3];
    self.centerText.alpha = 1.0f;
    [UIView commitAnimations];
}

-(void)hiden{
    [UIView beginAnimations:@"hiden" context:NULL];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView setAnimationDuration:0.3];
    self.centerText.alpha = 0.0f;
    [UIView commitAnimations];
    [self.centerText removeFromSuperview];
}
/**
 居中显示
 */
-(void)initCenterAlertBoxWithText:(NSString *)text
{
    CGFloat TextWith = [self sizeWithText:text Font:[UIFont systemFontOfSize:16]].width+40;
    if (TextWith<100.0) {
        TextWith = 100.0;
    }
    if (TextWith>=[UIScreen mainScreen].bounds.size.width) {
        TextWith =[UIScreen mainScreen].bounds.size.width-20;
    }
    UIWindow *window = [[[UIApplication sharedApplication] windows] lastObject];
    self.centerText.text = text;
    self.centerText.frame = CGRectMake(0, 0, TextWith, 40);
    self.centerText.center = window.center;
    [window addSubview:_centerText];
    [self show];
    [self performSelector:@selector(hideAnimation) withObject:nil afterDelay:DefalutTime];
}

/**
 隐藏提示
 */
-(void)hideAnimation
{
    [self hiden];
}

/**
 居上显示
 */
-(void)initTopAlertWithText:(NSString *)text
{
    CGFloat TextWith = [self sizeWithText:text Font:[UIFont systemFontOfSize:16]].width+40;
    if (TextWith<100.0) {
        TextWith = 100.0;
    }
    if (TextWith>=[UIScreen mainScreen].bounds.size.width) {
        TextWith =[UIScreen mainScreen].bounds.size.width-20;
    }
    UIWindow *window = [[[UIApplication sharedApplication] windows] lastObject];
    self.centerText.text = text;
    self.centerText.frame = CGRectMake(0, 0, TextWith, 40);
    self.centerText.center = CGPointMake(window.center.x, 44);
    [window addSubview:_centerText];
     [self show];
    [self performSelector:@selector(hideAnimation) withObject:nil afterDelay:DefalutTime];

}


/**
 居下显示
 */
-(void)initBottomAlertWithText:(NSString *)text
{
    CGFloat TextWith = [self sizeWithText:text Font:[UIFont systemFontOfSize:16]].width+40;
    if (TextWith<100.0) {
        TextWith = 100.0;
    }
    if (TextWith>=[UIScreen mainScreen].bounds.size.width) {
        TextWith =[UIScreen mainScreen].bounds.size.width-20;
    }
    UIWindow *window = [[[UIApplication sharedApplication] windows] lastObject];
    self.centerText.text = text;
    self.centerText.frame = CGRectMake(0, 0, TextWith, 40);
    self.centerText.center = CGPointMake(window.center.x, [UIScreen mainScreen].bounds.size.height-80);
    [window addSubview:_centerText];
    [self performSelector:@selector(hideAnimation) withObject:nil afterDelay:DefalutTime];

}

/**
 居左显示
 */
-(void)initLeftAlertWithText:(NSString *)text
{

    CGFloat TextWith = [self sizeWithText:text Font:[UIFont systemFontOfSize:16]].width+40;
    if (TextWith<100.0) {
        TextWith = 100.0;
    }
    if (TextWith>=[UIScreen mainScreen].bounds.size.width) {
        TextWith =[UIScreen mainScreen].bounds.size.width-20;
    }
    UIWindow *window = [[[UIApplication sharedApplication] windows] lastObject];
    self.centerText.text = text;
    self.centerText.frame = CGRectMake(0, 0, TextWith, 40);
    self.centerText.center = CGPointMake(20+TextWith/2.0, window.center.y);
    [window addSubview:_centerText];
     [self show];
    [self performSelector:@selector(hideAnimation) withObject:nil afterDelay:DefalutTime];
}
/**
 居右显示
 */
-(void)initRightAlertWithText:(NSString *)text
{

    CGFloat TextWith = [self sizeWithText:text Font:[UIFont systemFontOfSize:16]].width+40;
    if (TextWith<100.0) {
        TextWith = 100.0;
    }
    if (TextWith>=[UIScreen mainScreen].bounds.size.width) {
        TextWith =[UIScreen mainScreen].bounds.size.width-20;
    }
    UIWindow *window = [[[UIApplication sharedApplication] windows] lastObject];
    self.centerText.text = text;
    self.centerText.frame = CGRectMake(0, 0, TextWith, 40);
    self.centerText.center = CGPointMake([UIScreen mainScreen].bounds.size.width-(20+TextWith/2.0), window.center.y);
    [window addSubview:_centerText];
     [self show];
    [self performSelector:@selector(hideAnimation) withObject:nil afterDelay:DefalutTime];
}

/**
 居中显示
 @param during 显示时间
 */
-(void)initCenterAlertBoxWithText:(NSString *)text During:(CGFloat)during textColor:(UIColor *)textColor bgColor:(UIColor *)bgColor
{

    CGFloat TextWith = [self sizeWithText:text Font:[UIFont systemFontOfSize:16]].width+40;
    if (TextWith<100.0) {
        TextWith = 100.0;
    }
    if (TextWith>=[UIScreen mainScreen].bounds.size.width) {
        TextWith =[UIScreen mainScreen].bounds.size.width-20;
    }
    UIWindow *window = [[[UIApplication sharedApplication] windows] lastObject];
    self.centerText.text = text;
    self.centerText.textColor = textColor?textColor:DefalutTextColor;
    self.centerText.backgroundColor =bgColor?bgColor:DefalutBGColor;
    self.centerText.frame = CGRectMake(0, 0, TextWith, 40);
    self.centerText.center = CGPointMake(window.center.x, window.center.y);
    [window addSubview:_centerText];
     [self show];
    [self performSelector:@selector(hideAnimation) withObject:nil afterDelay:during];

}

/**
 居上显示
 @param during 显示时间
 */
-(void)initTopAlertWithText:(NSString *)text During:(CGFloat)during textColor:(UIColor *)textColor bgColor:(UIColor *)bgColor
{
    CGFloat TextWith = [self sizeWithText:text Font:[UIFont systemFontOfSize:16]].width+40;
    if (TextWith<100.0) {
        TextWith = 100.0;
    }
    if (TextWith>=[UIScreen mainScreen].bounds.size.width) {
        TextWith =[UIScreen mainScreen].bounds.size.width-20;
    }
    UIWindow *window = [[[UIApplication sharedApplication] windows] lastObject];
    self.centerText.text = text;
    self.centerText.textColor = textColor?textColor:DefalutTextColor;
    self.centerText.backgroundColor =bgColor?bgColor:DefalutBGColor;
    self.centerText.frame = CGRectMake(0, 0, TextWith, 40);
    self.centerText.center = CGPointMake(window.center.x, 44);
    [window addSubview:_centerText];
     [self show];
    [self performSelector:@selector(hideAnimation) withObject:nil afterDelay:during];

}

/**
 居下显示
 @param during 显示时间
 */
-(void)initBottomAlertWithText:(NSString *)text During:(CGFloat)during textColor:(UIColor *)textColor bgColor:(UIColor *)bgColor
{
    CGFloat TextWith = [self sizeWithText:text Font:[UIFont systemFontOfSize:16]].width+40;
    if (TextWith<100.0) {
        TextWith = 100.0;
    }
    if (TextWith>=[UIScreen mainScreen].bounds.size.width) {
        TextWith =[UIScreen mainScreen].bounds.size.width-20;
    }
    UIWindow *window = [[[UIApplication sharedApplication] windows] lastObject];
    self.centerText.text = text;
    self.centerText.textColor = textColor?textColor:DefalutTextColor;
    self.centerText.backgroundColor =bgColor?bgColor:DefalutBGColor;
    self.centerText.frame = CGRectMake(0, 0, TextWith, 40);
    self.centerText.center = CGPointMake(window.center.x,[UIScreen mainScreen].bounds.size.height-80);
    [window addSubview:_centerText];
     [self show];
    [self performSelector:@selector(hideAnimation) withObject:nil afterDelay:during];

}


/**
 居左显示
 @param during 显示时间
 */
-(void)initLeftAlertWithText:(NSString *)text During:(CGFloat)during textColor:(UIColor *)textColor bgColor:(UIColor *)bgColor
{
    CGFloat TextWith = [self sizeWithText:text Font:[UIFont systemFontOfSize:16]].width+40;
    if (TextWith<100.0) {
        TextWith = 100.0;
    }
    if (TextWith>=[UIScreen mainScreen].bounds.size.width) {
        TextWith =[UIScreen mainScreen].bounds.size.width-20;
    }
    UIWindow *window = [[[UIApplication sharedApplication] windows] lastObject];
    self.centerText.text = text;
    self.centerText.textColor = textColor?textColor:DefalutTextColor;
    self.centerText.backgroundColor =bgColor?bgColor:DefalutBGColor;
    self.centerText.frame = CGRectMake(0, 0, TextWith, 40);
    self.centerText.center = CGPointMake(20,window.center.y);
    [window addSubview:_centerText];
     [self show];
    [self performSelector:@selector(hideAnimation) withObject:nil afterDelay:during];


}

/**
 居右显示
 @param during 显示时间
 */
-(void)initRightAlertWithText:(NSString *)text During:(CGFloat)during textColor:(UIColor *)textColor bgColor:(UIColor *)bgColor
{
    CGFloat TextWith = [self sizeWithText:text Font:[UIFont systemFontOfSize:16]].width+40;
    if (TextWith<100.0) {
        TextWith = 100.0;
    }
    if (TextWith>=[UIScreen mainScreen].bounds.size.width) {
        TextWith =[UIScreen mainScreen].bounds.size.width-20;
    }
    UIWindow *window = [[[UIApplication sharedApplication] windows] lastObject];
    self.centerText.text = text;
    self.centerText.textColor = textColor?textColor:DefalutTextColor;
    self.centerText.backgroundColor =bgColor?bgColor:DefalutBGColor;
    self.centerText.frame = CGRectMake(0, 0, TextWith, 40);
    self.centerText.center = CGPointMake([UIScreen mainScreen].bounds.size.width-(20+TextWith/2.0),window.center.y);
    [window addSubview:_centerText];
     [self show];
    [self performSelector:@selector(hideAnimation) withObject:nil afterDelay:during];

}


//返回字符串所占用的尺寸.
-(CGSize)sizeWithText:(NSString *)text Font:(UIFont *)font
{
    NSDictionary *attrs = @{NSFontAttributeName : font};
    return [text boundingRectWithSize:CGSizeMake([UIScreen mainScreen].bounds.size.width, 40) options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
}

-(UILabel *)centerText
{
    if (!_centerText) {
        _centerText = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 150, 40)];
        _centerText.font = [UIFont systemFontOfSize:16];
        _centerText.backgroundColor =DefalutBGColor;
        _centerText.textColor =DefalutTextColor;
        _centerText.numberOfLines = 0;
        _centerText.lineBreakMode = 0;
        _centerText.textAlignment = NSTextAlignmentCenter;
        _centerText.layer.borderColor  =[UIColor clearColor].CGColor;
        _centerText.layer.borderWidth = 1;
        _centerText.layer.cornerRadius = 20;
        _centerText.layer.masksToBounds = true;
        _centerText.layer.contentsScale = [UIScreen mainScreen].scale;
    }

    return _centerText;
}


@end
