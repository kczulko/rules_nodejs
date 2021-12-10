"Mock swc transpiler macro"

load("@bazel_skylib//rules:copy_file.bzl", "copy_file")

# _swc(
#         name = name,
#         srcs = srcs,
#         js_outs = js_outs,
#         map_outs = map_outs,
#         args = args,
#         data = data,
#         swcrc = swcrc,
#         **kwargs
#     )
def swc(name, srcs, js_outs, map_outs, args, data):
    for i, s in enumerate(srcs):
        copy_file(
            name = "name" + s,
            src = s,
            out = js_outs[i],
        )
