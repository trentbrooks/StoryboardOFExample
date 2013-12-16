
#import "ofAppViewController.h"
#import "ofxiOSExtras.h"
#import "ofApp.h"

@implementation ofAppViewController


- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        NSLog(@"ofAppViewController initialization");
    }
    return self;
}

//http://forum.openframeworks.cc/t/hardware-orientation-on-startup-for-ios-with-of-develop/12939/5
- (id)initWithFrame:(CGRect)frame app:(ofxiOSApp *)app {
    
    self = [super initWithFrame:frame app:app];
    self.glView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    return self;
}

- (void)loadView {
    [super loadView];
    
    NSLog(@"ofAppViewController view loaded");

    // initialise a new OF app when view is loading
    ofApp* myApp = new ofApp();
    myApp->appDelegate = self;
    [self initWithFrame:[[UIScreen mainScreen] bounds] app:myApp ];
    
}


- (void)viewWillAppear:(BOOL)animated {

    [super viewWillAppear:animated];
    
    ofLog() << "Sending GL view to back to show text label from storyboard";
    ofxiOSSendGLViewToBack();
}


#pragma mark - custom method can be called from ofApp with appropriate casting
- (void) onGotoEnd {
    NSLog(@"Going to end");
    [self performSegueWithIdentifier:@"gotoEnd" sender:self];
}


#pragma mark - delegate from ofApp
- (void)didPressButton:(ofApp *)controller {
    NSLog(@"Delegate was setup from OF app - button pressed, going to end");
    [self performSegueWithIdentifier:@"gotoEnd" sender:self];
}

@end
