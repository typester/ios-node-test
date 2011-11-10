#import <UIKit/UIKit.h>

@interface RunViewController : UIViewController

@property (nonatomic, retain) IBOutlet UIButton* runButton;
@property (nonatomic, retain) IBOutlet UITextView* sourceView;
@property (nonatomic, retain) IBOutlet UITextView* resultView;

-(IBAction)onPushRun;

@end
