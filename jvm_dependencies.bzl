load("@rules_jvm_external//:defs.bzl", "maven_install")

def jvm_dependencies():
    maven_install(
        name = "adservice",
        artifacts = [
            "com.google.api.grpc:proto-google-common-protos:2.11.0",
            "javax.annotation:javax.annotation-api:1.3.2",
            "io.grpc:grpc-protobuf:1.51.1",
            "io.grpc:grpc-stub:1.51.1",
            "io.grpc:grpc-netty:1.51.1",
            "io.grpc:grpc-services:1.51.1",
            "io.grpc:grpc-census:1.51.1",
            "org.apache.logging.log4j:log4j-core:2.19.0",
        ],
        fetch_sources = True,
        repositories = [
            "https://repo1.maven.org/maven2",
        ],
    )
    maven_install(
        name = "adservice_runtime",
        artifacts = [
            "com.fasterxml.jackson.core:jackson-core:2.14.1",
            "com.fasterxml.jackson.core:jackson-databind:2.14.1",
            "io.netty:netty-tcnative-boringssl-static:2.0.54.Final",
        ],
        fetch_sources = True,
        repositories = [
            "https://repo1.maven.org/maven2",
        ],
    )
