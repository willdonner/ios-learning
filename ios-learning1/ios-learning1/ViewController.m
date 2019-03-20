//
//  ViewController.m
//  ios-learning1
//
//  Created by 杨尚东 on 20/3/2019.
//  Copyright © 2019 willdonner. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *mytitle;


@end

@implementation ViewController
- (IBAction)myButton:(id)sender {
    NSLog(@"%@", _mytitle.text);
    [_mytitle setText:@"willdoner"];
}

- (void)viewDidLoad {
    NSLog(@"viewload");
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    SampleProtocol *sampleProtocol = [[SampleProtocol alloc]init];
    sampleProtocol.delegate = self;
    NSLog(@"%@", sampleProtocol.delegate);
    [_mytitle setText:@"Processing..."];
    [sampleProtocol startSampleProcess];
}

-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Sample protocol delegate
-(void)processCompled{
    [_mytitle setText:@"processCompled"];
}
@end
