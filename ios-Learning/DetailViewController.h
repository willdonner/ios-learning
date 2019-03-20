//
//  DetailViewController.h
//  ios-Learning
//
//  Created by 杨尚东 on 19/3/2019.
//  Copyright © 2019 willdonner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSDate *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

