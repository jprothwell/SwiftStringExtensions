import Foundation

public extension String{
    public func trimmed() -> String {
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    public func toNumber()->NSNumber? {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        return nf.number(from: self)
    }
    
    public func toFloat() -> Float? {
        return self.toNumber()?.floatValue
    }
    
    public func toDouble() -> Double? {
        return self.toNumber()?.doubleValue
    }
    
    public func toInt() -> Int? {
        return self.toNumber()?.intValue
    }
    
    public func toBool() -> Bool {
        let trimmed = self.trimmed().lowercased()
        switch trimmed {
        case "true", "yes", "1":
            return true
        case "false", "no", "0":
            return false
        default:
            return false
        }
    }
}
