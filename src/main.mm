#include "ofMain.h"
#include "ofAppiOSWindow.h"
//#include "ofApp.h"

int main(){
    
    //  here are the most commonly used iOS window settings.
    //------------------------------------------------------
    ofiOSWindowSettings settings;
    settings.enableRetina = true; // enables retina resolution if the device supports it.
    settings.enableDepth = false; // enables depth buffer for 3d drawing.
    settings.enableAntiAliasing = false; // enables anti-aliasing which smooths out graphics on the screen.
    settings.numOfAntiAliasingSamples = 0; // number of samples used for anti-aliasing.
    settings.enableHardwareOrientation = true; // enables native view orientation.
    settings.enableHardwareOrientationAnimation = true; // enables native orientation changes to be animated.
    settings.glesVersion = OFXIOS_RENDERER_ES1; // type of renderer to use, ES1, ES2, etc.
    
    shared_ptr<ofAppBaseWindow> windowBase = ofCreateWindow(settings);
    ofAppiOSWindow * window = (ofAppiOSWindow *)(windowBase.get());
    window->startAppWithDelegate("ofAppDelegate");

    /*ofAppiOSWindow *iOSWindow = new ofAppiOSWindow();
    //iOSWindow->enableDepthBuffer();
    //iOSWindow->enableAntiAliasing(4);
    //iOSWindow->enableRendererES2();
    if(iOSWindow->isRetinaSupportedOnDevice()) iOSWindow->enableRetina();
    iOSWindow->enableHardwareOrientation();
    iOSWindow->enableOrientationAnimation();
    
    
    
    ofSetupOpenGL(ofPtr<ofAppBaseWindow>(iOSWindow), 1024,768, OF_FULLSCREEN);
    iOSWindow->startAppWithDelegate("ofAppDelegate");*/
    
    // old way
    //ofSetupOpenGL(1024,768, OF_FULLSCREEN);
    //ofRunApp(new ofApp());
    
   
}
