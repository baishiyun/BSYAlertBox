# BSYAlertBox
BSYAlertBox 是一款多功能提示控件，支持居中/居左/居右/居上/居下等显示，具体可以看实现样例，可以自定义背景颜色/字体颜色等，希望大家喜欢并Star支持。现在已经支持cocoapods安装。具体方法使用如下：



-(void)btnClicCenter
{


    [[BSYAlertBox shareAlertBox] showCenterAlertBoxWithText:@"给个Star呗😂😂😂😂😂😂😂😂😂😂"];

}

-(void)btnClicLeft
{

    [[BSYAlertBox shareAlertBox] showLeftAlertWithText:@"😂😂😂😂"];

}

-(void)btnClicBottom
{

    [[BSYAlertBox shareAlertBox] showBottomAlertWithText:@"提示错误❌❌❌❌❌❌❌❌❌❌" During:2 textColor:[UIColor redColor] bgColor:[UIColor orangeColor]];

}



-(void)btnClicRight
{
    [[BSYAlertBox shareAlertBox] showRightAlertWithText:@"给个Star呗"];

}

-(void)btnClicTop
{

     [[BSYAlertBox shareAlertBox] showTopAlertWithText:@"给个Star呗 ⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️！！！！" During:2 textColor:[UIColor redColor] bgColor:[UIColor yellowColor]];

}


