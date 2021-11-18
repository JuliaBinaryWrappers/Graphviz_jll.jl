# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule Graphviz_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("Graphviz")
JLLWrappers.@generate_main_file("Graphviz", UUID("3c863552-8265-54e4-a6dc-903eb78fde85"))
end  # module Graphviz_jll
