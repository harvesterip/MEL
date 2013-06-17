//
//  DisplayEditViewController.m
//  MEL
//
//  Created by admin on 07.06.2013.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import "DisplayEditViewController.h"
#import "AppDelegate.h"

@interface DisplayEditViewController ()

@end

@implementation DisplayEditViewController
@synthesize titleField;
@synthesize chapSecField;
@synthesize descriptionField;
@synthesize dateField;
@synthesize doneButton;
@synthesize editButton;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    chapSecField.text = [self.currentMel chapSec];
    titleField.text = [self.currentMel title];
    descriptionField.text = [self.currentMel desc];
    
    NSDateFormatter *df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"yyyy-MM-dd"];
    dateField.text = [df stringFromDate:[self.currentMel date]];
    
    
}

- (void)viewDidUnload
{
    [self setChapSecField:nil];
    [self setTitleField:nil];
    [self setDescriptionField:nil];
    [self setDateField:nil];
    [self setEditButton:nil];
    [self setDoneButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (IBAction)startEditing:(id)sender {
    chapSecField.enabled = YES;
    titleField.enabled = YES;
    descriptionField.enabled = YES;
    dateField.enabled = YES;
    
    chapSecField.borderStyle = UITextBorderStyleRoundedRect;
    titleField.borderStyle = UITextBorderStyleRoundedRect;
    descriptionField.borderStyle = UITextBorderStyleRoundedRect;
    dateField.borderStyle = UITextBorderStyleRoundedRect;
    
    editButton.hidden = YES;
    doneButton.hidden = NO;
    
}

- (IBAction)doneEditing:(id)sender {
    chapSecField.enabled = NO;
    titleField.enabled = NO;
    descriptionField.enabled = NO;
    dateField.enabled = NO;
    
    chapSecField.borderStyle = UITextBorderStyleNone;
    titleField.borderStyle = UITextBorderStyleNone;
    descriptionField.borderStyle = UITextBorderStyleNone;
    dateField.borderStyle = UITextBorderStyleNone;
    
    editButton.hidden = NO;
    doneButton.hidden = YES;
    
    _currentMel.chapSec = chapSecField.text;
    _currentMel.title = titleField.text;
    _currentMel.desc = descriptionField.text;
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateFormat:@"yyyy-MM-dd"];
    _currentMel.Date = [df dateFromString:dateField.text];
    
    AppDelegate *myApp = (AppDelegate *) [[UIApplication sharedApplication]delegate];
    [myApp saveContext];
}


@end

