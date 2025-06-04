
public protocol DependencyResolutionScope : DependencyResolver {
    var id: String { get }
    func scope() -> DependencyResolutionScope
    func scope(build: (DependencyRegistry) -> Void) -> any DependencyResolutionScope
}

public extension DependencyResolutionScope {
    
    func scope(_ fn: (DependencyResolutionScope) -> Void) {
        let newScope = scope()
        fn(newScope)
    }
    
    func scope(_ fn: (DependencyResolutionScope) async -> Void) async {
        let newScope = scope()
        await fn(newScope)
    }
}
