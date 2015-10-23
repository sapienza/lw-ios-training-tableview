//
//  ViewController.m
//  tableview
//
//  Created by Treinamento Mobile on 10/23/15.
//  Copyright © 2015 Treinamento Mobile. All rights reserved.
//

#import "ViewController.h"
#import "City.h"
#import "CityCell.h"


@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, weak) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *data;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    
    // Do any additional setup after loading the view, typically from a nib.
    [self setupInitialValues];
}

- (void)setupInitialValues
{
    self.data = [@[
      [[City alloc] initWithName: @"Sao Paulo" imageName: @"sp"],
      [[City alloc] initWithName: @"Belo Horizonte" imageName: @"bh"],
      [[City alloc] initWithName: @"Rio de Janeiro" imageName: @"rio"],
      [[City alloc] initWithName: @"Porto Alegre" imageName: @"poa"],
      [[City alloc] initWithName: @"Salvador" imageName: @"salvador"],
      [[City alloc] initWithName: @"Brasilia" imageName: @"brasilia"]]
       mutableCopy];
}

#pragma mark - UITableViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.data.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CityCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    City *city = self.data[indexPath.row];
    cell.nameLabel.text = city.name;
    cell.backgroundImageView.image = [UIImage imageNamed:city.imageName];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    City *city = self.data[indexPath.row];
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle: @"Cidade" message: city.name preferredStyle: UIAlertControllerStyleAlert];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler: nil];
    [alertController addAction:okAction];
    
    [self presentViewController:alertController animated:YES completion:nil];
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(editingStyle == UITableViewCellEditingStyleDelete) {
        [self.data removeObjectAtIndex:indexPath.row];
        [self.tableView deleteRowsAtIndexPaths:@[indexPath]
                              withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}
@end
