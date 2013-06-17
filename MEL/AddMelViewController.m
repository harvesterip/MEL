//
//  AddMelViewController.m
//  MEL
//
//  Created by admin on 07.06.2013.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import "AddMelViewController.h"

@interface AddMelViewController ()

@end

@implementation AddMelViewController
@synthesize titleField;
@synthesize descriptionField;
@synthesize chapSecField;
@synthesize dateField;

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
    
    titleField.text = [self.currentMel title];
    chapSecField.text = [self.currentMel chapSec];
    descriptionField.text = [self.currentMel desc];
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    dateField.text =[dateFormat stringFromDate:[self.currentMel date]];
}


- (void)viewDidUnload
{
    [self setTitleField:nil];
    [self setChapSecField:nil];
    [self setDescriptionField:nil];
    [self setDateField:nil];
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancel:(id)sender {
    //dismiss and remove the object
    [self.delegate addMelViewControllerDidCancel:[self currentMel]];
}

- (IBAction)save:(id)sender {
    //dismiss and save the context
    [self.currentMel setTitle:titleField.text];
    [self.currentMel setChapSec:chapSecField.text];
    [self.currentMel setDesc:descriptionField.text];
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    [self.currentMel setDate:[dateFormat dateFromString:dateField.text]];
    
    [self.delegate addMelViewControllerDidSave];
}
@end
