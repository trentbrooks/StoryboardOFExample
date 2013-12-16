#pragma once

#include "ofMain.h"
#include "ofxiOS.h"
#include "ofxiOSExtras.h"
#import <UIKit/UIKit.h>


/*
 Can create a delegate protocol so the custom view controller can receive messages from the ofApp.
 Alternatively, call a method directly on the main app delegate with ofxiOSGetAppDelegate() or the 
 view controller (note ofxiOSGetViewController() doesn't work with custom view controller, so need
 to make a method in the main app delegate to return the current view controller. 
 eg. [[ofxiOSGetAppDelegate() getViewController()] someMethod];
 */
class ofApp;
@protocol ofAppDelegate <NSObject>
- (void) didPressButton:(ofApp *)controller;
@end


class ofApp : public ofxiOSApp{
	
    public:
    
        ~ofApp();
    
        void setup();
        void update();
        void draw();
        void exit();
	
        void touchDown(ofTouchEventArgs & touch);
        void touchMoved(ofTouchEventArgs & touch);
        void touchUp(ofTouchEventArgs & touch);
        void touchDoubleTap(ofTouchEventArgs & touch);
        void touchCancelled(ofTouchEventArgs & touch);

        void lostFocus();
        void gotFocus();
        void gotMemoryWarning();
        void deviceOrientationChanged(int newOrientation);

    float retinaScale;
    ofRectangle buttonRect;
    
    // can't use @property in objc++ but this seems to work
    id<ofAppDelegate> appDelegate; //@property (nonatomic, weak) id <ofAppDelegate> delegate;
    
};


