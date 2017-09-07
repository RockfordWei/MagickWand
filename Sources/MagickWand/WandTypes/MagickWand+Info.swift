// MagickWand+Orientation.swift
//
// Copyright (c) 2016 Sergey Minakov
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#if os(Linux)
    import CMagickWandLinux
#else
    import CMagickWandOSX
#endif

extension MagickWand {

    public struct CompressionInfo {
        
        public var compression: Compression
        public var quality: Int
        
        public init(compression: Compression, quality: Int) {
            self.compression = compression
            self.quality = quality
        }
    }
    
    public struct PixelPacket {
        
        private(set) var red: UInt32
        private(set) var green: UInt32
        private(set) var blue: UInt32
        private(set) var opacity: UInt32

        init(_ info: PixelPacket) {
            self.red = info.red
            self.green = info.green
            self.blue = info.blue
            self.opacity = info.opacity
        }
    }
    
    public struct PixelInfo {
        
        public static let empty = PixelInfo()
        
        private(set) public var colorspace = MagickWand.Colorspace.undefined
        private(set) public var fuzz: Double = 0
        private(set) public var depth: Int = 0
        private(set) public var red: Double = 0
        private(set) public var green: Double = 0
        private(set) public var blue: Double = 0
        private(set) public var alpha: Double = 0
        private(set) public var index: Double = -1
        
        internal var _magick : _PixelInfo {
            var result = _PixelInfo()
            result.colorspace = self.colorspace.type
            result.fuzz = self.fuzz
            result.depth = self.depth
            result.red = MagickRealType(self.red)
            result.green = MagickRealType(self.green)
            result.blue = MagickRealType(self.blue)
            result.alpha = MagickRealType(self.alpha)
            result.index = MagickRealType(self.index)
            return result
        }
        
        init() { }
        
        init(_ info: _PixelInfo) {
            self.colorspace = MagickWand.Colorspace(info.colorspace)
            
            self.fuzz = Double(info.fuzz)
            self.depth = info.depth
            self.red = Double(info.red)
            self.green = Double(info.green)
            self.blue = Double(info.blue)
            self.alpha = Double(info.alpha)
            self.index = Double(info.index)
        }
    }
}
