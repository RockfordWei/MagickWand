// MagickWand+Filter.swift
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

    public enum Filter {
        
        case pointFilter
        case boxFilter
        case triangleFilter
        case hermiteFilter
        case hannFilter
        case hammingFilter
        case blackmanFilter
        case gaussianFilter
        case quadraticFilter
        case cubicFilter
        case catromFilter
        case mitchellFilter
        case jincFilter
        case sincFilter
        case sincFastFilter
        case kaiserFilter
        case welchFilter
        case parzenFilter
        case bohmanFilter
        case bartlettFilter
        case lagrangeFilter
        case lanczosFilter
        case lanczosSharpFilter
        case lanczos2Filter
        case lanczos2SharpFilter
        case robidouxFilter
        case robidouxSharpFilter
        case cosineFilter
        case splineFilter
        case lanczosRadiusFilter
        case cubicSplineFilter
        case sentinelFilter


        var _magick: FilterType {
            switch self {
            case .pointFilter: return PointFilter
            case .boxFilter: return BoxFilter
            case .triangleFilter: return TriangleFilter
            case .hermiteFilter: return HermiteFilter
            case .hannFilter: return HannFilter
            case .hammingFilter: return HammingFilter
            case .blackmanFilter: return BlackmanFilter
            case .gaussianFilter: return GaussianFilter
            case .quadraticFilter: return QuadraticFilter
            case .cubicFilter: return CubicFilter
            case .catromFilter: return CatromFilter
            case .mitchellFilter: return MitchellFilter
            case .jincFilter: return JincFilter
            case .sincFilter: return SincFilter
            case .sincFastFilter: return SincFastFilter
            case .kaiserFilter: return KaiserFilter
            case .welchFilter: return WelchFilter
            case .parzenFilter: return ParzenFilter
            case .bohmanFilter: return BohmanFilter
            case .bartlettFilter: return BartlettFilter
            case .lagrangeFilter: return LagrangeFilter
            case .lanczosFilter: return LanczosFilter
            case .lanczosSharpFilter: return LanczosSharpFilter
            case .lanczos2Filter: return Lanczos2Filter
            case .lanczos2SharpFilter: return Lanczos2SharpFilter
            case .robidouxFilter: return RobidouxFilter
            case .robidouxSharpFilter: return RobidouxSharpFilter
            case .cosineFilter: return CosineFilter
            case .splineFilter: return SplineFilter
            case .lanczosRadiusFilter: return LanczosRadiusFilter
            case .cubicSplineFilter: return CubicSplineFilter
            case .sentinelFilter: return SentinelFilter
            }
        }
    }
}
