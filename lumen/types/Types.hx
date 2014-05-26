package lumen.types;

import lumen.Lumen;
import lumen.utils.ByteArray;
import lumen.utils.UInt8Array;


/** 
Information for a single asset 

`id` : the asset id   
`path` : the location of the asset   
`ext` : the asset extension, if any   
`type` : a convenience type indicator   

*/
typedef AssetInfo = {

    id : String,
    path : String,
    ext : String,
    type : String

}

/**  An asset base class. Get assets from the `Assets` class, via `app.assets` */
class Asset {
        /** The id of this asset like `assets/image.png` */
    public var id : String;
        /** The `AssetInfo` of this asset */
    public var info : AssetInfo;

    public function new( _info:AssetInfo ) {
        info = _info;
        id = info.id;
    } //new

} //Asset


/**  An asset that contains byte `data` as a `ByteArray`. Get assets from the `Assets` class, via `app.assets` */
class AssetBytes extends Asset {

        /** The `ByteArray` this asset contains */
    public var data : ByteArray;
    public function new( _info:AssetInfo, _data:ByteArray ) {
        super( _info );
        data = _data;
    }

} //AssetBytes

/**  An asset that contains `text` as a `String`. Get assets from the `Assets` class, via `app.assets` */
class AssetText extends Asset {

        /** The `String` this asset contains */
    public var text : String;
    public function new( _info:AssetInfo, _data:String ) {
        super( _info );
        text = _data;
    }

} //AssetText

/**  The options for an `AssetImage` asset. Get assets from the `Assets` class, via `app.assets` */
typedef AssetImageOptions = {
    ? components : Int,
    ? onloaded : AssetImage -> Void 
} //AssetImageOptions

/**  An asset that contains image file `data` as an `ImageInfo`. Get assets from the `Assets` class, via `app.assets` */
class AssetImage extends Asset {

        /** The `ImageInfo` this asset contains */
    public var data : ImageInfo;

    public function new( _info:AssetInfo, _data:ImageInfo ) {
        super( _info );
        data = _data;
    }

} //AssetImage

/**  The options for an `AssetAudio` asset */
typedef AssetAudioOptions = {
    ? type : String,
    ? load : Bool
} //AssetAudioOptions

/**  An asset that contains audio file `data` as an `AudioInfo`. Get assets from the `Assets` class, via `app.assets` */
class AssetAudio extends Asset {

        /** The `AudioInfo` this asset contains */
    public var data : AudioInfo;
    public function new( _info:AssetInfo, _data:AudioInfo ) {
        super( _info );
        data = _data;
    }

} //AssetAudio


/** 
The lumen core configuration information

`? host` : the bootstrapped application   
`? window_config` : the window config for a default window, if any   
`? run_loop` : whether or not the core should run a loop at all   
`? runtime_config` : the user specific config read from json at runtime   
`? asset_data` : the raw list of assets. use the app.assets from Lumen for access   

*/
typedef LumenConfig = {

    ? host                  : App, 
    ? window_config         : WindowConfig, 
    ? run_loop              : Bool, 
    ? runtime_config        : Dynamic, 
    ? asset_data            : Array<AssetInfo>

} //LumenConfig

/**
Information about an image file/data

`id` : source asset id   
`bpp` : used bits per pixel   
`width` : image width   
`height` : image height   
`bpp_source` : source bits per pixel   
`data` : image data   

*/
typedef ImageInfo = {

    id : String,
    bpp : Int,
    width : Int,
    height : Int,
    width_actual : Int,
    height_actual : Int,
    bpp_source : Int,
    data : UInt8Array 

} //ImageInfo

/** The type of audio format */
enum AudioFormatType {

    unknown;
    ogg;
    wav;
    pcm;

} //AudioFormatType

/** 
Information about an audio file/data

`id` : file source   
`format` : format   
`channels` : number of channels   
`rate` : hz rate    
`bitrate` : sound bitrate   
`bits_per_sample` : bits per sample, 8 / 16   
`data` : sound raw data,   
`length` : the file length in bytes   
`length_pcm` : the pcm uncompressed raw length in bytes   
`handle` : the native audio handle for later manipulation   

*/
typedef AudioInfo = {

    id : String,
    format : AudioFormatType,
    channels : Int,
    rate : Int,
    bitrate : Int,
    bits_per_sample : Int,
    data : ByteArray,
    length : Int,
    length_pcm : Int,
    handle : Dynamic 

} //AudioInfo

/** 
Information about an audio portion requested via assets

`complete` : True if the file has reached the end in this blob   
`data` : The data stored in this blob   

*/
typedef AudioDataBlob = {

    data : ByteArray,
    complete : Bool
    
} //AudioDataBlob

/** 
Window configuration information for creating windows

`? fullscreen` : create in fullscreen   
`? resizable` : allow the window to be resized   
`? borderless` : create as a borderless window   
`? antialiasing` : a value of `2`, `4`, `8` or other valid antialiasing flags   
`? stencil_buffer` : create a stencil buffer (not per window)   
`? depth_buffer` : create a depth buffer (not per window)   
`? vsync` : enable vsync (not per window)   
`? fps` : window max fps if any   
`? x` : window y at creation   
`? y` : window x at creation   
`? width` : window height at creation   
`? height` : window width at creation   
`? title` : window title   
`? orientation` : `Mobile specific` - window orientation setting   

*/
typedef WindowConfig = {

    ? fullscreen            : Bool,
    ? resizable             : Bool,
    ? borderless            : Bool,
    ? antialiasing          : Int,
    ? stencil_buffer        : Bool,
    ? depth_buffer          : Bool,
    ? vsync                 : Bool,
    ? fps                   : Int,
    ? x                     : Int,
    ? y                     : Int,
    ? width                 : Int,
    ? height                : Int,
    ? title                 : String,

    ? orientation           : String,
    ? multitouch_supported  : Bool,
    ? multitouch            : Bool

} //WindowConfig

/** 
A system event. 
Values below are null unless the event `type` matches. _i.e_ if type is `window`, the `window` value is not null, and so on */
typedef SystemEvent = {

    ? type : SystemEventType,
    ? window : WindowEvent,
    ? input : InputEvent

} //SystemEvent

/** 
A system window event 

`? type` : The type of window event this was   
`? timestamp` : The time in seconds that this event occured, useful for deltas   
`? window_id` : The window id from which this event originated   
`? event` : The raw platform event data   

*/
typedef WindowEvent = {

    ? type : WindowEventType,
    ? timestamp : Float,
    ? window_id : Int,
    ? event : Dynamic

} //WindowEvent

/** 
A system input event 
   
`? type` : The type of input event this was   
`? timestamp` : The time in seconds that this event occured, useful for deltas   
`? window_id` : The window id from which this event originated   
`? event` : The raw platform event data   

*/
typedef InputEvent = {

    ? type : InputEventType,
    ? timestamp : Float,
    ? window_id : Int,
    ? event : Dynamic

} //InputEvent

/** A position value for a window */
typedef WindowPosition = {
    var x : Int;
    var y : Int;
}

/** A size value for a window */
typedef WindowSize = {
    var w : Int;
    var h : Int;
}

/** Information about a display mode */
typedef DisplayMode = {
    format : Int,
    refresh_rate : Int,
    width : Int,
    height : Int
}

/** The size and location of a display */
typedef DisplayBounds = {
    x : Int,
    y : Int,
    width : Int,
    height : Int
}

    
    /** A platform window handle */
abstract WindowHandle(Dynamic) from Dynamic to Dynamic {}


/** A typed system event */
enum SystemEventType {

/** An unknown system event */
    unknown;
/** An internal system init event */
    init;
/** An internal system ready event */
    ready;
/** An internal system update event */
    update;
/** An system shutdown event */
    shutdown;
/** An system window event */
    window;
/** An system input event */
    input;
/** An system quit event. Initiated by user, can be cancelled/ignored */
    quit;
/** An system terminating event, called by the OS (mobile specific) */
    app_terminating;
/** An system low memory event, clear memory if you can. Called by the OS (mobile specific) */
    app_lowmemory;
/** An event for just before the app enters the background, called by the OS (mobile specific) */
    app_willenterbackground;
/** An event for when the app enters the background, called by the OS (mobile specific) */
    app_didenterbackground;
/** An event for just before the app enters the foreground, called by the OS (mobile specific) */
    app_willenterforeground;
/** An event for when the app enters the foreground, called by the OS (mobile specific) */
    app_didenterforeground;


} //SystemEventType

//Window stuff

/** A typed window event */
enum WindowEventType {

/** An unknown window event */
    unknown;
/** A window is created */
    window_created;
/** A window is shown */
    window_shown;
/** A window is hidden */
    window_hidden;
/** A window is exposed */
    window_exposed;
/** A window is moved */
    window_moved;
/** A window is resized, by the user or code. */
    window_resized;
/** A window is resized, by the OS or internals. */
    window_size_changed;
/** A window is minimized */
    window_minimized;
/** A window is maximized */
    window_maximized;
/** A window is restored */
    window_restored;
/** A window is entered by a mouse */
    window_enter;
/** A window is left by a mouse */
    window_leave;
/** A window has gained focus */
    window_focus_gained;
/** A window has lost focus */
    window_focus_lost;
/** A window is being closed */
    window_close;

} //WindowEventType

/** A typed input event */
enum InputEventType {

/** An unknown input event */
    unknown;
/** An keyboard input event */
    key;
/** An mouse input event */    
    mouse;
/** An touch input event */    
    touch;
/** An joystick input event. On mobile, accellerometer is a joystick (for now) */    
    joystick;
/** An controller input event. Use these instead of joystick on desktop. */    
    controller;

} //InputEventType

@:noCompletion class SystemEvents {

        //lumen core events

    public static var se_unknown                    = 0;
    public static var se_init                       = 1;
    public static var se_ready                      = 2;
    public static var se_update                     = 3;
    public static var se_shutdown                   = 4;
    public static var se_window                     = 5;
    public static var se_input                      = 6;

        //lumen application events

    public static var se_quit                       = 7;
    public static var se_app_terminating            = 8;
    public static var se_app_lowmemory              = 9;
    public static var se_app_willenterbackground    = 10;
    public static var se_app_didenterbackground     = 11;
    public static var se_app_willenterforeground    = 12;
    public static var se_app_didenterforeground     = 13;

//Helpers
    
    public static function typed(type:Int) : SystemEventType {

            if(type == se_init)                         return SystemEventType.init;
            if(type == se_ready)                        return SystemEventType.ready;
            if(type == se_update)                       return SystemEventType.update;
            if(type == se_shutdown)                     return SystemEventType.shutdown;
            if(type == se_window)                       return SystemEventType.window;
            if(type == se_input)                        return SystemEventType.input;

            if(type == se_quit)                         return SystemEventType.quit;
            if(type == se_app_terminating)              return SystemEventType.app_terminating;
            if(type == se_app_lowmemory)                return SystemEventType.app_lowmemory;
            if(type == se_app_willenterbackground)      return SystemEventType.app_willenterbackground;
            if(type == se_app_didenterbackground)       return SystemEventType.app_didenterbackground;
            if(type == se_app_willenterforeground)      return SystemEventType.app_willenterforeground;
            if(type == se_app_didenterforeground)       return SystemEventType.app_didenterforeground;

        return SystemEventType.unknown;

    } //typed

} //SystemEvents

@:noCompletion class WindowEvents {

//window events
    
    public static var we_unknown          = 0;
    public static var we_created          = 1;
    public static var we_shown            = 2;
    public static var we_hidden           = 3;
    public static var we_exposed          = 4;
    public static var we_moved            = 5;
    public static var we_resized          = 6;
    public static var we_size_changed     = 7;
    public static var we_minimized        = 8;
    public static var we_maximized        = 9;
    public static var we_restored         = 10;
    public static var we_enter            = 11;
    public static var we_leave            = 12;
    public static var we_focus_gained     = 13;
    public static var we_focus_lost       = 14;
    public static var we_close            = 15;

//Helpers

        /** returns a typed `WindowEventType` from an integer ID, for communication between internal native + haxe code */
    public static function typed(type:Int) : WindowEventType {
        
            if(type == we_created)        return WindowEventType.window_created;
            if(type == we_shown)          return WindowEventType.window_shown;
            if(type == we_hidden)         return WindowEventType.window_hidden;
            if(type == we_exposed)        return WindowEventType.window_exposed;
            if(type == we_moved)          return WindowEventType.window_moved;
            if(type == we_resized)        return WindowEventType.window_resized;
            if(type == we_size_changed)   return WindowEventType.window_size_changed;
            if(type == we_minimized)      return WindowEventType.window_minimized;
            if(type == we_maximized)      return WindowEventType.window_maximized;
            if(type == we_restored)       return WindowEventType.window_restored;
            if(type == we_enter)          return WindowEventType.window_enter;
            if(type == we_leave)          return WindowEventType.window_leave;
            if(type == we_focus_gained)   return WindowEventType.window_focus_gained;
            if(type == we_focus_lost)     return WindowEventType.window_focus_lost;
            if(type == we_close)          return WindowEventType.window_close;
            
        return WindowEventType.unknown;

    } //typed

} //WindowEvents

@:noCompletion class InputEvents {
    
//Input events

        public static var ie_unknown                    = 0;
        public static var ie_key                        = 1;
        public static var ie_mouse                      = 2;
        public static var ie_touch                      = 3;
        public static var ie_joystick                   = 4;
        public static var ie_controller                 = 5;

//Helpers
    
        /** returns a typed `InputEventType` from an integer ID, for communication between internal native + haxe code */
    public static function typed(type:Int) : InputEventType {
        
            if(type == ie_unknown)      return InputEventType.unknown;
            if(type == ie_key)          return InputEventType.key;
            if(type == ie_mouse)        return InputEventType.mouse;
            if(type == ie_touch)        return InputEventType.touch;
            if(type == ie_joystick)     return InputEventType.joystick;
            if(type == ie_controller)   return InputEventType.controller;
            
        return InputEventType.unknown;

    } //typed

} //InputEvents


/** A typed state for buttons or similar */
enum PressedState {

/** An unknown state */
    unknown;
/** In a pressed state */
    down;
/** In a released state */
    up;

} //PressedState

/** A typed mouse state */
enum MouseState {

/** An unknown state */
    unknown;
/** In a pressed state */
    down;
/** In a released state */
    up;
/** In a moving state */
    move;
/** A mouse wheel state */
    wheel;

} //MouseState

/** A typed mouse button id */
enum MouseButton {

/** no mouse buttons */
    none;
/** left mouse button */
    left;
/** middle mouse button */
    middle;
/** right mouse button */
    right;
/** extra button pressed (4) */
    extra1;
/** extra button pressed (5) */
    extra2;

} //MouseButton

/** A typed text event type */
enum TextEventType {

/** An unknown event */
    unknown;
/** An edit text typing event */
    edit;
/** An input text typing event */
    input;

} //TextEventType

/** A typed gamepad event type */
enum GamepadEventType {

/** An unknown event */
    unknown;
/** An axis change event */    
    axis;
/** A button event */    
    button;
/** A device added event */    
    device_added;
/** A device removed event */    
    device_removed;
/** A device was remapped */    
    device_remapped;

} //GamepadEventType

/** The states a touch can be in */
enum TouchState {

/** an unknown state */
    unknown;
/** touch is down */
    down;
/** touch is up */
    up;
/** touch is moving */
    move; 

} //TouchState

/** 
Input modifier state 

`none` : no modifiers are down   
`lshift` : left shift key is down   
`rshift` : right shift key is down   
`lctrl` : left ctrl key is down   
`rctrl` : right ctrl key is down   
`lalt` : left alt/option key is down   
`ralt` : right alt/option key is down   
`lmeta` : left windows/command key is down   
`rmeta` : right windows/command key is down   
`num` : numlock is enabled   
`caps` : capslock is enabled   
`mode` : mode key is down   
`ctrl` : left or right ctrl key is down   
`shift` : left or right shift key is down   
`alt` : left or right alt/option key is down   
`meta` : left or right windows/command key is down   

*/
typedef ModState = {

    none : Bool,
    lshift : Bool,
    rshift : Bool,
    lctrl : Bool,
    rctrl : Bool,
    lalt : Bool,
    ralt : Bool,
    lmeta : Bool,
    rmeta : Bool,
    num : Bool,
    caps : Bool,
    mode : Bool,
    ctrl : Bool,
    shift : Bool,
    alt : Bool,
    meta : Bool

} //ModState

/** 
Information about a mouse event 

`raw` : The raw event from the system, unmodified   
`timestamp` : The time in seconds when this touch event occurred, use for deltas   
`window_id` : The window id this event originated from    
`which` : Which mouse this event originated from (usually 0)   
`state` : The state this event is in   
`button` : The button id, if the event `state` is `down` or `up`   
`x` : The x position in the window of the mouse event   
`y` : The y position in the window of the mouse event   
`xrel` : The relative x position if `state` is `move` or a window has grabbed state   
`yrel` : The relative y position if `state` is `move` or a window has grabbed state   

*/
typedef MouseEvent = {

    raw : InputEvent,
    timestamp : Float,
    window_id : Int,
    which : Int,
    state : MouseState,
    button : MouseButton,
    x : Int,
    y : Int,
    xrel : Int,
    yrel : Int

} //MouseEvent

/** 
Information about a keyboard event

`raw` : The raw event from the system, unmodified   
`scancode` : The `lumen.input.Scan` code value for this event   
`keycode` : The `lumen.input.Key` code value for this event   
`state` : The state of the key in this event   
`mod` : The modifier state of this event   
`repeat` : If this value is bigger than 0 this is a key repeat event of a key held down   
`timestamp` : The time in seconds when this touch event occurred, use for deltas   
`window_id` : The window id this event originated from   

*/
typedef KeyEvent = {

    raw : InputEvent,
    scancode : Int,
    keycode : Int,    
    state : PressedState,    
    mod : ModState,
    repeat : Bool,    
    timestamp : Float,    
    window_id : Int

} //KeyEvent

/** 
Information about a text input event

`raw` : The raw event from the system, unmodified   
`text` : The text that this event has generated   
`type` : The type of text event   
`timestamp` : The time in seconds when this touch event occurred, use for deltas   
`window_id` : The window id this event originated from   
`start` : The start position, if the `type` is `edit`   
`length` : The length position, if the `type` is `edit`   

*/
typedef TextEvent = {

    raw : InputEvent,
    text : String,
    type : TextEventType,
    timestamp : Float,
    window_id : Int,
    start : Int,
    length : Int

} //TextEvent

/** 
Information about a gamepad event

`raw` : The raw event from the system, unmodified   
`timestamp` : The time in seconds when this touch event occurred, use for deltas   
`type` : The button id, if the event `type` is `button`   
`state` : The state this event is in   
`which` : The id of the gamepad this event comes from   
`button` : The button id, if the event `type` is `button`   
`axis` : The axis id, if the event `type` is `button`   
`value` : The axis value, if the event `type` is `axis`   

*/
typedef GamepadEvent = {

    raw : InputEvent,
    timestamp : Float,
    type : GamepadEventType,
    state : PressedState,
    which : Int,
    button : Int,
    axis : Int,
    value : Int

} //GamepadEvent

/** 
Information about a touch event

`raw` : The raw event from the system, unmodified   
`state` : The state this touch event is in   
`timestamp` : The time in seconds when this touch event occurred, use for deltas   
`touch_id` : The id of the touch that this event comes from, a finger id   
`device_id` : The device id this touch comes from   
`x` : The x position in the window of the touch event   
`y` : The x position in the window of the touch event   
`dx` : The delta x value of the touch event, if the state is `moving`   
`dy` : The delta y value of the touch event, if the state is `moving`   
`pressure` : The pressure value of the touch event, where available   

*/
typedef TouchEvent = {

    raw : InputEvent,
    state : TouchState,
    timestamp : Float,
    touch_id : Int,
    device_id : Int,
    x : Float,
    y : Float,
    dx : Float, 
    dy : Float,
    pressure : Float

} //TouchEvent

