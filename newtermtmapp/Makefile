include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = NewTermTMApp

NewTermTMApp_FILES = main.m NTMAppDelegate.m NTMRootViewController.m
NewTermTMApp_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "killall \"NewTermTMApp\"" || true
