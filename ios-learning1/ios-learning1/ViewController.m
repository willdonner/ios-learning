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
//    [_mytitle setText:@"willdoner"];
}

- (void)viewDidLoad {
    NSLog(@"viewload");
    [super viewDidLoad];
//    UITextField *textField1 = [[UITextField alloc]initWithFrame:CGRectMake(50, 300, 200, 50)];
    
    // Do any additional setup after loading the view, typically from a nib.
    SampleProtocol *sampleProtocol = [[SampleProtocol alloc]init];
    sampleProtocol.delegate = self;
    NSLog(@"%@", sampleProtocol.delegate);
    [_mytitle setText:@"##"];
    [_mytitle setFont:[UIFont boldSystemFontOfSize:14]];
    [_mytitle sizeToFit];
    [mylable setText:@"Processing"];
    [sampleProtocol startSampleProcess];
    NSLog(@"%@", mylable.text);
     [self addTextField];
}

-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
-(void) addTextField{
    
    UITextField *textField1 = [[UITextField alloc]init];
    
    [textField1 setFrame:CGRectMake(20, 50, 280, 30)];
    textField1.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:textField1];
    [textField1 setFont:[UIFont boldSystemFontOfSize:14]];
    
    textField1.leftView =_mytitle;
    textField1.leftViewMode = UITextFieldViewModeAlways;
    textField1.delegate =self;
    [textField1 setCenter:self.view.center];
    textField1.placeholder=@"placeholder";
    NSLog(@"addTextField");
}

#pragma mark - Sample protocol delegate
-(void)processCompled{
//    [_mytitle setText:@"processCompled"];
}
// pragma mark is used for easy access of code in Xcode
#pragma mark - TextField Delegates

// This method is called once we click inside the textField
-(void)textFieldDidBeginEditing:(UITextField *)textField{
    NSLog(@"Text field did begin editing");
}

// This method is called once we complete editing
-(void)textFieldDidEndEditing:(UITextField *)textField{
    NSLog(@"Text field ended editing");
}

// This method enables or disables the processing of return key
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}
@end
