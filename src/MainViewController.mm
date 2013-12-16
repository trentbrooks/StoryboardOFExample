
#import "MainViewController.h"



@implementation MainViewController

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        NSLog(@"MainViewController initialization");
    }
    return self;
}

- (void)loadView {
    [super loadView];
    NSLog(@"MainViewController view loaded");
    
}

// for handling transitions
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSLog(@"Seque prepare %@", segue.identifier);
    if ([segue.identifier isEqualToString:@"gotoOF"]) {
        
    }
}

// when closing a view, this is called
- (IBAction)unwindFromViewControllerMain:(UIStoryboardSegue *)segue {
    NSLog(@"Winding back from seque %@", segue.identifier);
}


-(void)dealloc {
    [super dealloc];
    NSLog(@"MainViewController view UNLOADED");
}

@end
