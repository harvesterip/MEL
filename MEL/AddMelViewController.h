//
//  AddMelViewController.h
//  MEL
//
//  Created by admin on 07.06.2013.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MEL.h"

@protocol AddMelViewControllerDelegate;


@interface AddMelViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *chapSecField;
@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UITextField *descriptionField;
@property (weak, nonatomic) IBOutlet UITextField *dateField;

@property (nonatomic, weak) id <AddMelViewControllerDelegate> delegate;

@property (nonatomic, strong) MEL *currentMel;

- (IBAction)cancel:(id)sender;
- (IBAction)save:(id)sender;

@end

@protocol AddMelViewControllerDelegate

-(void)addMelViewControllerDidSave;
-(void)addMelViewControllerDidCancel:(MEL *)melToDelete;

@end