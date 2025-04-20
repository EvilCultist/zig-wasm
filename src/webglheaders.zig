// These constants are defined on the WebGLRenderingContext interface.
// Clearing buffers
//
// Constants passed to WebGLRenderingContext.clear() to clear buffer masks.
extern const webgl = struct {
    const DEPTH_BUFFER_BIT: comptime_int; // Passed to clear to clear the current depth buffer.
    const STENCIL_BUFFER_BIT: comptime_int; // Passed to clear to clear the current stencil buffer.
    const COLOR_BUFFER_BIT: comptime_int; // Passed to clear to clear the current color buffer.
    // Rendering primitives
    //
    // Constants passed to WebGLRenderingContext.drawElements() or WebGLRenderingContext.drawArrays() to specify what kind of primitive to render.
    // Constant name : comptime_int; // Description
    const POINTS: comptime_int; // Passed to drawElements or drawArrays to draw single points.
    const LINES: comptime_int; // Passed to drawElements or drawArrays to draw lines. Each vertex connects to the one after it.
    const LINE_LOOP: comptime_int; // Passed to drawElements or drawArrays to draw lines. Each set of two vertices is treated as a separate line segment.
    const LINE_STRIP: comptime_int; // Passed to drawElements or drawArrays to draw a connected group of line segments from the first vertex to the last.
    const TRIANGLES: comptime_int; // Passed to drawElements or drawArrays to draw triangles. Each set of three vertices creates a separate triangle.
    const TRIANGLE_STRIP: comptime_int; // Passed to drawElements or drawArrays to draw a connected group of triangles.
    const TRIANGLE_FAN: comptime_int; // Passed to drawElements or drawArrays to draw a connected group of triangles. Each vertex connects to the previous and the first vertex in the fan.
    // Blending modes
    //
    // Constants passed to WebGLRenderingContext.blendFunc() or WebGLRenderingContext.blendFuncSeparate() to specify the blending mode (for both, RGB and alpha, or separately).
    // Constant name : comptime_int; // Description
    const ZERO: comptime_int; // Passed to blendFunc or blendFuncSeparate to turn off a component.
    const ONE: comptime_int; // Passed to blendFunc or blendFuncSeparate to turn on a component.
    const SRC_COLOR: comptime_int; // Passed to blendFunc or blendFuncSeparate to multiply a component by the source element's color.
    const ONE_MINUS_SRC_COLOR: comptime_int; // Passed to blendFunc or blendFuncSeparate to multiply a component by one minus the source element's color.
    const SRC_ALPHA: comptime_int; // Passed to blendFunc or blendFuncSeparate to multiply a component by the source's alpha.
    const ONE_MINUS_SRC_ALPHA: comptime_int; // Passed to blendFunc or blendFuncSeparate to multiply a component by one minus the source's alpha.
    const DST_ALPHA: comptime_int; // Passed to blendFunc or blendFuncSeparate to multiply a component by the destination's alpha.
    const ONE_MINUS_DST_ALPHA: comptime_int; // Passed to blendFunc or blendFuncSeparate to multiply a component by one minus the destination's alpha.
    const DST_COLOR: comptime_int; // Passed to blendFunc or blendFuncSeparate to multiply a component by the destination's color.
    const ONE_MINUS_DST_COLOR: comptime_int; // Passed to blendFunc or blendFuncSeparate to multiply a component by one minus the destination's color.
    const SRC_ALPHA_SATURATE: comptime_int; // Passed to blendFunc or blendFuncSeparate to multiply a component by the minimum of source's alpha or one minus the destination's alpha.
    const CONSTANT_COLOR: comptime_int; // Passed to blendFunc or blendFuncSeparate to specify a constant color blend function.
    const ONE_MINUS_CONSTANT_COLOR: comptime_int; // Passed to blendFunc or blendFuncSeparate to specify one minus a constant color blend function.
    const CONSTANT_ALPHA: comptime_int; // Passed to blendFunc or blendFuncSeparate to specify a constant alpha blend function.
    const ONE_MINUS_CONSTANT_ALPHA: comptime_int; // Passed to blendFunc or blendFuncSeparate to specify one minus a constant alpha blend function.
    // Blending equations
    //
    // Constants passed to WebGLRenderingContext.blendEquation() or WebGLRenderingContext.blendEquationSeparate() to control how the blending is calculated (for both, RGB and alpha, or separately).
    // Constant name : comptime_int; // Description
    const FUNC_ADD: comptime_int; // Passed to blendEquation or blendEquationSeparate to set an addition blend function.
    const FUNC_SUBTRACT: comptime_int; // Passed to blendEquation or blendEquationSeparate to specify a subtraction blend function (source - destination).
    const FUNC_REVERSE_SUBTRACT: comptime_int; // Passed to blendEquation or blendEquationSeparate to specify a reverse subtraction blend function (destination - source).
    // Getting GL parameter information
    //
    // Constants passed to WebGLRenderingContext.getParameter() to specify what information to return.
    // Constant name : comptime_int; // Description
    const BLEND_EQUATION: comptime_int; // Passed to getParameter to get the current RGB blend function.
    const BLEND_EQUATION_RGB: comptime_int; // Passed to getParameter to get the current RGB blend function. Same as BLEND_EQUATION
    const BLEND_EQUATION_ALPHA: comptime_int; // Passed to getParameter to get the current alpha blend function.
    const BLEND_DST_RGB: comptime_int; // Passed to getParameter to get the current destination RGB blend function.
    const BLEND_SRC_RGB: comptime_int; // Passed to getParameter to get the current destination RGB blend function.
    const BLEND_DST_ALPHA: comptime_int; // Passed to getParameter to get the current destination alpha blend function.
    const BLEND_SRC_ALPHA: comptime_int; // Passed to getParameter to get the current source alpha blend function.
    const BLEND_COLOR: comptime_int; // Passed to getParameter to return the current blend color.
    const ARRAY_BUFFER_BINDING: comptime_int; // Passed to getParameter to get the array buffer binding.
    const ELEMENT_ARRAY_BUFFER_BINDING: comptime_int; // Passed to getParameter to get the current element array buffer.
    const LINE_WIDTH: comptime_int; // Passed to getParameter to get the current lineWidth (set by the lineWidth method).
    const ALIASED_POINT_SIZE_RANGE: comptime_int; // Passed to getParameter to get the current size of a point drawn with gl.POINTS
    const ALIASED_LINE_WIDTH_RANGE: comptime_int; // Passed to getParameter to get the range of available widths for a line. The getParameter method then returns an array with two elements: the first element is the minimum width value and the second element is the maximum width value.
    const CULL_FACE_MODE: comptime_int; // Passed to getParameter to get the current value of cullFace. Should return FRONT, BACK, or FRONT_AND_BACK
    const FRONT_FACE: comptime_int; // Passed to getParameter to determine the current value of frontFace. Should return CW or CCW.
    const DEPTH_RANGE: comptime_int; // Passed to getParameter to return a length-2 array of floats giving the current depth range.
    const DEPTH_WRITEMASK: comptime_int; // Passed to getParameter to determine if the depth write mask is enabled.
    const DEPTH_CLEAR_VALUE: comptime_int; // Passed to getParameter to determine the current depth clear value.
    const DEPTH_FUNC: comptime_int; // Passed to getParameter to get the current depth function. Returns NEVER, ALWAYS, LESS, EQUAL, LEQUAL, GREATER, GEQUAL, or NOTEQUAL.
    const STENCIL_CLEAR_VALUE: comptime_int; // Passed to getParameter to get the value the stencil will be cleared to.
    const STENCIL_FUNC: comptime_int; // Passed to getParameter to get the current stencil function. Returns NEVER, ALWAYS, LESS, EQUAL, LEQUAL, GREATER, GEQUAL, or NOTEQUAL.
    const STENCIL_FAIL: comptime_int; // Passed to getParameter to get the current stencil fail function. Should return KEEP, REPLACE, INCR, DECR, INVERT, INCR_WRAP, or DECR_WRAP.
    const STENCIL_PASS_DEPTH_FAIL: comptime_int; // Passed to getParameter to get the current stencil fail function should the depth buffer test fail. Should return KEEP, REPLACE, INCR, DECR, INVERT, INCR_WRAP, or DECR_WRAP.
    const STENCIL_PASS_DEPTH_PASS: comptime_int; // Passed to getParameter to get the current stencil fail function should the depth buffer test pass. Should return KEEP, REPLACE, INCR, DECR, INVERT, INCR_WRAP, or DECR_WRAP.
    const STENCIL_REF: comptime_int; // Passed to getParameter to get the reference value used for stencil tests.
    const STENCIL_VALUE_MASK: comptime_int; //
    const STENCIL_WRITEMASK: comptime_int; //
    const STENCIL_BACK_FUNC: comptime_int; //
    const STENCIL_BACK_FAIL: comptime_int; //
    const STENCIL_BACK_PASS_DEPTH_FAIL: comptime_int; //
    const STENCIL_BACK_PASS_DEPTH_PASS: comptime_int; //
    const STENCIL_BACK_REF: comptime_int; //
    const STENCIL_BACK_VALUE_MASK: comptime_int; //
    const STENCIL_BACK_WRITEMASK: comptime_int; //
    const VIEWPORT: comptime_int; // Returns an Int32Array with four elements for the current viewport dimensions.
    const SCISSOR_BOX: comptime_int; // Returns an Int32Array with four elements for the current scissor box dimensions.
    const COLOR_CLEAR_VALUE: comptime_int; //
    const COLOR_WRITEMASK: comptime_int; //
    const UNPACK_ALIGNMENT: comptime_int; //
    const PACK_ALIGNMENT: comptime_int; //
    const MAX_TEXTURE_SIZE: comptime_int; //
    const MAX_VIEWPORT_DIMS: comptime_int; //
    const SUBPIXEL_BITS: comptime_int; //
    const RED_BITS: comptime_int; //
    const GREEN_BITS: comptime_int; //
    const BLUE_BITS: comptime_int; //
    const ALPHA_BITS: comptime_int; //
    const DEPTH_BITS: comptime_int; //
    const STENCIL_BITS: comptime_int; //
    const POLYGON_OFFSET_UNITS: comptime_int; //
    const POLYGON_OFFSET_FACTOR: comptime_int; //
    const TEXTURE_BINDING_2D: comptime_int; //
    const SAMPLE_BUFFERS: comptime_int; //
    const SAMPLES: comptime_int; //
    const SAMPLE_COVERAGE_VALUE: comptime_int; //
    const SAMPLE_COVERAGE_INVERT: comptime_int; //
    const COMPRESSED_TEXTURE_FORMATS: comptime_int; //
    const VENDOR: comptime_int; //
    const RENDERER: comptime_int; //
    const VERSION: comptime_int; //
    const IMPLEMENTATION_COLOR_READ_TYPE: comptime_int; //
    const IMPLEMENTATION_COLOR_READ_FORMAT: comptime_int; //
    const BROWSER_DEFAULT_WEBGL: comptime_int; //
    // Buffers
    //
    // Constants passed to WebGLRenderingContext.bufferData(), WebGLRenderingContext.bufferSubData(), WebGLRenderingContext.bindBuffer(), or WebGLRenderingContext.getBufferParameter().
    // Constant name : comptime_int; // Description
    const STATIC_DRAW: comptime_int; // Passed to bufferData as a hint about whether the contents of the buffer are likely to be used often and not change often.
    const STREAM_DRAW: comptime_int; // Passed to bufferData as a hint about whether the contents of the buffer are likely to not be used often.
    const DYNAMIC_DRAW: comptime_int; // Passed to bufferData as a hint about whether the contents of the buffer are likely to be used often and change often.
    const ARRAY_BUFFER: comptime_int; // Passed to bindBuffer or bufferData to specify the type of buffer being used.
    const ELEMENT_ARRAY_BUFFER: comptime_int; // Passed to bindBuffer or bufferData to specify the type of buffer being used.
    const BUFFER_SIZE: comptime_int; // Passed to getBufferParameter to get a buffer's size.
    const BUFFER_USAGE: comptime_int; // Passed to getBufferParameter to get the hint for the buffer passed in when it was created.
    // Vertex attributes
    //
    // Constants passed to WebGLRenderingContext.getVertexAttrib().
    // Constant name : comptime_int; // Description
    const CURRENT_VERTEX_ATTRIB: comptime_int; // Passed to getVertexAttrib to read back the current vertex attribute.
    const VERTEX_ATTRIB_ARRAY_ENABLED: comptime_int; //
    const VERTEX_ATTRIB_ARRAY_SIZE: comptime_int; //
    const VERTEX_ATTRIB_ARRAY_STRIDE: comptime_int; //
    const VERTEX_ATTRIB_ARRAY_TYPE: comptime_int; //
    const VERTEX_ATTRIB_ARRAY_NORMALIZED: comptime_int; //
    const VERTEX_ATTRIB_ARRAY_POINTER: comptime_int; //
    const VERTEX_ATTRIB_ARRAY_BUFFER_BINDING: comptime_int; //
    // Culling
    //
    // Constants passed to WebGLRenderingContext.cullFace().
    // Constant name : comptime_int; // Description
    const CULL_FACE: comptime_int; // Passed to enable/disable to turn on/off culling. Can also be used with getParameter to find the current culling method.
    const FRONT: comptime_int; // Passed to cullFace to specify that only front faces should be culled.
    const BACK: comptime_int; // Passed to cullFace to specify that only back faces should be culled.
    const FRONT_AND_BACK: comptime_int; // Passed to cullFace to specify that front and back faces should be culled.
    // Enabling and disabling
    //
    // Constants passed to WebGLRenderingContext.enable() or WebGLRenderingContext.disable().
    // Constant name : comptime_int; // Description
    const BLEND: comptime_int; // Passed to enable/disable to turn on/off blending. Can also be used with getParameter to find the current blending method.
    const DEPTH_TEST: comptime_int; // Passed to enable/disable to turn on/off the depth test. Can also be used with getParameter to query the depth test.
    const DITHER: comptime_int; // Passed to enable/disable to turn on/off dithering. Can also be used with getParameter to find the current dithering method.
    const POLYGON_OFFSET_FILL: comptime_int; // Passed to enable/disable to turn on/off the polygon offset. Useful for rendering hidden-line images, decals, and solids with highlighted edges. Can also be used with getParameter to query the scissor test.
    const SAMPLE_ALPHA_TO_COVERAGE: comptime_int; // Passed to enable/disable to turn on/off the alpha to coverage. Used in multi-sampling alpha channels.
    const SAMPLE_COVERAGE: comptime_int; // Passed to enable/disable to turn on/off the sample coverage. Used in multi-sampling.
    const SCISSOR_TEST: comptime_int; // Passed to enable/disable to turn on/off the scissor test. Can also be used with getParameter to query the scissor test.
    const STENCIL_TEST: comptime_int; // Passed to enable/disable to turn on/off the stencil test. Can also be used with getParameter to query the stencil test.
    // Errors
    //
    // Constants returned from WebGLRenderingContext.getError().
    // Constant name : comptime_int; // Description
    const NO_ERROR: comptime_int; // Returned from getError.
    const INVALID_ENUM: comptime_int; // Returned from getError.
    const INVALID_VALUE: comptime_int; // Returned from getError.
    const INVALID_OPERATION: comptime_int; // Returned from getError.
    const OUT_OF_MEMORY: comptime_int; // Returned from getError.
    const CONTEXT_LOST_WEBGL: comptime_int; // Returned from getError.
    // Front face directions
    //
    // Constants passed to WebGLRenderingContext.frontFace().
    // Constant name : comptime_int; // Description
    const CW: comptime_int; // Passed to frontFace to specify the front face of a polygon is drawn in the clockwise direction
    const CCW: comptime_int; // Passed to frontFace to specify the front face of a polygon is drawn in the counter clockwise direction
    // Hints
    //
    // Constants passed to WebGLRenderingContext.hint()
    // Constant name : comptime_int; // Description
    const DONT_CARE: comptime_int; // There is no preference for this behavior.
    const FASTEST: comptime_int; // The most efficient behavior should be used.
    const NICEST: comptime_int; // The most correct or the highest quality option should be used.
    const GENERATE_MIPMAP_HINT: comptime_int; // Hint for the quality of filtering when generating mipmap images with WebGLRenderingContext.generateMipmap().
    // Data types
    // Constant name : comptime_int; // Description
    const BYTE: comptime_int; //
    const UNSIGNED_BYTE: comptime_int; //
    const SHORT: comptime_int; //
    const UNSIGNED_SHORT: comptime_int; //
    const INT: comptime_int; //
    const UNSIGNED_INT: comptime_int; //
    const FLOAT: comptime_int; //
    // Pixel formats
    // Constant name : comptime_int; // Description
    const DEPTH_COMPONENT: comptime_int; //
    const ALPHA: comptime_int; //
    const RGB: comptime_int; //
    const RGBA: comptime_int; //
    const LUMINANCE: comptime_int; //
    const LUMINANCE_ALPHA: comptime_int; //
    // Pixel types
    // Constant name : comptime_int; // Description
    const UNSIGNED_BYTE: comptime_int; //
    const UNSIGNED_SHORT_4_4_4_4: comptime_int; //
    const UNSIGNED_SHORT_5_5_5_1: comptime_int; //
    const UNSIGNED_SHORT_5_6_5: comptime_int; //
    // Shaders
    //
    // Constants passed to WebGLRenderingContext.createShader() or WebGLRenderingContext.getShaderParameter()
    // Constant name : comptime_int; // Description
    const FRAGMENT_SHADER: comptime_int; // Passed to createShader to define a fragment shader.
    const VERTEX_SHADER: comptime_int; // Passed to createShader to define a vertex shader
    const COMPILE_STATUS: comptime_int; // Passed to getShaderParameter to get the status of the compilation. Returns false if the shader was not compiled. You can then query getShaderInfoLog to find the exact error
    const DELETE_STATUS: comptime_int; // Passed to getShaderParameter to determine if a shader was deleted via deleteShader. Returns true if it was, false otherwise.
    const LINK_STATUS: comptime_int; // Passed to getProgramParameter after calling linkProgram to determine if a program was linked correctly. Returns false if there were errors. Use getProgramInfoLog to find the exact error.
    const VALIDATE_STATUS: comptime_int; // Passed to getProgramParameter after calling validateProgram to determine if it is valid. Returns false if errors were found.
    const ATTACHED_SHADERS: comptime_int; // Passed to getProgramParameter after calling attachShader to determine if the shader was attached correctly. Returns false if errors occurred.
    const ACTIVE_ATTRIBUTES: comptime_int; // Passed to getProgramParameter to get the number of attributes active in a program.
    const ACTIVE_UNIFORMS: comptime_int; // Passed to getProgramParameter to get the number of uniforms active in a program.
    const MAX_VERTEX_ATTRIBS: comptime_int; // The maximum number of entries possible in the vertex attribute list.
    const MAX_VERTEX_UNIFORM_VECTORS: comptime_int; //
    const MAX_VARYING_VECTORS: comptime_int; //
    const MAX_COMBINED_TEXTURE_IMAGE_UNITS: comptime_int; //
    const MAX_VERTEX_TEXTURE_IMAGE_UNITS: comptime_int; //
    const MAX_TEXTURE_IMAGE_UNITS: comptime_int; // Implementation-dependent number of maximum texture units. At least 8.
    const MAX_FRAGMENT_UNIFORM_VECTORS: comptime_int; //
    const SHADER_TYPE: comptime_int; //
    const SHADING_LANGUAGE_VERSION: comptime_int; //
    const CURRENT_PROGRAM: comptime_int; //
    // Depth or stencil tests
    //
    // Constants passed to WebGLRenderingContext.depthFunc() or WebGLRenderingContext.stencilFunc().
    // Constant name : comptime_int; // Description
    const NEVER: comptime_int; // Passed to depthFunction or stencilFunction to specify depth or stencil tests will never pass, i.e., nothing will be drawn.
    const LESS: comptime_int; // Passed to depthFunction or stencilFunction to specify depth or stencil tests will pass if the new depth value is less than the stored value.
    const EQUAL: comptime_int; // Passed to depthFunction or stencilFunction to specify depth or stencil tests will pass if the new depth value is equals to the stored value.
    const LEQUAL: comptime_int; // Passed to depthFunction or stencilFunction to specify depth or stencil tests will pass if the new depth value is less than or equal to the stored value.
    const GREATER: comptime_int; // Passed to depthFunction or stencilFunction to specify depth or stencil tests will pass if the new depth value is greater than the stored value.
    const NOTEQUAL: comptime_int; // Passed to depthFunction or stencilFunction to specify depth or stencil tests will pass if the new depth value is not equal to the stored value.
    const GEQUAL: comptime_int; // Passed to depthFunction or stencilFunction to specify depth or stencil tests will pass if the new depth value is greater than or equal to the stored value.
    const ALWAYS: comptime_int; // Passed to depthFunction or stencilFunction to specify depth or stencil tests will always pass, i.e., pixels will be drawn in the order they are drawn.
    // Stencil actions
    //
    // Constants passed to WebGLRenderingContext.stencilOp().
    // Constant name : comptime_int; // Description
    const KEEP: comptime_int; //
    const REPLACE: comptime_int; //
    const INCR: comptime_int; //
    const DECR: comptime_int; //
    const INVERT: comptime_int; //
    const INCR_WRAP: comptime_int; //
    const DECR_WRAP: comptime_int; //
    // Textures
    //
    // Constants passed to WebGLRenderingContext.texParameteri(), WebGLRenderingContext.texParameterf(), WebGLRenderingContext.bindTexture(), WebGLRenderingContext.texImage2D(), and others.
    // Constant name : comptime_int; // Description
    const NEAREST: comptime_int; //
    const LINEAR: comptime_int; //
    const NEAREST_MIPMAP_NEAREST: comptime_int; //
    const LINEAR_MIPMAP_NEAREST: comptime_int; //
    const NEAREST_MIPMAP_LINEAR: comptime_int; //
    const LINEAR_MIPMAP_LINEAR: comptime_int; //
    const TEXTURE_MAG_FILTER: comptime_int; //
    const TEXTURE_MIN_FILTER: comptime_int; //
    const TEXTURE_WRAP_S: comptime_int; //
    const TEXTURE_WRAP_T: comptime_int; //
    const TEXTURE_2D: comptime_int; //
    const TEXTURE: comptime_int; //
    const TEXTURE_CUBE_MAP: comptime_int; //
    const TEXTURE_BINDING_CUBE_MAP: comptime_int; //
    const TEXTURE_CUBE_MAP_POSITIVE_X: comptime_int; //
    const TEXTURE_CUBE_MAP_NEGATIVE_X: comptime_int; //
    const TEXTURE_CUBE_MAP_POSITIVE_Y: comptime_int; //
    const TEXTURE_CUBE_MAP_NEGATIVE_Y: comptime_int; //
    const TEXTURE_CUBE_MAP_POSITIVE_Z: comptime_int; //
    const TEXTURE_CUBE_MAP_NEGATIVE_Z: comptime_int; //
    const MAX_CUBE_MAP_TEXTURE_SIZE: comptime_int; //
    // TEXTURE0 - 31 : comptime_int; // A texture unit.
    const ACTIVE_TEXTURE: comptime_int; // The current active texture unit.
    const REPEAT: comptime_int; //
    const CLAMP_TO_EDGE: comptime_int; //
    const MIRRORED_REPEAT: comptime_int; //
    // Uniform types
    // Constant name : comptime_int; // Description
    const FLOAT_VEC2: comptime_int; //
    const FLOAT_VEC3: comptime_int; //
    const FLOAT_VEC4: comptime_int; //
    const INT_VEC2: comptime_int; //
    const INT_VEC3: comptime_int; //
    const INT_VEC4: comptime_int; //
    const BOOL: comptime_int; //
    const BOOL_VEC2: comptime_int; //
    const BOOL_VEC3: comptime_int; //
    const BOOL_VEC4: comptime_int; //
    const FLOAT_MAT2: comptime_int; //
    const FLOAT_MAT3: comptime_int; //
    const FLOAT_MAT4: comptime_int; //
    const SAMPLER_2D: comptime_int; //
    const SAMPLER_CUBE: comptime_int; //
    // Shader precision-specified types
    // Constant name : comptime_int; // Description
    const LOW_FLOAT: comptime_int; //
    const MEDIUM_FLOAT: comptime_int; //
    const HIGH_FLOAT: comptime_int; //
    const LOW_INT: comptime_int; //
    const MEDIUM_INT: comptime_int; //
    const HIGH_INT: comptime_int; //
    // Framebuffers and renderbuffers
    // Constant name : comptime_int; // Description
    const FRAMEBUFFER: comptime_int; //
    const RENDERBUFFER: comptime_int; //
    const RGBA4: comptime_int; //
    const RGB5_A1: comptime_int; //
    const RGB565: comptime_int; //
    const DEPTH_COMPONENT16: comptime_int; //
    const STENCIL_INDEX8: comptime_int; //
    const DEPTH_STENCIL: comptime_int; //
    const RENDERBUFFER_WIDTH: comptime_int; //
    const RENDERBUFFER_HEIGHT: comptime_int; //
    const RENDERBUFFER_INTERNAL_FORMAT: comptime_int; //
    const RENDERBUFFER_RED_SIZE: comptime_int; //
    const RENDERBUFFER_GREEN_SIZE: comptime_int; //
    const RENDERBUFFER_BLUE_SIZE: comptime_int; //
    const RENDERBUFFER_ALPHA_SIZE: comptime_int; //
    const RENDERBUFFER_DEPTH_SIZE: comptime_int; //
    const RENDERBUFFER_STENCIL_SIZE: comptime_int; //
    const FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE: comptime_int; //
    const FRAMEBUFFER_ATTACHMENT_OBJECT_NAME: comptime_int; //
    const FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL: comptime_int; //
    const FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE: comptime_int; //
    const COLOR_ATTACHMENT0: comptime_int; //
    const DEPTH_ATTACHMENT: comptime_int; //
    const STENCIL_ATTACHMENT: comptime_int; //
    const DEPTH_STENCIL_ATTACHMENT: comptime_int; //
    const NONE: comptime_int; //
    const FRAMEBUFFER_COMPLETE: comptime_int; //
    const FRAMEBUFFER_INCOMPLETE_ATTACHMENT: comptime_int; //
    const FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT: comptime_int; //
    const FRAMEBUFFER_INCOMPLETE_DIMENSIONS: comptime_int; //
    const FRAMEBUFFER_UNSUPPORTED: comptime_int; //
    const FRAMEBUFFER_BINDING: comptime_int; //
    const RENDERBUFFER_BINDING: comptime_int; //
    const MAX_RENDERBUFFER_SIZE: comptime_int; //
    const INVALID_FRAMEBUFFER_OPERATION: comptime_int; //
    // Pixel storage modes
    //
    // Constants passed to WebGLRenderingContext.pixelStorei().
    // Constant name : comptime_int; // Description
    const UNPACK_FLIP_Y_WEBGL: comptime_int; //
    const UNPACK_PREMULTIPLY_ALPHA_WEBGL: comptime_int; //
    const UNPACK_COLORSPACE_CONVERSION_WEBGL: comptime_int; //
    // Additional constants defined WebGL 2
    //
    // These constants are defined on the WebGL2RenderingContext interface. All WebGL 1 constants are also available in a WebGL 2 context.
    // Getting GL parameter information
    //
    // Constants passed to WebGLRenderingContext.getParameter() to specify what information to return.
    // Constant name : comptime_int; // Description
    const READ_BUFFER: comptime_int; //
    const UNPACK_ROW_LENGTH: comptime_int; //
    const UNPACK_SKIP_ROWS: comptime_int; //
    const UNPACK_SKIP_PIXELS: comptime_int; //
    const PACK_ROW_LENGTH: comptime_int; //
    const PACK_SKIP_ROWS: comptime_int; //
    const PACK_SKIP_PIXELS: comptime_int; //
    const TEXTURE_BINDING_3D: comptime_int; //
    const UNPACK_SKIP_IMAGES: comptime_int; //
    const UNPACK_IMAGE_HEIGHT: comptime_int; //
    const MAX_3D_TEXTURE_SIZE: comptime_int; //
    const MAX_ELEMENTS_VERTICES: comptime_int; //
    const MAX_ELEMENTS_INDICES: comptime_int; //
    const MAX_TEXTURE_LOD_BIAS: comptime_int; //
    const MAX_FRAGMENT_UNIFORM_COMPONENTS: comptime_int; //
    const MAX_VERTEX_UNIFORM_COMPONENTS: comptime_int; //
    const MAX_ARRAY_TEXTURE_LAYERS: comptime_int; //
    const MIN_PROGRAM_TEXEL_OFFSET: comptime_int; //
    const MAX_PROGRAM_TEXEL_OFFSET: comptime_int; //
    const MAX_VARYING_COMPONENTS: comptime_int; //
    const FRAGMENT_SHADER_DERIVATIVE_HINT: comptime_int; //
    const RASTERIZER_DISCARD: comptime_int; //
    const VERTEX_ARRAY_BINDING: comptime_int; //
    const MAX_VERTEX_OUTPUT_COMPONENTS: comptime_int; //
    const MAX_FRAGMENT_INPUT_COMPONENTS: comptime_int; //
    const MAX_SERVER_WAIT_TIMEOUT: comptime_int; //
    const MAX_ELEMENT_INDEX: comptime_int; //
    // Textures
    //
    // Constants passed to WebGLRenderingContext.texParameteri(), WebGLRenderingContext.texParameterf(), WebGLRenderingContext.bindTexture(), WebGLRenderingContext.texImage2D(), and others.
    // Constant name : comptime_int; // Description
    const RED: comptime_int; //
    const RGB8: comptime_int; //
    const RGBA8: comptime_int; //
    const RGB10_A2: comptime_int; //
    const TEXTURE_3D: comptime_int; //
    const TEXTURE_WRAP_R: comptime_int; //
    const TEXTURE_MIN_LOD: comptime_int; //
    const TEXTURE_MAX_LOD: comptime_int; //
    const TEXTURE_BASE_LEVEL: comptime_int; //
    const TEXTURE_MAX_LEVEL: comptime_int; //
    const TEXTURE_COMPARE_MODE: comptime_int; //
    const TEXTURE_COMPARE_FUNC: comptime_int; //
    const SRGB: comptime_int; //
    const SRGB8: comptime_int; //
    const SRGB8_ALPHA8: comptime_int; //
    const COMPARE_REF_TO_TEXTURE: comptime_int; //
    const RGBA32F: comptime_int; //
    const RGB32F: comptime_int; //
    const RGBA16F: comptime_int; //
    const RGB16F: comptime_int; //
    const TEXTURE_2D_ARRAY: comptime_int; //
    const TEXTURE_BINDING_2D_ARRAY: comptime_int; //
    const R11F_G11F_B10F: comptime_int; //
    const RGB9_E5: comptime_int; //
    const RGBA32UI: comptime_int; //
    const RGB32UI: comptime_int; //
    const RGBA16UI: comptime_int; //
    const RGB16UI: comptime_int; //
    const RGBA8UI: comptime_int; //
    const RGB8UI: comptime_int; //
    const RGBA32I: comptime_int; //
    const RGB32I: comptime_int; //
    const RGBA16I: comptime_int; //
    const RGB16I: comptime_int; //
    const RGBA8I: comptime_int; //
    const RGB8I: comptime_int; //
    const RED_INTEGER: comptime_int; //
    const RGB_INTEGER: comptime_int; //
    const RGBA_INTEGER: comptime_int; //
    const R8: comptime_int; //
    const RG8: comptime_int; //
    const R16F: comptime_int; //
    const R32F: comptime_int; //
    const RG16F: comptime_int; //
    const RG32F: comptime_int; //
    const R8I: comptime_int; //
    const R8UI: comptime_int; //
    const R16I: comptime_int; //
    const R16UI: comptime_int; //
    const R32I: comptime_int; //
    const R32UI: comptime_int; //
    const RG8I: comptime_int; //
    const RG8UI: comptime_int; //
    const RG16I: comptime_int; //
    const RG16UI: comptime_int; //
    const RG32I: comptime_int; //
    const RG32UI: comptime_int; //
    const R8_SNORM: comptime_int; //
    const RG8_SNORM: comptime_int; //
    const RGB8_SNORM: comptime_int; //
    const RGBA8_SNORM: comptime_int; //
    const RGB10_A2UI: comptime_int; //
    const TEXTURE_IMMUTABLE_FORMAT: comptime_int; //
    const TEXTURE_IMMUTABLE_LEVELS: comptime_int; //
    // Pixel types
    // Constant name : comptime_int; // Description
    const UNSIGNED_INT_2_10_10_10_REV: comptime_int; //
    const UNSIGNED_INT_10F_11F_11F_REV: comptime_int; //
    const UNSIGNED_INT_5_9_9_9_REV: comptime_int; //
    const FLOAT_32_UNSIGNED_INT_24_8_REV: comptime_int; //
    const UNSIGNED_INT_24_8: comptime_int; //
    const HALF_FLOAT: comptime_int; //
    const RG: comptime_int; //
    const RG_INTEGER: comptime_int; //
    const INT_2_10_10_10_REV: comptime_int; //
    // Queries
    // Constant name : comptime_int; // Description
    const CURRENT_QUERY: comptime_int; //
    const QUERY_RESULT: comptime_int; //
    const QUERY_RESULT_AVAILABLE: comptime_int; //
    const ANY_SAMPLES_PASSED: comptime_int; //
    const ANY_SAMPLES_PASSED_CONSERVATIVE: comptime_int; //
    // Draw buffers
    // Constant name : comptime_int; // Description
    const MAX_DRAW_BUFFERS: comptime_int; //
    const DRAW_BUFFER0: comptime_int; //
    const DRAW_BUFFER1: comptime_int; //
    const DRAW_BUFFER2: comptime_int; //
    const DRAW_BUFFER3: comptime_int; //
    const DRAW_BUFFER4: comptime_int; //
    const DRAW_BUFFER5: comptime_int; //
    const DRAW_BUFFER6: comptime_int; //
    const DRAW_BUFFER7: comptime_int; //
    const DRAW_BUFFER8: comptime_int; //
    const DRAW_BUFFER9: comptime_int; //
    const DRAW_BUFFER10: comptime_int; //
    const DRAW_BUFFER11: comptime_int; //
    const DRAW_BUFFER12: comptime_int; //
    const DRAW_BUFFER13: comptime_int; //
    const DRAW_BUFFER14: comptime_int; //
    const DRAW_BUFFER15: comptime_int; //
    const MAX_COLOR_ATTACHMENTS: comptime_int; //
    const COLOR_ATTACHMENT1: comptime_int; //
    const COLOR_ATTACHMENT2: comptime_int; //
    const COLOR_ATTACHMENT3: comptime_int; //
    const COLOR_ATTACHMENT4: comptime_int; //
    const COLOR_ATTACHMENT5: comptime_int; //
    const COLOR_ATTACHMENT6: comptime_int; //
    const COLOR_ATTACHMENT7: comptime_int; //
    const COLOR_ATTACHMENT8: comptime_int; //
    const COLOR_ATTACHMENT9: comptime_int; //
    const COLOR_ATTACHMENT10: comptime_int; //
    const COLOR_ATTACHMENT11: comptime_int; //
    const COLOR_ATTACHMENT12: comptime_int; //
    const COLOR_ATTACHMENT13: comptime_int; //
    const COLOR_ATTACHMENT14: comptime_int; //
    const COLOR_ATTACHMENT15: comptime_int; //
    // Samplers
    // Constant name : comptime_int; // Description
    const SAMPLER_3D: comptime_int; //
    const SAMPLER_2D_SHADOW: comptime_int; //
    const SAMPLER_2D_ARRAY: comptime_int; //
    const SAMPLER_2D_ARRAY_SHADOW: comptime_int; //
    const SAMPLER_CUBE_SHADOW: comptime_int; //
    const INT_SAMPLER_2D: comptime_int; //
    const INT_SAMPLER_3D: comptime_int; //
    const INT_SAMPLER_CUBE: comptime_int; //
    const INT_SAMPLER_2D_ARRAY: comptime_int; //
    const UNSIGNED_INT_SAMPLER_2D: comptime_int; //
    const UNSIGNED_INT_SAMPLER_3D: comptime_int; //
    const UNSIGNED_INT_SAMPLER_CUBE: comptime_int; //
    const UNSIGNED_INT_SAMPLER_2D_ARRAY: comptime_int; //
    const MAX_SAMPLES: comptime_int; //
    const SAMPLER_BINDING: comptime_int; //
    // Buffers
    // Constant name : comptime_int; // Description
    const PIXEL_PACK_BUFFER: comptime_int; //
    const PIXEL_UNPACK_BUFFER: comptime_int; //
    const PIXEL_PACK_BUFFER_BINDING: comptime_int; //
    const PIXEL_UNPACK_BUFFER_BINDING: comptime_int; //
    const COPY_READ_BUFFER: comptime_int; //
    const COPY_WRITE_BUFFER: comptime_int; //
    const COPY_READ_BUFFER_BINDING: comptime_int; //
    const COPY_WRITE_BUFFER_BINDING: comptime_int; //
    // Data types
    // Constant name : comptime_int; // Description
    const FLOAT_MAT2x3: comptime_int; //
    const FLOAT_MAT2x4: comptime_int; //
    const FLOAT_MAT3x2: comptime_int; //
    const FLOAT_MAT3x4: comptime_int; //
    const FLOAT_MAT4x2: comptime_int; //
    const FLOAT_MAT4x3: comptime_int; //
    const UNSIGNED_INT_VEC2: comptime_int; //
    const UNSIGNED_INT_VEC3: comptime_int; //
    const UNSIGNED_INT_VEC4: comptime_int; //
    const UNSIGNED_NORMALIZED: comptime_int; //
    const SIGNED_NORMALIZED: comptime_int; //
    // Vertex attributes
    // Constant name : comptime_int; // Description
    const VERTEX_ATTRIB_ARRAY_INTEGER: comptime_int; //
    const VERTEX_ATTRIB_ARRAY_DIVISOR: comptime_int; //
    // Transform feedback
    // Constant name : comptime_int; // Description
    const TRANSFORM_FEEDBACK_BUFFER_MODE: comptime_int; //
    const MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS: comptime_int; //
    const TRANSFORM_FEEDBACK_VARYINGS: comptime_int; //
    const TRANSFORM_FEEDBACK_BUFFER_START: comptime_int; //
    const TRANSFORM_FEEDBACK_BUFFER_SIZE: comptime_int; //
    const TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN: comptime_int; //
    const MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS: comptime_int; //
    const MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS: comptime_int; //
    const INTERLEAVED_ATTRIBS: comptime_int; //
    const SEPARATE_ATTRIBS: comptime_int; //
    const TRANSFORM_FEEDBACK_BUFFER: comptime_int; //
    const TRANSFORM_FEEDBACK_BUFFER_BINDING: comptime_int; //
    const TRANSFORM_FEEDBACK: comptime_int; //
    const TRANSFORM_FEEDBACK_PAUSED: comptime_int; //
    const TRANSFORM_FEEDBACK_ACTIVE: comptime_int; //
    const TRANSFORM_FEEDBACK_BINDING: comptime_int; //
    // Framebuffers and renderbuffers
    // Constant name : comptime_int; // Description
    const FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING: comptime_int; //
    const FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE: comptime_int; //
    const FRAMEBUFFER_ATTACHMENT_RED_SIZE: comptime_int; //
    const FRAMEBUFFER_ATTACHMENT_GREEN_SIZE: comptime_int; //
    const FRAMEBUFFER_ATTACHMENT_BLUE_SIZE: comptime_int; //
    const FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE: comptime_int; //
    const FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE: comptime_int; //
    const FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE: comptime_int; //
    const FRAMEBUFFER_DEFAULT: comptime_int; //
    const DEPTH_STENCIL_ATTACHMENT: comptime_int; //
    const DEPTH_STENCIL: comptime_int; //
    const DEPTH24_STENCIL8: comptime_int; //
    const DRAW_FRAMEBUFFER_BINDING: comptime_int; //
    const READ_FRAMEBUFFER: comptime_int; //
    const DRAW_FRAMEBUFFER: comptime_int; //
    const READ_FRAMEBUFFER_BINDING: comptime_int; //
    const RENDERBUFFER_SAMPLES: comptime_int; //
    const FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER: comptime_int; //
    const FRAMEBUFFER_INCOMPLETE_MULTISAMPLE: comptime_int; //
    // Uniforms
    // Constant name : comptime_int; // Description
    const UNIFORM_BUFFER: comptime_int; //
    const UNIFORM_BUFFER_BINDING: comptime_int; //
    const UNIFORM_BUFFER_START: comptime_int; //
    const UNIFORM_BUFFER_SIZE: comptime_int; //
    const MAX_VERTEX_UNIFORM_BLOCKS: comptime_int; //
    const MAX_FRAGMENT_UNIFORM_BLOCKS: comptime_int; //
    const MAX_COMBINED_UNIFORM_BLOCKS: comptime_int; //
    const MAX_UNIFORM_BUFFER_BINDINGS: comptime_int; //
    const MAX_UNIFORM_BLOCK_SIZE: comptime_int; //
    const MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS: comptime_int; //
    const MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS: comptime_int; //
    const UNIFORM_BUFFER_OFFSET_ALIGNMENT: comptime_int; //
    const ACTIVE_UNIFORM_BLOCKS: comptime_int; //
    const UNIFORM_TYPE: comptime_int; //
    const UNIFORM_SIZE: comptime_int; //
    const UNIFORM_BLOCK_INDEX: comptime_int; //
    const UNIFORM_OFFSET: comptime_int; //
    const UNIFORM_ARRAY_STRIDE: comptime_int; //
    const UNIFORM_MATRIX_STRIDE: comptime_int; //
    const UNIFORM_IS_ROW_MAJOR: comptime_int; //
    const UNIFORM_BLOCK_BINDING: comptime_int; //
    const UNIFORM_BLOCK_DATA_SIZE: comptime_int; //
    const UNIFORM_BLOCK_ACTIVE_UNIFORMS: comptime_int; //
    const UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES: comptime_int; //
    const UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER: comptime_int; //
    const UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER: comptime_int; //
    // Sync objects
    // Constant name : comptime_int; // Description
    const OBJECT_TYPE: comptime_int; //
    const SYNC_CONDITION: comptime_int; //
    const SYNC_STATUS: comptime_int; //
    const SYNC_FLAGS: comptime_int; //
    const SYNC_FENCE: comptime_int; //
    const SYNC_GPU_COMMANDS_COMPLETE: comptime_int; //
    const UNSIGNALED: comptime_int; //
    const SIGNALED: comptime_int; //
    const ALREADY_SIGNALED: comptime_int; //
    const TIMEOUT_EXPIRED: comptime_int; //
    const CONDITION_SATISFIED: comptime_int; //
    const WAIT_FAILED: comptime_int; //
    const SYNC_FLUSH_COMMANDS_BIT: comptime_int; //
    // Miscellaneous constants
    // Constant name : comptime_int; // Description
    const COLOR: comptime_int; //
    const DEPTH: comptime_int; //
    const STENCIL: comptime_int; //
    const MIN: comptime_int; //
    const MAX: comptime_int; //
    const DEPTH_COMPONENT24: comptime_int; //
    const STREAM_READ: comptime_int; //
    const STREAM_COPY: comptime_int; //
    const STATIC_READ: comptime_int; //
    const STATIC_COPY: comptime_int; //
    const DYNAMIC_READ: comptime_int; //
    const DYNAMIC_COPY: comptime_int; //
    const DEPTH_COMPONENT32F: comptime_int; //
    const DEPTH32F_STENCIL8: comptime_int; //
    const INVALID_INDEX: comptime_int; //
    const TIMEOUT_IGNORED: comptime_int; //
    const MAX_CLIENT_WAIT_TIMEOUT_WEBGL: comptime_int; //
    // Constants defined in WebGL extensions
    // ANGLE_instanced_arrays
    // Constant name : comptime_int; // Description
    const VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE: comptime_int; // Describes the frequency divisor used for instanced rendering.
    //
    // For more information, see ANGLE_instanced_arrays.
    // WEBGL_debug_renderer_info
    // Constant name : comptime_int; // Description
    const UNMASKED_VENDOR_WEBGL: comptime_int; // Passed to getParameter to get the vendor string of the graphics driver.
    const UNMASKED_RENDERER_WEBGL: comptime_int; // Passed to getParameter to get the renderer string of the graphics driver.
    //
    // For more information, see WEBGL_debug_renderer_info.
    // EXT_texture_filter_anisotropic
    // Constant name : comptime_int; // Description
    const MAX_TEXTURE_MAX_ANISOTROPY_EXT: comptime_int; // Returns the maximum available anisotropy.
    const TEXTURE_MAX_ANISOTROPY_EXT: comptime_int; // Passed to texParameter to set the desired maximum anisotropy for a texture.
    //
    // For more information, see EXT_texture_filter_anisotropic.
    // WEBGL_compressed_texture_s3tc
    // Constant name : comptime_int; // Description
    const COMPRESSED_RGB_S3TC_DXT1_EXT: comptime_int; // A DXT1-compressed image in an RGB image format.
    const COMPRESSED_RGBA_S3TC_DXT1_EXT: comptime_int; // A DXT1-compressed image in an RGB image format with an on/off alpha value.
    const COMPRESSED_RGBA_S3TC_DXT3_EXT: comptime_int; // A DXT3-compressed image in an RGBA image format. Compared to a 32-bit RGBA texture, it offers 4:1 compression.
    const COMPRESSED_RGBA_S3TC_DXT5_EXT: comptime_int; // A DXT5-compressed image in an RGBA image format. It also provides a 4:1 compression, but differs to the DXT3 compression in how the alpha compression is done.
    //
    // For more information, see WEBGL_compressed_texture_s3tc.
    // WEBGL_compressed_texture_etc
    // Constant name : comptime_int; // Description
    const COMPRESSED_R11_EAC: comptime_int; // One-channel (red) unsigned format compression.
    const COMPRESSED_SIGNED_R11_EAC: comptime_int; // One-channel (red) signed format compression.
    const COMPRESSED_RG11_EAC: comptime_int; // Two-channel (red and green) unsigned format compression.
    const COMPRESSED_SIGNED_RG11_EAC: comptime_int; // Two-channel (red and green) signed format compression.
    const COMPRESSED_RGB8_ETC2: comptime_int; // Compresses RGB8 data with no alpha channel.
    const COMPRESSED_RGBA8_ETC2_EAC: comptime_int; // Compresses RGBA8 data. The RGB part is encoded the same as RGB_ETC2, but the alpha part is encoded separately.
    const COMPRESSED_SRGB8_ETC2: comptime_int; // Compresses sRGB8 data with no alpha channel.
    const COMPRESSED_SRGB8_ALPHA8_ETC2_EAC: comptime_int; // Compresses sRGBA8 data. The sRGB part is encoded the same as SRGB_ETC2, but the alpha part is encoded separately.
    const COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2: comptime_int; // Similar to RGB8_ETC, but with ability to punch through the alpha channel, which means to make it completely opaque or transparent.
    const COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2: comptime_int; // Similar to SRGB8_ETC, but with ability to punch through the alpha channel, which means to make it completely opaque or transparent.
    //
    // For more information, see WEBGL_compressed_texture_etc.
    // WEBGL_compressed_texture_pvrtc
    // Constant name : comptime_int; // Description
    const COMPRESSED_RGB_PVRTC_4BPPV1_IMG: comptime_int; // RGB compression in 4-bit mode. One block for each 4×4 pixels.
    const COMPRESSED_RGBA_PVRTC_4BPPV1_IMG: comptime_int; // RGBA compression in 4-bit mode. One block for each 4×4 pixels.
    const COMPRESSED_RGB_PVRTC_2BPPV1_IMG: comptime_int; // RGB compression in 2-bit mode. One block for each 8×4 pixels.
    const COMPRESSED_RGBA_PVRTC_2BPPV1_IMG: comptime_int; // RGBA compression in 2-bit mode. One block for each 8×4 pixels.
    //
    // For more information, see WEBGL_compressed_texture_pvrtc.
    // WEBGL_compressed_texture_etc1
    // Constant name : comptime_int; // Description
    const COMPRESSED_RGB_ETC1_WEBGL: comptime_int; // Compresses 24-bit RGB data with no alpha channel.
    //
    // For more information, see WEBGL_compressed_texture_etc1.
    // WEBGL_depth_texture
    // Constant name : comptime_int; // Description
    const UNSIGNED_INT_24_8_WEBGL: comptime_int; // Unsigned integer type for 24-bit depth texture data.
    //
    // For more information, see WEBGL_depth_texture.
    // OES_texture_half_float
    // Constant name : comptime_int; // Description
    const HALF_FLOAT_OES: comptime_int; // Half floating-point type (16-bit).
    //
    // For more information, see OES_texture_half_float.
    // WEBGL_color_buffer_float
    // Constant name : comptime_int; // Description
    const RGBA32F_EXT: comptime_int; // RGBA 32-bit floating-point color-renderable format.
    const RGB32F_EXT: comptime_int; // RGB 32-bit floating-point color-renderable format.
    const FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT: comptime_int; //
    const UNSIGNED_NORMALIZED_EXT: comptime_int; //
    //
    // For more information, see WEBGL_color_buffer_float.
    // EXT_blend_minmax
    // Constant name : comptime_int; // Description
    const MIN_EXT: comptime_int; // Produces the minimum color components of the source and destination colors.
    const MAX_EXT: comptime_int; // Produces the maximum color components of the source and destination colors.
    //
    // For more information, see EXT_blend_minmax.
    // EXT_sRGB
    // Constant name : comptime_int; // Description
    const SRGB_EXT: comptime_int; // Unsized sRGB format that leaves the precision up to the driver.
    const SRGB_ALPHA_EXT: comptime_int; // Unsized sRGB format with unsized alpha component.
    const SRGB8_ALPHA8_EXT: comptime_int; // Sized (8-bit) sRGB and alpha formats.
    const FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT: comptime_int; // Returns the framebuffer color encoding.
    //
    // For more information, see EXT_sRGB.
    // OES_standard_derivatives
    // Constant name : comptime_int; // Description
    const FRAGMENT_SHADER_DERIVATIVE_HINT_OES: comptime_int; // Indicates the accuracy of the derivative calculation for the GLSL built-in functions: dFdx, dFdy, and fwidth.
    //
    // For more information, see OES_standard_derivatives.
    // WEBGL_draw_buffers
    // Constant name : comptime_int; // Description
    const COLOR_ATTACHMENT0_WEBGL: comptime_int; // Framebuffer color attachment point
    const COLOR_ATTACHMENT1_WEBGL: comptime_int; // Framebuffer color attachment point
    const COLOR_ATTACHMENT2_WEBGL: comptime_int; // Framebuffer color attachment point
    const COLOR_ATTACHMENT3_WEBGL: comptime_int; // Framebuffer color attachment point
    const COLOR_ATTACHMENT4_WEBGL: comptime_int; // Framebuffer color attachment point
    const COLOR_ATTACHMENT5_WEBGL: comptime_int; // Framebuffer color attachment point
    const COLOR_ATTACHMENT6_WEBGL: comptime_int; // Framebuffer color attachment point
    const COLOR_ATTACHMENT7_WEBGL: comptime_int; // Framebuffer color attachment point
    const COLOR_ATTACHMENT8_WEBGL: comptime_int; // Framebuffer color attachment point
    const COLOR_ATTACHMENT9_WEBGL: comptime_int; // Framebuffer color attachment point
    const COLOR_ATTACHMENT10_WEBGL: comptime_int; // Framebuffer color attachment point
    const COLOR_ATTACHMENT11_WEBGL: comptime_int; // Framebuffer color attachment point
    const COLOR_ATTACHMENT12_WEBGL: comptime_int; // Framebuffer color attachment point
    const COLOR_ATTACHMENT13_WEBGL: comptime_int; // Framebuffer color attachment point
    const COLOR_ATTACHMENT14_WEBGL: comptime_int; // Framebuffer color attachment point
    const COLOR_ATTACHMENT15_WEBGL: comptime_int; // Framebuffer color attachment point
    const DRAW_BUFFER0_WEBGL: comptime_int; // Draw buffer
    const DRAW_BUFFER1_WEBGL: comptime_int; // Draw buffer
    const DRAW_BUFFER2_WEBGL: comptime_int; // Draw buffer
    const DRAW_BUFFER3_WEBGL: comptime_int; // Draw buffer
    const DRAW_BUFFER4_WEBGL: comptime_int; // Draw buffer
    const DRAW_BUFFER5_WEBGL: comptime_int; // Draw buffer
    const DRAW_BUFFER6_WEBGL: comptime_int; // Draw buffer
    const DRAW_BUFFER7_WEBGL: comptime_int; // Draw buffer
    const DRAW_BUFFER8_WEBGL: comptime_int; // Draw buffer
    const DRAW_BUFFER9_WEBGL: comptime_int; // Draw buffer
    const DRAW_BUFFER10_WEBGL: comptime_int; // Draw buffer
    const DRAW_BUFFER11_WEBGL: comptime_int; // Draw buffer
    const DRAW_BUFFER12_WEBGL: comptime_int; // Draw buffer
    const DRAW_BUFFER13_WEBGL: comptime_int; // Draw buffer
    const DRAW_BUFFER14_WEBGL: comptime_int; // Draw buffer
    const DRAW_BUFFER15_WEBGL: comptime_int; // Draw buffer
    const MAX_COLOR_ATTACHMENTS_WEBGL: comptime_int; // Maximum number of framebuffer color attachment points
    const MAX_DRAW_BUFFERS_WEBGL: comptime_int; // Maximum number of draw buffers
    //
    // For more information, see WEBGL_draw_buffers.
    // OES_vertex_array_object
    // Constant name : comptime_int; // Description
    const VERTEX_ARRAY_BINDING_OES: comptime_int; // The bound vertex array object (VAO).
    //
    // For more information, see OES_vertex_array_object.
    // EXT_disjoint_timer_query
    // Constant name : comptime_int; // Description
    const QUERY_COUNTER_BITS_EXT: comptime_int; // The number of bits used to hold the query result for the given target.
    const CURRENT_QUERY_EXT: comptime_int; // The currently active query.
    const QUERY_RESULT_EXT: comptime_int; // The query result.
    const QUERY_RESULT_AVAILABLE_EXT: comptime_int; // A Boolean indicating whether or not a query result is available.
    const TIME_ELAPSED_EXT: comptime_int; // Elapsed time (in nanoseconds).
    const TIMESTAMP_EXT: comptime_int; // The current time.
    const GPU_DISJOINT_EXT: comptime_int; // A Boolean indicating whether or not the GPU performed any disjoint operation.

    // For more information, see EXT_disjoint_timer_query.
};
