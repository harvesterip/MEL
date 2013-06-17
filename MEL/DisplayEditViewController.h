//
//  DisplayEditViewController.h
//  MEL
//
//  Created by admin on 07.06.2013.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MEL.h"


@interface DisplayEditViewController : UIViewController

@property (nonatomic, strong) MEL *currentMel;


@property (weak, nonatomic) IBOutlet UITextField *chapSecField;
@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UITextField *descriptionField;
@property (weak, nonatomic) IBOutlet UITextField *dateField;
@property (weak, nonatomic) IBOutlet UIButton *doneButton;
@property (weak, nonatomic) IBOutlet UIButton *editButton;

- (IBAction)startEditing:(id)sender;
- (IBAction)doneEditing:(id)sender;


@end
