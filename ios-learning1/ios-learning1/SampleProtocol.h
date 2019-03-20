//
//  SampleProtocol.h
//  ios-learning1
//
//  Created by 杨尚东 on 20/3/2019.
//  Copyright © 2019 willdonner. All rights reserved.
//

//协议定义
@protocol SampleProtocolDelegate <NSObject>

@required

-(void) processCompled;

@end

@interface SampleProtocol : NSObject
{
    id<SampleProtocolDelegate> _delegate;
}
@property(strong,nonatomic) id delegate;

-(void) startSampleProcess;

@end
