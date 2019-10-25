include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NewTermTM
NewTermTM_FILES = Tweak.x
NewTermTM_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += newtermtmprefs
SUBPROJECTS += newtermtmapp
SUBPROJECTS += ansi
include $(THEOS_MAKE_PATH)/aggregate.mk
