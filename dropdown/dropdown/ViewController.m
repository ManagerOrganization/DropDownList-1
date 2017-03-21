//
//  ViewController.m
//  dropdown
//
//  Created by 国金 on 17/3/21.
//  Copyright © 2017年 sj. All rights reserved.
//

#import "ViewController.h"
#import "DropDown.h"
@interface ViewController ()
@property(nonatomic,strong)DropDown *dropDown;
@end

@implementation ViewController

- (void)viewDidLoad{
    
    [super viewDidLoad];
    
    _dropDown = [[DropDown alloc]initWithFrame:CGRectMake(80, self.view.bounds.size.height*0.5-70,self.view.bounds.size.width-160, self.view.bounds.size.height- 200)];
    
    NSArray *ar = @[@"1000",@"2000",@"3000",@"4000",@"5000",@"10000",@"20000",@"30000"];
    
    _dropDown.tableArray = ar;
    
    [self.view addSubview:_dropDown];
    
}

- (void)touchesBegan:(NSSet*)touches withEvent:(UIEvent *)event {
    
    [_dropDown resignFirstResponder];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
