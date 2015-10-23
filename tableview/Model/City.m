//
//  City.m
//  tableview
//
//  Created by Treinamento Mobile on 10/23/15.
//  Copyright © 2015 Treinamento Mobile. All rights reserved.
//

#import "City.h"

@implementation City
- (instancetype)initWithName:(NSString *)name imageName: (NSString *)imageName
{
    self = [self init];
    
    if (self){
        self.name = name;
        self.imageName = imageName;
    }
    
    return self;
}
@end

