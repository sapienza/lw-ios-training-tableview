//
//  DetailViewController.m
//  tableview
//
//  Created by Treinamento Mobile on 10/24/15.
//  Copyright © 2015 Treinamento Mobile. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (nonatomic, weak) IBOutlet UILabel *cityName;
@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    NSLog(@"%@", self.city.name);

    self.cityName.text = self.city.name;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
