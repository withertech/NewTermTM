include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NewTermTM
NewTermTM_FILES = Tweak.x
NewTermTM_FRAMEWORKS = UIKit
ADDITIONAL_CFLAGS = -fno-stack-protector

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += newtermtmprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
