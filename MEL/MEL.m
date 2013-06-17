//
//  MEL.m
//  MEL
//
//  Created by admin on 07.06.2013.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import "MEL.h"


@implementation MEL

@dynamic title;
@dynamic desc;
@dynamic chapSec;
@dynamic date;

-(void) awakeFromInsert {
    [super awakeFromInsert];
    self.date = [NSDate date];
}

@end
