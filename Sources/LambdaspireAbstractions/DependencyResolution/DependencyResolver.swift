
/// A protocol for resolving dependencies by type.
public protocol DependencyResolver {
    
    func resolve<T>() -> T
    
    func resolve<T>(_ t: T.Type) -> T
}
