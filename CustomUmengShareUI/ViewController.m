//
//  ViewController.m
//  分享样式
//  联系开发者:QQ154158462
//  Created by chen on 15/6/4.
//  Copyright (c) 2015年 Gorpeln. All rights reserved.
//

#import "ViewController.h"
#import "ActionSheetView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *shareStyle1=[[UIButton alloc]initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 100)];
    shareStyle1.backgroundColor=[UIColor cyanColor];
    [shareStyle1 setTitle:@"分享样式一" forState:UIControlStateNormal];
    [shareStyle1 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [shareStyle1 addTarget:self action:@selector(shareStyle1BtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:shareStyle1];
    
    
    
    UIButton *shareStyle2=[[UIButton alloc]initWithFrame:CGRectMake(0, 300, self.view.frame.size.width, 100)];
    shareStyle2.backgroundColor=[UIColor yellowColor];
    [shareStyle2 setTitle:@"分享样式二" forState:UIControlStateNormal];
    [shareStyle2 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [shareStyle2 addTarget:self action:@selector(shareStyle2BtnClick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:shareStyle2];
    
    
}

-(void)shareStyle1BtnClick{
    
    NSArray *titlearr = @[@"微信朋友圈",@"微信好友",@"QQ",@"QQ空间",@"新浪微博",@"复制链接"];
    NSArray *imageArr = @[@"wechatquan",@"wechat",@"tcentQQ",@"tcentkongjian",@"sinaweibo",@"copyUrl"];
    
    ActionSheetView *actionsheet = [[ActionSheetView alloc] initWithShareHeadOprationWith:titlearr andImageArry:imageArr andProTitle:@"测试" and:ShowTypeIsShareStyle];
    [actionsheet setBtnClick:^(NSInteger btnTag) {
        
        if (btnTag==0) {
            //分享代码
        }else if (btnTag==1){
            
        }else if (btnTag==2){
            
        }else if (btnTag==3){
            
        }else if (btnTag==4){
            
        }else{
            //将内容复制到剪贴板
            UIPasteboard *pastboad = [UIPasteboard generalPasteboard];
            pastboad.string = @"需要复制的网址 如：http://blog.csdn.net/chen_gp_x";
        }
        
        
        
        
        
        NSLog(@"点击第==%ld==个 当前选中的按钮是====%@",btnTag,titlearr[btnTag]);
        
    }];
    [[UIApplication sharedApplication].keyWindow addSubview:actionsheet];
    
    
}
-(void)shareStyle2BtnClick{
    
    NSArray *titlearr = @[@"微信朋友圈",@"微信好友",@"微信朋友圈",@"微信好友"];
    
    ActionSheetView *actionsheet = [[ActionSheetView alloc] initWithShareHeadOprationWith:titlearr andImageArry:@[] andProTitle:@"" and:ShowTypeIsActionSheetStyle];
    
    actionsheet.otherBtnFont=15;
    
    [actionsheet setBtnClick:^(NSInteger btnTag) {
        
        NSLog(@"点击第==%ld==个 当前选中的按钮是====%@",btnTag,titlearr[btnTag]);
        
    }];
    [[UIApplication sharedApplication].keyWindow addSubview:actionsheet];
    
}

@end
