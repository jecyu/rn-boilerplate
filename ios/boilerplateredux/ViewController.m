#import "ViewController.h"
#import <React/RCTRootView.h> // 新增的依赖

@interface ViewController ()

@end

@implementation ViewController

// 新增的事件响应方法
- (IBAction)rnTestButtonPressed:(id)sender {
    NSLog(@"RNTest Button Pressed");
    NSURL *jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.bundle?platform=ios"];
    
    RCTRootView *rootView =
    [[RCTRootView alloc] initWithBundleURL: jsCodeLocation
                                moduleName: @"RNTest"
                         initialProperties:
     @{}
                             launchOptions: nil];
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view = rootView;
    [self presentViewController:vc animated:YES completion:nil];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"viewDidLoad");
}


@end