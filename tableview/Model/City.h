//
//  City.h
//  tableview
//
//  Created by Treinamento Mobile on 10/23/15.
//  Copyright © 2015 Treinamento Mobile. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *imageName;

//somente a assinatura aqui
- (instancetype)initWithName:(NSString *)name imageName: (NSString *)imageName;

@end
