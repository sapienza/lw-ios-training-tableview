//
//  CityCell.h
//  tableview
//
//  Created by Treinamento Mobile on 10/23/15.
//  Copyright © 2015 Treinamento Mobile. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CityCell : UITableViewCell
@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UIImageView * backgroundImageView;
@property (nonatomic, weak) IBOutlet IBOutlet UIView *labelContainerView;
@end
