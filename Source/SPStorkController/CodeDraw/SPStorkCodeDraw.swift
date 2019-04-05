import UIKit

class SPStorkCodeDraw : NSObject {
    
    private struct Cache {
        static let gradient: CGGradient = CGGradient(colorsSpace: nil, colors: [UIColor.red.cgColor, UIColor.red.cgColor] as CFArray, locations: [0, 1])!
    }
    
    @objc dynamic class var gradient: CGGradient { return Cache.gradient }
    
    @objc dynamic class func drawClose(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 100, height: 100), resizing: ResizingBehavior = .aspectFit, color: UIColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)) {
        
        let context = UIGraphicsGetCurrentContext()!
        
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 100, height: 100), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 100, y: resizedFrame.height / 100)
        
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 92.02, y: 22.92))
        bezierPath.addLine(to: CGPoint(x: 64.42, y: 50.52))
        bezierPath.addLine(to: CGPoint(x: 92.02, y: 78.13))
        bezierPath.addCurve(to: CGPoint(x: 92.02, y: 92.99), controlPoint1: CGPoint(x: 96.13, y: 82.23), controlPoint2: CGPoint(x: 96.13, y: 88.89))
        bezierPath.addCurve(to: CGPoint(x: 84.59, y: 96.07), controlPoint1: CGPoint(x: 89.97, y: 95.05), controlPoint2: CGPoint(x: 87.28, y: 96.07))
        bezierPath.addCurve(to: CGPoint(x: 77.16, y: 92.99), controlPoint1: CGPoint(x: 81.9, y: 96.07), controlPoint2: CGPoint(x: 79.22, y: 95.05))
        bezierPath.addLine(to: CGPoint(x: 49.55, y: 65.38))
        bezierPath.addLine(to: CGPoint(x: 21.95, y: 92.99))
        bezierPath.addCurve(to: CGPoint(x: 14.51, y: 96.07), controlPoint1: CGPoint(x: 19.89, y: 95.05), controlPoint2: CGPoint(x: 17.2, y: 96.07))
        bezierPath.addCurve(to: CGPoint(x: 7.08, y: 92.99), controlPoint1: CGPoint(x: 11.82, y: 96.07), controlPoint2: CGPoint(x: 9.13, y: 95.05))
        bezierPath.addCurve(to: CGPoint(x: 7.08, y: 78.13), controlPoint1: CGPoint(x: 2.97, y: 88.89), controlPoint2: CGPoint(x: 2.97, y: 82.23))
        bezierPath.addLine(to: CGPoint(x: 34.69, y: 50.52))
        bezierPath.addLine(to: CGPoint(x: 7.08, y: 22.92))
        bezierPath.addCurve(to: CGPoint(x: 7.08, y: 8.04), controlPoint1: CGPoint(x: 2.97, y: 18.8), controlPoint2: CGPoint(x: 2.97, y: 12.15))
        bezierPath.addCurve(to: CGPoint(x: 21.94, y: 8.04), controlPoint1: CGPoint(x: 11.18, y: 3.94), controlPoint2: CGPoint(x: 17.84, y: 3.94))
        bezierPath.addLine(to: CGPoint(x: 49.55, y: 35.65))
        bezierPath.addLine(to: CGPoint(x: 77.16, y: 8.04))
        bezierPath.addCurve(to: CGPoint(x: 92.02, y: 8.04), controlPoint1: CGPoint(x: 81.26, y: 3.94), controlPoint2: CGPoint(x: 87.92, y: 3.94))
        bezierPath.addCurve(to: CGPoint(x: 92.02, y: 22.92), controlPoint1: CGPoint(x: 96.13, y: 12.15), controlPoint2: CGPoint(x: 96.13, y: 18.8))
        bezierPath.close()
        color.setFill()
        bezierPath.fill()
        
        context.restoreGState()
        
    }
    
    @objc dynamic public class func drawSizingUp(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 29, height: 29), resizing: ResizingBehavior = .aspectFit, color: UIColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 29, height: 29), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 29, y: resizedFrame.height / 29)
        
        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRect(x: 17, y: 0, width: 12, height: 2))
        color.setFill()
        rectanglePath.fill()
        
        
        //// Rectangle 2 Drawing
        context.saveGState()
        context.translateBy(x: 28, y: 6)
        context.rotate(by: 90 * CGFloat.pi/180)
        
        let rectangle2Path = UIBezierPath(rect: CGRect(x: -6, y: -1, width: 12, height: 2))
        color.setFill()
        rectangle2Path.fill()
        
        context.restoreGState()
        
        
        //// Rectangle 3 Drawing
        context.saveGState()
        context.translateBy(x: 22.1, y: 6.9)
        context.rotate(by: 135 * CGFloat.pi/180)
        
        let rectangle3Path = UIBezierPath(rect: CGRect(x: -7.21, y: -1, width: 14.41, height: 2))
        color.setFill()
        rectangle3Path.fill()
        
        context.restoreGState()
        
        
        //// Rectangle 4 Drawing
        context.saveGState()
        context.translateBy(x: 6, y: 28)
        context.rotate(by: 180 * CGFloat.pi/180)
        
        let rectangle4Path = UIBezierPath(rect: CGRect(x: -6, y: -1, width: 12, height: 2))
        color.setFill()
        rectangle4Path.fill()
        
        context.restoreGState()
        
        
        //// Rectangle 5 Drawing
        context.saveGState()
        context.translateBy(x: 6.1, y: 22.9)
        context.rotate(by: 135 * CGFloat.pi/180)
        
        let rectangle5Path = UIBezierPath(rect: CGRect(x: -7.21, y: -1, width: 14.41, height: 2))
        color.setFill()
        rectangle5Path.fill()
        
        context.restoreGState()
        
        
        //// Rectangle 6 Drawing
        context.saveGState()
        context.translateBy(x: 1, y: 22.5)
        context.rotate(by: -90 * CGFloat.pi/180)
        
        let rectangle6Path = UIBezierPath(rect: CGRect(x: -6, y: -1, width: 12, height: 2))
        color.setFill()
        rectangle6Path.fill()
        
        context.restoreGState()
        
        context.restoreGState()
        
    }
    
    @objc dynamic public class func drawSizingDown(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 29, height: 29), resizing: ResizingBehavior = .aspectFit, color: UIColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)) {
        
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 29, height: 29), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 29, y: resizedFrame.height / 29)
        
        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRect(x: 1, y: 16, width: 12, height: 2))
        color.setFill()
        rectanglePath.fill()
        
        
        //// Rectangle 2 Drawing
        context.saveGState()
        context.translateBy(x: 12, y: 22)
        context.rotate(by: 90 * CGFloat.pi/180)
        
        let rectangle2Path = UIBezierPath(rect: CGRect(x: -6, y: -1, width: 12, height: 2))
        color.setFill()
        rectangle2Path.fill()
        
        context.restoreGState()
        
        
        //// Rectangle 3 Drawing
        context.saveGState()
        context.translateBy(x: 6.1, y: 22.9)
        context.rotate(by: 135 * CGFloat.pi/180)
        
        let rectangle3Path = UIBezierPath(rect: CGRect(x: -7.21, y: -1, width: 14.41, height: 2))
        color.setFill()
        rectangle3Path.fill()
        
        context.restoreGState()
        
        
        //// Rectangle 4 Drawing
        context.saveGState()
        context.translateBy(x: 23, y: 11)
        context.rotate(by: 180 * CGFloat.pi/180)
        
        let rectangle4Path = UIBezierPath(rect: CGRect(x: -6, y: -1, width: 12, height: 2))
        color.setFill()
        rectangle4Path.fill()
        
        context.restoreGState()
        
        
        //// Rectangle 5 Drawing
        context.saveGState()
        context.translateBy(x: 23.1, y: 5.9)
        context.rotate(by: 135 * CGFloat.pi/180)
        
        let rectangle5Path = UIBezierPath(rect: CGRect(x: -7.21, y: -1, width: 14.41, height: 2))
        color.setFill()
        rectangle5Path.fill()
        
        context.restoreGState()
        
        
        //// Rectangle 6 Drawing
        context.saveGState()
        context.translateBy(x: 18, y: 5.5)
        context.rotate(by: -90 * CGFloat.pi/180)
        
        let rectangle6Path = UIBezierPath(rect: CGRect(x: -6, y: -1, width: 12, height: 2))
        color.setFill()
        rectangle6Path.fill()
        
        context.restoreGState()
        
        context.restoreGState()
        
    }

    
    @objc(StyleKitNameResizingBehavior)
    enum ResizingBehavior: Int {
        case aspectFit
        case aspectFill
        case stretch
        case center
        
        func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }
            
            var scales = CGSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)
            
            switch self {
            case .aspectFit:
                scales.width = min(scales.width, scales.height)
                scales.height = scales.width
            case .aspectFill:
                scales.width = max(scales.width, scales.height)
                scales.height = scales.width
            case .stretch:
                break
            case .center:
                scales.width = 1
                scales.height = 1
            }
            
            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
    
    private override init() {}
}
