//
//  ViewController.h
//  ios-learning1
//
//  Created by 杨尚东 on 20/3/2019.
//  Copyright © 2019 willdonner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SampleProtocol.h"
@interface ViewController : UIViewController<SampleProtocolDelegate>
{
    IBOutlet UILabel *mylable;
}

@end

