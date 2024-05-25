
public struct Log {
    
    private static var logger: Logger?
    
    private init() { }
    
    public static func setLogger(_ logger: Logger) {
        Self.logger = logger
    }
    
    public static func info(_ message: String) { logger?.info(message) }
    public static func info<A>(_ format: String, _ args: A) { logger?.info(format, args) }
    
    public static func debug(_ message: String) { logger?.debug(message) }
    public static func debug<A>(_ format: String, _ args: A) { logger?.debug(format, args) }
    
    public static func warning(_ message: String) { logger?.warning(message) }
    public static func warning<A>(_ format: String, _ args: A) { logger?.warning(format, args) }
    
    public static func error(_ message: String) { logger?.error(message) }
    public static func error<A>(_ format: String, _ args: A) { logger?.error(format, args) }
    
    public static func error(_ error: Error, _ message: String) { logger?.error(error, message) }
    public static func error<A>(_ error: Error, _ format: String, _ args: A) { logger?.error(error, format, args) }
}
