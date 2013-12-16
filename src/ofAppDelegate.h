

#import "ofxiOSAppDelegate.h"
#import "ofAppViewController.h"


@interface ofAppDelegate : ofxiOSAppDelegate

@property (nonatomic, retain) UINavigationController* navigationController;


// get the active view controller (inside navigationController. eg ofAppViewController)
- (UIViewController*) getViewController;

@end
