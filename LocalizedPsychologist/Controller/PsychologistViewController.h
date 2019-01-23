//
//  PsychologistViewController.h
//  Psychologist_03_201402356
//
//  Created by JihoonPark on 2018. 9. 28..
//  Copyright © 2018년 JihoonPark. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PsychologistViewController : UIViewController

@property (weak, nonatomic) IBOutlet UINavigationItem *titleItem;
@property (weak, nonatomic) IBOutlet UILabel *lbFeelToday;
@property (weak, nonatomic) IBOutlet UIButton *btnBad;
@property (weak, nonatomic) IBOutlet UIButton *btnSoso;
@property (weak, nonatomic) IBOutlet UIButton *btnGood;

@end

NS_ASSUME_NONNULL_END
