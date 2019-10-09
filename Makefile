include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NewTermTM
NewTermTM_FILES = Tweak.x
NewTermTM_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += newtermtmprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
