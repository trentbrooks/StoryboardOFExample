#include "ofApp.h"




//--------------------------------------------------------------
ofApp::~ofApp() {
    ofLog() << "ofApp destroyed";
    appDelegate = nil;
}

//--------------------------------------------------------------
void ofApp::setup(){
	
    ofSetFrameRate(60);
    ofSetLogLevel(OF_LOG_VERBOSE);
    ofEnableAlphaBlending();
    
    retinaScale = (ofxiOSGetOFWindow()->isRetinaEnabled()) ? 2.0 : 1.0;
    buttonRect.set(25*retinaScale, 100*retinaScale, 200*retinaScale, 30*retinaScale);
}

//--------------------------------------------------------------
void ofApp::update(){

}

//--------------------------------------------------------------
void ofApp::draw(){
	
    ofBackground(200);
    ofPushMatrix();
    ofPushStyle();
    ofSetColor(255,0,255);
    ofTranslate(buttonRect.x,buttonRect.y);
    ofFill();
    ofRect(0,0,buttonRect.width,buttonRect.height);
    ofSetColor(0);
    ofDrawBitmapString("Finish Button!",10,10);
    ofPopStyle();
    ofPopMatrix();
    
    ofNoFill();
    ofSetColor(0,255,255);
    ofRect(20,20,ofGetWidth()-40,ofGetHeight()-40);
    
    ofDrawBitmapStringHighlight("Hello OF " + ofToString(ofGetFrameRate()), 25*retinaScale, 50*retinaScale);
}

//--------------------------------------------------------------
void ofApp::exit(){
    ofLog() << "ofApp exited";
}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void ofApp::touchMoved(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchUp(ofTouchEventArgs & touch){
    
    
    if(buttonRect.inside(touch.x, touch.y)) {
        ofLog() << "touched button";
        
        // call a custom method in AppDelegate or the custom view controller (requires casting to class type or id)
        //[(AppDelegate*)ofxiOSGetAppDelegate() didPressButton];
        /*AppDelegate* delegate = (AppDelegate*)ofxiOSGetAppDelegate();
        ofAppViewController* vc = (ofAppViewController*)[ delegate getViewController];
        [vc onGotoEnd];*/
        //[(id)[(id)ofxiOSGetAppDelegate() getViewController] onGotoEnd]; // same as above in 1 line (and don't need to import headers)
        
        // alt, call method via delegate/view controller
        [appDelegate didPressButton:this];
    }
    
}

//--------------------------------------------------------------
void ofApp::touchDoubleTap(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void ofApp::lostFocus(){

}

//--------------------------------------------------------------
void ofApp::gotFocus(){

}

//--------------------------------------------------------------
void ofApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void ofApp::deviceOrientationChanged(int newOrientation){

    //CGRect bounds = [(id)[(id)ofxiOSGetAppDelegate() getViewController] bounds];
    //ofLog() << "1 bounds:" << bounds.size.width << ", " << bounds.size.height;
    
    //ofLog() << "2 device orientation changed: " << newOrientation;
    //ofSetOrientation((ofOrientation)newOrientation);
    
    
}

