//
//  YFAboutUsViewController.m
//  BigShow1949
//
//  Created by 杨帆 on 15-9-4.
//  Copyright (c) 2015年 BigShowCompany. All rights reserved.
//

#import "YFAboutUsViewController.h"

@interface YFAboutUsViewController ()

@end

@implementation YFAboutUsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"关于我们";
    self.view.backgroundColor = [UIColor whiteColor];
    
}

- (void)viewWillAppear:(BOOL)animated {

    [super viewWillAppear:animated];
    
    UITextView *aboutUs = [[UITextView alloc] init];
    NSString *viewText = @"     突然想总结点东西, 所以搞了个QQ群, 一起写一个APP, 涵盖主要知识点、动画、小项目,亦可成为开发者手中的速查手册。请加群:148279151(iOS高手在民间)";
    aboutUs.editable = NO;
    aboutUs.backgroundColor = [UIColor lightGrayColor];
    aboutUs.frame = CGRectMake(0, 0, 300, 350);
    aboutUs.center = CGPointMake(YFScreen.width/2, YFScreen.height/2);
    [self.view addSubview:aboutUs];
    
    // 设置行间距
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineSpacing = 10;
    NSDictionary *attributes = @{
                                 NSFontAttributeName:[UIFont systemFontOfSize:18],
                                 NSParagraphStyleAttributeName:paragraphStyle
                                 };
    aboutUs.attributedText = [[NSAttributedString alloc] initWithString:viewText attributes:attributes];
    
}


@end
