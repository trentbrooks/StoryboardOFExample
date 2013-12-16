#import "ofAppDelegate.h"


@implementation ofAppDelegate

@synthesize navigationController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [super applicationDidFinishLaunching:application];
        
    
    // using a storyboard to layout the scenes
    // eg. intro screen, info screen, game screen, and end screen
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Storyboard-iphone" bundle:nil];
    navigationController = [[storyboard instantiateInitialViewController] retain];
    [self.window setRootViewController:self.navigationController];
    
    return YES;
}

// drop in replacement for ofxiOSGetViewController() as glViewController = nil
- (UIViewController*) getViewController {
    return [self.navigationController visibleViewController];
}

// overriding for rotation because alerts do not go through when using custom view controller.
- (void)receivedRotate:(NSNotification*)notification {
    
    //[super receivedRotate:notification];
	UIDeviceOrientation interfaceOrientation = [[UIDevice currentDevice] orientation];
    ofLogVerbose("AppDelegate/ofxiOSAppDelegate") << "device orientation changed to " << interfaceOrientation;
	if(interfaceOrientation != UIDeviceOrientationUnknown) {
        ofxiOSAlerts.deviceOrientationChanged(interfaceOrientation);
    }
}


- (void) dealloc {
    self.navigationController = nil;
    [super dealloc];
}

@end
