

#import "ofxiOSViewController.h"
#import "ofApp.h"


@interface ofAppViewController : ofxiOSViewController<ofAppDelegate>


// custom method to handle the storyboard segue programatically- called from ofApp
- (void) onGotoEnd;
    
@end
