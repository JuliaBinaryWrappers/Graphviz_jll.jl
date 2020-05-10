# Autogenerated wrapper script for Graphviz_jll for armv7l-linux-gnueabihf-cxx11
export libgvc, dot, libcgraph, gvpr, libcdt, libgvpr, liblab_gamut, libxdot, libpathplan

using Cairo_jll
using Expat_jll
using Pango_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libgvc`
const libgvc_splitpath = ["lib", "libgvc.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libgvc_path = ""

# libgvc-specific global declaration
# This will be filled out by __init__()
libgvc_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libgvc = "libgvc.so.6"


# Relative path to `dot`
const dot_splitpath = ["bin", "dot"]

# This will be filled out by __init__() for all products, as it must be done at runtime
dot_path = ""

# dot-specific global declaration
function dot(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        LIBPATH_base = get(ENV, LIBPATH_env, expanduser(LIBPATH_default))
        if !isempty(LIBPATH_base)
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', LIBPATH_base)
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(dot_path)
    end
end


# Relative path to `libcgraph`
const libcgraph_splitpath = ["lib", "libcgraph.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libcgraph_path = ""

# libcgraph-specific global declaration
# This will be filled out by __init__()
libcgraph_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libcgraph = "libcgraph.so.6"


# Relative path to `gvpr`
const gvpr_splitpath = ["bin", "gvpr"]

# This will be filled out by __init__() for all products, as it must be done at runtime
gvpr_path = ""

# gvpr-specific global declaration
function gvpr(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        LIBPATH_base = get(ENV, LIBPATH_env, expanduser(LIBPATH_default))
        if !isempty(LIBPATH_base)
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', LIBPATH_base)
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(gvpr_path)
    end
end


# Relative path to `libcdt`
const libcdt_splitpath = ["lib", "libcdt.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libcdt_path = ""

# libcdt-specific global declaration
# This will be filled out by __init__()
libcdt_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libcdt = "libcdt.so.5"


# Relative path to `libgvpr`
const libgvpr_splitpath = ["lib", "libgvpr.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libgvpr_path = ""

# libgvpr-specific global declaration
# This will be filled out by __init__()
libgvpr_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libgvpr = "libgvpr.so.2"


# Relative path to `liblab_gamut`
const liblab_gamut_splitpath = ["lib", "liblab_gamut.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
liblab_gamut_path = ""

# liblab_gamut-specific global declaration
# This will be filled out by __init__()
liblab_gamut_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const liblab_gamut = "liblab_gamut.so.1"


# Relative path to `libxdot`
const libxdot_splitpath = ["lib", "libxdot.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libxdot_path = ""

# libxdot-specific global declaration
# This will be filled out by __init__()
libxdot_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libxdot = "libxdot.so.4"


# Relative path to `libpathplan`
const libpathplan_splitpath = ["lib", "libpathplan.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libpathplan_path = ""

# libpathplan-specific global declaration
# This will be filled out by __init__()
libpathplan_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libpathplan = "libpathplan.so.4"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"Graphviz")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (Cairo_jll.PATH_list, Expat_jll.PATH_list, Pango_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (Cairo_jll.LIBPATH_list, Expat_jll.LIBPATH_list, Pango_jll.LIBPATH_list,))

    global libgvc_path = normpath(joinpath(artifact_dir, libgvc_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libgvc_handle = dlopen(libgvc_path)
    push!(LIBPATH_list, dirname(libgvc_path))

    global dot_path = normpath(joinpath(artifact_dir, dot_splitpath...))

    push!(PATH_list, dirname(dot_path))
    global libcgraph_path = normpath(joinpath(artifact_dir, libcgraph_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libcgraph_handle = dlopen(libcgraph_path)
    push!(LIBPATH_list, dirname(libcgraph_path))

    global gvpr_path = normpath(joinpath(artifact_dir, gvpr_splitpath...))

    push!(PATH_list, dirname(gvpr_path))
    global libcdt_path = normpath(joinpath(artifact_dir, libcdt_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libcdt_handle = dlopen(libcdt_path)
    push!(LIBPATH_list, dirname(libcdt_path))

    global libgvpr_path = normpath(joinpath(artifact_dir, libgvpr_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libgvpr_handle = dlopen(libgvpr_path)
    push!(LIBPATH_list, dirname(libgvpr_path))

    global liblab_gamut_path = normpath(joinpath(artifact_dir, liblab_gamut_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global liblab_gamut_handle = dlopen(liblab_gamut_path)
    push!(LIBPATH_list, dirname(liblab_gamut_path))

    global libxdot_path = normpath(joinpath(artifact_dir, libxdot_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libxdot_handle = dlopen(libxdot_path)
    push!(LIBPATH_list, dirname(libxdot_path))

    global libpathplan_path = normpath(joinpath(artifact_dir, libpathplan_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libpathplan_handle = dlopen(libpathplan_path)
    push!(LIBPATH_list, dirname(libpathplan_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

