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
case 2 :
fccr = 0;
fccg = 128;
fccb = 0;
break;
case 3 :
fccr = 128;
fccg = 128;
fccg = 0;
break;
case 4 :
fccr = 0;
fccg = 0;
fccb = 128;
break;
case 5 :
fccr = 128;
fccg = 0;
fccb = 128;
break;
case 6 :
fccr = 0;
fccg = 128;
fccb = 128;
break;
case 7 :
fccr = 192;
fccg = 192;
fccb = 192;
break;
case 8 :
fccr = 128;
fccg = 128;
fccb = 128;
break;
case 9 :
fccr = 255;
fccg = 0;
fccb = 0;
break;
case 10 :
fccr = 0;
fccg = 255;
fccb = 0;
break;
case 11 :
fccr = 255;
fccg = 255;
fccb = 0;
break;
case 12 :
fccr = 0;
fccg = 0;
fccb = 255;
break;
case 13 :
fccr = 255;
fccg = 0;
fccb = 255;
break;
case 14 :
fccr = 0;
fccg = 255;
fccb = 255;
break;
case 15 :
fccr = 255;
fccg = 255;
fccb = 255;
break;
}
    return [UIColor colorWithRed:fccr/255.0 green:fccg/255.0 blue:fccb/255.0 alpha:255/255.0];
}
%end

%hook VT100ColorMap
- (id)backgroundCursor {
NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.withertech.newtermtmprefs"];
    id backgroundCursorCode = [bundleDefaults valueForKey:@"backgroundCursorCode"];
    NSString *backgroundCursorCodeS = backgroundCursorCode;
    int backgroundCursorCodeI = [backgroundCursorCodeS intValue];
int bccr = 0;
int bccg = 0;
int bccb = 0;
switch(backgroundCursorCodeI) {
case 0 :
bccr = 0;
bccg = 0;
bccb = 0;
break;
case 1 :
bccr = 128;
bccg = 0;
bccb = 0;
break;
case 2 :
bccr = 0;
bccg = 128;
bccb = 0;
break;
case 3 :
bccr = 128;
bccg = 128;
bccg = 0;
break;
case 4 :
bccr = 0;
bccg = 0;
bccb = 128;
break;
case 5 :
bccr = 128;
bccg = 0;
bccb = 128;
break;
case 6 :
bccr = 0;
bccg = 128;
bccb = 128;
break;
case 7 :
bccr = 192;
bccg = 192;
bccb = 192;
break;
case 8 :
bccr = 128;
bccg = 128;
bccb = 128;
break;
case 9 :
bccr = 255;
bccg = 0;
bccb = 0;
break;
case 10 :
bccr = 0;
bccg = 255;
bccb = 0;
break;
case 11 :
bccr = 255;
bccg = 255;
bccb = 0;
break;
case 12 :
bccr = 0;
bccg = 0;
bccb = 255;
break;
case 13 :
bccr = 255;
bccg = 0;
bccb = 255;
break;
case 14 :
bccr = 0;
bccg = 255;
bccb = 255;
break;
case 15 :
bccr = 255;
bccg = 255;
bccb = 255;
break;
}
    return [UIColor colorWithRed:bccr/255.0 green:bccg/255.0 blue:bccb/255.0 alpha:255/255.0];
}
%end

%hook VT100ColorMap
- (id)foregroundBold {
NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.withertech.newtermtmprefs"];
    id foregroundBoldCode = [bundleDefaults valueForKey:@"foregroundBoldCode"];
    NSString *foregroundBoldCodeS = foregroundBoldCode;
    int foregroundBoldCodeI = [foregroundBoldCodeS intValue];
int fbcr = 0;
int fbcg = 0;
int fbcb = 0;
switch(foregroundBoldCodeI) {
case 0 :
fbcr = 0;
fbcg = 0;
fbcb = 0;
break;
case 1 :
fbcr = 128;
fbcg = 0;
fbcb = 0;
break;
case 2 :
fbcr = 0;
fbcg = 128;
fbcb = 0;
break;
case 3 :
fbcr = 128;
fbcg = 128;
fbcg = 0;
break;
case 4 :
fbcr = 0;
fbcg = 0;
fbcb = 128;
break;
case 5 :
fbcr = 128;
fbcg = 0;
fbcb = 128;
break;
case 6 :
fbcr = 0;
fbcg = 128;
fbcb = 128;
break;
case 7 :
fbcr = 192;
fbcg = 192;
fbcb = 192;
break;
case 8 :
fbcr = 128;
fbcg = 128;
fbcb = 128;
break;
case 9 :
fbcr = 255;
fbcg = 0;
fbcb = 0;
break;
case 10 :
fbcr = 0;
fbcg = 255;
fbcb = 0;
break;
case 11 :
fbcr = 255;
fbcg = 255;
fbcb = 0;
break;
case 12 :
fbcr = 0;
fbcg = 0;
fbcb = 255;
break;
case 13 :
fbcr = 255;
fbcg = 0;
fbcb = 255;
break;
case 14 :
fbcr = 0;
fbcg = 255;
fbcb = 255;
break;
case 15 :
fbcr = 255;
fbcg = 255;
fbcb = 255;
break;
}
    return [UIColor colorWithRed:fbcr/255.0 green:fbcg/255.0 blue:fbcb/255.0 alpha:255/255.0];
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
