include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = NewTermTM

NewTermTM_FILES = main.m NTMAppDelegate.m
NewTermTM_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "killall \"NewTermTM\"" || true
