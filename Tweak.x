#import <UIKit/UIKit.h>

%hook VT100Terminal
- (int)foregroundColorCode {
    return 10;
}
%end

%hook VT100Terminal
- (int)backgroundColorCode {
    return 0;
}
%end

%hook VT100ColorMap
- (id)foregroundCursor {
    return [UIColor colorWithRed:0/255.0 green:255/255.0 blue:0/255.0 alpha:255/255.0];
}
%end

%hook VT100ColorMap
- (id)backgroundCursor {
    return [UIColor colorWithRed:0/255.0 green:119/255.0 blue:0/255.0 alpha:255/255.0];
}
%end

%hook VT100ColorMap
- (id)foregroundBold {
    return [UIColor colorWithRed:0/255.0 green:119/255.0 blue:0/255.0 alpha:255/255.0];
}
%end

