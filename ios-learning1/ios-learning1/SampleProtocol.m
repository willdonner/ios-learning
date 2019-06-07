//
//  SampleProtocol.m
//  ios-learning1
//
//  Created by 杨尚东 on 20/3/2019.
//  Copyright © 2019 willdonner. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "SampleProtocol.h"
@implementation SampleProtocol

-(void)startSampleProcess{
    [NSTimer scheduledTimerWithTimeInterval:3.0 target:self.delegate selector:@selector(processCompled) userInfo:nil repeats:NO];
}

@end
