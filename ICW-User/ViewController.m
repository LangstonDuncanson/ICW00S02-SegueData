//
//  ViewController.m
//  ICW-User
//
//  Created by user on 10/25/17.
//  Copyright © 2017 user. All rights reserved.
//

#import "ViewController.h"
#import "DisplayViewController.h"
#import "UserData.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *fNameTxtField;
@property (weak, nonatomic) IBOutlet UITextField *lNameTxtField;
@property (weak, nonatomic) IBOutlet UITextField *ftTxtField;
@property (weak, nonatomic) IBOutlet UITextField *inTxtField;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_fNameTxtField setDelegate:self];
    [_lNameTxtField setDelegate:self];
    [_inTxtField setDelegate:self];
    [_ftTxtField setDelegate:self];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSNumber*heightInInches = [self convertToInches:_ftTxtField.text andInches:_inTxtField.text];
    DisplayViewController* destination = [segue destinationViewController];
    UserData* userInfo = [[UserData alloc] initWithData:_fNameTxtField.text andLast:_lNameTxtField.text andHeight:heightInInches];
    destination.userData = userInfo;
}
-(NSNumber*)convertToInches:(NSString*)feet andInches:(NSString*)inches{
    return [NSNumber numberWithDouble:((double)([feet doubleValue] * 12)+ [inches doubleValue])];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    if(![touch.view isMemberOfClass:[UITextField class]]) {
        [touch.view endEditing:YES];
    }
}
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    return YES;
}
@end
