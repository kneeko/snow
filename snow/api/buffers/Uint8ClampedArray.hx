package snow.api.buffers;

#if js

    @:forward
    abstract Uint8ClampedArray(js.html.Uint8ClampedArray)
        from js.html.Uint8ClampedArray
        to js.html.Uint8ClampedArray {

        public inline static var BYTES_PER_ELEMENT : Int = 1;

        @:generic
        public inline function new<T>(
            ?elements:Int,
            ?array:Array<T>,
            ?view:ArrayBufferView,
            ?buffer:ArrayBuffer, ?byteoffset:Int = 0, ?len:Null<Int>
        ) {
            if(elements != null) {
                this = new js.html.Uint8ClampedArray( elements );
            } else if(array != null) {
                this = new js.html.Uint8ClampedArray( untyped array );
            } else if(view != null) {
                this = new js.html.Uint8ClampedArray( untyped view );
            } else if(buffer != null) {
                if (len == null) {
                    this = new js.html.Uint8ClampedArray( buffer, byteoffset );
                } else {
                    this = new js.html.Uint8ClampedArray( buffer, byteoffset, len );
                }
            } else {
                this = null;
            }
        }

        @:arrayAccess @:extern inline function __set(idx:Int, val:UInt) : Void this[idx] = _clamp(val);
        @:arrayAccess @:extern inline function __get(idx:Int) : UInt return this[idx];


            //non spec haxe conversions
        inline public static function fromBytes( bytes:haxe.io.Bytes, ?byteOffset:Int=0, ?len:Int ) : Uint8ClampedArray {
            if(byteOffset == null) return new js.html.Uint8ClampedArray(cast bytes.getData());
            if(len == null) return new js.html.Uint8ClampedArray(cast bytes.getData(), byteOffset);
            return new js.html.Uint8ClampedArray(cast bytes.getData(), byteOffset, len);
        }

        inline public function toBytes() : haxe.io.Bytes {
            #if (haxe_ver < 3.2)
                return @:privateAccess new haxe.io.Bytes( this.byteLength, cast new js.html.Uint8Array(this.buffer) );
            #else
                return @:privateAccess new haxe.io.Bytes( cast new js.html.Uint8Array(this.buffer) );
            #end
        }

        inline function toString() return 'Uint8ClampedArray [byteLength:${this.byteLength}, length:${this.length}]';

        //internal
        //clamp a Int to a 0-255 Uint8
        static function _clamp(_in:Float) : Int {
            var _out = Std.int(_in);
            _out = _out > 255 ? 255 : _out;
            return _out < 0 ? 0 : _out;
        } //_clamp

    }

#else

    import snow.api.buffers.ArrayBufferView;
    import snow.api.buffers.TypedArrayType;

    @:forward
    @:arrayAccess
    abstract Uint8ClampedArray(ArrayBufferView) from ArrayBufferView to ArrayBufferView {

        public inline static var BYTES_PER_ELEMENT : Int = 1;

        public var length (get, never):Int;

        @:generic
        public inline function new<T>(
            ?elements:Int,
            ?array:Array<T>,
            ?view:ArrayBufferView,
            ?buffer:ArrayBuffer, ?byteoffset:Int = 0, ?len:Null<Int>
        ) {

            if(elements != null) {
                this = new ArrayBufferView( elements, Uint8Clamped );
            } else if(array != null) {
                this = new ArrayBufferView(0, Uint8Clamped).initArray(array);
            } else if(view != null) {
                this = new ArrayBufferView(0, Uint8Clamped).initTypedArray(view);
            } else if(buffer != null) {
                this = new ArrayBufferView(0, Uint8Clamped).initBuffer(buffer, byteoffset, len);
            } else {
                throw "Invalid constructor arguments for Uint8ClampedArray";
            }
        }

    //Public API

        public inline function subarray( begin:Int, end:Null<Int> = null) : Uint8ClampedArray return this.subarray(begin, end);


            //non spec haxe conversions
        inline public static function fromBytes( bytes:haxe.io.Bytes, ?byteOffset:Int=0, ?len:Int ) : Uint8ClampedArray {
            return new Uint8ClampedArray(bytes, byteOffset, len);
        }

        inline public function toBytes() : haxe.io.Bytes {
            return this.buffer;
        }

    //Internal

        inline function get_length() return this.length;


        @:noCompletion
        @:arrayAccess @:extern
        public inline function __get(idx:Int) {
            return ArrayBufferIO.getUint8(this.buffer, this.byteOffset+idx);
        }

        @:noCompletion
        @:arrayAccess @:extern
        public inline function __set(idx:Int, val:UInt) : Void {
            ArrayBufferIO.setUint8Clamped(this.buffer, this.byteOffset+idx, val);
        }

        inline function toString() return this == null ? null : 'Uint8ClampedArray [byteLength:${this.byteLength}, length:${this.length}]';

    }

#end //!js
