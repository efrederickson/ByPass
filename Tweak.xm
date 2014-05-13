#import <libactivator/libactivator.h>
#import <libPass/libPass.h>

@interface ByPass : NSObject<LAListener>
@end

@implementation ByPass
-(void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event
{
	[[LibPass sharedInstance] unlockWithCodeEnabled:NO];

	//[event setHandled:YES];
}

+(void) load
{
    if ([[[NSBundle mainBundle] bundleIdentifier] isEqualToString:@"com.apple.springboard"])
        [[%c(LAActivator) sharedInstance] registerListener:[self new] forName:@"com.bd452.bypass"];
}
@end
