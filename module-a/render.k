import pkga
import manifests

render = lambda a: pkga.BaseFrontend {
    impl = pkga.BaseBackend(a)
    sum([v for k, v in impl.resources], [])
}

manifests.yaml_stream(sum([render(a) for a in pkga.BaseFrontend.instances()], []))
