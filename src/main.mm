#include "ofMain.h"
#include "ofAppiOSWindow.h"
//#include "ofApp.h"

int main(){

    ofAppiOSWindow *iOSWindow = new ofAppiOSWindow();
    //iOSWindow->enableDepthBuffer();
    //iOSWindow->enableAntiAliasing(4);
    //iOSWindow->enableRendererES2();
    if(iOSWindow->isRetinaSupportedOnDevice()) iOSWindow->enableRetina();
    iOSWindow->enableHardwareOrientation();
    iOSWindow->enableOrientationAnimation();
    
    
    
    ofSetupOpenGL(ofPtr<ofAppBaseWindow>(iOSWindow), 1024,768, OF_FULLSCREEN);
    iOSWindow->startAppWithDelegate("ofAppDelegate");
    
    // old way
    //ofSetupOpenGL(1024,768, OF_FULLSCREEN);
    //ofRunApp(new ofApp());
    
   
}
