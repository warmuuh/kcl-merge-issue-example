schema ResourceMapping:
    [str]: any

schema BaseFrontend:
    name: str


protocol MixinProtocol:
    fe: BaseFrontend
    resources: ResourceMapping

mixin Mixin1Mixin for MixinProtocol:
    resources: ResourceMapping {resource1 = [{
       a = "a"
    }]}

mixin Mixin2Mixin for MixinProtocol:
    resources: ResourceMapping {resource2 = [{
       b = "b"
    }]}


schema BaseBackend[a: BaseFrontend]:
    mixin [
        Mixin1Mixin,
        Mixin2Mixin
    ]
    fe: BaseFrontend = a
    resources: ResourceMapping

