//
//  NewsViewController.m
//  News List
//
//  Created by admin on 15.03.2021.
//

#import "NewsViewController.h"

@interface NewsViewController ()

@end

@implementation NewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = _viewTitle;
    self.view.backgroundColor = [UIColor whiteColor];
    
    CGRect ViewFrame = CGRectMake(0.0, 0.0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    UIView *view = [[UIView alloc] initWithFrame: ViewFrame];
    view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview: view];
}

#pragma mark - Navigation

@end
