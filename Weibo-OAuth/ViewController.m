//
//  ViewController.m
//  Weibo-OAuth
//
//  Created by 杨建亚 on 15/1/13.
//  Copyright (c) 2015年 Dwarven. All rights reserved.
//

#import "ViewController.h"
#import "WeiboAccess.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)login:(id)sender {
    [_textView setText:@""];
    [[WeiboAccess defaultAccess] login:^(BOOL succeeded, id object) {
        if (succeeded) {
            [_textView setText:[NSString stringWithFormat:@"%@",object]];
        }else{
            if (WeiboStatusCodeAuthDeny == [object[WEIBO_STATUS_CODE] integerValue]) {
                [_textView setText:@"sso package or sign error"];
            }
        }
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
