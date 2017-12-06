//
//  ViewController.m
//  CustomShareUI
//
//  Created by chen on 2014/12/6.
//  Copyright © 2017年 Gorpeln. All rights reserved.
//

/*********************************************************
 *  gitHub  :  https://github.com/GorpelnChen            *
 *********************************************************/


#import "ViewController.h"
#import "GPActionSheetView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *shareStyleOne=[[UIButton alloc]initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 100)];
    shareStyleOne.backgroundColor=[UIColor cyanColor];
    [shareStyleOne setTitle:@"shareStyleOne" forState:UIControlStateNormal];
    [shareStyleOne setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [shareStyleOne addTarget:self action:@selector(shareStyleOneClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:shareStyleOne];
    
    
    UIButton *shareStyleTwo=[[UIButton alloc]initWithFrame:CGRectMake(0, 300, self.view.frame.size.width, 100)];
    shareStyleTwo.backgroundColor=[UIColor yellowColor];
    [shareStyleTwo setTitle:@"shareStyleTwo" forState:UIControlStateNormal];
    [shareStyleTwo setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [shareStyleTwo addTarget:self action:@selector(shareStyleTwoClick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:shareStyleTwo];
    
}

-(void)shareStyleOneClick{
    
    NSArray *titlearr = @[@"微信朋友圈",@"微信好友",@"QQ",@"QQ空间",@"新浪微博",@"复制链接"];
    NSArray *imageArr = @[@"wechatquan",@"wechat",@"tcentQQ",@"tcentkongjian",@"sinaweibo",@"copyUrl"];
    
    GPActionSheetView *actionsheet = [[GPActionSheetView alloc] initWithShareHeadOprationWith:titlearr andImageArry:imageArr andProTitle:@"测试" and:GPShowTypeIsShareStyle];
    [actionsheet setBtnClick:^(NSInteger btnTag) {
        
        
        switch (btnTag) {
            case 5:{
                //将内容复制到剪贴板
                UIPasteboard *pastboad = [UIPasteboard generalPasteboard];
                pastboad.string = @"需要复制的网址 如：http://blog.csdn.net/chen_gp_x";
            }
                break;
            default:
                break;
        }

        NSLog(@"点击第==%ld==个 当前选中的按钮是====%@",btnTag,titlearr[btnTag]);
        
    }];
    [[UIApplication sharedApplication].keyWindow addSubview:actionsheet];
    
    
}
-(void)shareStyleTwoClick{
    
    NSArray *titlearr = @[@"微信朋友圈",@"微信好友",@"微信朋友圈",@"微信好友"];
    
    GPActionSheetView *actionsheet = [[GPActionSheetView alloc] initWithShareHeadOprationWith:titlearr andImageArry:@[] andProTitle:@"" and:GPShowTypeIsActionSheetStyle];
    
    actionsheet.otherBtnFont=15;
    
    [actionsheet setBtnClick:^(NSInteger btnTag) {
        
        NSLog(@"点击第==%ld==个 当前选中的按钮是====%@",btnTag,titlearr[btnTag]);
        
    }];
    [[UIApplication sharedApplication].keyWindow addSubview:actionsheet];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
