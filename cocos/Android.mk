LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

# cis is short name for cocos2dx_internal_static
# Shorter name could avoid compilation errors on Windows system which has a limitation of 260 bytes for build path.
LOCAL_MODULE := cis
LOCAL_MODULE_FILENAME := libcocos2dxinternal

LOCAL_ARM_MODE := arm

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
MATHNEONFILE := math/MathUtil.cpp.neon
else
MATHNEONFILE := math/MathUtil.cpp
endif

LOCAL_SRC_FILES := \
cocos2d.cpp \
platform/CCFileUtils.cpp \
platform/CCImage.cpp \
platform/CCSAXParser.cpp \
$(MATHNEONFILE) \
math/CCAffineTransform.cpp \
math/CCGeometry.cpp \
math/CCVertex.cpp \
math/Mat4.cpp \
math/Quaternion.cpp \
math/TransformUtils.cpp \
math/Vec2.cpp \
math/Vec3.cpp \
math/Vec4.cpp \
base/CCAutoreleasePool.cpp \
base/CCConfiguration.cpp \
base/CCData.cpp \
base/CCNS.cpp \
base/CCProfiling.cpp \
base/CCRef.cpp \
base/CCUserDefault-android.cpp \
base/CCUserDefault.cpp \
base/CCValue.cpp \
base/ObjectFactory.cpp \
base/TGAlib.cpp \
base/ZipUtils.cpp \
base/base64.cpp \
base/ccCArray.cpp \
base/ccFPSImages.c \
base/ccRandom.cpp \
base/ccTypes.cpp \
base/ccUTF8.cpp \
base/ccUtils.cpp \
base/etc1.cpp \
base/pvr.cpp \
renderer/Types.cpp \
renderer/gfx/DeviceGraphics.cpp \
renderer/gfx/FrameBuffer.cpp \
renderer/gfx/GFX.cpp \
renderer/gfx/GFXUtils.cpp \
renderer/gfx/GraphicsHandle.cpp \
renderer/gfx/IndexBuffer.cpp \
renderer/gfx/Program.cpp \
renderer/gfx/RenderBuffer.cpp \
renderer/gfx/RenderTarget.cpp \
renderer/gfx/State.cpp \
renderer/gfx/Texture.cpp \
renderer/gfx/Texture2D.cpp \
renderer/gfx/VertexBuffer.cpp \
renderer/gfx/VertexFormat.cpp \
renderer/renderer/BaseRenderer.cpp \
renderer/renderer/Camera.cpp \
renderer/renderer/Config.cpp \
renderer/renderer/Effect.cpp \
renderer/renderer/InputAssembler.cpp \
renderer/renderer/Light.cpp \
renderer/renderer/Model.cpp \
renderer/renderer/Pass.cpp \
renderer/renderer/ProgramLib.cpp \
renderer/renderer//Scene.cpp \
renderer/renderer/Technique.cpp \
renderer/renderer/View.cpp \
renderer/renderer/ForwardRenderer.cpp \
../external/sources/firefox/WebGLFormats.cpp \
../external/sources/firefox/WebGLTexelConversions.cpp \
../external/sources/firefox/mozilla/Assertions.cpp

# storage/local-storage/LocalStorage-android.cpp \
# ../external/sources/ConvertUTF/ConvertUTFWrapper.cpp \
# ../external/sources/ConvertUTF/ConvertUTF.c \
# ../external/sources/tinyxml2/tinyxml2.cpp \
# ../external/sources/unzip/ioapi_mem.cpp \
# ../external/sources/unzip/ioapi.cpp \
# ../external/sources/unzip/unzip.cpp \
# ../external/sources/edtaa3func/edtaa3func.cpp \
# ../external/sources/xxhash/xxhash.c \
# ../external/sources/poly2tri/common/shapes.cc \
# ../external/sources/poly2tri/sweep/advancing_front.cc \
# ../external/sources/poly2tri/sweep/cdt.cc \
# ../external/sources/poly2tri/sweep/sweep_context.cc \
# ../external/sources/poly2tri/sweep/sweep.cc \
# ../external/sources/clipper/clipper.cpp \
# ../external/sources/Box2D/Collision/Shapes/b2ChainShape.cpp \
# ../external/sources/Box2D/Collision/Shapes/b2CircleShape.cpp \
# ../external/sources/Box2D/Collision/Shapes/b2EdgeShape.cpp \
# ../external/sources/Box2D/Collision/Shapes/b2PolygonShape.cpp \
# ../external/sources/Box2D/Collision/b2BroadPhase.cpp \
# ../external/sources/Box2D/Collision/b2CollideCircle.cpp \
# ../external/sources/Box2D/Collision/b2CollideEdge.cpp \
# ../external/sources/Box2D/Collision/b2CollidePolygon.cpp \
# ../external/sources/Box2D/Collision/b2Collision.cpp \
# ../external/sources/Box2D/Collision/b2Distance.cpp \
# ../external/sources/Box2D/Collision/b2DynamicTree.cpp \
# ../external/sources/Box2D/Collision/b2TimeOfImpact.cpp \
# ../external/sources/Box2D/Common/b2BlockAllocator.cpp \
# ../external/sources/Box2D/Common/b2Draw.cpp \
# ../external/sources/Box2D/Common/b2Math.cpp \
# ../external/sources/Box2D/Common/b2Settings.cpp \
# ../external/sources/Box2D/Common/b2StackAllocator.cpp \
# ../external/sources/Box2D/Common/b2Timer.cpp \
# ../external/sources/Box2D/Dynamics/Contacts/b2ChainAndCircleContact.cpp \
# ../external/sources/Box2D/Dynamics/Contacts/b2ChainAndPolygonContact.cpp \
# ../external/sources/Box2D/Dynamics/Contacts/b2CircleContact.cpp \
# ../external/sources/Box2D/Dynamics/Contacts/b2Contact.cpp \
# ../external/sources/Box2D/Dynamics/Contacts/b2ContactSolver.cpp \
# ../external/sources/Box2D/Dynamics/Contacts/b2EdgeAndCircleContact.cpp \
# ../external/sources/Box2D/Dynamics/Contacts/b2EdgeAndPolygonContact.cpp \
# ../external/sources/Box2D/Dynamics/Contacts/b2PolygonAndCircleContact.cpp \
# ../external/sources/Box2D/Dynamics/Contacts/b2PolygonContact.cpp \
# ../external/sources/Box2D/Dynamics/Joints/b2DistanceJoint.cpp \
# ../external/sources/Box2D/Dynamics/Joints/b2FrictionJoint.cpp \
# ../external/sources/Box2D/Dynamics/Joints/b2GearJoint.cpp \
# ../external/sources/Box2D/Dynamics/Joints/b2Joint.cpp \
# ../external/sources/Box2D/Dynamics/Joints/b2MotorJoint.cpp \
# ../external/sources/Box2D/Dynamics/Joints/b2MouseJoint.cpp \
# ../external/sources/Box2D/Dynamics/Joints/b2PrismaticJoint.cpp \
# ../external/sources/Box2D/Dynamics/Joints/b2PulleyJoint.cpp \
# ../external/sources/Box2D/Dynamics/Joints/b2RevoluteJoint.cpp \
# ../external/sources/Box2D/Dynamics/Joints/b2RopeJoint.cpp \
# ../external/sources/Box2D/Dynamics/Joints/b2WeldJoint.cpp \
# ../external/sources/Box2D/Dynamics/Joints/b2WheelJoint.cpp \
# ../external/sources/Box2D/Dynamics/b2Body.cpp \
# ../external/sources/Box2D/Dynamics/b2ContactManager.cpp \
# ../external/sources/Box2D/Dynamics/b2Fixture.cpp \
# ../external/sources/Box2D/Dynamics/b2Island.cpp \
# ../external/sources/Box2D/Dynamics/b2World.cpp \
# ../external/sources/Box2D/Dynamics/b2WorldCallbacks.cpp \
# ../external/sources/Box2D/Rope/b2Rope.cpp \
# ../external/sources/Box2D/b2ObjectDestroyNotifier.cpp \
# ../external/sources/xxtea/xxtea.cpp \

LOCAL_C_INCLUDES := $(LOCAL_PATH) \
                    $(LOCAL_PATH)/platform \
                    $(LOCAL_PATH)/editor-support \
                    $(LOCAL_PATH)/../external/android/$(TARGET_ARCH_ABI)/include \
                    $(LOCAL_PATH)/../external/sources \
                    $(LOCAL_PATH)/../external/sources/firefox \
                    $(LOCAL_PATH)/renderer

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH) \
                    $(LOCAL_PATH)/.. \
                    $(LOCAL_PATH)/platform \
                    $(LOCAL_PATH)/base \
                    $(LOCAL_PATH)/../external/android/$(TARGET_ARCH_ABI)/include \
                    $(LOCAL_PATH)/../external/sources \
                    $(LOCAL_PATH)/renderer

LOCAL_EXPORT_LDLIBS := -lGLESv2 \
                       -llog \
                       -landroid

LOCAL_STATIC_LIBRARIES := cocos_freetype2_static
# LOCAL_STATIC_LIBRARIES += spine_static
# LOCAL_STATIC_LIBRARIES += creator_static
LOCAL_STATIC_LIBRARIES += cocos_png_static
LOCAL_STATIC_LIBRARIES += cocos_jpeg_static
LOCAL_STATIC_LIBRARIES += cocos_tiff_static
LOCAL_STATIC_LIBRARIES += cocos_webp_static
# LOCAL_STATIC_LIBRARIES += cocos_chipmunk_static
LOCAL_STATIC_LIBRARIES += cocos_zlib_static

LOCAL_WHOLE_STATIC_LIBRARIES := cocos2dxandroid_static
LOCAL_WHOLE_STATIC_LIBRARIES += cpufeatures

# define the macro to compile through support/zip_support/ioapi.c
LOCAL_CFLAGS := -DUSE_FILE32API -fexceptions

# Issues #9968
#ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
#    LOCAL_CFLAGS += -DHAVE_NEON=1
#endif

LOCAL_CPPFLAGS := -Wno-deprecated-declarations
LOCAL_EXPORT_CFLAGS   := -DUSE_FILE32API
LOCAL_EXPORT_CPPFLAGS := -Wno-deprecated-declarations

include $(BUILD_STATIC_LIBRARY)

#==============================================================
include $(CLEAR_VARS)

LOCAL_MODULE := cocos2dx_static
LOCAL_MODULE_FILENAME := libcocos2d

# LOCAL_STATIC_LIBRARIES := audioengine_static
# LOCAL_STATIC_LIBRARIES += cocos_network_static
# LOCAL_STATIC_LIBRARIES += cocos_ui_static
# LOCAL_STATIC_LIBRARIES += spine_static
# LOCAL_STATIC_LIBRARIES += dragonbones_static
# LOCAL_STATIC_LIBRARIES += creator_static
LOCAL_STATIC_LIBRARIES := cis

include $(BUILD_STATIC_LIBRARY)

#==============================================================
#$(call import-module,.)
$(call import-module,android)
# $(call import-module,editor-support/cocostudio)
# $(call import-module,editor-support/cocosbuilder)
# $(call import-module,editor-support/dragonbones/proj.android)
# $(call import-module,editor-support/spine)
# $(call import-module,editor-support/creator)
$(call import-module,platform/android)
# $(call import-module,audio/android)
# $(call import-module,network)
# $(call import-module,ui)
$(call import-module,extensions)
$(call import-module,android/cpufeatures)
