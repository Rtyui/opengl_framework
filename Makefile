CC = g++
CFLAGS = -Wall -g
INCLUDES = -I/usr/include -I$(CURDIR) -I$(CURDIR)/entities/ -I$(CURDIR)/components/ -I$(CURDIR)/systems/ -I$(CURDIR)/shaders/
LFLAGS = 
LIBS = -lsfml-window -lsfml-system -lsfml-graphics -lGL -lGLEW -lboost_filesystem -lboost_system
SRCS = $(shell find $(SOURCEDIR) -name '*.cpp')
OBJS = $(SRCS:.cpp=.o)
MAIN = app

.PHONY: depend clean

all:	$(MAIN)
		@echo  Simple compiler named app has been compiled

$(MAIN): $(OBJS) 
		$(CC) $(CFLAGS) $(INCLUDES) -o $(MAIN) $(OBJS) $(LFLAGS) $(LIBS)
.cpp.o:
		$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
		find . -name "*.o" -type f -delete
		rm $(MAIN)

depend: $(SRCS)
		makedepend $(INCLUDES) $^

# DO NOT DELETE THIS LINE -- make depend needs it

Input.o: /usr/include/stdio.h /usr/include/bits/libc-header-start.h
Input.o: /usr/include/features.h /usr/include/stdc-predef.h
Input.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
Input.o: /usr/include/bits/long-double.h /usr/include/gnu/stubs.h
Input.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
Input.o: /usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h
Input.o: /usr/include/bits/libio.h /usr/include/bits/_G_config.h
Input.o: /usr/include/bits/types/__mbstate_t.h /usr/include/bits/stdio_lim.h
Input.o: /usr/include/bits/sys_errlist.h /usr/include/stdlib.h
Input.o: /usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h
Input.o: /usr/include/bits/floatn.h /usr/include/bits/floatn-common.h
Input.o: /usr/include/sys/types.h /usr/include/bits/types/clock_t.h
Input.o: /usr/include/bits/types/clockid_t.h /usr/include/bits/types/time_t.h
Input.o: /usr/include/bits/types/timer_t.h /usr/include/bits/stdint-intn.h
Input.o: /usr/include/endian.h /usr/include/bits/endian.h
Input.o: /usr/include/bits/byteswap.h /usr/include/bits/byteswap-16.h
Input.o: /usr/include/bits/uintn-identity.h /usr/include/sys/select.h
Input.o: /usr/include/bits/select.h /usr/include/bits/types/sigset_t.h
Input.o: /usr/include/bits/types/__sigset_t.h
Input.o: /usr/include/bits/types/struct_timeval.h
Input.o: /usr/include/bits/types/struct_timespec.h
Input.o: /usr/include/sys/sysmacros.h /usr/include/bits/sysmacros.h
Input.o: /usr/include/bits/pthreadtypes.h
Input.o: /usr/include/bits/thread-shared-types.h
Input.o: /usr/include/bits/pthreadtypes-arch.h /usr/include/alloca.h
Input.o: /usr/include/bits/stdlib-float.h /usr/include/string.h
Input.o: /usr/include/bits/types/locale_t.h
Input.o: /usr/include/bits/types/__locale_t.h /usr/include/strings.h
Input.o: Input.hpp /usr/include/SFML/Window.hpp /usr/include/SFML/System.hpp
Input.o: /usr/include/SFML/Config.hpp /usr/include/SFML/System/Clock.hpp
Input.o: /usr/include/SFML/System/Export.hpp
Input.o: /usr/include/SFML/System/Time.hpp /usr/include/SFML/System/Err.hpp
Input.o: /usr/include/SFML/System/FileInputStream.hpp
Input.o: /usr/include/SFML/System/InputStream.hpp
Input.o: /usr/include/SFML/System/NonCopyable.hpp
Input.o: /usr/include/SFML/System/Lock.hpp
Input.o: /usr/include/SFML/System/MemoryInputStream.hpp
Input.o: /usr/include/SFML/System/Mutex.hpp
Input.o: /usr/include/SFML/System/Sleep.hpp
Input.o: /usr/include/SFML/System/String.hpp /usr/include/SFML/System/Utf.hpp
Input.o: /usr/include/SFML/System/Utf.inl /usr/include/SFML/System/String.inl
Input.o: /usr/include/SFML/System/Thread.hpp
Input.o: /usr/include/SFML/System/Thread.inl
Input.o: /usr/include/SFML/System/ThreadLocal.hpp
Input.o: /usr/include/SFML/System/ThreadLocalPtr.hpp
Input.o: /usr/include/SFML/System/ThreadLocalPtr.inl
Input.o: /usr/include/SFML/System/Vector2.hpp
Input.o: /usr/include/SFML/System/Vector2.inl
Input.o: /usr/include/SFML/System/Vector3.hpp
Input.o: /usr/include/SFML/System/Vector3.inl
Input.o: /usr/include/SFML/Window/Context.hpp
Input.o: /usr/include/SFML/Window/Export.hpp
Input.o: /usr/include/SFML/Window/GlResource.hpp
Input.o: /usr/include/SFML/Window/ContextSettings.hpp
Input.o: /usr/include/SFML/Window/Event.hpp
Input.o: /usr/include/SFML/Window/Joystick.hpp
Input.o: /usr/include/SFML/Window/Keyboard.hpp
Input.o: /usr/include/SFML/Window/Mouse.hpp
Input.o: /usr/include/SFML/Window/Sensor.hpp
Input.o: /usr/include/SFML/Window/Touch.hpp
Input.o: /usr/include/SFML/Window/VideoMode.hpp
Input.o: /usr/include/SFML/Window/Window.hpp
Input.o: /usr/include/SFML/Window/WindowHandle.hpp
Input.o: /usr/include/SFML/Window/WindowStyle.hpp Debug.hpp
main.o: App.hpp /usr/include/SFML/System.hpp /usr/include/SFML/Config.hpp
main.o: /usr/include/SFML/System/Clock.hpp
main.o: /usr/include/SFML/System/Export.hpp /usr/include/SFML/System/Time.hpp
main.o: /usr/include/SFML/System/Err.hpp
main.o: /usr/include/SFML/System/FileInputStream.hpp
main.o: /usr/include/SFML/System/InputStream.hpp
main.o: /usr/include/SFML/System/NonCopyable.hpp
main.o: /usr/include/SFML/System/Lock.hpp
main.o: /usr/include/SFML/System/MemoryInputStream.hpp
main.o: /usr/include/SFML/System/Mutex.hpp /usr/include/SFML/System/Sleep.hpp
main.o: /usr/include/SFML/System/String.hpp /usr/include/SFML/System/Utf.hpp
main.o: /usr/include/SFML/System/Utf.inl /usr/include/SFML/System/String.inl
main.o: /usr/include/SFML/System/Thread.hpp
main.o: /usr/include/SFML/System/Thread.inl
main.o: /usr/include/SFML/System/ThreadLocal.hpp
main.o: /usr/include/SFML/System/ThreadLocalPtr.hpp
main.o: /usr/include/SFML/System/ThreadLocalPtr.inl
main.o: /usr/include/SFML/System/Vector2.hpp
main.o: /usr/include/SFML/System/Vector2.inl
main.o: /usr/include/SFML/System/Vector3.hpp
main.o: /usr/include/SFML/System/Vector3.inl /usr/include/SFML/Window.hpp
main.o: /usr/include/SFML/Window/Context.hpp
main.o: /usr/include/SFML/Window/Export.hpp
main.o: /usr/include/SFML/Window/GlResource.hpp
main.o: /usr/include/SFML/Window/ContextSettings.hpp
main.o: /usr/include/SFML/Window/Event.hpp
main.o: /usr/include/SFML/Window/Joystick.hpp
main.o: /usr/include/SFML/Window/Keyboard.hpp
main.o: /usr/include/SFML/Window/Mouse.hpp
main.o: /usr/include/SFML/Window/Sensor.hpp
main.o: /usr/include/SFML/Window/Touch.hpp
main.o: /usr/include/SFML/Window/VideoMode.hpp
main.o: /usr/include/SFML/Window/Window.hpp
main.o: /usr/include/SFML/Window/WindowHandle.hpp
main.o: /usr/include/SFML/Window/WindowStyle.hpp
Debug.o: Debug.hpp /usr/include/string.h
Debug.o: /usr/include/bits/libc-header-start.h /usr/include/features.h
Debug.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
Debug.o: /usr/include/bits/wordsize.h /usr/include/bits/long-double.h
Debug.o: /usr/include/gnu/stubs.h /usr/include/bits/types/locale_t.h
Debug.o: /usr/include/bits/types/__locale_t.h /usr/include/strings.h
Debug.o: Utilities.hpp
Debug.o: /home/cipsi/Personal/opengl_framework/components/Camera.hpp
Debug.o: /usr/include/glm/glm.hpp /usr/include/glm/detail/_fixes.hpp
Debug.o: /usr/include/glm/detail/setup.hpp /usr/include/glm/simd/platform.h
Debug.o: /usr/include/glm/fwd.hpp /usr/include/glm/detail/type_int.hpp
Debug.o: /usr/include/glm/detail/setup.hpp
Debug.o: /usr/include/glm/detail/type_float.hpp
Debug.o: /usr/include/glm/detail/type_vec.hpp
Debug.o: /usr/include/glm/detail/qualifier.hpp
Debug.o: /usr/include/glm/detail/type_int.hpp
Debug.o: /usr/include/glm/detail/compute_vector_relational.hpp
Debug.o: /usr/include/glm/detail/type_mat.hpp /usr/include/glm/vec2.hpp
Debug.o: /usr/include/glm/detail/type_vec2.hpp
Debug.o: /usr/include/glm/detail/type_vec.hpp
Debug.o: /usr/include/glm/detail/type_vec2.inl /usr/include/glm/vec3.hpp
Debug.o: /usr/include/glm/detail/type_vec3.hpp
Debug.o: /usr/include/glm/detail/type_vec3.inl /usr/include/glm/vec4.hpp
Debug.o: /usr/include/glm/detail/type_vec4.hpp
Debug.o: /usr/include/glm/detail/type_vec4.inl /usr/include/glm/mat2x2.hpp
Debug.o: /usr/include/glm/detail/type_mat2x2.hpp /usr/include/glm/fwd.hpp
Debug.o: /usr/include/glm/detail/type_vec2.hpp
Debug.o: /usr/include/glm/detail/type_mat.hpp
Debug.o: /usr/include/glm/detail/type_mat2x2.inl /usr/include/glm/matrix.hpp
Debug.o: /usr/include/glm/detail/qualifier.hpp /usr/include/glm/mat2x3.hpp
Debug.o: /usr/include/glm/detail/type_mat2x3.hpp
Debug.o: /usr/include/glm/detail/type_vec3.hpp
Debug.o: /usr/include/glm/detail/type_mat2x3.inl /usr/include/glm/mat2x4.hpp
Debug.o: /usr/include/glm/detail/type_mat2x4.hpp
Debug.o: /usr/include/glm/detail/type_vec4.hpp
Debug.o: /usr/include/glm/detail/type_mat2x4.inl /usr/include/glm/mat3x2.hpp
Debug.o: /usr/include/glm/detail/type_mat3x2.hpp
Debug.o: /usr/include/glm/detail/type_mat3x2.inl /usr/include/glm/mat3x3.hpp
Debug.o: /usr/include/glm/detail/type_mat3x3.hpp
Debug.o: /usr/include/glm/detail/type_mat3x3.inl /usr/include/glm/mat3x4.hpp
Debug.o: /usr/include/glm/detail/type_mat3x4.hpp
Debug.o: /usr/include/glm/detail/type_mat3x4.inl /usr/include/glm/mat4x2.hpp
Debug.o: /usr/include/glm/detail/type_mat4x2.hpp
Debug.o: /usr/include/glm/detail/type_mat4x2.inl /usr/include/glm/mat4x3.hpp
Debug.o: /usr/include/glm/detail/type_mat4x3.hpp
Debug.o: /usr/include/glm/detail/type_mat4x3.inl /usr/include/glm/mat4x4.hpp
Debug.o: /usr/include/glm/detail/type_mat4x4.hpp
Debug.o: /usr/include/glm/detail/type_mat4x4.inl
Debug.o: /usr/include/glm/detail/type_mat4x4_simd.inl
Debug.o: /usr/include/glm/detail/func_matrix.inl
Debug.o: /usr/include/glm/geometric.hpp
Debug.o: /usr/include/glm/detail/func_geometric.inl
Debug.o: /usr/include/glm/exponential.hpp
Debug.o: /usr/include/glm/detail/type_vec1.hpp
Debug.o: /usr/include/glm/detail/func_exponential.inl
Debug.o: /usr/include/glm/vector_relational.hpp
Debug.o: /usr/include/glm/detail/func_vector_relational.inl
Debug.o: /usr/include/glm/detail/_vectorize.hpp
Debug.o: /usr/include/glm/detail/type_vec1.hpp /usr/include/glm/common.hpp
Debug.o: /usr/include/glm/detail/func_common.inl
Debug.o: /usr/include/glm/detail/type_float.hpp
Debug.o: /usr/include/glm/trigonometric.hpp
Debug.o: /usr/include/glm/detail/func_trigonometric.inl
Debug.o: /usr/include/glm/exponential.hpp /usr/include/glm/common.hpp
Debug.o: /usr/include/glm/packing.hpp
Debug.o: /usr/include/glm/detail/func_packing.inl
Debug.o: /usr/include/glm/detail/type_half.hpp
Debug.o: /usr/include/glm/detail/type_half.inl /usr/include/glm/geometric.hpp
Debug.o: /usr/include/glm/matrix.hpp /usr/include/glm/vector_relational.hpp
Debug.o: /usr/include/glm/integer.hpp
Debug.o: /usr/include/glm/detail/func_integer.inl
Debug.o: /usr/include/glm/ext/vec1.hpp /usr/include/glm/detail/type_vec.hpp
Debug.o: /usr/include/glm/detail/type_vec1.inl /usr/include/SFML/Window.hpp
Debug.o: /usr/include/SFML/System.hpp /usr/include/SFML/Config.hpp
Debug.o: /usr/include/SFML/System/Clock.hpp
Debug.o: /usr/include/SFML/System/Export.hpp
Debug.o: /usr/include/SFML/System/Time.hpp /usr/include/SFML/System/Err.hpp
Debug.o: /usr/include/SFML/System/FileInputStream.hpp
Debug.o: /usr/include/SFML/System/InputStream.hpp
Debug.o: /usr/include/SFML/System/NonCopyable.hpp
Debug.o: /usr/include/SFML/System/Lock.hpp
Debug.o: /usr/include/SFML/System/MemoryInputStream.hpp
Debug.o: /usr/include/SFML/System/Mutex.hpp
Debug.o: /usr/include/SFML/System/Sleep.hpp
Debug.o: /usr/include/SFML/System/String.hpp /usr/include/SFML/System/Utf.hpp
Debug.o: /usr/include/SFML/System/Utf.inl /usr/include/SFML/System/String.inl
Debug.o: /usr/include/SFML/System/Thread.hpp
Debug.o: /usr/include/SFML/System/Thread.inl
Debug.o: /usr/include/SFML/System/ThreadLocal.hpp
Debug.o: /usr/include/SFML/System/ThreadLocalPtr.hpp
Debug.o: /usr/include/SFML/System/ThreadLocalPtr.inl
Debug.o: /usr/include/SFML/System/Vector2.hpp
Debug.o: /usr/include/SFML/System/Vector2.inl
Debug.o: /usr/include/SFML/System/Vector3.hpp
Debug.o: /usr/include/SFML/System/Vector3.inl
Debug.o: /usr/include/SFML/Window/Context.hpp
Debug.o: /usr/include/SFML/Window/Export.hpp
Debug.o: /usr/include/SFML/Window/GlResource.hpp
Debug.o: /usr/include/SFML/Window/ContextSettings.hpp
Debug.o: /usr/include/SFML/Window/Event.hpp
Debug.o: /usr/include/SFML/Window/Joystick.hpp
Debug.o: /usr/include/SFML/Window/Keyboard.hpp
Debug.o: /usr/include/SFML/Window/Mouse.hpp
Debug.o: /usr/include/SFML/Window/Sensor.hpp
Debug.o: /usr/include/SFML/Window/Touch.hpp
Debug.o: /usr/include/SFML/Window/VideoMode.hpp
Debug.o: /usr/include/SFML/Window/Window.hpp
Debug.o: /usr/include/SFML/Window/WindowHandle.hpp
Debug.o: /usr/include/SFML/Window/WindowStyle.hpp
Debug.o: /home/cipsi/Personal/opengl_framework/components/Component.hpp
Resources.o: /usr/include/boost/filesystem.hpp
Resources.o: /usr/include/boost/filesystem/config.hpp
Resources.o: /usr/include/boost/config.hpp /usr/include/boost/config/user.hpp
Resources.o: /usr/include/boost/config/detail/select_compiler_config.hpp
Resources.o: /usr/include/boost/config/compiler/gcc.hpp
Resources.o: /usr/include/boost/config/detail/select_platform_config.hpp
Resources.o: /usr/include/boost/config/detail/posix_features.hpp
Resources.o: /usr/include/unistd.h /usr/include/features.h
Resources.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
Resources.o: /usr/include/bits/wordsize.h /usr/include/bits/long-double.h
Resources.o: /usr/include/gnu/stubs.h /usr/include/bits/posix_opt.h
Resources.o: /usr/include/bits/environments.h /usr/include/bits/types.h
Resources.o: /usr/include/bits/typesizes.h /usr/include/bits/confname.h
Resources.o: /usr/include/bits/getopt_posix.h /usr/include/bits/getopt_core.h
Resources.o: /usr/include/boost/config/detail/suffix.hpp
Resources.o: /usr/include/boost/system/api_config.hpp
Resources.o: /usr/include/boost/detail/workaround.hpp
Resources.o: /usr/include/boost/config/workaround.hpp
Resources.o: /usr/include/boost/config.hpp
Resources.o: /usr/include/boost/config/auto_link.hpp
Resources.o: /usr/include/boost/filesystem/path.hpp
Resources.o: /usr/include/boost/filesystem/path_traits.hpp
Resources.o: /usr/include/boost/utility/enable_if.hpp
Resources.o: /usr/include/boost/core/enable_if.hpp
Resources.o: /usr/include/boost/type_traits/is_array.hpp
Resources.o: /usr/include/boost/type_traits/integral_constant.hpp
Resources.o: /usr/include/boost/type_traits/decay.hpp
Resources.o: /usr/include/boost/type_traits/is_function.hpp
Resources.o: /usr/include/boost/type_traits/is_reference.hpp
Resources.o: /usr/include/boost/type_traits/is_lvalue_reference.hpp
Resources.o: /usr/include/boost/type_traits/is_rvalue_reference.hpp
Resources.o: /usr/include/boost/type_traits/detail/config.hpp
Resources.o: /usr/include/boost/version.hpp
Resources.o: /usr/include/boost/type_traits/detail/is_function_ptr_helper.hpp
Resources.o: /usr/include/boost/type_traits/remove_bounds.hpp
Resources.o: /usr/include/boost/type_traits/remove_extent.hpp
Resources.o: /usr/include/boost/type_traits/add_pointer.hpp
Resources.o: /usr/include/boost/type_traits/remove_reference.hpp
Resources.o: /usr/include/boost/type_traits/remove_cv.hpp
Resources.o: /usr/include/boost/system/error_code.hpp
Resources.o: /usr/include/boost/system/config.hpp
Resources.o: /usr/include/boost/predef/platform.h
Resources.o: /usr/include/boost/predef/platform/mingw.h
Resources.o: /usr/include/boost/predef/version_number.h
Resources.o: /usr/include/boost/predef/make.h
Resources.o: /usr/include/boost/predef/detail/test.h
Resources.o: /usr/include/boost/predef/platform/windows_desktop.h
Resources.o: /usr/include/boost/predef/os/windows.h
Resources.o: /usr/include/boost/predef/detail/os_detected.h
Resources.o: /usr/include/boost/predef/detail/platform_detected.h
Resources.o: /usr/include/boost/predef/platform/windows_store.h
Resources.o: /usr/include/boost/predef/platform/windows_phone.h
Resources.o: /usr/include/boost/predef/platform/windows_runtime.h
Resources.o: /usr/include/boost/predef/platform/ios.h
Resources.o: /usr/include/boost/predef/os/ios.h
Resources.o: /usr/include/boost/cstdint.hpp /usr/include/stdint.h
Resources.o: /usr/include/bits/libc-header-start.h /usr/include/bits/wchar.h
Resources.o: /usr/include/bits/stdint-intn.h /usr/include/bits/stdint-uintn.h
Resources.o: /usr/include/boost/assert.hpp /usr/include/assert.h
Resources.o: /usr/include/boost/noncopyable.hpp
Resources.o: /usr/include/boost/core/noncopyable.hpp
Resources.o: /usr/include/boost/cerrno.hpp
Resources.o: /usr/include/boost/config/abi_prefix.hpp
Resources.o: /usr/include/boost/config/abi_suffix.hpp
Resources.o: /usr/include/boost/system/system_error.hpp
Resources.o: /usr/include/boost/iterator/iterator_facade.hpp
Resources.o: /usr/include/boost/iterator.hpp
Resources.o: /usr/include/boost/iterator/interoperable.hpp
Resources.o: /usr/include/boost/mpl/bool.hpp
Resources.o: /usr/include/boost/mpl/bool_fwd.hpp
Resources.o: /usr/include/boost/mpl/aux_/adl_barrier.hpp
Resources.o: /usr/include/boost/mpl/aux_/config/adl.hpp
Resources.o: /usr/include/boost/mpl/aux_/config/msvc.hpp
Resources.o: /usr/include/boost/mpl/aux_/config/intel.hpp
Resources.o: /usr/include/boost/mpl/aux_/config/gcc.hpp
Resources.o: /usr/include/boost/mpl/aux_/config/workaround.hpp
Resources.o: /usr/include/boost/mpl/integral_c_tag.hpp
Resources.o: /usr/include/boost/mpl/aux_/config/static_constant.hpp
Resources.o: /usr/include/boost/mpl/or.hpp
Resources.o: /usr/include/boost/mpl/aux_/config/use_preprocessed.hpp
Resources.o: /usr/include/boost/mpl/aux_/nested_type_wknd.hpp
Resources.o: /usr/include/boost/mpl/aux_/na_spec.hpp
Resources.o: /usr/include/boost/mpl/lambda_fwd.hpp
Resources.o: /usr/include/boost/mpl/void_fwd.hpp
Resources.o: /usr/include/boost/mpl/aux_/na.hpp
Resources.o: /usr/include/boost/mpl/aux_/na_fwd.hpp
Resources.o: /usr/include/boost/mpl/aux_/config/ctps.hpp
Resources.o: /usr/include/boost/mpl/aux_/config/lambda.hpp
Resources.o: /usr/include/boost/mpl/aux_/config/ttp.hpp
Resources.o: /usr/include/boost/mpl/int.hpp
Resources.o: /usr/include/boost/mpl/int_fwd.hpp
Resources.o: /usr/include/boost/mpl/aux_/nttp_decl.hpp
Resources.o: /usr/include/boost/mpl/aux_/config/nttp.hpp
Resources.o: /usr/include/boost/preprocessor/cat.hpp
Resources.o: /usr/include/boost/preprocessor/config/config.hpp
Resources.o: /usr/include/boost/mpl/aux_/integral_wrapper.hpp
Resources.o: /usr/include/boost/mpl/aux_/static_cast.hpp
Resources.o: /usr/include/boost/mpl/aux_/arity.hpp
Resources.o: /usr/include/boost/mpl/aux_/config/dtp.hpp
Resources.o: /usr/include/boost/mpl/aux_/template_arity_fwd.hpp
Resources.o: /usr/include/boost/mpl/aux_/preprocessor/params.hpp
Resources.o: /usr/include/boost/mpl/aux_/config/preprocessor.hpp
Resources.o: /usr/include/boost/preprocessor/comma_if.hpp
Resources.o: /usr/include/boost/preprocessor/punctuation/comma_if.hpp
Resources.o: /usr/include/boost/preprocessor/control/if.hpp
Resources.o: /usr/include/boost/preprocessor/control/iif.hpp
Resources.o: /usr/include/boost/preprocessor/logical/bool.hpp
Resources.o: /usr/include/boost/preprocessor/facilities/empty.hpp
Resources.o: /usr/include/boost/preprocessor/punctuation/comma.hpp
Resources.o: /usr/include/boost/preprocessor/repeat.hpp
Resources.o: /usr/include/boost/preprocessor/repetition/repeat.hpp
Resources.o: /usr/include/boost/preprocessor/debug/error.hpp
Resources.o: /usr/include/boost/preprocessor/detail/auto_rec.hpp
Resources.o: /usr/include/boost/preprocessor/tuple/eat.hpp
Resources.o: /usr/include/boost/preprocessor/inc.hpp
Resources.o: /usr/include/boost/preprocessor/arithmetic/inc.hpp
Resources.o: /usr/include/boost/mpl/aux_/preprocessor/enum.hpp
Resources.o: /usr/include/boost/mpl/aux_/preprocessor/def_params_tail.hpp
Resources.o: /usr/include/boost/mpl/limits/arity.hpp
Resources.o: /usr/include/boost/preprocessor/logical/and.hpp
Resources.o: /usr/include/boost/preprocessor/logical/bitand.hpp
Resources.o: /usr/include/boost/preprocessor/identity.hpp
Resources.o: /usr/include/boost/preprocessor/facilities/identity.hpp
Resources.o: /usr/include/boost/preprocessor/empty.hpp
Resources.o: /usr/include/boost/preprocessor/arithmetic/add.hpp
Resources.o: /usr/include/boost/preprocessor/arithmetic/dec.hpp
Resources.o: /usr/include/boost/preprocessor/control/while.hpp
Resources.o: /usr/include/boost/preprocessor/list/fold_left.hpp
Resources.o: /usr/include/boost/preprocessor/list/detail/fold_left.hpp
Resources.o: /usr/include/boost/preprocessor/control/expr_iif.hpp
Resources.o: /usr/include/boost/preprocessor/list/adt.hpp
Resources.o: /usr/include/boost/preprocessor/detail/is_binary.hpp
Resources.o: /usr/include/boost/preprocessor/detail/check.hpp
Resources.o: /usr/include/boost/preprocessor/logical/compl.hpp
Resources.o: /usr/include/boost/preprocessor/list/fold_right.hpp
Resources.o: /usr/include/boost/preprocessor/list/detail/fold_right.hpp
Resources.o: /usr/include/boost/preprocessor/list/reverse.hpp
Resources.o: /usr/include/boost/preprocessor/control/detail/while.hpp
Resources.o: /usr/include/boost/preprocessor/tuple/elem.hpp
Resources.o: /usr/include/boost/preprocessor/facilities/expand.hpp
Resources.o: /usr/include/boost/preprocessor/facilities/overload.hpp
Resources.o: /usr/include/boost/preprocessor/variadic/size.hpp
Resources.o: /usr/include/boost/preprocessor/tuple/rem.hpp
Resources.o: /usr/include/boost/preprocessor/tuple/detail/is_single_return.hpp
Resources.o: /usr/include/boost/preprocessor/variadic/elem.hpp
Resources.o: /usr/include/boost/preprocessor/arithmetic/sub.hpp
Resources.o: /usr/include/boost/mpl/aux_/lambda_arity_param.hpp
Resources.o: /usr/include/boost/mpl/aux_/config/eti.hpp
Resources.o: /usr/include/boost/mpl/aux_/config/overload_resolution.hpp
Resources.o: /usr/include/boost/mpl/aux_/lambda_support.hpp
Resources.o: /usr/include/boost/mpl/aux_/yes_no.hpp
Resources.o: /usr/include/boost/mpl/aux_/config/arrays.hpp
Resources.o: /usr/include/boost/preprocessor/tuple/to_list.hpp
Resources.o: /usr/include/boost/preprocessor/tuple/size.hpp
Resources.o: /usr/include/boost/preprocessor/list/for_each_i.hpp
Resources.o: /usr/include/boost/preprocessor/repetition/for.hpp
Resources.o: /usr/include/boost/preprocessor/repetition/detail/for.hpp
Resources.o: /usr/include/boost/mpl/aux_/include_preprocessed.hpp
Resources.o: /usr/include/boost/mpl/aux_/config/compiler.hpp
Resources.o: /usr/include/boost/preprocessor/stringize.hpp
Resources.o: /usr/include/boost/type_traits/is_convertible.hpp
Resources.o: /usr/include/boost/type_traits/intrinsics.hpp
Resources.o: /usr/include/boost/type_traits/detail/yes_no_type.hpp
Resources.o: /usr/include/boost/type_traits/is_arithmetic.hpp
Resources.o: /usr/include/boost/type_traits/is_integral.hpp
Resources.o: /usr/include/boost/type_traits/is_floating_point.hpp
Resources.o: /usr/include/boost/type_traits/is_void.hpp
Resources.o: /usr/include/boost/type_traits/is_abstract.hpp
Resources.o: /usr/include/boost/type_traits/add_lvalue_reference.hpp
Resources.o: /usr/include/boost/type_traits/add_reference.hpp
Resources.o: /usr/include/boost/type_traits/add_rvalue_reference.hpp
Resources.o: /usr/include/boost/iterator/detail/config_def.hpp
Resources.o: /usr/include/boost/iterator/detail/config_undef.hpp
Resources.o: /usr/include/boost/iterator/iterator_traits.hpp
Resources.o: /usr/include/boost/detail/iterator.hpp
Resources.o: /usr/include/boost/iterator/iterator_categories.hpp
Resources.o: /usr/include/boost/mpl/eval_if.hpp /usr/include/boost/mpl/if.hpp
Resources.o: /usr/include/boost/mpl/aux_/value_wknd.hpp
Resources.o: /usr/include/boost/mpl/aux_/config/integral.hpp
Resources.o: /usr/include/boost/mpl/identity.hpp
Resources.o: /usr/include/boost/mpl/placeholders.hpp
Resources.o: /usr/include/boost/mpl/arg.hpp
Resources.o: /usr/include/boost/mpl/arg_fwd.hpp
Resources.o: /usr/include/boost/mpl/aux_/na_assert.hpp
Resources.o: /usr/include/boost/static_assert.hpp
Resources.o: /usr/include/boost/mpl/aux_/arity_spec.hpp
Resources.o: /usr/include/boost/mpl/aux_/arg_typedef.hpp
Resources.o: /usr/include/boost/mpl/aux_/include_preprocessed.hpp
Resources.o: /usr/include/boost/mpl/aux_/include_preprocessed.hpp
Resources.o: /usr/include/boost/iterator/detail/facade_iterator_category.hpp
Resources.o: /usr/include/boost/mpl/and.hpp
Resources.o: /usr/include/boost/mpl/aux_/include_preprocessed.hpp
Resources.o: /usr/include/boost/mpl/assert.hpp /usr/include/boost/mpl/not.hpp
Resources.o: /usr/include/boost/mpl/aux_/config/gpu.hpp
Resources.o: /usr/include/boost/mpl/aux_/config/pp_counter.hpp
Resources.o: /usr/include/boost/type_traits/is_same.hpp
Resources.o: /usr/include/boost/type_traits/is_const.hpp
Resources.o: /usr/include/boost/detail/indirect_traits.hpp
Resources.o: /usr/include/boost/type_traits/is_pointer.hpp
Resources.o: /usr/include/boost/type_traits/is_class.hpp
Resources.o: /usr/include/boost/type_traits/is_volatile.hpp
Resources.o: /usr/include/boost/type_traits/is_member_function_pointer.hpp
Resources.o: /usr/include/boost/type_traits/detail/is_mem_fun_pointer_tester.hpp
Resources.o: /usr/include/boost/type_traits/is_member_pointer.hpp
Resources.o: /usr/include/boost/type_traits/remove_pointer.hpp
Resources.o: /usr/include/boost/iterator/detail/enable_if.hpp
Resources.o: /usr/include/boost/utility/addressof.hpp
Resources.o: /usr/include/boost/core/addressof.hpp
Resources.o: /usr/include/boost/type_traits/add_const.hpp
Resources.o: /usr/include/boost/type_traits/remove_const.hpp
Resources.o: /usr/include/boost/type_traits/is_pod.hpp
Resources.o: /usr/include/boost/type_traits/is_scalar.hpp
Resources.o: /usr/include/boost/type_traits/is_enum.hpp
Resources.o: /usr/include/boost/mpl/always.hpp
Resources.o: /usr/include/boost/mpl/aux_/preprocessor/default_params.hpp
Resources.o: /usr/include/boost/mpl/apply.hpp
Resources.o: /usr/include/boost/mpl/apply_fwd.hpp
Resources.o: /usr/include/boost/mpl/aux_/include_preprocessed.hpp
Resources.o: /usr/include/boost/mpl/apply_wrap.hpp
Resources.o: /usr/include/boost/mpl/aux_/has_apply.hpp
Resources.o: /usr/include/boost/mpl/has_xxx.hpp
Resources.o: /usr/include/boost/mpl/aux_/type_wrapper.hpp
Resources.o: /usr/include/boost/mpl/aux_/config/has_xxx.hpp
Resources.o: /usr/include/boost/mpl/aux_/config/msvc_typename.hpp
Resources.o: /usr/include/boost/preprocessor/array/elem.hpp
Resources.o: /usr/include/boost/preprocessor/array/data.hpp
Resources.o: /usr/include/boost/preprocessor/array/size.hpp
Resources.o: /usr/include/boost/preprocessor/repetition/enum_params.hpp
Resources.o: /usr/include/boost/preprocessor/repetition/enum_trailing_params.hpp
Resources.o: /usr/include/boost/mpl/aux_/config/has_apply.hpp
Resources.o: /usr/include/boost/mpl/aux_/msvc_never_true.hpp
Resources.o: /usr/include/boost/mpl/aux_/include_preprocessed.hpp
Resources.o: /usr/include/boost/mpl/lambda.hpp
Resources.o: /usr/include/boost/mpl/bind.hpp
Resources.o: /usr/include/boost/mpl/bind_fwd.hpp
Resources.o: /usr/include/boost/mpl/aux_/config/bind.hpp
Resources.o: /usr/include/boost/mpl/aux_/include_preprocessed.hpp
Resources.o: /usr/include/boost/mpl/next.hpp
Resources.o: /usr/include/boost/mpl/next_prior.hpp
Resources.o: /usr/include/boost/mpl/aux_/common_name_wknd.hpp
Resources.o: /usr/include/boost/mpl/protect.hpp
Resources.o: /usr/include/boost/mpl/aux_/include_preprocessed.hpp
Resources.o: /usr/include/boost/mpl/aux_/lambda_no_ctps.hpp
Resources.o: /usr/include/boost/mpl/is_placeholder.hpp
Resources.o: /usr/include/boost/mpl/aux_/template_arity.hpp
Resources.o: /usr/include/boost/mpl/aux_/has_rebind.hpp
Resources.o: /usr/include/boost/mpl/aux_/include_preprocessed.hpp
Resources.o: /usr/include/boost/mpl/aux_/include_preprocessed.hpp
Resources.o: /usr/include/boost/mpl/aux_/include_preprocessed.hpp
Resources.o: /usr/include/boost/shared_ptr.hpp
Resources.o: /usr/include/boost/smart_ptr/shared_ptr.hpp
Resources.o: /usr/include/boost/config/no_tr1/memory.hpp
Resources.o: /usr/include/boost/checked_delete.hpp
Resources.o: /usr/include/boost/core/checked_delete.hpp
Resources.o: /usr/include/boost/throw_exception.hpp
Resources.o: /usr/include/boost/smart_ptr/detail/shared_count.hpp
Resources.o: /usr/include/boost/smart_ptr/bad_weak_ptr.hpp
Resources.o: /usr/include/boost/smart_ptr/detail/sp_counted_base.hpp
Resources.o: /usr/include/boost/smart_ptr/detail/sp_has_sync.hpp
Resources.o: /usr/include/boost/smart_ptr/detail/sp_counted_base_std_atomic.hpp
Resources.o: /usr/include/boost/detail/sp_typeinfo.hpp
Resources.o: /usr/include/boost/core/typeinfo.hpp
Resources.o: /usr/include/boost/current_function.hpp
Resources.o: /usr/include/boost/smart_ptr/detail/sp_counted_impl.hpp
Resources.o: /usr/include/boost/smart_ptr/detail/sp_disable_deprecated.hpp
Resources.o: /usr/include/boost/smart_ptr/detail/sp_convertible.hpp
Resources.o: /usr/include/boost/smart_ptr/detail/sp_nullptr_t.hpp
Resources.o: /usr/include/boost/smart_ptr/detail/sp_noexcept.hpp
Resources.o: /usr/include/boost/smart_ptr/detail/spinlock_pool.hpp
Resources.o: /usr/include/boost/smart_ptr/detail/spinlock.hpp
Resources.o: /usr/include/boost/smart_ptr/detail/spinlock_std_atomic.hpp
Resources.o: /usr/include/boost/smart_ptr/detail/yield_k.hpp
Resources.o: /usr/include/boost/predef.h /usr/include/boost/predef/language.h
Resources.o: /usr/include/boost/predef/language/stdc.h
Resources.o: /usr/include/boost/predef/language/stdcpp.h
Resources.o: /usr/include/boost/predef/language/objc.h
Resources.o: /usr/include/boost/predef/architecture.h
Resources.o: /usr/include/boost/predef/architecture/alpha.h
Resources.o: /usr/include/boost/predef/architecture/arm.h
Resources.o: /usr/include/boost/predef/architecture/blackfin.h
Resources.o: /usr/include/boost/predef/architecture/convex.h
Resources.o: /usr/include/boost/predef/architecture/ia64.h
Resources.o: /usr/include/boost/predef/architecture/m68k.h
Resources.o: /usr/include/boost/predef/architecture/mips.h
Resources.o: /usr/include/boost/predef/architecture/parisc.h
Resources.o: /usr/include/boost/predef/architecture/ppc.h
Resources.o: /usr/include/boost/predef/architecture/pyramid.h
Resources.o: /usr/include/boost/predef/architecture/rs6k.h
Resources.o: /usr/include/boost/predef/architecture/sparc.h
Resources.o: /usr/include/boost/predef/architecture/superh.h
Resources.o: /usr/include/boost/predef/architecture/sys370.h
Resources.o: /usr/include/boost/predef/architecture/sys390.h
Resources.o: /usr/include/boost/predef/architecture/x86.h
Resources.o: /usr/include/boost/predef/architecture/x86/32.h
Resources.o: /usr/include/boost/predef/architecture/x86/64.h
Resources.o: /usr/include/boost/predef/architecture/z.h
Resources.o: /usr/include/boost/predef/compiler.h
Resources.o: /usr/include/boost/predef/compiler/borland.h
Resources.o: /usr/include/boost/predef/compiler/clang.h
Resources.o: /usr/include/boost/predef/compiler/comeau.h
Resources.o: /usr/include/boost/predef/compiler/compaq.h
Resources.o: /usr/include/boost/predef/compiler/diab.h
Resources.o: /usr/include/boost/predef/compiler/digitalmars.h
Resources.o: /usr/include/boost/predef/compiler/dignus.h
Resources.o: /usr/include/boost/predef/compiler/edg.h
Resources.o: /usr/include/boost/predef/compiler/ekopath.h
Resources.o: /usr/include/boost/predef/compiler/gcc_xml.h
Resources.o: /usr/include/boost/predef/compiler/gcc.h
Resources.o: /usr/include/boost/predef/detail/comp_detected.h
Resources.o: /usr/include/boost/predef/compiler/greenhills.h
Resources.o: /usr/include/boost/predef/compiler/hp_acc.h
Resources.o: /usr/include/boost/predef/compiler/iar.h
Resources.o: /usr/include/boost/predef/compiler/ibm.h
Resources.o: /usr/include/boost/predef/compiler/intel.h
Resources.o: /usr/include/boost/predef/compiler/kai.h
Resources.o: /usr/include/boost/predef/compiler/llvm.h
Resources.o: /usr/include/boost/predef/compiler/metaware.h
Resources.o: /usr/include/boost/predef/compiler/metrowerks.h
Resources.o: /usr/include/boost/predef/compiler/microtec.h
Resources.o: /usr/include/boost/predef/compiler/mpw.h
Resources.o: /usr/include/boost/predef/compiler/palm.h
Resources.o: /usr/include/boost/predef/compiler/pgi.h
Resources.o: /usr/include/boost/predef/compiler/sgi_mipspro.h
Resources.o: /usr/include/boost/predef/compiler/sunpro.h
Resources.o: /usr/include/boost/predef/compiler/tendra.h
Resources.o: /usr/include/boost/predef/compiler/visualc.h
Resources.o: /usr/include/boost/predef/compiler/watcom.h
Resources.o: /usr/include/boost/predef/library.h
Resources.o: /usr/include/boost/predef/library/c.h
Resources.o: /usr/include/boost/predef/library/c/_prefix.h
Resources.o: /usr/include/boost/predef/detail/_cassert.h
Resources.o: /usr/include/boost/predef/library/c/gnu.h
Resources.o: /usr/include/boost/predef/library/c/uc.h
Resources.o: /usr/include/boost/predef/library/c/vms.h
Resources.o: /usr/include/boost/predef/library/c/zos.h
Resources.o: /usr/include/boost/predef/library/std.h
Resources.o: /usr/include/boost/predef/library/std/_prefix.h
Resources.o: /usr/include/boost/predef/detail/_exception.h
Resources.o: /usr/include/boost/predef/library/std/cxx.h
Resources.o: /usr/include/boost/predef/library/std/dinkumware.h
Resources.o: /usr/include/boost/predef/library/std/libcomo.h
Resources.o: /usr/include/boost/predef/library/std/modena.h
Resources.o: /usr/include/boost/predef/library/std/msl.h
Resources.o: /usr/include/boost/predef/library/std/roguewave.h
Resources.o: /usr/include/boost/predef/library/std/sgi.h
Resources.o: /usr/include/boost/predef/library/std/stdcpp3.h
Resources.o: /usr/include/boost/predef/library/std/stlport.h
Resources.o: /usr/include/boost/predef/library/std/vacpp.h
Resources.o: /usr/include/boost/predef/os.h
Resources.o: /usr/include/boost/predef/os/aix.h
Resources.o: /usr/include/boost/predef/os/amigaos.h
Resources.o: /usr/include/boost/predef/os/android.h
Resources.o: /usr/include/boost/predef/os/beos.h
Resources.o: /usr/include/boost/predef/os/bsd.h
Resources.o: /usr/include/boost/predef/os/macos.h
Resources.o: /usr/include/boost/predef/os/bsd/bsdi.h
Resources.o: /usr/include/boost/predef/os/bsd/dragonfly.h
Resources.o: /usr/include/boost/predef/os/bsd/free.h
Resources.o: /usr/include/boost/predef/os/bsd/open.h
Resources.o: /usr/include/boost/predef/os/bsd/net.h
Resources.o: /usr/include/boost/predef/os/cygwin.h
Resources.o: /usr/include/boost/predef/os/haiku.h
Resources.o: /usr/include/boost/predef/os/hpux.h
Resources.o: /usr/include/boost/predef/os/irix.h
Resources.o: /usr/include/boost/predef/os/linux.h
Resources.o: /usr/include/boost/predef/os/os400.h
Resources.o: /usr/include/boost/predef/os/qnxnto.h
Resources.o: /usr/include/boost/predef/os/solaris.h
Resources.o: /usr/include/boost/predef/os/unix.h
Resources.o: /usr/include/boost/predef/os/vms.h
Resources.o: /usr/include/boost/predef/other.h
Resources.o: /usr/include/boost/predef/other/endian.h
Resources.o: /usr/include/boost/predef/hardware.h
Resources.o: /usr/include/boost/predef/hardware/simd.h
Resources.o: /usr/include/boost/predef/hardware/simd/x86.h
Resources.o: /usr/include/boost/predef/hardware/simd/x86/versions.h
Resources.o: /usr/include/boost/predef/hardware/simd/x86_amd.h
Resources.o: /usr/include/boost/predef/hardware/simd/x86_amd/versions.h
Resources.o: /usr/include/boost/predef/hardware/simd/arm.h
Resources.o: /usr/include/boost/predef/hardware/simd/arm/versions.h
Resources.o: /usr/include/boost/predef/hardware/simd/ppc.h
Resources.o: /usr/include/boost/predef/hardware/simd/ppc/versions.h
Resources.o: /usr/include/boost/predef/version.h /usr/include/sched.h
Resources.o: /usr/include/bits/types/time_t.h
Resources.o: /usr/include/bits/types/struct_timespec.h
Resources.o: /usr/include/bits/sched.h /usr/include/bits/cpu-set.h
Resources.o: /usr/include/time.h /usr/include/bits/time.h
Resources.o: /usr/include/bits/types/clock_t.h
Resources.o: /usr/include/bits/types/struct_tm.h
Resources.o: /usr/include/bits/types/clockid_t.h
Resources.o: /usr/include/bits/types/timer_t.h
Resources.o: /usr/include/bits/types/struct_itimerspec.h
Resources.o: /usr/include/bits/types/locale_t.h
Resources.o: /usr/include/bits/types/__locale_t.h
Resources.o: /usr/include/boost/smart_ptr/detail/operator_bool.hpp
Resources.o: /usr/include/boost/smart_ptr/detail/local_sp_deleter.hpp
Resources.o: /usr/include/boost/smart_ptr/detail/local_counted_base.hpp
Resources.o: /usr/include/boost/io/detail/quoted_manip.hpp
Resources.o: /usr/include/boost/io/ios_state.hpp
Resources.o: /usr/include/boost/io_fwd.hpp
Resources.o: /usr/include/boost/functional/hash_fwd.hpp
Resources.o: /usr/include/boost/functional/hash/hash_fwd.hpp
Resources.o: /usr/include/boost/filesystem/operations.hpp
Resources.o: /usr/include/boost/detail/scoped_enum_emulation.hpp
Resources.o: /usr/include/boost/core/scoped_enum.hpp
Resources.o: /usr/include/boost/detail/bitmask.hpp
Resources.o: /usr/include/boost/range/mutable_iterator.hpp
Resources.o: /usr/include/boost/range/config.hpp
Resources.o: /usr/include/boost/range/range_fwd.hpp
Resources.o: /usr/include/boost/range/detail/extract_optional_type.hpp
Resources.o: /usr/include/boost/range/detail/msvc_has_iterator_workaround.hpp
Resources.o: /usr/include/boost/range/const_iterator.hpp
Resources.o: /usr/include/boost/filesystem/convenience.hpp
Resources.o: /usr/include/boost/filesystem/string_file.hpp
Resources.o: /usr/include/boost/filesystem/fstream.hpp
Resources.o: /usr/include/boost/foreach.hpp
Resources.o: /usr/include/boost/mpl/logical.hpp
Resources.o: /usr/include/boost/range/end.hpp
Resources.o: /usr/include/boost/range/detail/implementation_help.hpp
Resources.o: /usr/include/boost/range/detail/common.hpp
Resources.o: /usr/include/boost/range/detail/sfinae.hpp /usr/include/string.h
Resources.o: /usr/include/strings.h /usr/include/wchar.h
Resources.o: /usr/include/bits/floatn.h /usr/include/bits/floatn-common.h
Resources.o: /usr/include/bits/types/wint_t.h
Resources.o: /usr/include/bits/types/mbstate_t.h
Resources.o: /usr/include/bits/types/__mbstate_t.h
Resources.o: /usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h
Resources.o: /usr/include/boost/range/iterator.hpp
Resources.o: /usr/include/boost/range/begin.hpp
Resources.o: /usr/include/boost/range/rend.hpp
Resources.o: /usr/include/boost/range/reverse_iterator.hpp
Resources.o: /usr/include/boost/iterator/reverse_iterator.hpp
Resources.o: /usr/include/boost/iterator/iterator_adaptor.hpp
Resources.o: /usr/include/boost/range/rbegin.hpp
Resources.o: /usr/include/boost/type_traits/is_base_and_derived.hpp
Resources.o: /usr/include/boost/foreach_fwd.hpp
Resources.o: /usr/include/boost/aligned_storage.hpp
Resources.o: /usr/include/boost/type_traits/aligned_storage.hpp
Resources.o: /usr/include/boost/type_traits/alignment_of.hpp
Resources.o: /usr/include/boost/type_traits/type_with_alignment.hpp
Resources.o: /usr/include/boost/type_traits/conditional.hpp Resources.hpp
Resources.o: /home/cipsi/Personal/opengl_framework/components/Texture.hpp
Resources.o: /usr/include/GL/glew.h /usr/include/GL/glu.h
Resources.o: /usr/include/GL/gl.h
Resources.o: /home/cipsi/Personal/opengl_framework/components/Mesh.hpp
Resources.o: Loader.hpp /usr/include/glm/glm.hpp
Resources.o: /usr/include/glm/detail/_fixes.hpp
Resources.o: /usr/include/glm/detail/setup.hpp
Resources.o: /usr/include/glm/simd/platform.h /usr/include/glm/fwd.hpp
Resources.o: /usr/include/glm/detail/type_int.hpp
Resources.o: /usr/include/glm/detail/setup.hpp
Resources.o: /usr/include/glm/detail/type_float.hpp
Resources.o: /usr/include/glm/detail/type_vec.hpp
Resources.o: /usr/include/glm/detail/qualifier.hpp
Resources.o: /usr/include/glm/detail/type_int.hpp
Resources.o: /usr/include/glm/detail/compute_vector_relational.hpp
Resources.o: /usr/include/glm/detail/type_mat.hpp /usr/include/glm/vec2.hpp
Resources.o: /usr/include/glm/detail/type_vec2.hpp
Resources.o: /usr/include/glm/detail/type_vec.hpp
Resources.o: /usr/include/glm/detail/type_vec2.inl /usr/include/glm/vec3.hpp
Resources.o: /usr/include/glm/detail/type_vec3.hpp
Resources.o: /usr/include/glm/detail/type_vec3.inl /usr/include/glm/vec4.hpp
Resources.o: /usr/include/glm/detail/type_vec4.hpp
Resources.o: /usr/include/glm/detail/type_vec4.inl
Resources.o: /usr/include/glm/mat2x2.hpp
Resources.o: /usr/include/glm/detail/type_mat2x2.hpp /usr/include/glm/fwd.hpp
Resources.o: /usr/include/glm/detail/type_vec2.hpp
Resources.o: /usr/include/glm/detail/type_mat.hpp
Resources.o: /usr/include/glm/detail/type_mat2x2.inl
Resources.o: /usr/include/glm/matrix.hpp
Resources.o: /usr/include/glm/detail/qualifier.hpp
Resources.o: /usr/include/glm/mat2x3.hpp
Resources.o: /usr/include/glm/detail/type_mat2x3.hpp
Resources.o: /usr/include/glm/detail/type_vec3.hpp
Resources.o: /usr/include/glm/detail/type_mat2x3.inl
Resources.o: /usr/include/glm/mat2x4.hpp
Resources.o: /usr/include/glm/detail/type_mat2x4.hpp
Resources.o: /usr/include/glm/detail/type_vec4.hpp
Resources.o: /usr/include/glm/detail/type_mat2x4.inl
Resources.o: /usr/include/glm/mat3x2.hpp
Resources.o: /usr/include/glm/detail/type_mat3x2.hpp
Resources.o: /usr/include/glm/detail/type_mat3x2.inl
Resources.o: /usr/include/glm/mat3x3.hpp
Resources.o: /usr/include/glm/detail/type_mat3x3.hpp
Resources.o: /usr/include/glm/detail/type_mat3x3.inl
Resources.o: /usr/include/glm/mat3x4.hpp
Resources.o: /usr/include/glm/detail/type_mat3x4.hpp
Resources.o: /usr/include/glm/detail/type_mat3x4.inl
Resources.o: /usr/include/glm/mat4x2.hpp
Resources.o: /usr/include/glm/detail/type_mat4x2.hpp
Resources.o: /usr/include/glm/detail/type_mat4x2.inl
Resources.o: /usr/include/glm/mat4x3.hpp
Resources.o: /usr/include/glm/detail/type_mat4x3.hpp
Resources.o: /usr/include/glm/detail/type_mat4x3.inl
Resources.o: /usr/include/glm/mat4x4.hpp
Resources.o: /usr/include/glm/detail/type_mat4x4.hpp
Resources.o: /usr/include/glm/detail/type_mat4x4.inl
Resources.o: /usr/include/glm/detail/type_mat4x4_simd.inl
Resources.o: /usr/include/glm/detail/func_matrix.inl
Resources.o: /usr/include/glm/geometric.hpp
Resources.o: /usr/include/glm/detail/func_geometric.inl
Resources.o: /usr/include/glm/exponential.hpp
Resources.o: /usr/include/glm/detail/type_vec1.hpp
Resources.o: /usr/include/glm/detail/func_exponential.inl
Resources.o: /usr/include/glm/vector_relational.hpp
Resources.o: /usr/include/glm/detail/func_vector_relational.inl
Resources.o: /usr/include/glm/detail/_vectorize.hpp
Resources.o: /usr/include/glm/detail/type_vec1.hpp
Resources.o: /usr/include/glm/common.hpp
Resources.o: /usr/include/glm/detail/func_common.inl
Resources.o: /usr/include/glm/detail/type_float.hpp
Resources.o: /usr/include/glm/trigonometric.hpp
Resources.o: /usr/include/glm/detail/func_trigonometric.inl
Resources.o: /usr/include/glm/exponential.hpp /usr/include/glm/common.hpp
Resources.o: /usr/include/glm/packing.hpp
Resources.o: /usr/include/glm/detail/func_packing.inl
Resources.o: /usr/include/glm/detail/type_half.hpp
Resources.o: /usr/include/glm/detail/type_half.inl
Resources.o: /usr/include/glm/geometric.hpp /usr/include/glm/matrix.hpp
Resources.o: /usr/include/glm/vector_relational.hpp
Resources.o: /usr/include/glm/integer.hpp
Resources.o: /usr/include/glm/detail/func_integer.inl
Resources.o: /usr/include/glm/ext/vec1.hpp
Resources.o: /usr/include/glm/detail/type_vec.hpp
Resources.o: /usr/include/glm/detail/type_vec1.inl Debug.hpp Utilities.hpp
Resources.o: /home/cipsi/Personal/opengl_framework/components/Camera.hpp
Resources.o: /usr/include/SFML/Window.hpp /usr/include/SFML/System.hpp
Resources.o: /usr/include/SFML/Config.hpp /usr/include/SFML/System/Clock.hpp
Resources.o: /usr/include/SFML/System/Export.hpp
Resources.o: /usr/include/SFML/System/Time.hpp
Resources.o: /usr/include/SFML/System/Err.hpp
Resources.o: /usr/include/SFML/System/FileInputStream.hpp
Resources.o: /usr/include/SFML/System/InputStream.hpp
Resources.o: /usr/include/SFML/System/NonCopyable.hpp
Resources.o: /usr/include/SFML/System/Lock.hpp
Resources.o: /usr/include/SFML/System/MemoryInputStream.hpp
Resources.o: /usr/include/SFML/System/Mutex.hpp
Resources.o: /usr/include/SFML/System/Sleep.hpp
Resources.o: /usr/include/SFML/System/String.hpp
Resources.o: /usr/include/SFML/System/Utf.hpp
Resources.o: /usr/include/SFML/System/Utf.inl
Resources.o: /usr/include/SFML/System/String.inl
Resources.o: /usr/include/SFML/System/Thread.hpp
Resources.o: /usr/include/SFML/System/Thread.inl
Resources.o: /usr/include/SFML/System/ThreadLocal.hpp
Resources.o: /usr/include/SFML/System/ThreadLocalPtr.hpp
Resources.o: /usr/include/SFML/System/ThreadLocalPtr.inl
Resources.o: /usr/include/SFML/System/Vector2.hpp
Resources.o: /usr/include/SFML/System/Vector2.inl
Resources.o: /usr/include/SFML/System/Vector3.hpp
Resources.o: /usr/include/SFML/System/Vector3.inl
Resources.o: /usr/include/SFML/Window/Context.hpp
Resources.o: /usr/include/SFML/Window/Export.hpp
Resources.o: /usr/include/SFML/Window/GlResource.hpp
Resources.o: /usr/include/SFML/Window/ContextSettings.hpp
Resources.o: /usr/include/SFML/Window/Event.hpp
Resources.o: /usr/include/SFML/Window/Joystick.hpp
Resources.o: /usr/include/SFML/Window/Keyboard.hpp
Resources.o: /usr/include/SFML/Window/Mouse.hpp
Resources.o: /usr/include/SFML/Window/Sensor.hpp
Resources.o: /usr/include/SFML/Window/Touch.hpp
Resources.o: /usr/include/SFML/Window/VideoMode.hpp
Resources.o: /usr/include/SFML/Window/Window.hpp
Resources.o: /usr/include/SFML/Window/WindowHandle.hpp
Resources.o: /usr/include/SFML/Window/WindowStyle.hpp
Resources.o: /home/cipsi/Personal/opengl_framework/components/Component.hpp
systems/Renderer.o: /usr/include/GL/glew.h /usr/include/stdint.h
systems/Renderer.o: /usr/include/bits/libc-header-start.h
systems/Renderer.o: /usr/include/features.h /usr/include/stdc-predef.h
systems/Renderer.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
systems/Renderer.o: /usr/include/bits/long-double.h /usr/include/gnu/stubs.h
systems/Renderer.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
systems/Renderer.o: /usr/include/bits/wchar.h /usr/include/bits/stdint-intn.h
systems/Renderer.o: /usr/include/bits/stdint-uintn.h /usr/include/GL/glu.h
systems/Renderer.o: /usr/include/GL/gl.h
systems/Renderer.o: /usr/include/glm/gtc/matrix_transform.hpp
systems/Renderer.o: /usr/include/glm/mat4x4.hpp
systems/Renderer.o: /usr/include/glm/detail/setup.hpp
systems/Renderer.o: /usr/include/glm/simd/platform.h
systems/Renderer.o: /usr/include/glm/detail/type_mat4x4.hpp
systems/Renderer.o: /usr/include/glm/fwd.hpp
systems/Renderer.o: /usr/include/glm/detail/type_int.hpp
systems/Renderer.o: /usr/include/glm/detail/setup.hpp
systems/Renderer.o: /usr/include/glm/detail/type_float.hpp
systems/Renderer.o: /usr/include/glm/detail/type_vec.hpp
systems/Renderer.o: /usr/include/glm/detail/qualifier.hpp
systems/Renderer.o: /usr/include/glm/detail/type_int.hpp
systems/Renderer.o: /usr/include/glm/detail/compute_vector_relational.hpp
systems/Renderer.o: /usr/include/glm/detail/type_mat.hpp
systems/Renderer.o: /usr/include/glm/detail/type_vec4.hpp
systems/Renderer.o: /usr/include/glm/detail/type_vec.hpp
systems/Renderer.o: /usr/include/glm/detail/type_vec4.inl
systems/Renderer.o: /usr/include/glm/detail/type_mat.hpp
systems/Renderer.o: /usr/include/glm/detail/type_mat4x4.inl
systems/Renderer.o: /usr/include/glm/matrix.hpp
systems/Renderer.o: /usr/include/glm/detail/qualifier.hpp
systems/Renderer.o: /usr/include/glm/vec2.hpp
systems/Renderer.o: /usr/include/glm/detail/type_vec2.hpp
systems/Renderer.o: /usr/include/glm/detail/type_vec2.inl
systems/Renderer.o: /usr/include/glm/vec3.hpp
systems/Renderer.o: /usr/include/glm/detail/type_vec3.hpp
systems/Renderer.o: /usr/include/glm/detail/type_vec3.inl
systems/Renderer.o: /usr/include/glm/vec4.hpp
systems/Renderer.o: /usr/include/glm/detail/type_vec4.hpp
systems/Renderer.o: /usr/include/glm/mat2x2.hpp
systems/Renderer.o: /usr/include/glm/detail/type_mat2x2.hpp
systems/Renderer.o: /usr/include/glm/detail/type_vec2.hpp
systems/Renderer.o: /usr/include/glm/detail/type_mat2x2.inl
systems/Renderer.o: /usr/include/glm/mat2x3.hpp
systems/Renderer.o: /usr/include/glm/detail/type_mat2x3.hpp
systems/Renderer.o: /usr/include/glm/detail/type_vec3.hpp
systems/Renderer.o: /usr/include/glm/detail/type_mat2x3.inl
systems/Renderer.o: /usr/include/glm/mat2x4.hpp
systems/Renderer.o: /usr/include/glm/detail/type_mat2x4.hpp
systems/Renderer.o: /usr/include/glm/detail/type_mat2x4.inl
systems/Renderer.o: /usr/include/glm/mat3x2.hpp
systems/Renderer.o: /usr/include/glm/detail/type_mat3x2.hpp
systems/Renderer.o: /usr/include/glm/detail/type_mat3x2.inl
systems/Renderer.o: /usr/include/glm/mat3x3.hpp
systems/Renderer.o: /usr/include/glm/detail/type_mat3x3.hpp
systems/Renderer.o: /usr/include/glm/detail/type_mat3x3.inl
systems/Renderer.o: /usr/include/glm/mat3x4.hpp
systems/Renderer.o: /usr/include/glm/detail/type_mat3x4.hpp
systems/Renderer.o: /usr/include/glm/detail/type_mat3x4.inl
systems/Renderer.o: /usr/include/glm/mat4x2.hpp
systems/Renderer.o: /usr/include/glm/detail/type_mat4x2.hpp
systems/Renderer.o: /usr/include/glm/detail/type_mat4x2.inl
systems/Renderer.o: /usr/include/glm/mat4x3.hpp
systems/Renderer.o: /usr/include/glm/detail/type_mat4x3.hpp
systems/Renderer.o: /usr/include/glm/detail/type_mat4x3.inl
systems/Renderer.o: /usr/include/glm/mat4x4.hpp
systems/Renderer.o: /usr/include/glm/detail/func_matrix.inl
systems/Renderer.o: /usr/include/glm/geometric.hpp
systems/Renderer.o: /usr/include/glm/detail/func_geometric.inl
systems/Renderer.o: /usr/include/glm/exponential.hpp
systems/Renderer.o: /usr/include/glm/detail/type_vec1.hpp
systems/Renderer.o: /usr/include/glm/detail/func_exponential.inl
systems/Renderer.o: /usr/include/glm/vector_relational.hpp
systems/Renderer.o: /usr/include/glm/detail/func_vector_relational.inl
systems/Renderer.o: /usr/include/glm/detail/_vectorize.hpp
systems/Renderer.o: /usr/include/glm/detail/type_vec1.hpp
systems/Renderer.o: /usr/include/glm/common.hpp
systems/Renderer.o: /usr/include/glm/detail/_fixes.hpp
systems/Renderer.o: /usr/include/glm/detail/func_common.inl
systems/Renderer.o: /usr/include/glm/detail/type_float.hpp
systems/Renderer.o: /usr/include/glm/detail/type_mat4x4_simd.inl
systems/Renderer.o: /usr/include/glm/vec2.hpp /usr/include/glm/vec3.hpp
systems/Renderer.o: /usr/include/glm/vec4.hpp
systems/Renderer.o: /usr/include/glm/gtc/constants.hpp
systems/Renderer.o: /usr/include/glm/detail/setup.hpp
systems/Renderer.o: /usr/include/glm/gtc/constants.inl
systems/Renderer.o: /usr/include/glm/gtc/matrix_transform.inl
systems/Renderer.o: /usr/include/glm/trigonometric.hpp
systems/Renderer.o: /usr/include/glm/detail/func_trigonometric.inl
systems/Renderer.o: /usr/include/glm/glm.hpp /usr/include/glm/fwd.hpp
systems/Renderer.o: /usr/include/glm/trigonometric.hpp
systems/Renderer.o: /usr/include/glm/exponential.hpp
systems/Renderer.o: /usr/include/glm/common.hpp /usr/include/glm/packing.hpp
systems/Renderer.o: /usr/include/glm/detail/func_packing.inl
systems/Renderer.o: /usr/include/glm/detail/type_half.hpp
systems/Renderer.o: /usr/include/glm/detail/type_half.inl
systems/Renderer.o: /usr/include/glm/geometric.hpp
systems/Renderer.o: /usr/include/glm/matrix.hpp
systems/Renderer.o: /usr/include/glm/vector_relational.hpp
systems/Renderer.o: /usr/include/glm/integer.hpp
systems/Renderer.o: /usr/include/glm/detail/func_integer.inl
systems/Renderer.o: /usr/include/glm/ext/vec1.hpp
systems/Renderer.o: /usr/include/glm/detail/type_vec.hpp
systems/Renderer.o: /usr/include/glm/detail/type_vec1.inl
systems/Renderer.o: systems/Renderer.hpp
systems/Renderer.o: /home/cipsi/Personal/opengl_framework/components/Model.hpp
systems/Renderer.o: /home/cipsi/Personal/opengl_framework/components/Mesh.hpp
systems/Renderer.o: /home/cipsi/Personal/opengl_framework/components/Texture.hpp
systems/Renderer.o: /home/cipsi/Personal/opengl_framework/components/Component.hpp
systems/Renderer.o: /home/cipsi/Personal/opengl_framework/entities/Entity.hpp
systems/Renderer.o: Debug.hpp
systems/Renderer.o: /home/cipsi/Personal/opengl_framework/shaders/StaticShader.hpp
systems/Renderer.o: /home/cipsi/Personal/opengl_framework/shaders/Shader.hpp
systems/Renderer.o: Light.hpp systems/System.hpp
systems/Renderer.o: /home/cipsi/Personal/opengl_framework/components/Camera.hpp
systems/Renderer.o: /usr/include/SFML/Window.hpp /usr/include/SFML/System.hpp
systems/Renderer.o: /usr/include/SFML/Config.hpp
systems/Renderer.o: /usr/include/SFML/System/Clock.hpp
systems/Renderer.o: /usr/include/SFML/System/Export.hpp
systems/Renderer.o: /usr/include/SFML/System/Time.hpp
systems/Renderer.o: /usr/include/SFML/System/Err.hpp
systems/Renderer.o: /usr/include/SFML/System/FileInputStream.hpp
systems/Renderer.o: /usr/include/SFML/System/InputStream.hpp
systems/Renderer.o: /usr/include/SFML/System/NonCopyable.hpp
systems/Renderer.o: /usr/include/SFML/System/Lock.hpp
systems/Renderer.o: /usr/include/SFML/System/MemoryInputStream.hpp
systems/Renderer.o: /usr/include/SFML/System/Mutex.hpp
systems/Renderer.o: /usr/include/SFML/System/Sleep.hpp
systems/Renderer.o: /usr/include/SFML/System/String.hpp
systems/Renderer.o: /usr/include/SFML/System/Utf.hpp
systems/Renderer.o: /usr/include/SFML/System/Utf.inl
systems/Renderer.o: /usr/include/SFML/System/String.inl
systems/Renderer.o: /usr/include/SFML/System/Thread.hpp
systems/Renderer.o: /usr/include/SFML/System/Thread.inl
systems/Renderer.o: /usr/include/SFML/System/ThreadLocal.hpp
systems/Renderer.o: /usr/include/SFML/System/ThreadLocalPtr.hpp
systems/Renderer.o: /usr/include/SFML/System/ThreadLocalPtr.inl
systems/Renderer.o: /usr/include/SFML/System/Vector2.hpp
systems/Renderer.o: /usr/include/SFML/System/Vector2.inl
systems/Renderer.o: /usr/include/SFML/System/Vector3.hpp
systems/Renderer.o: /usr/include/SFML/System/Vector3.inl
systems/Renderer.o: /usr/include/SFML/Window/Context.hpp
systems/Renderer.o: /usr/include/SFML/Window/Export.hpp
systems/Renderer.o: /usr/include/SFML/Window/GlResource.hpp
systems/Renderer.o: /usr/include/SFML/Window/ContextSettings.hpp
systems/Renderer.o: /usr/include/SFML/Window/Event.hpp
systems/Renderer.o: /usr/include/SFML/Window/Joystick.hpp
systems/Renderer.o: /usr/include/SFML/Window/Keyboard.hpp
systems/Renderer.o: /usr/include/SFML/Window/Mouse.hpp
systems/Renderer.o: /usr/include/SFML/Window/Sensor.hpp
systems/Renderer.o: /usr/include/SFML/Window/Touch.hpp
systems/Renderer.o: /usr/include/SFML/Window/VideoMode.hpp
systems/Renderer.o: /usr/include/SFML/Window/Window.hpp
systems/Renderer.o: /usr/include/SFML/Window/WindowHandle.hpp
systems/Renderer.o: /usr/include/SFML/Window/WindowStyle.hpp
systems/Renderer.o: /home/cipsi/Personal/opengl_framework/components/Transform.hpp
systems/Renderer.o: Utilities.hpp
systems/Transformer.o: systems/Transformer.hpp systems/System.hpp
systems/Transformer.o: /home/cipsi/Personal/opengl_framework/components/Component.hpp
systems/Transformer.o: Debug.hpp
systems/Transformer.o: /home/cipsi/Personal/opengl_framework/components/Transform.hpp
systems/Transformer.o: /usr/include/glm/glm.hpp
systems/Transformer.o: /usr/include/glm/detail/_fixes.hpp
systems/Transformer.o: /usr/include/glm/detail/setup.hpp
systems/Transformer.o: /usr/include/glm/simd/platform.h
systems/Transformer.o: /usr/include/glm/fwd.hpp
systems/Transformer.o: /usr/include/glm/detail/type_int.hpp
systems/Transformer.o: /usr/include/glm/detail/setup.hpp
systems/Transformer.o: /usr/include/glm/detail/type_float.hpp
systems/Transformer.o: /usr/include/glm/detail/type_vec.hpp
systems/Transformer.o: /usr/include/glm/detail/qualifier.hpp
systems/Transformer.o: /usr/include/glm/detail/type_int.hpp
systems/Transformer.o: /usr/include/glm/detail/compute_vector_relational.hpp
systems/Transformer.o: /usr/include/glm/detail/type_mat.hpp
systems/Transformer.o: /usr/include/glm/vec2.hpp
systems/Transformer.o: /usr/include/glm/detail/type_vec2.hpp
systems/Transformer.o: /usr/include/glm/detail/type_vec.hpp
systems/Transformer.o: /usr/include/glm/detail/type_vec2.inl
systems/Transformer.o: /usr/include/glm/vec3.hpp
systems/Transformer.o: /usr/include/glm/detail/type_vec3.hpp
systems/Transformer.o: /usr/include/glm/detail/type_vec3.inl
systems/Transformer.o: /usr/include/glm/vec4.hpp
systems/Transformer.o: /usr/include/glm/detail/type_vec4.hpp
systems/Transformer.o: /usr/include/glm/detail/type_vec4.inl
systems/Transformer.o: /usr/include/glm/mat2x2.hpp
systems/Transformer.o: /usr/include/glm/detail/type_mat2x2.hpp
systems/Transformer.o: /usr/include/glm/fwd.hpp
systems/Transformer.o: /usr/include/glm/detail/type_vec2.hpp
systems/Transformer.o: /usr/include/glm/detail/type_mat.hpp
systems/Transformer.o: /usr/include/glm/detail/type_mat2x2.inl
systems/Transformer.o: /usr/include/glm/matrix.hpp
systems/Transformer.o: /usr/include/glm/detail/qualifier.hpp
systems/Transformer.o: /usr/include/glm/mat2x3.hpp
systems/Transformer.o: /usr/include/glm/detail/type_mat2x3.hpp
systems/Transformer.o: /usr/include/glm/detail/type_vec3.hpp
systems/Transformer.o: /usr/include/glm/detail/type_mat2x3.inl
systems/Transformer.o: /usr/include/glm/mat2x4.hpp
systems/Transformer.o: /usr/include/glm/detail/type_mat2x4.hpp
systems/Transformer.o: /usr/include/glm/detail/type_vec4.hpp
systems/Transformer.o: /usr/include/glm/detail/type_mat2x4.inl
systems/Transformer.o: /usr/include/glm/mat3x2.hpp
systems/Transformer.o: /usr/include/glm/detail/type_mat3x2.hpp
systems/Transformer.o: /usr/include/glm/detail/type_mat3x2.inl
systems/Transformer.o: /usr/include/glm/mat3x3.hpp
systems/Transformer.o: /usr/include/glm/detail/type_mat3x3.hpp
systems/Transformer.o: /usr/include/glm/detail/type_mat3x3.inl
systems/Transformer.o: /usr/include/glm/mat3x4.hpp
systems/Transformer.o: /usr/include/glm/detail/type_mat3x4.hpp
systems/Transformer.o: /usr/include/glm/detail/type_mat3x4.inl
systems/Transformer.o: /usr/include/glm/mat4x2.hpp
systems/Transformer.o: /usr/include/glm/detail/type_mat4x2.hpp
systems/Transformer.o: /usr/include/glm/detail/type_mat4x2.inl
systems/Transformer.o: /usr/include/glm/mat4x3.hpp
systems/Transformer.o: /usr/include/glm/detail/type_mat4x3.hpp
systems/Transformer.o: /usr/include/glm/detail/type_mat4x3.inl
systems/Transformer.o: /usr/include/glm/mat4x4.hpp
systems/Transformer.o: /usr/include/glm/detail/type_mat4x4.hpp
systems/Transformer.o: /usr/include/glm/detail/type_mat4x4.inl
systems/Transformer.o: /usr/include/glm/detail/type_mat4x4_simd.inl
systems/Transformer.o: /usr/include/glm/detail/func_matrix.inl
systems/Transformer.o: /usr/include/glm/geometric.hpp
systems/Transformer.o: /usr/include/glm/detail/func_geometric.inl
systems/Transformer.o: /usr/include/glm/exponential.hpp
systems/Transformer.o: /usr/include/glm/detail/type_vec1.hpp
systems/Transformer.o: /usr/include/glm/detail/func_exponential.inl
systems/Transformer.o: /usr/include/glm/vector_relational.hpp
systems/Transformer.o: /usr/include/glm/detail/func_vector_relational.inl
systems/Transformer.o: /usr/include/glm/detail/_vectorize.hpp
systems/Transformer.o: /usr/include/glm/detail/type_vec1.hpp
systems/Transformer.o: /usr/include/glm/common.hpp
systems/Transformer.o: /usr/include/glm/detail/func_common.inl
systems/Transformer.o: /usr/include/glm/detail/type_float.hpp
systems/Transformer.o: /usr/include/glm/trigonometric.hpp
systems/Transformer.o: /usr/include/glm/detail/func_trigonometric.inl
systems/Transformer.o: /usr/include/glm/exponential.hpp
systems/Transformer.o: /usr/include/glm/common.hpp
systems/Transformer.o: /usr/include/glm/packing.hpp
systems/Transformer.o: /usr/include/glm/detail/func_packing.inl
systems/Transformer.o: /usr/include/glm/detail/type_half.hpp
systems/Transformer.o: /usr/include/glm/detail/type_half.inl
systems/Transformer.o: /usr/include/glm/geometric.hpp
systems/Transformer.o: /usr/include/glm/matrix.hpp
systems/Transformer.o: /usr/include/glm/vector_relational.hpp
systems/Transformer.o: /usr/include/glm/integer.hpp
systems/Transformer.o: /usr/include/glm/detail/func_integer.inl
systems/Transformer.o: /usr/include/glm/ext/vec1.hpp
systems/Transformer.o: /usr/include/glm/detail/type_vec.hpp
systems/Transformer.o: /usr/include/glm/detail/type_vec1.inl
systems/System.o: systems/System.hpp
systems/System.o: /home/cipsi/Personal/opengl_framework/components/Component.hpp
systems/System.o: Debug.hpp
systems/System.o: /home/cipsi/Personal/opengl_framework/components/Model.hpp
systems/System.o: /home/cipsi/Personal/opengl_framework/components/Mesh.hpp
systems/System.o: /usr/include/GL/glew.h /usr/include/stdint.h
systems/System.o: /usr/include/bits/libc-header-start.h
systems/System.o: /usr/include/features.h /usr/include/stdc-predef.h
systems/System.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
systems/System.o: /usr/include/bits/long-double.h /usr/include/gnu/stubs.h
systems/System.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
systems/System.o: /usr/include/bits/wchar.h /usr/include/bits/stdint-intn.h
systems/System.o: /usr/include/bits/stdint-uintn.h /usr/include/GL/glu.h
systems/System.o: /usr/include/GL/gl.h
systems/System.o: /home/cipsi/Personal/opengl_framework/components/Texture.hpp
systems/System.o: /home/cipsi/Personal/opengl_framework/components/Transform.hpp
systems/System.o: /usr/include/glm/glm.hpp /usr/include/glm/detail/_fixes.hpp
systems/System.o: /usr/include/glm/detail/setup.hpp
systems/System.o: /usr/include/glm/simd/platform.h /usr/include/glm/fwd.hpp
systems/System.o: /usr/include/glm/detail/type_int.hpp
systems/System.o: /usr/include/glm/detail/setup.hpp
systems/System.o: /usr/include/glm/detail/type_float.hpp
systems/System.o: /usr/include/glm/detail/type_vec.hpp
systems/System.o: /usr/include/glm/detail/qualifier.hpp
systems/System.o: /usr/include/glm/detail/type_int.hpp
systems/System.o: /usr/include/glm/detail/compute_vector_relational.hpp
systems/System.o: /usr/include/glm/detail/type_mat.hpp
systems/System.o: /usr/include/glm/vec2.hpp
systems/System.o: /usr/include/glm/detail/type_vec2.hpp
systems/System.o: /usr/include/glm/detail/type_vec.hpp
systems/System.o: /usr/include/glm/detail/type_vec2.inl
systems/System.o: /usr/include/glm/vec3.hpp
systems/System.o: /usr/include/glm/detail/type_vec3.hpp
systems/System.o: /usr/include/glm/detail/type_vec3.inl
systems/System.o: /usr/include/glm/vec4.hpp
systems/System.o: /usr/include/glm/detail/type_vec4.hpp
systems/System.o: /usr/include/glm/detail/type_vec4.inl
systems/System.o: /usr/include/glm/mat2x2.hpp
systems/System.o: /usr/include/glm/detail/type_mat2x2.hpp
systems/System.o: /usr/include/glm/fwd.hpp
systems/System.o: /usr/include/glm/detail/type_vec2.hpp
systems/System.o: /usr/include/glm/detail/type_mat.hpp
systems/System.o: /usr/include/glm/detail/type_mat2x2.inl
systems/System.o: /usr/include/glm/matrix.hpp
systems/System.o: /usr/include/glm/detail/qualifier.hpp
systems/System.o: /usr/include/glm/mat2x3.hpp
systems/System.o: /usr/include/glm/detail/type_mat2x3.hpp
systems/System.o: /usr/include/glm/detail/type_vec3.hpp
systems/System.o: /usr/include/glm/detail/type_mat2x3.inl
systems/System.o: /usr/include/glm/mat2x4.hpp
systems/System.o: /usr/include/glm/detail/type_mat2x4.hpp
systems/System.o: /usr/include/glm/detail/type_vec4.hpp
systems/System.o: /usr/include/glm/detail/type_mat2x4.inl
systems/System.o: /usr/include/glm/mat3x2.hpp
systems/System.o: /usr/include/glm/detail/type_mat3x2.hpp
systems/System.o: /usr/include/glm/detail/type_mat3x2.inl
systems/System.o: /usr/include/glm/mat3x3.hpp
systems/System.o: /usr/include/glm/detail/type_mat3x3.hpp
systems/System.o: /usr/include/glm/detail/type_mat3x3.inl
systems/System.o: /usr/include/glm/mat3x4.hpp
systems/System.o: /usr/include/glm/detail/type_mat3x4.hpp
systems/System.o: /usr/include/glm/detail/type_mat3x4.inl
systems/System.o: /usr/include/glm/mat4x2.hpp
systems/System.o: /usr/include/glm/detail/type_mat4x2.hpp
systems/System.o: /usr/include/glm/detail/type_mat4x2.inl
systems/System.o: /usr/include/glm/mat4x3.hpp
systems/System.o: /usr/include/glm/detail/type_mat4x3.hpp
systems/System.o: /usr/include/glm/detail/type_mat4x3.inl
systems/System.o: /usr/include/glm/mat4x4.hpp
systems/System.o: /usr/include/glm/detail/type_mat4x4.hpp
systems/System.o: /usr/include/glm/detail/type_mat4x4.inl
systems/System.o: /usr/include/glm/detail/type_mat4x4_simd.inl
systems/System.o: /usr/include/glm/detail/func_matrix.inl
systems/System.o: /usr/include/glm/geometric.hpp
systems/System.o: /usr/include/glm/detail/func_geometric.inl
systems/System.o: /usr/include/glm/exponential.hpp
systems/System.o: /usr/include/glm/detail/type_vec1.hpp
systems/System.o: /usr/include/glm/detail/func_exponential.inl
systems/System.o: /usr/include/glm/vector_relational.hpp
systems/System.o: /usr/include/glm/detail/func_vector_relational.inl
systems/System.o: /usr/include/glm/detail/_vectorize.hpp
systems/System.o: /usr/include/glm/detail/type_vec1.hpp
systems/System.o: /usr/include/glm/common.hpp
systems/System.o: /usr/include/glm/detail/func_common.inl
systems/System.o: /usr/include/glm/detail/type_float.hpp
systems/System.o: /usr/include/glm/trigonometric.hpp
systems/System.o: /usr/include/glm/detail/func_trigonometric.inl
systems/System.o: /usr/include/glm/exponential.hpp
systems/System.o: /usr/include/glm/common.hpp /usr/include/glm/packing.hpp
systems/System.o: /usr/include/glm/detail/func_packing.inl
systems/System.o: /usr/include/glm/detail/type_half.hpp
systems/System.o: /usr/include/glm/detail/type_half.inl
systems/System.o: /usr/include/glm/geometric.hpp /usr/include/glm/matrix.hpp
systems/System.o: /usr/include/glm/vector_relational.hpp
systems/System.o: /usr/include/glm/integer.hpp
systems/System.o: /usr/include/glm/detail/func_integer.inl
systems/System.o: /usr/include/glm/ext/vec1.hpp
systems/System.o: /usr/include/glm/detail/type_vec.hpp
systems/System.o: /usr/include/glm/detail/type_vec1.inl
Utilities.o: /usr/include/glm/gtx/rotate_vector.hpp /usr/include/glm/glm.hpp
Utilities.o: /usr/include/glm/detail/_fixes.hpp
Utilities.o: /usr/include/glm/detail/setup.hpp
Utilities.o: /usr/include/glm/simd/platform.h /usr/include/glm/fwd.hpp
Utilities.o: /usr/include/glm/detail/type_int.hpp
Utilities.o: /usr/include/glm/detail/setup.hpp
Utilities.o: /usr/include/glm/detail/type_float.hpp
Utilities.o: /usr/include/glm/detail/type_vec.hpp
Utilities.o: /usr/include/glm/detail/qualifier.hpp
Utilities.o: /usr/include/glm/detail/type_int.hpp
Utilities.o: /usr/include/glm/detail/compute_vector_relational.hpp
Utilities.o: /usr/include/glm/detail/type_mat.hpp /usr/include/glm/vec2.hpp
Utilities.o: /usr/include/glm/detail/type_vec2.hpp
Utilities.o: /usr/include/glm/detail/type_vec.hpp
Utilities.o: /usr/include/glm/detail/type_vec2.inl /usr/include/glm/vec3.hpp
Utilities.o: /usr/include/glm/detail/type_vec3.hpp
Utilities.o: /usr/include/glm/detail/type_vec3.inl /usr/include/glm/vec4.hpp
Utilities.o: /usr/include/glm/detail/type_vec4.hpp
Utilities.o: /usr/include/glm/detail/type_vec4.inl
Utilities.o: /usr/include/glm/mat2x2.hpp
Utilities.o: /usr/include/glm/detail/type_mat2x2.hpp /usr/include/glm/fwd.hpp
Utilities.o: /usr/include/glm/detail/type_vec2.hpp
Utilities.o: /usr/include/glm/detail/type_mat.hpp
Utilities.o: /usr/include/glm/detail/type_mat2x2.inl
Utilities.o: /usr/include/glm/matrix.hpp
Utilities.o: /usr/include/glm/detail/qualifier.hpp
Utilities.o: /usr/include/glm/mat2x3.hpp
Utilities.o: /usr/include/glm/detail/type_mat2x3.hpp
Utilities.o: /usr/include/glm/detail/type_vec3.hpp
Utilities.o: /usr/include/glm/detail/type_mat2x3.inl
Utilities.o: /usr/include/glm/mat2x4.hpp
Utilities.o: /usr/include/glm/detail/type_mat2x4.hpp
Utilities.o: /usr/include/glm/detail/type_vec4.hpp
Utilities.o: /usr/include/glm/detail/type_mat2x4.inl
Utilities.o: /usr/include/glm/mat3x2.hpp
Utilities.o: /usr/include/glm/detail/type_mat3x2.hpp
Utilities.o: /usr/include/glm/detail/type_mat3x2.inl
Utilities.o: /usr/include/glm/mat3x3.hpp
Utilities.o: /usr/include/glm/detail/type_mat3x3.hpp
Utilities.o: /usr/include/glm/detail/type_mat3x3.inl
Utilities.o: /usr/include/glm/mat3x4.hpp
Utilities.o: /usr/include/glm/detail/type_mat3x4.hpp
Utilities.o: /usr/include/glm/detail/type_mat3x4.inl
Utilities.o: /usr/include/glm/mat4x2.hpp
Utilities.o: /usr/include/glm/detail/type_mat4x2.hpp
Utilities.o: /usr/include/glm/detail/type_mat4x2.inl
Utilities.o: /usr/include/glm/mat4x3.hpp
Utilities.o: /usr/include/glm/detail/type_mat4x3.hpp
Utilities.o: /usr/include/glm/detail/type_mat4x3.inl
Utilities.o: /usr/include/glm/mat4x4.hpp
Utilities.o: /usr/include/glm/detail/type_mat4x4.hpp
Utilities.o: /usr/include/glm/detail/type_mat4x4.inl
Utilities.o: /usr/include/glm/detail/type_mat4x4_simd.inl
Utilities.o: /usr/include/glm/detail/func_matrix.inl
Utilities.o: /usr/include/glm/geometric.hpp
Utilities.o: /usr/include/glm/detail/func_geometric.inl
Utilities.o: /usr/include/glm/exponential.hpp
Utilities.o: /usr/include/glm/detail/type_vec1.hpp
Utilities.o: /usr/include/glm/detail/func_exponential.inl
Utilities.o: /usr/include/glm/vector_relational.hpp
Utilities.o: /usr/include/glm/detail/func_vector_relational.inl
Utilities.o: /usr/include/glm/detail/_vectorize.hpp
Utilities.o: /usr/include/glm/detail/type_vec1.hpp
Utilities.o: /usr/include/glm/common.hpp
Utilities.o: /usr/include/glm/detail/func_common.inl
Utilities.o: /usr/include/glm/detail/type_float.hpp
Utilities.o: /usr/include/glm/trigonometric.hpp
Utilities.o: /usr/include/glm/detail/func_trigonometric.inl
Utilities.o: /usr/include/glm/exponential.hpp /usr/include/glm/common.hpp
Utilities.o: /usr/include/glm/packing.hpp
Utilities.o: /usr/include/glm/detail/func_packing.inl
Utilities.o: /usr/include/glm/detail/type_half.hpp
Utilities.o: /usr/include/glm/detail/type_half.inl
Utilities.o: /usr/include/glm/geometric.hpp /usr/include/glm/matrix.hpp
Utilities.o: /usr/include/glm/vector_relational.hpp
Utilities.o: /usr/include/glm/integer.hpp
Utilities.o: /usr/include/glm/detail/func_integer.inl
Utilities.o: /usr/include/glm/ext/vec1.hpp
Utilities.o: /usr/include/glm/detail/type_vec.hpp
Utilities.o: /usr/include/glm/detail/type_vec1.inl
Utilities.o: /usr/include/glm/gtx/transform.hpp
Utilities.o: /usr/include/glm/gtc/matrix_transform.hpp
Utilities.o: /usr/include/glm/mat4x4.hpp /usr/include/glm/vec2.hpp
Utilities.o: /usr/include/glm/vec3.hpp /usr/include/glm/vec4.hpp
Utilities.o: /usr/include/glm/gtc/constants.hpp
Utilities.o: /usr/include/glm/detail/setup.hpp
Utilities.o: /usr/include/glm/gtc/constants.inl
Utilities.o: /usr/include/glm/gtc/matrix_transform.inl
Utilities.o: /usr/include/glm/trigonometric.hpp
Utilities.o: /usr/include/glm/gtx/transform.inl
Utilities.o: /usr/include/glm/gtx/rotate_vector.inl Utilities.hpp
Utilities.o: /home/cipsi/Personal/opengl_framework/components/Camera.hpp
Utilities.o: /usr/include/glm/glm.hpp /usr/include/SFML/Window.hpp
Utilities.o: /usr/include/SFML/System.hpp /usr/include/SFML/Config.hpp
Utilities.o: /usr/include/SFML/System/Clock.hpp
Utilities.o: /usr/include/SFML/System/Export.hpp
Utilities.o: /usr/include/SFML/System/Time.hpp
Utilities.o: /usr/include/SFML/System/Err.hpp
Utilities.o: /usr/include/SFML/System/FileInputStream.hpp
Utilities.o: /usr/include/SFML/System/InputStream.hpp
Utilities.o: /usr/include/SFML/System/NonCopyable.hpp
Utilities.o: /usr/include/SFML/System/Lock.hpp
Utilities.o: /usr/include/SFML/System/MemoryInputStream.hpp
Utilities.o: /usr/include/SFML/System/Mutex.hpp
Utilities.o: /usr/include/SFML/System/Sleep.hpp
Utilities.o: /usr/include/SFML/System/String.hpp
Utilities.o: /usr/include/SFML/System/Utf.hpp
Utilities.o: /usr/include/SFML/System/Utf.inl
Utilities.o: /usr/include/SFML/System/String.inl
Utilities.o: /usr/include/SFML/System/Thread.hpp
Utilities.o: /usr/include/SFML/System/Thread.inl
Utilities.o: /usr/include/SFML/System/ThreadLocal.hpp
Utilities.o: /usr/include/SFML/System/ThreadLocalPtr.hpp
Utilities.o: /usr/include/SFML/System/ThreadLocalPtr.inl
Utilities.o: /usr/include/SFML/System/Vector2.hpp
Utilities.o: /usr/include/SFML/System/Vector2.inl
Utilities.o: /usr/include/SFML/System/Vector3.hpp
Utilities.o: /usr/include/SFML/System/Vector3.inl
Utilities.o: /usr/include/SFML/Window/Context.hpp
Utilities.o: /usr/include/SFML/Window/Export.hpp
Utilities.o: /usr/include/SFML/Window/GlResource.hpp
Utilities.o: /usr/include/SFML/Window/ContextSettings.hpp
Utilities.o: /usr/include/SFML/Window/Event.hpp
Utilities.o: /usr/include/SFML/Window/Joystick.hpp
Utilities.o: /usr/include/SFML/Window/Keyboard.hpp
Utilities.o: /usr/include/SFML/Window/Mouse.hpp
Utilities.o: /usr/include/SFML/Window/Sensor.hpp
Utilities.o: /usr/include/SFML/Window/Touch.hpp
Utilities.o: /usr/include/SFML/Window/VideoMode.hpp
Utilities.o: /usr/include/SFML/Window/Window.hpp
Utilities.o: /usr/include/SFML/Window/WindowHandle.hpp
Utilities.o: /usr/include/SFML/Window/WindowStyle.hpp
Utilities.o: /home/cipsi/Personal/opengl_framework/components/Component.hpp
Utilities.o: /home/cipsi/Personal/opengl_framework/entities/Entity.hpp
Utilities.o: /home/cipsi/Personal/opengl_framework/components/Model.hpp
Utilities.o: /home/cipsi/Personal/opengl_framework/components/Mesh.hpp
Utilities.o: /usr/include/GL/glew.h /usr/include/stdint.h
Utilities.o: /usr/include/bits/libc-header-start.h /usr/include/features.h
Utilities.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
Utilities.o: /usr/include/bits/wordsize.h /usr/include/bits/long-double.h
Utilities.o: /usr/include/gnu/stubs.h /usr/include/bits/types.h
Utilities.o: /usr/include/bits/typesizes.h /usr/include/bits/wchar.h
Utilities.o: /usr/include/bits/stdint-intn.h /usr/include/bits/stdint-uintn.h
Utilities.o: /usr/include/GL/glu.h /usr/include/GL/gl.h
Utilities.o: /home/cipsi/Personal/opengl_framework/components/Texture.hpp
Utilities.o: Debug.hpp
Utilities.o: /home/cipsi/Personal/opengl_framework/components/Transform.hpp
Light.o: Light.hpp /usr/include/glm/glm.hpp
Light.o: /usr/include/glm/detail/_fixes.hpp /usr/include/glm/detail/setup.hpp
Light.o: /usr/include/glm/simd/platform.h /usr/include/glm/fwd.hpp
Light.o: /usr/include/glm/detail/type_int.hpp
Light.o: /usr/include/glm/detail/setup.hpp
Light.o: /usr/include/glm/detail/type_float.hpp
Light.o: /usr/include/glm/detail/type_vec.hpp
Light.o: /usr/include/glm/detail/qualifier.hpp
Light.o: /usr/include/glm/detail/type_int.hpp
Light.o: /usr/include/glm/detail/compute_vector_relational.hpp
Light.o: /usr/include/glm/detail/type_mat.hpp /usr/include/glm/vec2.hpp
Light.o: /usr/include/glm/detail/type_vec2.hpp
Light.o: /usr/include/glm/detail/type_vec.hpp
Light.o: /usr/include/glm/detail/type_vec2.inl /usr/include/glm/vec3.hpp
Light.o: /usr/include/glm/detail/type_vec3.hpp
Light.o: /usr/include/glm/detail/type_vec3.inl /usr/include/glm/vec4.hpp
Light.o: /usr/include/glm/detail/type_vec4.hpp
Light.o: /usr/include/glm/detail/type_vec4.inl /usr/include/glm/mat2x2.hpp
Light.o: /usr/include/glm/detail/type_mat2x2.hpp /usr/include/glm/fwd.hpp
Light.o: /usr/include/glm/detail/type_vec2.hpp
Light.o: /usr/include/glm/detail/type_mat.hpp
Light.o: /usr/include/glm/detail/type_mat2x2.inl /usr/include/glm/matrix.hpp
Light.o: /usr/include/glm/detail/qualifier.hpp /usr/include/glm/mat2x3.hpp
Light.o: /usr/include/glm/detail/type_mat2x3.hpp
Light.o: /usr/include/glm/detail/type_vec3.hpp
Light.o: /usr/include/glm/detail/type_mat2x3.inl /usr/include/glm/mat2x4.hpp
Light.o: /usr/include/glm/detail/type_mat2x4.hpp
Light.o: /usr/include/glm/detail/type_vec4.hpp
Light.o: /usr/include/glm/detail/type_mat2x4.inl /usr/include/glm/mat3x2.hpp
Light.o: /usr/include/glm/detail/type_mat3x2.hpp
Light.o: /usr/include/glm/detail/type_mat3x2.inl /usr/include/glm/mat3x3.hpp
Light.o: /usr/include/glm/detail/type_mat3x3.hpp
Light.o: /usr/include/glm/detail/type_mat3x3.inl /usr/include/glm/mat3x4.hpp
Light.o: /usr/include/glm/detail/type_mat3x4.hpp
Light.o: /usr/include/glm/detail/type_mat3x4.inl /usr/include/glm/mat4x2.hpp
Light.o: /usr/include/glm/detail/type_mat4x2.hpp
Light.o: /usr/include/glm/detail/type_mat4x2.inl /usr/include/glm/mat4x3.hpp
Light.o: /usr/include/glm/detail/type_mat4x3.hpp
Light.o: /usr/include/glm/detail/type_mat4x3.inl /usr/include/glm/mat4x4.hpp
Light.o: /usr/include/glm/detail/type_mat4x4.hpp
Light.o: /usr/include/glm/detail/type_mat4x4.inl
Light.o: /usr/include/glm/detail/type_mat4x4_simd.inl
Light.o: /usr/include/glm/detail/func_matrix.inl
Light.o: /usr/include/glm/geometric.hpp
Light.o: /usr/include/glm/detail/func_geometric.inl
Light.o: /usr/include/glm/exponential.hpp
Light.o: /usr/include/glm/detail/type_vec1.hpp
Light.o: /usr/include/glm/detail/func_exponential.inl
Light.o: /usr/include/glm/vector_relational.hpp
Light.o: /usr/include/glm/detail/func_vector_relational.inl
Light.o: /usr/include/glm/detail/_vectorize.hpp
Light.o: /usr/include/glm/detail/type_vec1.hpp /usr/include/glm/common.hpp
Light.o: /usr/include/glm/detail/func_common.inl
Light.o: /usr/include/glm/detail/type_float.hpp
Light.o: /usr/include/glm/trigonometric.hpp
Light.o: /usr/include/glm/detail/func_trigonometric.inl
Light.o: /usr/include/glm/exponential.hpp /usr/include/glm/common.hpp
Light.o: /usr/include/glm/packing.hpp
Light.o: /usr/include/glm/detail/func_packing.inl
Light.o: /usr/include/glm/detail/type_half.hpp
Light.o: /usr/include/glm/detail/type_half.inl /usr/include/glm/geometric.hpp
Light.o: /usr/include/glm/matrix.hpp /usr/include/glm/vector_relational.hpp
Light.o: /usr/include/glm/integer.hpp
Light.o: /usr/include/glm/detail/func_integer.inl
Light.o: /usr/include/glm/ext/vec1.hpp /usr/include/glm/detail/type_vec.hpp
Light.o: /usr/include/glm/detail/type_vec1.inl
entities/Entity.o: /home/cipsi/Personal/opengl_framework/entities/Entity.hpp
entities/Entity.o: /usr/include/glm/glm.hpp
entities/Entity.o: /usr/include/glm/detail/_fixes.hpp
entities/Entity.o: /usr/include/glm/detail/setup.hpp
entities/Entity.o: /usr/include/glm/simd/platform.h /usr/include/glm/fwd.hpp
entities/Entity.o: /usr/include/glm/detail/type_int.hpp
entities/Entity.o: /usr/include/glm/detail/setup.hpp
entities/Entity.o: /usr/include/glm/detail/type_float.hpp
entities/Entity.o: /usr/include/glm/detail/type_vec.hpp
entities/Entity.o: /usr/include/glm/detail/qualifier.hpp
entities/Entity.o: /usr/include/glm/detail/type_int.hpp
entities/Entity.o: /usr/include/glm/detail/compute_vector_relational.hpp
entities/Entity.o: /usr/include/glm/detail/type_mat.hpp
entities/Entity.o: /usr/include/glm/vec2.hpp
entities/Entity.o: /usr/include/glm/detail/type_vec2.hpp
entities/Entity.o: /usr/include/glm/detail/type_vec.hpp
entities/Entity.o: /usr/include/glm/detail/type_vec2.inl
entities/Entity.o: /usr/include/glm/vec3.hpp
entities/Entity.o: /usr/include/glm/detail/type_vec3.hpp
entities/Entity.o: /usr/include/glm/detail/type_vec3.inl
entities/Entity.o: /usr/include/glm/vec4.hpp
entities/Entity.o: /usr/include/glm/detail/type_vec4.hpp
entities/Entity.o: /usr/include/glm/detail/type_vec4.inl
entities/Entity.o: /usr/include/glm/mat2x2.hpp
entities/Entity.o: /usr/include/glm/detail/type_mat2x2.hpp
entities/Entity.o: /usr/include/glm/fwd.hpp
entities/Entity.o: /usr/include/glm/detail/type_vec2.hpp
entities/Entity.o: /usr/include/glm/detail/type_mat.hpp
entities/Entity.o: /usr/include/glm/detail/type_mat2x2.inl
entities/Entity.o: /usr/include/glm/matrix.hpp
entities/Entity.o: /usr/include/glm/detail/qualifier.hpp
entities/Entity.o: /usr/include/glm/mat2x3.hpp
entities/Entity.o: /usr/include/glm/detail/type_mat2x3.hpp
entities/Entity.o: /usr/include/glm/detail/type_vec3.hpp
entities/Entity.o: /usr/include/glm/detail/type_mat2x3.inl
entities/Entity.o: /usr/include/glm/mat2x4.hpp
entities/Entity.o: /usr/include/glm/detail/type_mat2x4.hpp
entities/Entity.o: /usr/include/glm/detail/type_vec4.hpp
entities/Entity.o: /usr/include/glm/detail/type_mat2x4.inl
entities/Entity.o: /usr/include/glm/mat3x2.hpp
entities/Entity.o: /usr/include/glm/detail/type_mat3x2.hpp
entities/Entity.o: /usr/include/glm/detail/type_mat3x2.inl
entities/Entity.o: /usr/include/glm/mat3x3.hpp
entities/Entity.o: /usr/include/glm/detail/type_mat3x3.hpp
entities/Entity.o: /usr/include/glm/detail/type_mat3x3.inl
entities/Entity.o: /usr/include/glm/mat3x4.hpp
entities/Entity.o: /usr/include/glm/detail/type_mat3x4.hpp
entities/Entity.o: /usr/include/glm/detail/type_mat3x4.inl
entities/Entity.o: /usr/include/glm/mat4x2.hpp
entities/Entity.o: /usr/include/glm/detail/type_mat4x2.hpp
entities/Entity.o: /usr/include/glm/detail/type_mat4x2.inl
entities/Entity.o: /usr/include/glm/mat4x3.hpp
entities/Entity.o: /usr/include/glm/detail/type_mat4x3.hpp
entities/Entity.o: /usr/include/glm/detail/type_mat4x3.inl
entities/Entity.o: /usr/include/glm/mat4x4.hpp
entities/Entity.o: /usr/include/glm/detail/type_mat4x4.hpp
entities/Entity.o: /usr/include/glm/detail/type_mat4x4.inl
entities/Entity.o: /usr/include/glm/detail/type_mat4x4_simd.inl
entities/Entity.o: /usr/include/glm/detail/func_matrix.inl
entities/Entity.o: /usr/include/glm/geometric.hpp
entities/Entity.o: /usr/include/glm/detail/func_geometric.inl
entities/Entity.o: /usr/include/glm/exponential.hpp
entities/Entity.o: /usr/include/glm/detail/type_vec1.hpp
entities/Entity.o: /usr/include/glm/detail/func_exponential.inl
entities/Entity.o: /usr/include/glm/vector_relational.hpp
entities/Entity.o: /usr/include/glm/detail/func_vector_relational.inl
entities/Entity.o: /usr/include/glm/detail/_vectorize.hpp
entities/Entity.o: /usr/include/glm/detail/type_vec1.hpp
entities/Entity.o: /usr/include/glm/common.hpp
entities/Entity.o: /usr/include/glm/detail/func_common.inl
entities/Entity.o: /usr/include/glm/detail/type_float.hpp
entities/Entity.o: /usr/include/glm/trigonometric.hpp
entities/Entity.o: /usr/include/glm/detail/func_trigonometric.inl
entities/Entity.o: /usr/include/glm/exponential.hpp
entities/Entity.o: /usr/include/glm/common.hpp /usr/include/glm/packing.hpp
entities/Entity.o: /usr/include/glm/detail/func_packing.inl
entities/Entity.o: /usr/include/glm/detail/type_half.hpp
entities/Entity.o: /usr/include/glm/detail/type_half.inl
entities/Entity.o: /usr/include/glm/geometric.hpp /usr/include/glm/matrix.hpp
entities/Entity.o: /usr/include/glm/vector_relational.hpp
entities/Entity.o: /usr/include/glm/integer.hpp
entities/Entity.o: /usr/include/glm/detail/func_integer.inl
entities/Entity.o: /usr/include/glm/ext/vec1.hpp
entities/Entity.o: /usr/include/glm/detail/type_vec.hpp
entities/Entity.o: /usr/include/glm/detail/type_vec1.inl
entities/Entity.o: /home/cipsi/Personal/opengl_framework/components/Model.hpp
entities/Entity.o: /home/cipsi/Personal/opengl_framework/components/Mesh.hpp
entities/Entity.o: /usr/include/GL/glew.h /usr/include/stdint.h
entities/Entity.o: /usr/include/bits/libc-header-start.h
entities/Entity.o: /usr/include/features.h /usr/include/stdc-predef.h
entities/Entity.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
entities/Entity.o: /usr/include/bits/long-double.h /usr/include/gnu/stubs.h
entities/Entity.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
entities/Entity.o: /usr/include/bits/wchar.h /usr/include/bits/stdint-intn.h
entities/Entity.o: /usr/include/bits/stdint-uintn.h /usr/include/GL/glu.h
entities/Entity.o: /usr/include/GL/gl.h
entities/Entity.o: /home/cipsi/Personal/opengl_framework/components/Texture.hpp
entities/Entity.o: /home/cipsi/Personal/opengl_framework/components/Component.hpp
entities/Entity.o: Debug.hpp systems/System.hpp
components/Mesh.o: Debug.hpp
components/Mesh.o: /home/cipsi/Personal/opengl_framework/components/Mesh.hpp
components/Mesh.o: /usr/include/GL/glew.h /usr/include/stdint.h
components/Mesh.o: /usr/include/bits/libc-header-start.h
components/Mesh.o: /usr/include/features.h /usr/include/stdc-predef.h
components/Mesh.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
components/Mesh.o: /usr/include/bits/long-double.h /usr/include/gnu/stubs.h
components/Mesh.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
components/Mesh.o: /usr/include/bits/wchar.h /usr/include/bits/stdint-intn.h
components/Mesh.o: /usr/include/bits/stdint-uintn.h /usr/include/GL/glu.h
components/Mesh.o: /usr/include/GL/gl.h
components/Camera.o: /home/cipsi/Personal/opengl_framework/components/Camera.hpp
components/Camera.o: /usr/include/glm/glm.hpp
components/Camera.o: /usr/include/glm/detail/_fixes.hpp
components/Camera.o: /usr/include/glm/detail/setup.hpp
components/Camera.o: /usr/include/glm/simd/platform.h
components/Camera.o: /usr/include/glm/fwd.hpp
components/Camera.o: /usr/include/glm/detail/type_int.hpp
components/Camera.o: /usr/include/glm/detail/setup.hpp
components/Camera.o: /usr/include/glm/detail/type_float.hpp
components/Camera.o: /usr/include/glm/detail/type_vec.hpp
components/Camera.o: /usr/include/glm/detail/qualifier.hpp
components/Camera.o: /usr/include/glm/detail/type_int.hpp
components/Camera.o: /usr/include/glm/detail/compute_vector_relational.hpp
components/Camera.o: /usr/include/glm/detail/type_mat.hpp
components/Camera.o: /usr/include/glm/vec2.hpp
components/Camera.o: /usr/include/glm/detail/type_vec2.hpp
components/Camera.o: /usr/include/glm/detail/type_vec.hpp
components/Camera.o: /usr/include/glm/detail/type_vec2.inl
components/Camera.o: /usr/include/glm/vec3.hpp
components/Camera.o: /usr/include/glm/detail/type_vec3.hpp
components/Camera.o: /usr/include/glm/detail/type_vec3.inl
components/Camera.o: /usr/include/glm/vec4.hpp
components/Camera.o: /usr/include/glm/detail/type_vec4.hpp
components/Camera.o: /usr/include/glm/detail/type_vec4.inl
components/Camera.o: /usr/include/glm/mat2x2.hpp
components/Camera.o: /usr/include/glm/detail/type_mat2x2.hpp
components/Camera.o: /usr/include/glm/fwd.hpp
components/Camera.o: /usr/include/glm/detail/type_vec2.hpp
components/Camera.o: /usr/include/glm/detail/type_mat.hpp
components/Camera.o: /usr/include/glm/detail/type_mat2x2.inl
components/Camera.o: /usr/include/glm/matrix.hpp
components/Camera.o: /usr/include/glm/detail/qualifier.hpp
components/Camera.o: /usr/include/glm/mat2x3.hpp
components/Camera.o: /usr/include/glm/detail/type_mat2x3.hpp
components/Camera.o: /usr/include/glm/detail/type_vec3.hpp
components/Camera.o: /usr/include/glm/detail/type_mat2x3.inl
components/Camera.o: /usr/include/glm/mat2x4.hpp
components/Camera.o: /usr/include/glm/detail/type_mat2x4.hpp
components/Camera.o: /usr/include/glm/detail/type_vec4.hpp
components/Camera.o: /usr/include/glm/detail/type_mat2x4.inl
components/Camera.o: /usr/include/glm/mat3x2.hpp
components/Camera.o: /usr/include/glm/detail/type_mat3x2.hpp
components/Camera.o: /usr/include/glm/detail/type_mat3x2.inl
components/Camera.o: /usr/include/glm/mat3x3.hpp
components/Camera.o: /usr/include/glm/detail/type_mat3x3.hpp
components/Camera.o: /usr/include/glm/detail/type_mat3x3.inl
components/Camera.o: /usr/include/glm/mat3x4.hpp
components/Camera.o: /usr/include/glm/detail/type_mat3x4.hpp
components/Camera.o: /usr/include/glm/detail/type_mat3x4.inl
components/Camera.o: /usr/include/glm/mat4x2.hpp
components/Camera.o: /usr/include/glm/detail/type_mat4x2.hpp
components/Camera.o: /usr/include/glm/detail/type_mat4x2.inl
components/Camera.o: /usr/include/glm/mat4x3.hpp
components/Camera.o: /usr/include/glm/detail/type_mat4x3.hpp
components/Camera.o: /usr/include/glm/detail/type_mat4x3.inl
components/Camera.o: /usr/include/glm/mat4x4.hpp
components/Camera.o: /usr/include/glm/detail/type_mat4x4.hpp
components/Camera.o: /usr/include/glm/detail/type_mat4x4.inl
components/Camera.o: /usr/include/glm/detail/type_mat4x4_simd.inl
components/Camera.o: /usr/include/glm/detail/func_matrix.inl
components/Camera.o: /usr/include/glm/geometric.hpp
components/Camera.o: /usr/include/glm/detail/func_geometric.inl
components/Camera.o: /usr/include/glm/exponential.hpp
components/Camera.o: /usr/include/glm/detail/type_vec1.hpp
components/Camera.o: /usr/include/glm/detail/func_exponential.inl
components/Camera.o: /usr/include/glm/vector_relational.hpp
components/Camera.o: /usr/include/glm/detail/func_vector_relational.inl
components/Camera.o: /usr/include/glm/detail/_vectorize.hpp
components/Camera.o: /usr/include/glm/detail/type_vec1.hpp
components/Camera.o: /usr/include/glm/common.hpp
components/Camera.o: /usr/include/glm/detail/func_common.inl
components/Camera.o: /usr/include/glm/detail/type_float.hpp
components/Camera.o: /usr/include/glm/trigonometric.hpp
components/Camera.o: /usr/include/glm/detail/func_trigonometric.inl
components/Camera.o: /usr/include/glm/exponential.hpp
components/Camera.o: /usr/include/glm/common.hpp /usr/include/glm/packing.hpp
components/Camera.o: /usr/include/glm/detail/func_packing.inl
components/Camera.o: /usr/include/glm/detail/type_half.hpp
components/Camera.o: /usr/include/glm/detail/type_half.inl
components/Camera.o: /usr/include/glm/geometric.hpp
components/Camera.o: /usr/include/glm/matrix.hpp
components/Camera.o: /usr/include/glm/vector_relational.hpp
components/Camera.o: /usr/include/glm/integer.hpp
components/Camera.o: /usr/include/glm/detail/func_integer.inl
components/Camera.o: /usr/include/glm/ext/vec1.hpp
components/Camera.o: /usr/include/glm/detail/type_vec.hpp
components/Camera.o: /usr/include/glm/detail/type_vec1.inl
components/Camera.o: /usr/include/SFML/Window.hpp
components/Camera.o: /usr/include/SFML/System.hpp
components/Camera.o: /usr/include/SFML/Config.hpp
components/Camera.o: /usr/include/SFML/System/Clock.hpp
components/Camera.o: /usr/include/SFML/System/Export.hpp
components/Camera.o: /usr/include/SFML/System/Time.hpp
components/Camera.o: /usr/include/SFML/System/Err.hpp
components/Camera.o: /usr/include/SFML/System/FileInputStream.hpp
components/Camera.o: /usr/include/SFML/System/InputStream.hpp
components/Camera.o: /usr/include/SFML/System/NonCopyable.hpp
components/Camera.o: /usr/include/SFML/System/Lock.hpp
components/Camera.o: /usr/include/SFML/System/MemoryInputStream.hpp
components/Camera.o: /usr/include/SFML/System/Mutex.hpp
components/Camera.o: /usr/include/SFML/System/Sleep.hpp
components/Camera.o: /usr/include/SFML/System/String.hpp
components/Camera.o: /usr/include/SFML/System/Utf.hpp
components/Camera.o: /usr/include/SFML/System/Utf.inl
components/Camera.o: /usr/include/SFML/System/String.inl
components/Camera.o: /usr/include/SFML/System/Thread.hpp
components/Camera.o: /usr/include/SFML/System/Thread.inl
components/Camera.o: /usr/include/SFML/System/ThreadLocal.hpp
components/Camera.o: /usr/include/SFML/System/ThreadLocalPtr.hpp
components/Camera.o: /usr/include/SFML/System/ThreadLocalPtr.inl
components/Camera.o: /usr/include/SFML/System/Vector2.hpp
components/Camera.o: /usr/include/SFML/System/Vector2.inl
components/Camera.o: /usr/include/SFML/System/Vector3.hpp
components/Camera.o: /usr/include/SFML/System/Vector3.inl
components/Camera.o: /usr/include/SFML/Window/Context.hpp
components/Camera.o: /usr/include/SFML/Window/Export.hpp
components/Camera.o: /usr/include/SFML/Window/GlResource.hpp
components/Camera.o: /usr/include/SFML/Window/ContextSettings.hpp
components/Camera.o: /usr/include/SFML/Window/Event.hpp
components/Camera.o: /usr/include/SFML/Window/Joystick.hpp
components/Camera.o: /usr/include/SFML/Window/Keyboard.hpp
components/Camera.o: /usr/include/SFML/Window/Mouse.hpp
components/Camera.o: /usr/include/SFML/Window/Sensor.hpp
components/Camera.o: /usr/include/SFML/Window/Touch.hpp
components/Camera.o: /usr/include/SFML/Window/VideoMode.hpp
components/Camera.o: /usr/include/SFML/Window/Window.hpp
components/Camera.o: /usr/include/SFML/Window/WindowHandle.hpp
components/Camera.o: /usr/include/SFML/Window/WindowStyle.hpp
components/Camera.o: /home/cipsi/Personal/opengl_framework/components/Component.hpp
components/Texture.o: /home/cipsi/Personal/opengl_framework/components/Texture.hpp
components/Texture.o: /usr/include/GL/glew.h /usr/include/stdint.h
components/Texture.o: /usr/include/bits/libc-header-start.h
components/Texture.o: /usr/include/features.h /usr/include/stdc-predef.h
components/Texture.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
components/Texture.o: /usr/include/bits/long-double.h
components/Texture.o: /usr/include/gnu/stubs.h /usr/include/bits/types.h
components/Texture.o: /usr/include/bits/typesizes.h /usr/include/bits/wchar.h
components/Texture.o: /usr/include/bits/stdint-intn.h
components/Texture.o: /usr/include/bits/stdint-uintn.h /usr/include/GL/glu.h
components/Texture.o: /usr/include/GL/gl.h
components/Component.o: /home/cipsi/Personal/opengl_framework/components/Component.hpp
components/Component.o: Debug.hpp
components/Model.o: /home/cipsi/Personal/opengl_framework/components/Model.hpp
components/Model.o: /home/cipsi/Personal/opengl_framework/components/Mesh.hpp
components/Model.o: /usr/include/GL/glew.h /usr/include/stdint.h
components/Model.o: /usr/include/bits/libc-header-start.h
components/Model.o: /usr/include/features.h /usr/include/stdc-predef.h
components/Model.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
components/Model.o: /usr/include/bits/long-double.h /usr/include/gnu/stubs.h
components/Model.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
components/Model.o: /usr/include/bits/wchar.h /usr/include/bits/stdint-intn.h
components/Model.o: /usr/include/bits/stdint-uintn.h /usr/include/GL/glu.h
components/Model.o: /usr/include/GL/gl.h
components/Model.o: /home/cipsi/Personal/opengl_framework/components/Texture.hpp
components/Model.o: /home/cipsi/Personal/opengl_framework/components/Component.hpp
components/Transform.o: /usr/include/glm/gtc/matrix_transform.hpp
components/Transform.o: /usr/include/glm/mat4x4.hpp
components/Transform.o: /usr/include/glm/detail/setup.hpp
components/Transform.o: /usr/include/glm/simd/platform.h
components/Transform.o: /usr/include/glm/detail/type_mat4x4.hpp
components/Transform.o: /usr/include/glm/fwd.hpp
components/Transform.o: /usr/include/glm/detail/type_int.hpp
components/Transform.o: /usr/include/glm/detail/setup.hpp
components/Transform.o: /usr/include/glm/detail/type_float.hpp
components/Transform.o: /usr/include/glm/detail/type_vec.hpp
components/Transform.o: /usr/include/glm/detail/qualifier.hpp
components/Transform.o: /usr/include/glm/detail/type_int.hpp
components/Transform.o: /usr/include/glm/detail/compute_vector_relational.hpp
components/Transform.o: /usr/include/glm/detail/type_mat.hpp
components/Transform.o: /usr/include/glm/detail/type_vec4.hpp
components/Transform.o: /usr/include/glm/detail/type_vec.hpp
components/Transform.o: /usr/include/glm/detail/type_vec4.inl
components/Transform.o: /usr/include/glm/detail/type_mat.hpp
components/Transform.o: /usr/include/glm/detail/type_mat4x4.inl
components/Transform.o: /usr/include/glm/matrix.hpp
components/Transform.o: /usr/include/glm/detail/qualifier.hpp
components/Transform.o: /usr/include/glm/vec2.hpp
components/Transform.o: /usr/include/glm/detail/type_vec2.hpp
components/Transform.o: /usr/include/glm/detail/type_vec2.inl
components/Transform.o: /usr/include/glm/vec3.hpp
components/Transform.o: /usr/include/glm/detail/type_vec3.hpp
components/Transform.o: /usr/include/glm/detail/type_vec3.inl
components/Transform.o: /usr/include/glm/vec4.hpp
components/Transform.o: /usr/include/glm/detail/type_vec4.hpp
components/Transform.o: /usr/include/glm/mat2x2.hpp
components/Transform.o: /usr/include/glm/detail/type_mat2x2.hpp
components/Transform.o: /usr/include/glm/detail/type_vec2.hpp
components/Transform.o: /usr/include/glm/detail/type_mat2x2.inl
components/Transform.o: /usr/include/glm/mat2x3.hpp
components/Transform.o: /usr/include/glm/detail/type_mat2x3.hpp
components/Transform.o: /usr/include/glm/detail/type_vec3.hpp
components/Transform.o: /usr/include/glm/detail/type_mat2x3.inl
components/Transform.o: /usr/include/glm/mat2x4.hpp
components/Transform.o: /usr/include/glm/detail/type_mat2x4.hpp
components/Transform.o: /usr/include/glm/detail/type_mat2x4.inl
components/Transform.o: /usr/include/glm/mat3x2.hpp
components/Transform.o: /usr/include/glm/detail/type_mat3x2.hpp
components/Transform.o: /usr/include/glm/detail/type_mat3x2.inl
components/Transform.o: /usr/include/glm/mat3x3.hpp
components/Transform.o: /usr/include/glm/detail/type_mat3x3.hpp
components/Transform.o: /usr/include/glm/detail/type_mat3x3.inl
components/Transform.o: /usr/include/glm/mat3x4.hpp
components/Transform.o: /usr/include/glm/detail/type_mat3x4.hpp
components/Transform.o: /usr/include/glm/detail/type_mat3x4.inl
components/Transform.o: /usr/include/glm/mat4x2.hpp
components/Transform.o: /usr/include/glm/detail/type_mat4x2.hpp
components/Transform.o: /usr/include/glm/detail/type_mat4x2.inl
components/Transform.o: /usr/include/glm/mat4x3.hpp
components/Transform.o: /usr/include/glm/detail/type_mat4x3.hpp
components/Transform.o: /usr/include/glm/detail/type_mat4x3.inl
components/Transform.o: /usr/include/glm/mat4x4.hpp
components/Transform.o: /usr/include/glm/detail/func_matrix.inl
components/Transform.o: /usr/include/glm/geometric.hpp
components/Transform.o: /usr/include/glm/detail/func_geometric.inl
components/Transform.o: /usr/include/glm/exponential.hpp
components/Transform.o: /usr/include/glm/detail/type_vec1.hpp
components/Transform.o: /usr/include/glm/detail/func_exponential.inl
components/Transform.o: /usr/include/glm/vector_relational.hpp
components/Transform.o: /usr/include/glm/detail/func_vector_relational.inl
components/Transform.o: /usr/include/glm/detail/_vectorize.hpp
components/Transform.o: /usr/include/glm/detail/type_vec1.hpp
components/Transform.o: /usr/include/glm/common.hpp
components/Transform.o: /usr/include/glm/detail/_fixes.hpp
components/Transform.o: /usr/include/glm/detail/func_common.inl
components/Transform.o: /usr/include/glm/detail/type_float.hpp
components/Transform.o: /usr/include/glm/detail/type_mat4x4_simd.inl
components/Transform.o: /usr/include/glm/vec2.hpp /usr/include/glm/vec3.hpp
components/Transform.o: /usr/include/glm/vec4.hpp
components/Transform.o: /usr/include/glm/gtc/constants.hpp
components/Transform.o: /usr/include/glm/detail/setup.hpp
components/Transform.o: /usr/include/glm/gtc/constants.inl
components/Transform.o: /usr/include/glm/gtc/matrix_transform.inl
components/Transform.o: /usr/include/glm/trigonometric.hpp
components/Transform.o: /usr/include/glm/detail/func_trigonometric.inl
components/Transform.o: /usr/include/glm/glm.hpp /usr/include/glm/fwd.hpp
components/Transform.o: /usr/include/glm/trigonometric.hpp
components/Transform.o: /usr/include/glm/exponential.hpp
components/Transform.o: /usr/include/glm/common.hpp
components/Transform.o: /usr/include/glm/packing.hpp
components/Transform.o: /usr/include/glm/detail/func_packing.inl
components/Transform.o: /usr/include/glm/detail/type_half.hpp
components/Transform.o: /usr/include/glm/detail/type_half.inl
components/Transform.o: /usr/include/glm/geometric.hpp
components/Transform.o: /usr/include/glm/matrix.hpp
components/Transform.o: /usr/include/glm/vector_relational.hpp
components/Transform.o: /usr/include/glm/integer.hpp
components/Transform.o: /usr/include/glm/detail/func_integer.inl
components/Transform.o: /usr/include/glm/ext/vec1.hpp
components/Transform.o: /usr/include/glm/detail/type_vec.hpp
components/Transform.o: /usr/include/glm/detail/type_vec1.inl
components/Transform.o: /home/cipsi/Personal/opengl_framework/components/Transform.hpp
components/Transform.o: /home/cipsi/Personal/opengl_framework/components/Component.hpp
shaders/Shader.o: /usr/include/glm/gtc/type_ptr.hpp
shaders/Shader.o: /usr/include/glm/gtc/quaternion.hpp
shaders/Shader.o: /usr/include/glm/mat3x3.hpp
shaders/Shader.o: /usr/include/glm/detail/setup.hpp
shaders/Shader.o: /usr/include/glm/simd/platform.h
shaders/Shader.o: /usr/include/glm/detail/type_mat3x3.hpp
shaders/Shader.o: /usr/include/glm/fwd.hpp
shaders/Shader.o: /usr/include/glm/detail/type_int.hpp
shaders/Shader.o: /usr/include/glm/detail/setup.hpp
shaders/Shader.o: /usr/include/glm/detail/type_float.hpp
shaders/Shader.o: /usr/include/glm/detail/type_vec.hpp
shaders/Shader.o: /usr/include/glm/detail/qualifier.hpp
shaders/Shader.o: /usr/include/glm/detail/type_int.hpp
shaders/Shader.o: /usr/include/glm/detail/compute_vector_relational.hpp
shaders/Shader.o: /usr/include/glm/detail/type_mat.hpp
shaders/Shader.o: /usr/include/glm/detail/type_vec3.hpp
shaders/Shader.o: /usr/include/glm/detail/type_vec.hpp
shaders/Shader.o: /usr/include/glm/detail/type_vec3.inl
shaders/Shader.o: /usr/include/glm/detail/type_mat.hpp
shaders/Shader.o: /usr/include/glm/detail/type_mat3x3.inl
shaders/Shader.o: /usr/include/glm/matrix.hpp
shaders/Shader.o: /usr/include/glm/detail/qualifier.hpp
shaders/Shader.o: /usr/include/glm/vec2.hpp
shaders/Shader.o: /usr/include/glm/detail/type_vec2.hpp
shaders/Shader.o: /usr/include/glm/detail/type_vec2.inl
shaders/Shader.o: /usr/include/glm/vec3.hpp
shaders/Shader.o: /usr/include/glm/detail/type_vec3.hpp
shaders/Shader.o: /usr/include/glm/vec4.hpp
shaders/Shader.o: /usr/include/glm/detail/type_vec4.hpp
shaders/Shader.o: /usr/include/glm/detail/type_vec4.inl
shaders/Shader.o: /usr/include/glm/mat2x2.hpp
shaders/Shader.o: /usr/include/glm/detail/type_mat2x2.hpp
shaders/Shader.o: /usr/include/glm/detail/type_vec2.hpp
shaders/Shader.o: /usr/include/glm/detail/type_mat2x2.inl
shaders/Shader.o: /usr/include/glm/mat2x3.hpp
shaders/Shader.o: /usr/include/glm/detail/type_mat2x3.hpp
shaders/Shader.o: /usr/include/glm/detail/type_mat2x3.inl
shaders/Shader.o: /usr/include/glm/mat2x4.hpp
shaders/Shader.o: /usr/include/glm/detail/type_mat2x4.hpp
shaders/Shader.o: /usr/include/glm/detail/type_vec4.hpp
shaders/Shader.o: /usr/include/glm/detail/type_mat2x4.inl
shaders/Shader.o: /usr/include/glm/mat3x2.hpp
shaders/Shader.o: /usr/include/glm/detail/type_mat3x2.hpp
shaders/Shader.o: /usr/include/glm/detail/type_mat3x2.inl
shaders/Shader.o: /usr/include/glm/mat3x3.hpp /usr/include/glm/mat3x4.hpp
shaders/Shader.o: /usr/include/glm/detail/type_mat3x4.hpp
shaders/Shader.o: /usr/include/glm/detail/type_mat3x4.inl
shaders/Shader.o: /usr/include/glm/mat4x2.hpp
shaders/Shader.o: /usr/include/glm/detail/type_mat4x2.hpp
shaders/Shader.o: /usr/include/glm/detail/type_mat4x2.inl
shaders/Shader.o: /usr/include/glm/mat4x3.hpp
shaders/Shader.o: /usr/include/glm/detail/type_mat4x3.hpp
shaders/Shader.o: /usr/include/glm/detail/type_mat4x3.inl
shaders/Shader.o: /usr/include/glm/mat4x4.hpp
shaders/Shader.o: /usr/include/glm/detail/type_mat4x4.hpp
shaders/Shader.o: /usr/include/glm/detail/type_mat4x4.inl
shaders/Shader.o: /usr/include/glm/detail/type_mat4x4_simd.inl
shaders/Shader.o: /usr/include/glm/detail/func_matrix.inl
shaders/Shader.o: /usr/include/glm/geometric.hpp
shaders/Shader.o: /usr/include/glm/detail/func_geometric.inl
shaders/Shader.o: /usr/include/glm/exponential.hpp
shaders/Shader.o: /usr/include/glm/detail/type_vec1.hpp
shaders/Shader.o: /usr/include/glm/detail/func_exponential.inl
shaders/Shader.o: /usr/include/glm/vector_relational.hpp
shaders/Shader.o: /usr/include/glm/detail/func_vector_relational.inl
shaders/Shader.o: /usr/include/glm/detail/_vectorize.hpp
shaders/Shader.o: /usr/include/glm/detail/type_vec1.hpp
shaders/Shader.o: /usr/include/glm/common.hpp
shaders/Shader.o: /usr/include/glm/detail/_fixes.hpp
shaders/Shader.o: /usr/include/glm/detail/func_common.inl
shaders/Shader.o: /usr/include/glm/detail/type_float.hpp
shaders/Shader.o: /usr/include/glm/mat4x4.hpp /usr/include/glm/vec3.hpp
shaders/Shader.o: /usr/include/glm/vec4.hpp
shaders/Shader.o: /usr/include/glm/gtc/constants.hpp
shaders/Shader.o: /usr/include/glm/detail/setup.hpp
shaders/Shader.o: /usr/include/glm/gtc/constants.inl
shaders/Shader.o: /usr/include/glm/gtc/quaternion.inl
shaders/Shader.o: /usr/include/glm/trigonometric.hpp
shaders/Shader.o: /usr/include/glm/detail/func_trigonometric.inl
shaders/Shader.o: /usr/include/glm/detail/compute_vector_relational.hpp
shaders/Shader.o: /usr/include/glm/gtc/epsilon.hpp
shaders/Shader.o: /usr/include/glm/detail/qualifier.hpp
shaders/Shader.o: /usr/include/glm/gtc/epsilon.inl
shaders/Shader.o: /usr/include/glm/gtc/quaternion.hpp
shaders/Shader.o: /usr/include/glm/detail/type_vec.hpp
shaders/Shader.o: /usr/include/glm/gtc/vec1.hpp /usr/include/glm/ext/vec1.hpp
shaders/Shader.o: /usr/include/glm/detail/type_vec1.inl
shaders/Shader.o: /usr/include/glm/gtc/vec1.inl /usr/include/glm/vec2.hpp
shaders/Shader.o: /usr/include/glm/mat2x2.hpp /usr/include/glm/mat2x3.hpp
shaders/Shader.o: /usr/include/glm/mat2x4.hpp /usr/include/glm/mat3x2.hpp
shaders/Shader.o: /usr/include/glm/mat3x4.hpp /usr/include/glm/mat4x2.hpp
shaders/Shader.o: /usr/include/glm/mat4x3.hpp
shaders/Shader.o: /usr/include/glm/gtc/type_ptr.inl
shaders/Shader.o: /home/cipsi/Personal/opengl_framework/shaders/Shader.hpp
shaders/Shader.o: /usr/include/GL/glew.h /usr/include/stdint.h
shaders/Shader.o: /usr/include/bits/libc-header-start.h
shaders/Shader.o: /usr/include/features.h /usr/include/stdc-predef.h
shaders/Shader.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
shaders/Shader.o: /usr/include/bits/long-double.h /usr/include/gnu/stubs.h
shaders/Shader.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
shaders/Shader.o: /usr/include/bits/wchar.h /usr/include/bits/stdint-intn.h
shaders/Shader.o: /usr/include/bits/stdint-uintn.h /usr/include/GL/glu.h
shaders/Shader.o: /usr/include/GL/gl.h /usr/include/glm/glm.hpp
shaders/Shader.o: /usr/include/glm/fwd.hpp /usr/include/glm/trigonometric.hpp
shaders/Shader.o: /usr/include/glm/exponential.hpp
shaders/Shader.o: /usr/include/glm/common.hpp /usr/include/glm/packing.hpp
shaders/Shader.o: /usr/include/glm/detail/func_packing.inl
shaders/Shader.o: /usr/include/glm/detail/type_half.hpp
shaders/Shader.o: /usr/include/glm/detail/type_half.inl
shaders/Shader.o: /usr/include/glm/geometric.hpp /usr/include/glm/matrix.hpp
shaders/Shader.o: /usr/include/glm/vector_relational.hpp
shaders/Shader.o: /usr/include/glm/integer.hpp
shaders/Shader.o: /usr/include/glm/detail/func_integer.inl Debug.hpp
shaders/StaticShader.o: /home/cipsi/Personal/opengl_framework/shaders/StaticShader.hpp
shaders/StaticShader.o: /home/cipsi/Personal/opengl_framework/shaders/Shader.hpp
shaders/StaticShader.o: /usr/include/GL/glew.h /usr/include/stdint.h
shaders/StaticShader.o: /usr/include/bits/libc-header-start.h
shaders/StaticShader.o: /usr/include/features.h /usr/include/stdc-predef.h
shaders/StaticShader.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
shaders/StaticShader.o: /usr/include/bits/long-double.h
shaders/StaticShader.o: /usr/include/gnu/stubs.h /usr/include/bits/types.h
shaders/StaticShader.o: /usr/include/bits/typesizes.h
shaders/StaticShader.o: /usr/include/bits/wchar.h
shaders/StaticShader.o: /usr/include/bits/stdint-intn.h
shaders/StaticShader.o: /usr/include/bits/stdint-uintn.h
shaders/StaticShader.o: /usr/include/GL/glu.h /usr/include/GL/gl.h
shaders/StaticShader.o: /usr/include/glm/glm.hpp
shaders/StaticShader.o: /usr/include/glm/detail/_fixes.hpp
shaders/StaticShader.o: /usr/include/glm/detail/setup.hpp
shaders/StaticShader.o: /usr/include/glm/simd/platform.h
shaders/StaticShader.o: /usr/include/glm/fwd.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_int.hpp
shaders/StaticShader.o: /usr/include/glm/detail/setup.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_float.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_vec.hpp
shaders/StaticShader.o: /usr/include/glm/detail/qualifier.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_int.hpp
shaders/StaticShader.o: /usr/include/glm/detail/compute_vector_relational.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_mat.hpp
shaders/StaticShader.o: /usr/include/glm/vec2.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_vec2.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_vec.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_vec2.inl
shaders/StaticShader.o: /usr/include/glm/vec3.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_vec3.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_vec3.inl
shaders/StaticShader.o: /usr/include/glm/vec4.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_vec4.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_vec4.inl
shaders/StaticShader.o: /usr/include/glm/mat2x2.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_mat2x2.hpp
shaders/StaticShader.o: /usr/include/glm/fwd.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_vec2.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_mat.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_mat2x2.inl
shaders/StaticShader.o: /usr/include/glm/matrix.hpp
shaders/StaticShader.o: /usr/include/glm/detail/qualifier.hpp
shaders/StaticShader.o: /usr/include/glm/mat2x3.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_mat2x3.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_vec3.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_mat2x3.inl
shaders/StaticShader.o: /usr/include/glm/mat2x4.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_mat2x4.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_vec4.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_mat2x4.inl
shaders/StaticShader.o: /usr/include/glm/mat3x2.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_mat3x2.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_mat3x2.inl
shaders/StaticShader.o: /usr/include/glm/mat3x3.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_mat3x3.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_mat3x3.inl
shaders/StaticShader.o: /usr/include/glm/mat3x4.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_mat3x4.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_mat3x4.inl
shaders/StaticShader.o: /usr/include/glm/mat4x2.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_mat4x2.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_mat4x2.inl
shaders/StaticShader.o: /usr/include/glm/mat4x3.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_mat4x3.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_mat4x3.inl
shaders/StaticShader.o: /usr/include/glm/mat4x4.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_mat4x4.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_mat4x4.inl
shaders/StaticShader.o: /usr/include/glm/detail/type_mat4x4_simd.inl
shaders/StaticShader.o: /usr/include/glm/detail/func_matrix.inl
shaders/StaticShader.o: /usr/include/glm/geometric.hpp
shaders/StaticShader.o: /usr/include/glm/detail/func_geometric.inl
shaders/StaticShader.o: /usr/include/glm/exponential.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_vec1.hpp
shaders/StaticShader.o: /usr/include/glm/detail/func_exponential.inl
shaders/StaticShader.o: /usr/include/glm/vector_relational.hpp
shaders/StaticShader.o: /usr/include/glm/detail/func_vector_relational.inl
shaders/StaticShader.o: /usr/include/glm/detail/_vectorize.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_vec1.hpp
shaders/StaticShader.o: /usr/include/glm/common.hpp
shaders/StaticShader.o: /usr/include/glm/detail/func_common.inl
shaders/StaticShader.o: /usr/include/glm/detail/type_float.hpp
shaders/StaticShader.o: /usr/include/glm/trigonometric.hpp
shaders/StaticShader.o: /usr/include/glm/detail/func_trigonometric.inl
shaders/StaticShader.o: /usr/include/glm/exponential.hpp
shaders/StaticShader.o: /usr/include/glm/common.hpp
shaders/StaticShader.o: /usr/include/glm/packing.hpp
shaders/StaticShader.o: /usr/include/glm/detail/func_packing.inl
shaders/StaticShader.o: /usr/include/glm/detail/type_half.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_half.inl
shaders/StaticShader.o: /usr/include/glm/geometric.hpp
shaders/StaticShader.o: /usr/include/glm/matrix.hpp
shaders/StaticShader.o: /usr/include/glm/vector_relational.hpp
shaders/StaticShader.o: /usr/include/glm/integer.hpp
shaders/StaticShader.o: /usr/include/glm/detail/func_integer.inl
shaders/StaticShader.o: /usr/include/glm/ext/vec1.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_vec.hpp
shaders/StaticShader.o: /usr/include/glm/detail/type_vec1.inl Light.hpp
shaders/StaticShader.o: Debug.hpp
App.o: /usr/include/GL/glew.h /usr/include/stdint.h
App.o: /usr/include/bits/libc-header-start.h /usr/include/features.h
App.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
App.o: /usr/include/bits/wordsize.h /usr/include/bits/long-double.h
App.o: /usr/include/gnu/stubs.h /usr/include/bits/types.h
App.o: /usr/include/bits/typesizes.h /usr/include/bits/wchar.h
App.o: /usr/include/bits/stdint-intn.h /usr/include/bits/stdint-uintn.h
App.o: /usr/include/GL/glu.h /usr/include/GL/gl.h App.hpp
App.o: /usr/include/SFML/System.hpp /usr/include/SFML/Config.hpp
App.o: /usr/include/SFML/System/Clock.hpp /usr/include/SFML/System/Export.hpp
App.o: /usr/include/SFML/System/Time.hpp /usr/include/SFML/System/Err.hpp
App.o: /usr/include/SFML/System/FileInputStream.hpp
App.o: /usr/include/SFML/System/InputStream.hpp
App.o: /usr/include/SFML/System/NonCopyable.hpp
App.o: /usr/include/SFML/System/Lock.hpp
App.o: /usr/include/SFML/System/MemoryInputStream.hpp
App.o: /usr/include/SFML/System/Mutex.hpp /usr/include/SFML/System/Sleep.hpp
App.o: /usr/include/SFML/System/String.hpp /usr/include/SFML/System/Utf.hpp
App.o: /usr/include/SFML/System/Utf.inl /usr/include/SFML/System/String.inl
App.o: /usr/include/SFML/System/Thread.hpp
App.o: /usr/include/SFML/System/Thread.inl
App.o: /usr/include/SFML/System/ThreadLocal.hpp
App.o: /usr/include/SFML/System/ThreadLocalPtr.hpp
App.o: /usr/include/SFML/System/ThreadLocalPtr.inl
App.o: /usr/include/SFML/System/Vector2.hpp
App.o: /usr/include/SFML/System/Vector2.inl
App.o: /usr/include/SFML/System/Vector3.hpp
App.o: /usr/include/SFML/System/Vector3.inl /usr/include/SFML/Window.hpp
App.o: /usr/include/SFML/Window/Context.hpp
App.o: /usr/include/SFML/Window/Export.hpp
App.o: /usr/include/SFML/Window/GlResource.hpp
App.o: /usr/include/SFML/Window/ContextSettings.hpp
App.o: /usr/include/SFML/Window/Event.hpp
App.o: /usr/include/SFML/Window/Joystick.hpp
App.o: /usr/include/SFML/Window/Keyboard.hpp
App.o: /usr/include/SFML/Window/Mouse.hpp /usr/include/SFML/Window/Sensor.hpp
App.o: /usr/include/SFML/Window/Touch.hpp
App.o: /usr/include/SFML/Window/VideoMode.hpp
App.o: /usr/include/SFML/Window/Window.hpp
App.o: /usr/include/SFML/Window/WindowHandle.hpp
App.o: /usr/include/SFML/Window/WindowStyle.hpp Debug.hpp Resources.hpp
App.o: /home/cipsi/Personal/opengl_framework/components/Texture.hpp
App.o: /home/cipsi/Personal/opengl_framework/components/Mesh.hpp Loader.hpp
App.o: /usr/include/glm/glm.hpp /usr/include/glm/detail/_fixes.hpp
App.o: /usr/include/glm/detail/setup.hpp /usr/include/glm/simd/platform.h
App.o: /usr/include/glm/fwd.hpp /usr/include/glm/detail/type_int.hpp
App.o: /usr/include/glm/detail/setup.hpp
App.o: /usr/include/glm/detail/type_float.hpp
App.o: /usr/include/glm/detail/type_vec.hpp
App.o: /usr/include/glm/detail/qualifier.hpp
App.o: /usr/include/glm/detail/type_int.hpp
App.o: /usr/include/glm/detail/compute_vector_relational.hpp
App.o: /usr/include/glm/detail/type_mat.hpp /usr/include/glm/vec2.hpp
App.o: /usr/include/glm/detail/type_vec2.hpp
App.o: /usr/include/glm/detail/type_vec.hpp
App.o: /usr/include/glm/detail/type_vec2.inl /usr/include/glm/vec3.hpp
App.o: /usr/include/glm/detail/type_vec3.hpp
App.o: /usr/include/glm/detail/type_vec3.inl /usr/include/glm/vec4.hpp
App.o: /usr/include/glm/detail/type_vec4.hpp
App.o: /usr/include/glm/detail/type_vec4.inl /usr/include/glm/mat2x2.hpp
App.o: /usr/include/glm/detail/type_mat2x2.hpp /usr/include/glm/fwd.hpp
App.o: /usr/include/glm/detail/type_vec2.hpp
App.o: /usr/include/glm/detail/type_mat.hpp
App.o: /usr/include/glm/detail/type_mat2x2.inl /usr/include/glm/matrix.hpp
App.o: /usr/include/glm/detail/qualifier.hpp /usr/include/glm/mat2x3.hpp
App.o: /usr/include/glm/detail/type_mat2x3.hpp
App.o: /usr/include/glm/detail/type_vec3.hpp
App.o: /usr/include/glm/detail/type_mat2x3.inl /usr/include/glm/mat2x4.hpp
App.o: /usr/include/glm/detail/type_mat2x4.hpp
App.o: /usr/include/glm/detail/type_vec4.hpp
App.o: /usr/include/glm/detail/type_mat2x4.inl /usr/include/glm/mat3x2.hpp
App.o: /usr/include/glm/detail/type_mat3x2.hpp
App.o: /usr/include/glm/detail/type_mat3x2.inl /usr/include/glm/mat3x3.hpp
App.o: /usr/include/glm/detail/type_mat3x3.hpp
App.o: /usr/include/glm/detail/type_mat3x3.inl /usr/include/glm/mat3x4.hpp
App.o: /usr/include/glm/detail/type_mat3x4.hpp
App.o: /usr/include/glm/detail/type_mat3x4.inl /usr/include/glm/mat4x2.hpp
App.o: /usr/include/glm/detail/type_mat4x2.hpp
App.o: /usr/include/glm/detail/type_mat4x2.inl /usr/include/glm/mat4x3.hpp
App.o: /usr/include/glm/detail/type_mat4x3.hpp
App.o: /usr/include/glm/detail/type_mat4x3.inl /usr/include/glm/mat4x4.hpp
App.o: /usr/include/glm/detail/type_mat4x4.hpp
App.o: /usr/include/glm/detail/type_mat4x4.inl
App.o: /usr/include/glm/detail/type_mat4x4_simd.inl
App.o: /usr/include/glm/detail/func_matrix.inl /usr/include/glm/geometric.hpp
App.o: /usr/include/glm/detail/func_geometric.inl
App.o: /usr/include/glm/exponential.hpp /usr/include/glm/detail/type_vec1.hpp
App.o: /usr/include/glm/detail/func_exponential.inl
App.o: /usr/include/glm/vector_relational.hpp
App.o: /usr/include/glm/detail/func_vector_relational.inl
App.o: /usr/include/glm/detail/_vectorize.hpp
App.o: /usr/include/glm/detail/type_vec1.hpp /usr/include/glm/common.hpp
App.o: /usr/include/glm/detail/func_common.inl
App.o: /usr/include/glm/detail/type_float.hpp
App.o: /usr/include/glm/trigonometric.hpp
App.o: /usr/include/glm/detail/func_trigonometric.inl
App.o: /usr/include/glm/exponential.hpp /usr/include/glm/common.hpp
App.o: /usr/include/glm/packing.hpp /usr/include/glm/detail/func_packing.inl
App.o: /usr/include/glm/detail/type_half.hpp
App.o: /usr/include/glm/detail/type_half.inl /usr/include/glm/geometric.hpp
App.o: /usr/include/glm/matrix.hpp /usr/include/glm/vector_relational.hpp
App.o: /usr/include/glm/integer.hpp /usr/include/glm/detail/func_integer.inl
App.o: /usr/include/glm/ext/vec1.hpp /usr/include/glm/detail/type_vec.hpp
App.o: /usr/include/glm/detail/type_vec1.inl
App.o: /home/cipsi/Personal/opengl_framework/components/Model.hpp
App.o: /home/cipsi/Personal/opengl_framework/components/Component.hpp
App.o: systems/Renderer.hpp
App.o: /home/cipsi/Personal/opengl_framework/entities/Entity.hpp
App.o: /home/cipsi/Personal/opengl_framework/shaders/StaticShader.hpp
App.o: /home/cipsi/Personal/opengl_framework/shaders/Shader.hpp Light.hpp
App.o: systems/System.hpp
App.o: /home/cipsi/Personal/opengl_framework/components/Transform.hpp
App.o: systems/Transformer.hpp
App.o: /home/cipsi/Personal/opengl_framework/components/Camera.hpp Input.hpp
Loader.o: /usr/include/SFML/Graphics/Image.hpp
Loader.o: /usr/include/SFML/Graphics/Export.hpp /usr/include/SFML/Config.hpp
Loader.o: /usr/include/SFML/Graphics/Color.hpp
Loader.o: /usr/include/SFML/Graphics/Rect.hpp
Loader.o: /usr/include/SFML/System/Vector2.hpp
Loader.o: /usr/include/SFML/System/Vector2.inl
Loader.o: /usr/include/SFML/Graphics/Rect.inl Loader.hpp
Loader.o: /usr/include/GL/glew.h /usr/include/stdint.h
Loader.o: /usr/include/bits/libc-header-start.h /usr/include/features.h
Loader.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
Loader.o: /usr/include/bits/wordsize.h /usr/include/bits/long-double.h
Loader.o: /usr/include/gnu/stubs.h /usr/include/bits/types.h
Loader.o: /usr/include/bits/typesizes.h /usr/include/bits/wchar.h
Loader.o: /usr/include/bits/stdint-intn.h /usr/include/bits/stdint-uintn.h
Loader.o: /usr/include/GL/glu.h /usr/include/GL/gl.h /usr/include/glm/glm.hpp
Loader.o: /usr/include/glm/detail/_fixes.hpp
Loader.o: /usr/include/glm/detail/setup.hpp /usr/include/glm/simd/platform.h
Loader.o: /usr/include/glm/fwd.hpp /usr/include/glm/detail/type_int.hpp
Loader.o: /usr/include/glm/detail/setup.hpp
Loader.o: /usr/include/glm/detail/type_float.hpp
Loader.o: /usr/include/glm/detail/type_vec.hpp
Loader.o: /usr/include/glm/detail/qualifier.hpp
Loader.o: /usr/include/glm/detail/type_int.hpp
Loader.o: /usr/include/glm/detail/compute_vector_relational.hpp
Loader.o: /usr/include/glm/detail/type_mat.hpp /usr/include/glm/vec2.hpp
Loader.o: /usr/include/glm/detail/type_vec2.hpp
Loader.o: /usr/include/glm/detail/type_vec.hpp
Loader.o: /usr/include/glm/detail/type_vec2.inl /usr/include/glm/vec3.hpp
Loader.o: /usr/include/glm/detail/type_vec3.hpp
Loader.o: /usr/include/glm/detail/type_vec3.inl /usr/include/glm/vec4.hpp
Loader.o: /usr/include/glm/detail/type_vec4.hpp
Loader.o: /usr/include/glm/detail/type_vec4.inl /usr/include/glm/mat2x2.hpp
Loader.o: /usr/include/glm/detail/type_mat2x2.hpp /usr/include/glm/fwd.hpp
Loader.o: /usr/include/glm/detail/type_vec2.hpp
Loader.o: /usr/include/glm/detail/type_mat.hpp
Loader.o: /usr/include/glm/detail/type_mat2x2.inl /usr/include/glm/matrix.hpp
Loader.o: /usr/include/glm/detail/qualifier.hpp /usr/include/glm/mat2x3.hpp
Loader.o: /usr/include/glm/detail/type_mat2x3.hpp
Loader.o: /usr/include/glm/detail/type_vec3.hpp
Loader.o: /usr/include/glm/detail/type_mat2x3.inl /usr/include/glm/mat2x4.hpp
Loader.o: /usr/include/glm/detail/type_mat2x4.hpp
Loader.o: /usr/include/glm/detail/type_vec4.hpp
Loader.o: /usr/include/glm/detail/type_mat2x4.inl /usr/include/glm/mat3x2.hpp
Loader.o: /usr/include/glm/detail/type_mat3x2.hpp
Loader.o: /usr/include/glm/detail/type_mat3x2.inl /usr/include/glm/mat3x3.hpp
Loader.o: /usr/include/glm/detail/type_mat3x3.hpp
Loader.o: /usr/include/glm/detail/type_mat3x3.inl /usr/include/glm/mat3x4.hpp
Loader.o: /usr/include/glm/detail/type_mat3x4.hpp
Loader.o: /usr/include/glm/detail/type_mat3x4.inl /usr/include/glm/mat4x2.hpp
Loader.o: /usr/include/glm/detail/type_mat4x2.hpp
Loader.o: /usr/include/glm/detail/type_mat4x2.inl /usr/include/glm/mat4x3.hpp
Loader.o: /usr/include/glm/detail/type_mat4x3.hpp
Loader.o: /usr/include/glm/detail/type_mat4x3.inl /usr/include/glm/mat4x4.hpp
Loader.o: /usr/include/glm/detail/type_mat4x4.hpp
Loader.o: /usr/include/glm/detail/type_mat4x4.inl
Loader.o: /usr/include/glm/detail/type_mat4x4_simd.inl
Loader.o: /usr/include/glm/detail/func_matrix.inl
Loader.o: /usr/include/glm/geometric.hpp
Loader.o: /usr/include/glm/detail/func_geometric.inl
Loader.o: /usr/include/glm/exponential.hpp
Loader.o: /usr/include/glm/detail/type_vec1.hpp
Loader.o: /usr/include/glm/detail/func_exponential.inl
Loader.o: /usr/include/glm/vector_relational.hpp
Loader.o: /usr/include/glm/detail/func_vector_relational.inl
Loader.o: /usr/include/glm/detail/_vectorize.hpp
Loader.o: /usr/include/glm/detail/type_vec1.hpp /usr/include/glm/common.hpp
Loader.o: /usr/include/glm/detail/func_common.inl
Loader.o: /usr/include/glm/detail/type_float.hpp
Loader.o: /usr/include/glm/trigonometric.hpp
Loader.o: /usr/include/glm/detail/func_trigonometric.inl
Loader.o: /usr/include/glm/exponential.hpp /usr/include/glm/common.hpp
Loader.o: /usr/include/glm/packing.hpp
Loader.o: /usr/include/glm/detail/func_packing.inl
Loader.o: /usr/include/glm/detail/type_half.hpp
Loader.o: /usr/include/glm/detail/type_half.inl
Loader.o: /usr/include/glm/geometric.hpp /usr/include/glm/matrix.hpp
Loader.o: /usr/include/glm/vector_relational.hpp /usr/include/glm/integer.hpp
Loader.o: /usr/include/glm/detail/func_integer.inl
Loader.o: /usr/include/glm/ext/vec1.hpp /usr/include/glm/detail/type_vec.hpp
Loader.o: /usr/include/glm/detail/type_vec1.inl
Loader.o: /home/cipsi/Personal/opengl_framework/components/Mesh.hpp
Loader.o: /home/cipsi/Personal/opengl_framework/components/Texture.hpp
Loader.o: Debug.hpp Utilities.hpp
Loader.o: /home/cipsi/Personal/opengl_framework/components/Camera.hpp
Loader.o: /usr/include/SFML/Window.hpp /usr/include/SFML/System.hpp
Loader.o: /usr/include/SFML/System/Clock.hpp
Loader.o: /usr/include/SFML/System/Export.hpp
Loader.o: /usr/include/SFML/System/Time.hpp /usr/include/SFML/System/Err.hpp
Loader.o: /usr/include/SFML/System/FileInputStream.hpp
Loader.o: /usr/include/SFML/System/InputStream.hpp
Loader.o: /usr/include/SFML/System/NonCopyable.hpp
Loader.o: /usr/include/SFML/System/Lock.hpp
Loader.o: /usr/include/SFML/System/MemoryInputStream.hpp
Loader.o: /usr/include/SFML/System/Mutex.hpp
Loader.o: /usr/include/SFML/System/Sleep.hpp
Loader.o: /usr/include/SFML/System/String.hpp
Loader.o: /usr/include/SFML/System/Utf.hpp /usr/include/SFML/System/Utf.inl
Loader.o: /usr/include/SFML/System/String.inl
Loader.o: /usr/include/SFML/System/Thread.hpp
Loader.o: /usr/include/SFML/System/Thread.inl
Loader.o: /usr/include/SFML/System/ThreadLocal.hpp
Loader.o: /usr/include/SFML/System/ThreadLocalPtr.hpp
Loader.o: /usr/include/SFML/System/ThreadLocalPtr.inl
Loader.o: /usr/include/SFML/System/Vector3.hpp
Loader.o: /usr/include/SFML/System/Vector3.inl
Loader.o: /usr/include/SFML/Window/Context.hpp
Loader.o: /usr/include/SFML/Window/Export.hpp
Loader.o: /usr/include/SFML/Window/GlResource.hpp
Loader.o: /usr/include/SFML/Window/ContextSettings.hpp
Loader.o: /usr/include/SFML/Window/Event.hpp
Loader.o: /usr/include/SFML/Window/Joystick.hpp
Loader.o: /usr/include/SFML/Window/Keyboard.hpp
Loader.o: /usr/include/SFML/Window/Mouse.hpp
Loader.o: /usr/include/SFML/Window/Sensor.hpp
Loader.o: /usr/include/SFML/Window/Touch.hpp
Loader.o: /usr/include/SFML/Window/VideoMode.hpp
Loader.o: /usr/include/SFML/Window/Window.hpp
Loader.o: /usr/include/SFML/Window/WindowHandle.hpp
Loader.o: /usr/include/SFML/Window/WindowStyle.hpp
Loader.o: /home/cipsi/Personal/opengl_framework/components/Component.hpp
