
/// A property wrapper for conveniently declaring properties that will be resolved from some statically available DependencyResolver.
/// Not ideal in SwiftUI applications where Environment is preferred / more idiomatic.
@propertyWrapper public struct Resolved<T> {
    
    public let wrappedValue: T
    
    public init(_ resolver: DependencyResolver) {
        wrappedValue = resolver.resolve()
    }
}
