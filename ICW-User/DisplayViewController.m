//
//  DisplayViewController.m
//  ICW-User
//
//  Created by user on 10/25/17.
//  Copyright © 2017 user. All rights reserved.
//

#import "DisplayViewController.h"
#import "UserData.h"
@interface DisplayViewController ()
@property (weak, nonatomic) IBOutlet UILabel *fNameLbl;
@property (weak, nonatomic) IBOutlet UILabel *lNameLbl;

@end

@implementation DisplayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _fNameLbl.text = _userData.getFName;
    _lNameLbl.text = _userData.getLName;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
