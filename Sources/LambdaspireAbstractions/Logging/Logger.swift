
public protocol Logger {
    
    func info(_ message: String)
    func info<A>(_ format: String, _ args: A)
    
    func debug(_ message: String)
    func debug<A>(_ format: String, _ args: A)
    
    func warning(_ message: String)
    func warning<A>(_ format: String, _ args: A)
    
    func error(_ message: String)
    func error<A>(_ format: String, _ args: A)
    
    func error( _ error: Error, _ message: String)
    func error<A>(_ error: Error, _ format: String, _ args: A)
}
