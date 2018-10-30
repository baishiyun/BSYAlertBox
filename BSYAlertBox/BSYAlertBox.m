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


+(BSYAlertBox *)shareAlertBox
{
    static BSYAlertBox *sharedManager;

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [[BSYAlertBox alloc] init];
    });
    return sharedManager;
}



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
}
/**
 居中显示
 */
-(void)showCenterAlertBoxWithText:(NSString *)text
{
     CGFloat TextWith = [self CalculateFileLengthWithText:text];
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
-(void)showTopAlertWithText:(NSString *)text
{
     CGFloat TextWith = [self CalculateFileLengthWithText:text];
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
-(void)showBottomAlertWithText:(NSString *)text
{
     CGFloat TextWith = [self CalculateFileLengthWithText:text];
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
-(void)showLeftAlertWithText:(NSString *)text
{

    CGFloat TextWith = [self CalculateFileLengthWithText:text];
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
-(void)showRightAlertWithText:(NSString *)text
{

    CGFloat TextWith = [self CalculateFileLengthWithText:text];
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
-(void)showCenterAlertBoxWithText:(NSString *)text During:(CGFloat)during textColor:(UIColor *)textColor bgColor:(UIColor *)bgColor
{

     CGFloat TextWith = [self CalculateFileLengthWithText:text];
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
-(void)showTopAlertWithText:(NSString *)text During:(CGFloat)during textColor:(UIColor *)textColor bgColor:(UIColor *)bgColor
{

     CGFloat TextWith = [self CalculateFileLengthWithText:text];
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
-(void)showBottomAlertWithText:(NSString *)text During:(CGFloat)during textColor:(UIColor *)textColor bgColor:(UIColor *)bgColor
{

    CGFloat TextWith = [self CalculateFileLengthWithText:text];
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
-(void)showLeftAlertWithText:(NSString *)text During:(CGFloat)during textColor:(UIColor *)textColor bgColor:(UIColor *)bgColor
{

    CGFloat TextWith = [self CalculateFileLengthWithText:text];
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
-(void)showRightAlertWithText:(NSString *)text During:(CGFloat)during textColor:(UIColor *)textColor bgColor:(UIColor *)bgColor
{

    CGFloat TextWith = [self CalculateFileLengthWithText:text];
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

/**
计算文本长度

 @param text 文本
 @return 返回文本宽度
 */
-(CGFloat )CalculateFileLengthWithText:(NSString *)text
{

    [self hiden];
    CGFloat TextWith = [self sizeWithText:text Font:[UIFont systemFontOfSize:16]].width+40;
    if (TextWith<100.0) {
        TextWith = 100.0;
    }
    if (TextWith>=[UIScreen mainScreen].bounds.size.width) {
        TextWith =[UIScreen mainScreen].bounds.size.width-20;
    }
    return TextWith;

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
