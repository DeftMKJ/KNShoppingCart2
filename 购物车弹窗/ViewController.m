//
//  ViewController.m
//  购物车弹窗
//
//  Created by 宓珂璟 on 16/6/23.
//  Copyright © 2016年 宓珂璟. All rights reserved.
//
//
//Exception: Defaults must have been set when accessing options
//fter the addition, the following questions arise: ld: 1 duplicate symbol for architecture x86_64 clang: error: linker command failed with exit code 1 (use -v to see invocation)

#import "ViewController.h"
#import "ChooseGoodsPropertyViewController.h"
#import "UIViewController+KNSemiModal.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (nonatomic,strong) ChooseGoodsPropertyViewController *chooseVC;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickIamge:)];
    self.imageView.userInteractionEnabled = YES;
    [self.imageView addGestureRecognizer:tap];
}

- (void)clickIamge:(UITapGestureRecognizer *)tap
{
    
    if (!self.chooseVC)
    {
        self.chooseVC = [[ChooseGoodsPropertyViewController alloc] init];
    }
    

    self.chooseVC.price = 256.0f;
    [self.navigationController presentSemiViewController:self.chooseVC withOptions:@{
                                                               KNSemiModalOptionKeys.pushParentBack    : @(YES),
                                                               KNSemiModalOptionKeys.animationDuration : @(2.0),
                                                               KNSemiModalOptionKeys.shadowOpacity     : @(0.3),
                                                               KNSemiModalOptionKeys.backgroundView : [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background_01"]]
                                                               }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
