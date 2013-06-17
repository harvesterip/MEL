//
//  MEL.h
//  MEL
//
//  Created by admin on 07.06.2013.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface MEL : NSManagedObject

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * desc;
@property (nonatomic, retain) NSString * chapSec;
@property (nonatomic, retain) NSDate * date;

@end
