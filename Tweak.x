#import <UIKit/UIKit.h>

%group enabled
%hook VT100Terminal
- (int)foregroundColorCode {
NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.withertech.newtermtmprefs"];
    id foregroundCode = [bundleDefaults valueForKey:@"foregroundCode"];
    NSString *foregroundCodeS = foregroundCode;
    int foregroundCodeI = [foregroundCodeS intValue];
    return foregroundCodeI;
}
%end

%hook VT100Terminal
- (int)backgroundColorCode {
NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.withertech.newtermtmprefs"];
    id backgroundCode = [bundleDefaults valueForKey:@"backgroundCode"];
    NSString *backgroundCodeS = backgroundCode;
    int backgroundCodeI = [backgroundCodeS intValue];
    return backgroundCodeI;
}
%end

%hook VT100ColorMap
- (id)foregroundCursor {
NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.withertech.newtermtmprefs"];
    id foregroundCursorCode = [bundleDefaults valueForKey:@"foregroundCursorCode"];
    NSString *foregroundCursorCodeS = foregroundCursorCode;
    int foregroundCursorCodeI = [foregroundCursorCodeS intValue];
int fccr = 0;
int fccg = 0;
int fccb = 0;
foregroundCursorCodeI = 1;
switch(foregroundCursorCodeI) {
case 0 :
fccr = 0;
fccg = 0;
fccb = 0;
break;
case 1 :
fccr = 128;
fccg = 0;
fccb = 0;
break;
}
    return [UIColor colorWithRed:fccr/255.0 green:fccg/255.0 blue:fccb/255.0 alpha:255/255.0];
}
%end

%hook VT100ColorMap
- (id)backgroundCursor {
    return [UIColor colorWithRed:0/255.0 green:128/255.0 blue:0/255.0 alpha:255/255.0];
}
%end

%hook VT100ColorMap
- (id)foregroundBold {
    return [UIColor colorWithRed:0/255.0 green:128/255.0 blue:0/255.0 alpha:255/255.0];
}
%end
%end
%ctor {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.withertech.newtermtmprefs"];
    id isEnabled = [bundleDefaults valueForKey:@"isEnabled"];
    if ([isEnabled isEqual:@1]) {
        %init(enabled)
    }
}
