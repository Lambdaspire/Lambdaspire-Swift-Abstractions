
/// A protocol for registering dependencies.
public protocol DependencyRegistry {

    func register<T>(_ singleton: T)
    
    func register<T>(_ type: T.Type, _ singleton: T)
    
    func register<T>(_ factory: @escaping () -> T)
    
    func register<T>(_ type: T.Type, _ factory: @escaping () -> T)
}
