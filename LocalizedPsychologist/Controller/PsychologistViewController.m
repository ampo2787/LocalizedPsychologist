//
//  PsychologistViewController.m
//  Psychologist_03_201402356
//
//  Created by JihoonPark on 2018. 9. 28..
//  Copyright © 2018년 JihoonPark. All rights reserved.
//

#import "PsychologistViewController.h"
#import "HappinessViewController.h"

@interface PsychologistViewController ()

@end

@implementation PsychologistViewController

#pragma mark - View LifeCycle

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"심리 상담";
    
    NSLog(@"%@", NSLocalizedString(@"BTN_TITLE_GOOD", @"좋아요!"));

    [self.titleItem setTitle:NSLocalizedString(@"TITLE_STRING", @"심리 상담")];
    [self.lbFeelToday setText:NSLocalizedString(@"VIEW_TITLE_FEEL", @"")];
    [self.btnGood setTitle:NSLocalizedString(@"BTN_TITLE_GOOD", @"좋아요!") forState:(UIControlStateNormal)];
    [self.btnSoso setTitle:NSLocalizedString(@"BTN_TITLE_SOSO", @"그저 그래요.") forState:(UIControlStateNormal)];
    [self.btnBad setTitle:NSLocalizedString(@"BTN_TITLE_BAD", @"나빠요...") forState:(UIControlStateNormal)];
}

#pragma mark - Segue Handler
#define HAPPINESS_BAD   10
#define HAPPINESS_SOSO  50
#define HAPPINESS_GOOD  90

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.destinationViewController isKindOfClass:[HappinessViewController class]]){
        HappinessViewController *happinessViewController = (HappinessViewController*) segue.destinationViewController;
        
        if([sender isKindOfClass:[UIButton class]]) {
            UIButton *button = (UIButton *) sender;
            happinessViewController.title = button.titleLabel.text;
            
            if([segue.identifier isEqualToString:@"segueBad"]){
                happinessViewController.happiness = HAPPINESS_BAD;
            }
            else if([segue.identifier isEqualToString:@"segueSoso"]){
                happinessViewController.happiness = HAPPINESS_SOSO;
            }else{
                happinessViewController.happiness = HAPPINESS_GOOD;
            }
            
        }
    }
}

@end
