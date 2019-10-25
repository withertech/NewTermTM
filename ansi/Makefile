include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = ANSI

ANSI_FILES = main.m NTMAAppDelegate.m NTMARootViewController.m
ANSI_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "killall \"ANSI\"" || true
