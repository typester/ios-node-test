#import "RunViewController.h"

#import <node.h>

@interface RunViewController (Private)
-(void)releaseIB;
@end

@implementation RunViewController

@synthesize runButton = runButton_;
@synthesize sourceView = sourceView_, resultView = resultView_;

-(void)viewDidUnload {
    [self releaseIB];
    [super viewDidUnload];
}

-(void)dealloc {
    [self releaseIB];
    [super dealloc];
}

-(void)releaseIB {
    self.runButton = nil;
    self.sourceView = nil;
    self.resultView = nil;
}

-(IBAction)onPushRun {
    NSLog(@"run");

    // save js as file
    NSString* file = [NSTemporaryDirectory() stringByAppendingPathComponent:@"code.js"];
    [self.sourceView.text writeToFile:file
                           atomically:YES
                             encoding:NSUTF8StringEncoding
                                error:nil];

    // run the code
    const char* argv[2];
    argv[0] = [[[NSBundle mainBundle] executablePath] UTF8String];
    argv[1] = [file UTF8String];

    int exitStatus = node::Start(2, (char**)argv);
    NSLog(@"[node] exited with status %d", exitStatus);
}

@end
