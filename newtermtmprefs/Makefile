include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = NewTermTMPrefs

NewTermTMPrefs_FILES = NTMRootListController.m
NewTermTMPrefs_INSTALL_PATH = /Library/PreferenceBundles
NewTermTMPrefs_FRAMEWORKS = UIKit
NewTermTMPrefs_PRIVATE_FRAMEWORKS = Preferences
NewTermTMPrefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/NewTermTMPrefs.plist$(ECHO_END)
