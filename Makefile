CC = g++
CFLAGS = -Wall -g
INCLUDES = -I/usr/include -I$(CURDIR) -I$(CURDIR)/entities/ -I$(CURDIR)/components/ -I$(CURDIR)/systems/ -I$(CURDIR)/shaders/
LFLAGS = 
LIBS = -lsfml-window -lsfml-system -lsfml-graphics -lGL -lGLEW
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

main.o: /usr/include/SFML/System.hpp /usr/include/SFML/Config.hpp
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
main.o: /usr/include/SFML/Window/WindowStyle.hpp /usr/include/GL/glew.h
main.o: /usr/include/stdint.h /usr/include/bits/libc-header-start.h
main.o: /usr/include/features.h /usr/include/stdc-predef.h
main.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
main.o: /usr/include/bits/long-double.h /usr/include/gnu/stubs.h
main.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
main.o: /usr/include/bits/wchar.h /usr/include/bits/stdint-intn.h
main.o: /usr/include/bits/stdint-uintn.h /usr/include/GL/glu.h
main.o: /usr/include/GL/gl.h /usr/include/glm/gtc/matrix_transform.hpp
main.o: /usr/include/glm/mat4x4.hpp /usr/include/glm/detail/setup.hpp
main.o: /usr/include/glm/simd/platform.h
main.o: /usr/include/glm/detail/type_mat4x4.hpp /usr/include/glm/fwd.hpp
main.o: /usr/include/glm/detail/type_int.hpp
main.o: /usr/include/glm/detail/setup.hpp
main.o: /usr/include/glm/detail/type_float.hpp
main.o: /usr/include/glm/detail/type_vec.hpp
main.o: /usr/include/glm/detail/qualifier.hpp
main.o: /usr/include/glm/detail/type_int.hpp
main.o: /usr/include/glm/detail/compute_vector_relational.hpp
main.o: /usr/include/glm/detail/type_mat.hpp
main.o: /usr/include/glm/detail/type_vec4.hpp
main.o: /usr/include/glm/detail/type_vec.hpp
main.o: /usr/include/glm/detail/type_vec4.inl
main.o: /usr/include/glm/detail/type_mat.hpp
main.o: /usr/include/glm/detail/type_mat4x4.inl /usr/include/glm/matrix.hpp
main.o: /usr/include/glm/detail/qualifier.hpp /usr/include/glm/vec2.hpp
main.o: /usr/include/glm/detail/type_vec2.hpp
main.o: /usr/include/glm/detail/type_vec2.inl /usr/include/glm/vec3.hpp
main.o: /usr/include/glm/detail/type_vec3.hpp
main.o: /usr/include/glm/detail/type_vec3.inl /usr/include/glm/vec4.hpp
main.o: /usr/include/glm/detail/type_vec4.hpp /usr/include/glm/mat2x2.hpp
main.o: /usr/include/glm/detail/type_mat2x2.hpp
main.o: /usr/include/glm/detail/type_vec2.hpp
main.o: /usr/include/glm/detail/type_mat2x2.inl /usr/include/glm/mat2x3.hpp
main.o: /usr/include/glm/detail/type_mat2x3.hpp
main.o: /usr/include/glm/detail/type_vec3.hpp
main.o: /usr/include/glm/detail/type_mat2x3.inl /usr/include/glm/mat2x4.hpp
main.o: /usr/include/glm/detail/type_mat2x4.hpp
main.o: /usr/include/glm/detail/type_mat2x4.inl /usr/include/glm/mat3x2.hpp
main.o: /usr/include/glm/detail/type_mat3x2.hpp
main.o: /usr/include/glm/detail/type_mat3x2.inl /usr/include/glm/mat3x3.hpp
main.o: /usr/include/glm/detail/type_mat3x3.hpp
main.o: /usr/include/glm/detail/type_mat3x3.inl /usr/include/glm/mat3x4.hpp
main.o: /usr/include/glm/detail/type_mat3x4.hpp
main.o: /usr/include/glm/detail/type_mat3x4.inl /usr/include/glm/mat4x2.hpp
main.o: /usr/include/glm/detail/type_mat4x2.hpp
main.o: /usr/include/glm/detail/type_mat4x2.inl /usr/include/glm/mat4x3.hpp
main.o: /usr/include/glm/detail/type_mat4x3.hpp
main.o: /usr/include/glm/detail/type_mat4x3.inl /usr/include/glm/mat4x4.hpp
main.o: /usr/include/glm/detail/func_matrix.inl
main.o: /usr/include/glm/geometric.hpp
main.o: /usr/include/glm/detail/func_geometric.inl
main.o: /usr/include/glm/exponential.hpp
main.o: /usr/include/glm/detail/type_vec1.hpp
main.o: /usr/include/glm/detail/func_exponential.inl
main.o: /usr/include/glm/vector_relational.hpp
main.o: /usr/include/glm/detail/func_vector_relational.inl
main.o: /usr/include/glm/detail/_vectorize.hpp
main.o: /usr/include/glm/detail/type_vec1.hpp /usr/include/glm/common.hpp
main.o: /usr/include/glm/detail/_fixes.hpp
main.o: /usr/include/glm/detail/func_common.inl
main.o: /usr/include/glm/detail/type_float.hpp
main.o: /usr/include/glm/detail/type_mat4x4_simd.inl
main.o: /usr/include/glm/vec2.hpp /usr/include/glm/vec3.hpp
main.o: /usr/include/glm/vec4.hpp /usr/include/glm/gtc/constants.hpp
main.o: /usr/include/glm/detail/setup.hpp /usr/include/glm/gtc/constants.inl
main.o: /usr/include/glm/gtc/matrix_transform.inl
main.o: /usr/include/glm/trigonometric.hpp
main.o: /usr/include/glm/detail/func_trigonometric.inl Debug.hpp
main.o: /home/cipsi/Personal/opengl_framework/shaders/Shader.hpp
main.o: /usr/include/glm/glm.hpp /usr/include/glm/fwd.hpp
main.o: /usr/include/glm/trigonometric.hpp /usr/include/glm/exponential.hpp
main.o: /usr/include/glm/common.hpp /usr/include/glm/packing.hpp
main.o: /usr/include/glm/detail/func_packing.inl
main.o: /usr/include/glm/detail/type_half.hpp
main.o: /usr/include/glm/detail/type_half.inl /usr/include/glm/geometric.hpp
main.o: /usr/include/glm/matrix.hpp /usr/include/glm/vector_relational.hpp
main.o: /usr/include/glm/integer.hpp /usr/include/glm/detail/func_integer.inl
main.o: /usr/include/glm/ext/vec1.hpp /usr/include/glm/detail/type_vec.hpp
main.o: /usr/include/glm/detail/type_vec1.inl Loader.hpp
main.o: /home/cipsi/Personal/opengl_framework/components/Mesh.hpp
main.o: /home/cipsi/Personal/opengl_framework/systems/Renderer.hpp
main.o: /home/cipsi/Personal/opengl_framework/components/Model.hpp
main.o: /home/cipsi/Personal/opengl_framework/components/Texture.hpp
main.o: /home/cipsi/Personal/opengl_framework/components/Component.hpp
main.o: /home/cipsi/Personal/opengl_framework/entities/Entity.hpp
main.o: /home/cipsi/Personal/opengl_framework/shaders/StaticShader.hpp
main.o: /home/cipsi/Personal/opengl_framework/systems/System.hpp Camera.hpp
main.o: /home/cipsi/Personal/opengl_framework/components/Transform.hpp
main.o: ObjLoader.hpp
ObjLoader.o: ObjLoader.hpp /usr/include/glm/glm.hpp
ObjLoader.o: /usr/include/glm/detail/_fixes.hpp
ObjLoader.o: /usr/include/glm/detail/setup.hpp
ObjLoader.o: /usr/include/glm/simd/platform.h /usr/include/glm/fwd.hpp
ObjLoader.o: /usr/include/glm/detail/type_int.hpp
ObjLoader.o: /usr/include/glm/detail/setup.hpp
ObjLoader.o: /usr/include/glm/detail/type_float.hpp
ObjLoader.o: /usr/include/glm/detail/type_vec.hpp
ObjLoader.o: /usr/include/glm/detail/qualifier.hpp
ObjLoader.o: /usr/include/glm/detail/type_int.hpp
ObjLoader.o: /usr/include/glm/detail/compute_vector_relational.hpp
ObjLoader.o: /usr/include/glm/detail/type_mat.hpp /usr/include/glm/vec2.hpp
ObjLoader.o: /usr/include/glm/detail/type_vec2.hpp
ObjLoader.o: /usr/include/glm/detail/type_vec.hpp
ObjLoader.o: /usr/include/glm/detail/type_vec2.inl /usr/include/glm/vec3.hpp
ObjLoader.o: /usr/include/glm/detail/type_vec3.hpp
ObjLoader.o: /usr/include/glm/detail/type_vec3.inl /usr/include/glm/vec4.hpp
ObjLoader.o: /usr/include/glm/detail/type_vec4.hpp
ObjLoader.o: /usr/include/glm/detail/type_vec4.inl
ObjLoader.o: /usr/include/glm/mat2x2.hpp
ObjLoader.o: /usr/include/glm/detail/type_mat2x2.hpp /usr/include/glm/fwd.hpp
ObjLoader.o: /usr/include/glm/detail/type_vec2.hpp
ObjLoader.o: /usr/include/glm/detail/type_mat.hpp
ObjLoader.o: /usr/include/glm/detail/type_mat2x2.inl
ObjLoader.o: /usr/include/glm/matrix.hpp
ObjLoader.o: /usr/include/glm/detail/qualifier.hpp
ObjLoader.o: /usr/include/glm/mat2x3.hpp
ObjLoader.o: /usr/include/glm/detail/type_mat2x3.hpp
ObjLoader.o: /usr/include/glm/detail/type_vec3.hpp
ObjLoader.o: /usr/include/glm/detail/type_mat2x3.inl
ObjLoader.o: /usr/include/glm/mat2x4.hpp
ObjLoader.o: /usr/include/glm/detail/type_mat2x4.hpp
ObjLoader.o: /usr/include/glm/detail/type_vec4.hpp
ObjLoader.o: /usr/include/glm/detail/type_mat2x4.inl
ObjLoader.o: /usr/include/glm/mat3x2.hpp
ObjLoader.o: /usr/include/glm/detail/type_mat3x2.hpp
ObjLoader.o: /usr/include/glm/detail/type_mat3x2.inl
ObjLoader.o: /usr/include/glm/mat3x3.hpp
ObjLoader.o: /usr/include/glm/detail/type_mat3x3.hpp
ObjLoader.o: /usr/include/glm/detail/type_mat3x3.inl
ObjLoader.o: /usr/include/glm/mat3x4.hpp
ObjLoader.o: /usr/include/glm/detail/type_mat3x4.hpp
ObjLoader.o: /usr/include/glm/detail/type_mat3x4.inl
ObjLoader.o: /usr/include/glm/mat4x2.hpp
ObjLoader.o: /usr/include/glm/detail/type_mat4x2.hpp
ObjLoader.o: /usr/include/glm/detail/type_mat4x2.inl
ObjLoader.o: /usr/include/glm/mat4x3.hpp
ObjLoader.o: /usr/include/glm/detail/type_mat4x3.hpp
ObjLoader.o: /usr/include/glm/detail/type_mat4x3.inl
ObjLoader.o: /usr/include/glm/mat4x4.hpp
ObjLoader.o: /usr/include/glm/detail/type_mat4x4.hpp
ObjLoader.o: /usr/include/glm/detail/type_mat4x4.inl
ObjLoader.o: /usr/include/glm/detail/type_mat4x4_simd.inl
ObjLoader.o: /usr/include/glm/detail/func_matrix.inl
ObjLoader.o: /usr/include/glm/geometric.hpp
ObjLoader.o: /usr/include/glm/detail/func_geometric.inl
ObjLoader.o: /usr/include/glm/exponential.hpp
ObjLoader.o: /usr/include/glm/detail/type_vec1.hpp
ObjLoader.o: /usr/include/glm/detail/func_exponential.inl
ObjLoader.o: /usr/include/glm/vector_relational.hpp
ObjLoader.o: /usr/include/glm/detail/func_vector_relational.inl
ObjLoader.o: /usr/include/glm/detail/_vectorize.hpp
ObjLoader.o: /usr/include/glm/detail/type_vec1.hpp
ObjLoader.o: /usr/include/glm/common.hpp
ObjLoader.o: /usr/include/glm/detail/func_common.inl
ObjLoader.o: /usr/include/glm/detail/type_float.hpp
ObjLoader.o: /usr/include/glm/trigonometric.hpp
ObjLoader.o: /usr/include/glm/detail/func_trigonometric.inl
ObjLoader.o: /usr/include/glm/exponential.hpp /usr/include/glm/common.hpp
ObjLoader.o: /usr/include/glm/packing.hpp
ObjLoader.o: /usr/include/glm/detail/func_packing.inl
ObjLoader.o: /usr/include/glm/detail/type_half.hpp
ObjLoader.o: /usr/include/glm/detail/type_half.inl
ObjLoader.o: /usr/include/glm/geometric.hpp /usr/include/glm/matrix.hpp
ObjLoader.o: /usr/include/glm/vector_relational.hpp
ObjLoader.o: /usr/include/glm/integer.hpp
ObjLoader.o: /usr/include/glm/detail/func_integer.inl
ObjLoader.o: /usr/include/glm/ext/vec1.hpp
ObjLoader.o: /usr/include/glm/detail/type_vec.hpp
ObjLoader.o: /usr/include/glm/detail/type_vec1.inl
ObjLoader.o: /home/cipsi/Personal/opengl_framework/components/Mesh.hpp
ObjLoader.o: /usr/include/GL/glew.h /usr/include/stdint.h
ObjLoader.o: /usr/include/bits/libc-header-start.h /usr/include/features.h
ObjLoader.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
ObjLoader.o: /usr/include/bits/wordsize.h /usr/include/bits/long-double.h
ObjLoader.o: /usr/include/gnu/stubs.h /usr/include/bits/types.h
ObjLoader.o: /usr/include/bits/typesizes.h /usr/include/bits/wchar.h
ObjLoader.o: /usr/include/bits/stdint-intn.h /usr/include/bits/stdint-uintn.h
ObjLoader.o: /usr/include/GL/glu.h /usr/include/GL/gl.h Debug.hpp Loader.hpp
ObjLoader.o: Utilities.hpp
Camera.o: Camera.hpp /usr/include/glm/glm.hpp
Camera.o: /usr/include/glm/detail/_fixes.hpp
Camera.o: /usr/include/glm/detail/setup.hpp /usr/include/glm/simd/platform.h
Camera.o: /usr/include/glm/fwd.hpp /usr/include/glm/detail/type_int.hpp
Camera.o: /usr/include/glm/detail/setup.hpp
Camera.o: /usr/include/glm/detail/type_float.hpp
Camera.o: /usr/include/glm/detail/type_vec.hpp
Camera.o: /usr/include/glm/detail/qualifier.hpp
Camera.o: /usr/include/glm/detail/type_int.hpp
Camera.o: /usr/include/glm/detail/compute_vector_relational.hpp
Camera.o: /usr/include/glm/detail/type_mat.hpp /usr/include/glm/vec2.hpp
Camera.o: /usr/include/glm/detail/type_vec2.hpp
Camera.o: /usr/include/glm/detail/type_vec.hpp
Camera.o: /usr/include/glm/detail/type_vec2.inl /usr/include/glm/vec3.hpp
Camera.o: /usr/include/glm/detail/type_vec3.hpp
Camera.o: /usr/include/glm/detail/type_vec3.inl /usr/include/glm/vec4.hpp
Camera.o: /usr/include/glm/detail/type_vec4.hpp
Camera.o: /usr/include/glm/detail/type_vec4.inl /usr/include/glm/mat2x2.hpp
Camera.o: /usr/include/glm/detail/type_mat2x2.hpp /usr/include/glm/fwd.hpp
Camera.o: /usr/include/glm/detail/type_vec2.hpp
Camera.o: /usr/include/glm/detail/type_mat.hpp
Camera.o: /usr/include/glm/detail/type_mat2x2.inl /usr/include/glm/matrix.hpp
Camera.o: /usr/include/glm/detail/qualifier.hpp /usr/include/glm/mat2x3.hpp
Camera.o: /usr/include/glm/detail/type_mat2x3.hpp
Camera.o: /usr/include/glm/detail/type_vec3.hpp
Camera.o: /usr/include/glm/detail/type_mat2x3.inl /usr/include/glm/mat2x4.hpp
Camera.o: /usr/include/glm/detail/type_mat2x4.hpp
Camera.o: /usr/include/glm/detail/type_vec4.hpp
Camera.o: /usr/include/glm/detail/type_mat2x4.inl /usr/include/glm/mat3x2.hpp
Camera.o: /usr/include/glm/detail/type_mat3x2.hpp
Camera.o: /usr/include/glm/detail/type_mat3x2.inl /usr/include/glm/mat3x3.hpp
Camera.o: /usr/include/glm/detail/type_mat3x3.hpp
Camera.o: /usr/include/glm/detail/type_mat3x3.inl /usr/include/glm/mat3x4.hpp
Camera.o: /usr/include/glm/detail/type_mat3x4.hpp
Camera.o: /usr/include/glm/detail/type_mat3x4.inl /usr/include/glm/mat4x2.hpp
Camera.o: /usr/include/glm/detail/type_mat4x2.hpp
Camera.o: /usr/include/glm/detail/type_mat4x2.inl /usr/include/glm/mat4x3.hpp
Camera.o: /usr/include/glm/detail/type_mat4x3.hpp
Camera.o: /usr/include/glm/detail/type_mat4x3.inl /usr/include/glm/mat4x4.hpp
Camera.o: /usr/include/glm/detail/type_mat4x4.hpp
Camera.o: /usr/include/glm/detail/type_mat4x4.inl
Camera.o: /usr/include/glm/detail/type_mat4x4_simd.inl
Camera.o: /usr/include/glm/detail/func_matrix.inl
Camera.o: /usr/include/glm/geometric.hpp
Camera.o: /usr/include/glm/detail/func_geometric.inl
Camera.o: /usr/include/glm/exponential.hpp
Camera.o: /usr/include/glm/detail/type_vec1.hpp
Camera.o: /usr/include/glm/detail/func_exponential.inl
Camera.o: /usr/include/glm/vector_relational.hpp
Camera.o: /usr/include/glm/detail/func_vector_relational.inl
Camera.o: /usr/include/glm/detail/_vectorize.hpp
Camera.o: /usr/include/glm/detail/type_vec1.hpp /usr/include/glm/common.hpp
Camera.o: /usr/include/glm/detail/func_common.inl
Camera.o: /usr/include/glm/detail/type_float.hpp
Camera.o: /usr/include/glm/trigonometric.hpp
Camera.o: /usr/include/glm/detail/func_trigonometric.inl
Camera.o: /usr/include/glm/exponential.hpp /usr/include/glm/common.hpp
Camera.o: /usr/include/glm/packing.hpp
Camera.o: /usr/include/glm/detail/func_packing.inl
Camera.o: /usr/include/glm/detail/type_half.hpp
Camera.o: /usr/include/glm/detail/type_half.inl
Camera.o: /usr/include/glm/geometric.hpp /usr/include/glm/matrix.hpp
Camera.o: /usr/include/glm/vector_relational.hpp /usr/include/glm/integer.hpp
Camera.o: /usr/include/glm/detail/func_integer.inl
Camera.o: /usr/include/glm/ext/vec1.hpp /usr/include/glm/detail/type_vec.hpp
Camera.o: /usr/include/glm/detail/type_vec1.inl /usr/include/SFML/Window.hpp
Camera.o: /usr/include/SFML/System.hpp /usr/include/SFML/Config.hpp
Camera.o: /usr/include/SFML/System/Clock.hpp
Camera.o: /usr/include/SFML/System/Export.hpp
Camera.o: /usr/include/SFML/System/Time.hpp /usr/include/SFML/System/Err.hpp
Camera.o: /usr/include/SFML/System/FileInputStream.hpp
Camera.o: /usr/include/SFML/System/InputStream.hpp
Camera.o: /usr/include/SFML/System/NonCopyable.hpp
Camera.o: /usr/include/SFML/System/Lock.hpp
Camera.o: /usr/include/SFML/System/MemoryInputStream.hpp
Camera.o: /usr/include/SFML/System/Mutex.hpp
Camera.o: /usr/include/SFML/System/Sleep.hpp
Camera.o: /usr/include/SFML/System/String.hpp
Camera.o: /usr/include/SFML/System/Utf.hpp /usr/include/SFML/System/Utf.inl
Camera.o: /usr/include/SFML/System/String.inl
Camera.o: /usr/include/SFML/System/Thread.hpp
Camera.o: /usr/include/SFML/System/Thread.inl
Camera.o: /usr/include/SFML/System/ThreadLocal.hpp
Camera.o: /usr/include/SFML/System/ThreadLocalPtr.hpp
Camera.o: /usr/include/SFML/System/ThreadLocalPtr.inl
Camera.o: /usr/include/SFML/System/Vector2.hpp
Camera.o: /usr/include/SFML/System/Vector2.inl
Camera.o: /usr/include/SFML/System/Vector3.hpp
Camera.o: /usr/include/SFML/System/Vector3.inl
Camera.o: /usr/include/SFML/Window/Context.hpp
Camera.o: /usr/include/SFML/Window/Export.hpp
Camera.o: /usr/include/SFML/Window/GlResource.hpp
Camera.o: /usr/include/SFML/Window/ContextSettings.hpp
Camera.o: /usr/include/SFML/Window/Event.hpp
Camera.o: /usr/include/SFML/Window/Joystick.hpp
Camera.o: /usr/include/SFML/Window/Keyboard.hpp
Camera.o: /usr/include/SFML/Window/Mouse.hpp
Camera.o: /usr/include/SFML/Window/Sensor.hpp
Camera.o: /usr/include/SFML/Window/Touch.hpp
Camera.o: /usr/include/SFML/Window/VideoMode.hpp
Camera.o: /usr/include/SFML/Window/Window.hpp
Camera.o: /usr/include/SFML/Window/WindowHandle.hpp
Camera.o: /usr/include/SFML/Window/WindowStyle.hpp
Debug.o: Debug.hpp /usr/include/string.h
Debug.o: /usr/include/bits/libc-header-start.h /usr/include/features.h
Debug.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
Debug.o: /usr/include/bits/wordsize.h /usr/include/bits/long-double.h
Debug.o: /usr/include/gnu/stubs.h /usr/include/bits/types/locale_t.h
Debug.o: /usr/include/bits/types/__locale_t.h /usr/include/strings.h
Debug.o: Utilities.hpp
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
systems/Renderer.o: /home/cipsi/Personal/opengl_framework/systems/Renderer.hpp
systems/Renderer.o: /home/cipsi/Personal/opengl_framework/components/Model.hpp
systems/Renderer.o: /home/cipsi/Personal/opengl_framework/components/Mesh.hpp
systems/Renderer.o: /home/cipsi/Personal/opengl_framework/components/Texture.hpp
systems/Renderer.o: /home/cipsi/Personal/opengl_framework/components/Component.hpp
systems/Renderer.o: /home/cipsi/Personal/opengl_framework/entities/Entity.hpp
systems/Renderer.o: Debug.hpp
systems/Renderer.o: /home/cipsi/Personal/opengl_framework/shaders/StaticShader.hpp
systems/Renderer.o: /home/cipsi/Personal/opengl_framework/shaders/Shader.hpp
systems/Renderer.o: /home/cipsi/Personal/opengl_framework/systems/System.hpp
systems/Renderer.o: Camera.hpp /usr/include/SFML/Window.hpp
systems/Renderer.o: /usr/include/SFML/System.hpp /usr/include/SFML/Config.hpp
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
systems/System.o: /home/cipsi/Personal/opengl_framework/systems/System.hpp
systems/System.o: /home/cipsi/Personal/opengl_framework/components/Component.hpp
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
systems/System.o: Debug.hpp
Utilities.o: Utilities.hpp
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
entities/Entity.o: Debug.hpp
entities/Entity.o: /home/cipsi/Personal/opengl_framework/systems/System.hpp
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
shaders/StaticShader.o: /usr/include/glm/detail/type_vec1.inl Debug.hpp
Loader.o: Loader.hpp /usr/include/GL/glew.h /usr/include/stdint.h
Loader.o: /usr/include/bits/libc-header-start.h /usr/include/features.h
Loader.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
Loader.o: /usr/include/bits/wordsize.h /usr/include/bits/long-double.h
Loader.o: /usr/include/gnu/stubs.h /usr/include/bits/types.h
Loader.o: /usr/include/bits/typesizes.h /usr/include/bits/wchar.h
Loader.o: /usr/include/bits/stdint-intn.h /usr/include/bits/stdint-uintn.h
Loader.o: /usr/include/GL/glu.h /usr/include/GL/gl.h
Loader.o: /home/cipsi/Personal/opengl_framework/components/Mesh.hpp Debug.hpp
Loader.o: /usr/include/SFML/Graphics/Image.hpp
Loader.o: /usr/include/SFML/Graphics/Export.hpp /usr/include/SFML/Config.hpp
Loader.o: /usr/include/SFML/Graphics/Color.hpp
Loader.o: /usr/include/SFML/Graphics/Rect.hpp
Loader.o: /usr/include/SFML/System/Vector2.hpp
Loader.o: /usr/include/SFML/System/Vector2.inl
Loader.o: /usr/include/SFML/Graphics/Rect.inl
