# BSYAlertBox
BSYAlertBox 是一款多功能提示控件，支持居中/居左/居右/居上/居下等显示，具体可以看实现样例，可以自定义背景颜色/字体颜色等，希望大家喜欢并Star支持。现在已经支持cocoapods安装。具体方法使用如下：


-(void)btnClicBottom
{


    //自定义背景颜色/字体颜色/显示时间的方法
//    [[BSYAlertBox alloc]initBottomAlertWithText:@"提示错误❌❌❌❌❌❌❌❌❌❌" During:2 textColor:[UIColor redColor] bgColor:[UIColor orangeColor]];
    //默认方法
    [[BSYAlertBox alloc] initBottomAlertWithText:@"提示错误❌❌❌❌❌❌❌❌❌❌"];

}


-(void)btnClicCenter
{


//    [[BSYAlertBox alloc]initCenterAlertBoxWithText:@"给个Star呗😂😂😂😂😂😂😂😂😂😂" During:2 textColor:[UIColor redColor] bgColor:[UIColor brownColor]];
    [[BSYAlertBox alloc] initCenterAlertBoxWithText:@"给个Star呗😂😂😂😂😂😂😂😂😂😂"];

}

-(void)btnClicLeft
{


    //        [[BSYAlertBox alloc]initLeftAlertWithText:@"给个Star呗😂😂😂😂😂😂😂😂😂😂" During:2 textColor:[UIColor redColor] bgColor:[UIColor brownColor]];
    [[BSYAlertBox alloc] initLeftAlertWithText:@"😂😂😂😂"];

}



-(void)btnClicRight
{


    //[[BSYAlertBox alloc]initRightAlertWithText:@"给个Star呗😂😂😂😂😂😂😂😂😂😂" During:2 textColor:[UIColor redColor] bgColor:[UIColor brownColor]];
    [[BSYAlertBox alloc] initRightAlertWithText:@"给个Star呗"];

}

-(void)btnClicTop
{

     [[BSYAlertBox alloc]initTopAlertWithText:@"给个Star呗 ⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️！！！！" During:2 textColor:[UIColor redColor] bgColor:[UIColor yellowColor]];
//    [[BSYAlertBox alloc] initTopAlertWithText:@"给个Star呗😂😂😂😂😂😂😂😂😂😂"];

}
