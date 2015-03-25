
[![Logo](../../../../images/logo.png)](../../../../api/index.html)

<hr/>
<a href="#" id="search_bar" onclick="return;"><div> search API <em>(or start typing anywhere)</em> </div></a>
<hr/>

<script src="../../../../js/omnibar.js"> </script>
<link rel="stylesheet" type="text/css" href="../../../../css/omnibar.css" media="all">

<div id="omnibar"> <a href="#" onclick="return" id="omnibar_close"></a> <input id="omnibar_text" type="text" placeholder="search types..."></input></div>
<script  id="typelist" data-relpath="../../../../" data-types="snow.App,snow.AppFixedTimestep,snow.Core,snow.CoreBinding,snow.Log,snow.Snow,snow.assets.Asset,snow.assets.AssetAudio,snow.assets.AssetBytes,snow.assets.AssetImage,snow.assets.AssetSystem,snow.assets.AssetSystemBinding,snow.assets.AssetText,snow.assets.Assets,snow.audio.Audio,snow.audio.AudioSystem,snow.audio.AudioSystemBinding,snow.audio.Sound,snow.audio.SoundBinding,snow.audio.SoundStream,snow.audio._Audio.AudioHandleMap,snow.audio.openal.AL,snow.audio.openal.ALC,snow.audio.openal.Context,snow.audio.openal.Device,snow.input.Input,snow.input.InputSystem,snow.input.InputSystemBinding,snow.input.Keycodes,snow.input.MapIntBool,snow.input.MapIntFloat,snow.input.Scancodes,snow.io.IO,snow.io.IOSystem,snow.io.IOSystemBinding,snow.platform.native.Core,snow.platform.native.StaticSnow,snow.platform.native.assets.AssetSystem,snow.platform.native.audio.AudioSystem,snow.platform.native.audio.Sound,snow.platform.native.audio.SoundStream,snow.platform.native.audio.openal.AL,snow.platform.native.audio.openal.ALC,snow.platform.native.audio.openal.AudioSystem,snow.platform.native.audio.openal.Context,snow.platform.native.audio.openal.Device,snow.platform.native.audio.openal.OpenALHelper,snow.platform.native.audio.openal.Sound,snow.platform.native.audio.openal.SoundStream,snow.platform.native.audio.openal._AL.Context_Impl_,snow.platform.native.audio.openal._AL.Device_Impl_,snow.platform.native.input.InputSystem,snow.platform.native.input.sdl.ControllerEventType,snow.platform.native.input.sdl.InputSystem,snow.platform.native.input.sdl.KeyEventType,snow.platform.native.input.sdl.ModValue,snow.platform.native.input.sdl.MouseEventType,snow.platform.native.input.sdl.TouchEventType,snow.platform.native.io.IOFile,snow.platform.native.io.IOFileHandle,snow.platform.native.io.IOSystem,snow.platform.native.io._IOFile.IOFileHandle_Impl_,snow.platform.native.render.opengl.GL,snow.platform.native.render.opengl.GLActiveInfo,snow.platform.native.render.opengl.GLBuffer,snow.platform.native.render.opengl.GLContextAttributes,snow.platform.native.render.opengl.GLFBO,snow.platform.native.render.opengl.GLFramebuffer,snow.platform.native.render.opengl.GLObject,snow.platform.native.render.opengl.GLProgram,snow.platform.native.render.opengl.GLRBO,snow.platform.native.render.opengl.GLRenderbuffer,snow.platform.native.render.opengl.GLShader,snow.platform.native.render.opengl.GLShaderPrecisionFormat,snow.platform.native.render.opengl.GLTexture,snow.platform.native.render.opengl.GLUniformLocation,snow.platform.native.render.opengl._GL.GLFramebuffer_Impl_,snow.platform.native.render.opengl._GL.GLRenderbuffer_Impl_,snow.platform.native.utils.ArrayBuffer,snow.platform.native.utils.ArrayBufferView,snow.platform.native.utils.ByteArray,snow.platform.native.utils.Compression,snow.platform.native.utils.Float32Array,snow.platform.native.utils.Int16Array,snow.platform.native.utils.Int32Array,snow.platform.native.utils.Int8Array,snow.platform.native.utils.UInt16Array,snow.platform.native.utils.UInt32Array,snow.platform.native.utils.UInt8Array,snow.platform.native.utils.UInt8ClampedArray,snow.platform.native.window.WindowSystem,snow.platform.native.window.sdl.WindowSystem,snow.platform.web.assets.psd.PSD,snow.platform.web.audio.AudioSystem,snow.platform.web.audio.Sound,snow.platform.web.audio.SoundStream,snow.platform.web.audio.howlerjs.AudioParams,snow.platform.web.audio.howlerjs.AudioSystem,snow.platform.web.audio.howlerjs.Howl,snow.platform.web.audio.howlerjs.Howler,snow.platform.web.audio.howlerjs.SoundStream,snow.platform.web.audio.howlerjs.SpriteParams,snow.render.opengl.GL,snow.render.opengl.GLActiveInfo,snow.render.opengl.GLBuffer,snow.render.opengl.GLContextAttributes,snow.render.opengl.GLFramebuffer,snow.render.opengl.GLProgram,snow.render.opengl.GLRenderbuffer,snow.render.opengl.GLShader,snow.render.opengl.GLTexture,snow.render.opengl.GLUniformLocation,snow.types.AppConfig,snow.types.AppConfigNative,snow.types.AppConfigWeb,snow.types.AssetAudioOptions,snow.types.AssetBytesOptions,snow.types.AssetImageOptions,snow.types.AssetInfo,snow.types.AssetTextOptions,snow.types.AssetType,snow.types.AudioDataBlob,snow.types.AudioDataInfo,snow.types.AudioFormatType,snow.types.AudioHandle,snow.types.AudioInfo,snow.types.DisplayMode,snow.types.FileEvent,snow.types.FileEventType,snow.types.FileFilter,snow.types.GamepadDeviceEventType,snow.types.ImageInfo,snow.types.InputEvent,snow.types.InputEventType,snow.types.Key,snow.types.ModState,snow.types.Scan,snow.types.SnowConfig,snow.types.SystemEvent,snow.types.SystemEventType,snow.types.TextEventType,snow.types.WindowConfig,snow.types.WindowEvent,snow.types.WindowEventType,snow.types.WindowHandle,snow.utils.AbstractClass,snow.utils.AbstractClassBuilder,snow.utils.ArrayBuffer,snow.utils.ArrayBufferView,snow.utils.ByteArray,snow.utils.Float32Array,snow.utils.IDataInput,snow.utils.IMemoryRange,snow.utils.Int16Array,snow.utils.Int32Array,snow.utils.Int8Array,snow.utils.Libs,snow.utils.Timer,snow.utils.UInt16Array,snow.utils.UInt32Array,snow.utils.UInt8Array,snow.utils.UInt8ClampedArray,snow.utils._AbstractClass.StringMap,snow.utils.format.png.Chunk,snow.utils.format.png.Color,snow.utils.format.png.Data,snow.utils.format.png.Header,snow.utils.format.png.Reader,snow.utils.format.png.Tools,snow.utils.format.png.Writer,snow.utils.format.tools.Adler32,snow.utils.format.tools.Deflate,snow.utils.format.tools.HuffTools,snow.utils.format.tools.Huffman,snow.utils.format.tools.Inflate,snow.utils.format.tools.InflateImpl,snow.utils.format.tools.MemoryBytes,snow.utils.format.tools._InflateImpl.State,snow.utils.format.tools._InflateImpl.Window,snow.window.Window,snow.window.WindowSystem,snow.window.WindowSystemBinding,snow.window.Windowing,snow.window._Windowing.WindowHandleMap"></script>


<h1>StaticSnow</h1>
<small>`snow.platform.native.StaticSnow`</small>



<hr/>

`class`<br/><span class="meta">
meta: @:keep, @:cppFileCode(&quot;extern \&quot;C\&quot; void snow_register_prims();&quot;), @:buildXml(&lt;![CDATA[&quot;\n\n&lt;set name=&#x27;MSVC_LIB_VERSION&#x27; value=&#x27;-${MSVC_VER}&#x27; if=&#x27;windows&#x27;/&gt;\n&lt;set name=&#x27;DEBUG_SNOW&#x27; value=&#x27;${DBG}&#x27; if=&#x27;debug_snow&#x27;/&gt;\n&lt;target id=&#x27;haxe&#x27;&gt;\n  &lt;lib name=&#x27;${haxelib:snow}/ndll/${BINDIR}/libsnow${DEBUG_SNOW}${LIBEXTRA}${LIBEXT}&#x27;/&gt;\n\n    &lt;section if=&#x27;mac&#x27;&gt;\n        &lt;vflag name=&#x27;-l&#x27; value=&#x27;iconv&#x27;/&gt;\n        &lt;vflag name=&#x27;-framework&#x27; value=&#x27;IOKit&#x27; /&gt;\n        &lt;vflag name=&#x27;-framework&#x27; value=&#x27;Foundation&#x27; /&gt;\n        &lt;vflag name=&#x27;-framework&#x27; value=&#x27;CoreAudio&#x27; /&gt;\n        &lt;vflag name=&#x27;-framework&#x27; value=&#x27;Cocoa&#x27; /&gt;\n        &lt;vflag name=&#x27;-framework&#x27; value=&#x27;OpenGL&#x27; /&gt;\n        &lt;vflag name=&#x27;-framework&#x27; value=&#x27;AudioToolbox&#x27; /&gt;\n        &lt;vflag name=&#x27;-framework&#x27; value=&#x27;AudioUnit&#x27; /&gt;\n        &lt;vflag name=&#x27;-framework&#x27; value=&#x27;ForceFeedback&#x27; /&gt;\n        &lt;vflag name=&#x27;-framework&#x27; value=&#x27;Carbon&#x27; /&gt;\n        &lt;vflag name=&#x27;-framework&#x27; value=&#x27;AppKit&#x27; /&gt;\n        &lt;vflag name=&#x27;-framework&#x27; value=&#x27;OpenAL&#x27;/&gt;\n    &lt;/section&gt;\n\n    &lt;section if=&#x27;windows&#x27;&gt;\n\n        &lt;lib name=&#x27;gdi32.lib&#x27; /&gt;\n        &lt;lib name=&#x27;opengl32.lib&#x27; /&gt;\n        &lt;lib name=&#x27;user32.lib&#x27; /&gt;\n        &lt;lib name=&#x27;kernel32.lib&#x27; /&gt;\n        &lt;lib name=&#x27;advapi32.lib&#x27; /&gt;\n        &lt;lib name=&#x27;winmm.lib&#x27; /&gt;\n        &lt;lib name=&#x27;imm32.lib&#x27;  /&gt;\n        &lt;lib name=&#x27;ole32.lib&#x27; /&gt;\n        &lt;lib name=&#x27;oleaut32.lib&#x27; /&gt;\n        &lt;lib name=&#x27;version.lib&#x27; /&gt;\n        &lt;lib name=&#x27;ws2_32.lib&#x27;  /&gt;\n        &lt;lib name=&#x27;wldap32.lib&#x27; /&gt;\n        &lt;lib name=&#x27;shell32.lib&#x27; /&gt;\n        &lt;lib name=&#x27;comdlg32.lib&#x27; /&gt;\n\n     &lt;/section&gt;\n\n    &lt;section if=&#x27;linux&#x27;&gt;\n\n        &lt;lib name=&#x27;${HXCPP}/lib/${BINDIR}/liblinuxcompat.a&#x27; /&gt;\n        &lt;lib name=&#x27;-lpthread&#x27; /&gt;\n        &lt;lib name=&#x27;-lrt&#x27; /&gt;\n        &lt;lib name=&#x27;-lGL&#x27; /&gt;\n\n            &lt;!-- These are from &#x60;pkg-config --libs gtk+-3.0&#x60; --&gt;\n        &lt;lib name=&#x27;-lgtk-3&#x27;  unless=&#x27;SNOW_NO_GTK&#x27;/&gt;\n        &lt;lib name=&#x27;-lgdk-3&#x27; unless=&#x27;SNOW_NO_GTK&#x27;/&gt;\n        &lt;lib name=&#x27;-latk-1.0&#x27; unless=&#x27;SNOW_NO_GTK&#x27;/&gt;\n        &lt;lib name=&#x27;-lgio-2.0&#x27; unless=&#x27;SNOW_NO_GTK&#x27;/&gt;\n        &lt;lib name=&#x27;-lpangocairo-1.0&#x27; unless=&#x27;SNOW_NO_GTK&#x27;/&gt;\n        &lt;lib name=&#x27;-lgdk_pixbuf-2.0&#x27; unless=&#x27;SNOW_NO_GTK&#x27;/&gt;\n        &lt;lib name=&#x27;-lcairo-gobject&#x27; unless=&#x27;SNOW_NO_GTK&#x27;/&gt;\n        &lt;lib name=&#x27;-lpango-1.0&#x27; unless=&#x27;SNOW_NO_GTK&#x27;/&gt;\n        &lt;lib name=&#x27;-lcairo&#x27; unless=&#x27;SNOW_NO_GTK&#x27;/&gt;\n        &lt;lib name=&#x27;-lgobject-2.0&#x27; unless=&#x27;SNOW_NO_GTK&#x27;/&gt;\n        &lt;lib name=&#x27;-lglib-2.0&#x27;  unless=&#x27;SNOW_NO_GTK&#x27;/&gt;\n\n     &lt;/section&gt;\n\n&lt;/target&gt;\n&quot;]]&gt;), @:keep</span>

<hr/>


&nbsp;
&nbsp;







<hr/>

&nbsp;
&nbsp;
&nbsp;
&nbsp;