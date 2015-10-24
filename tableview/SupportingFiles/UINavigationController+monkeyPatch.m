//
//  UINavigationController+monkeyPatch.m
//  tableview
//
//  Created by Treinamento Mobile on 10/24/15.
//  Copyright © 2015 Treinamento Mobile. All rights reserved.
//

#import "UINavigationController+monkeyPatch.h"

@implementation UINavigationController (monkeyPatch)
- (UIViewController *)childViewControllerForStatusBarStyle
{
    return self.topViewController;
}
@end
