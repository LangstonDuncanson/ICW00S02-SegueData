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
@property (weak, nonatomic) IBOutlet UILabel *heightFtInLbl;
@property (weak, nonatomic) IBOutlet UILabel *heightMetersLbl;

@end

@implementation DisplayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _fNameLbl.text = _userData.getFName;
    _lNameLbl.text = _userData.getLName;
    int feet, inches;
    feet = [_userData.getHeight intValue] / 12;
    inches = [_userData.getHeight intValue] % 12;
    _heightFtInLbl.text = [NSString stringWithFormat:@"%d feet and %d inches",feet,inches];
    _heightMetersLbl.text = [NSString stringWithFormat:@"is %.2f meters",[_userData convertToMeters]];
    
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
