# The zlib Compression
# ====================

function compress!(dst::Vector{UInt8}, src::Vector{UInt8})::UInt64
    sz = Ref(Culong(length(dst)))
    code = ccall(
        (:compress, CodecZlib.libz),
        Cint,
        (Ptr{Cvoid}, Ref{Culong}, Ptr{Cvoid}, Culong),
        dst, sz, src, sizeof(src))
    if code != CodecZlib.Z_OK
        throw(CodecZlib.ZlibError("zlib error (code: $(code))"))
    end
    return sz[]
end

function uncompress!(dst::Vector{UInt8}, src::Vector{UInt8})::UInt64
    sz = Ref(Culong(length(dst)))
    code = ccall(
        (:uncompress, CodecZlib.libz),
        Cint,
        (Ptr{Cvoid}, Ref{Culong}, Ptr{Cvoid}, Culong),
        dst, sz, src, sizeof(src))
    if code != CodecZlib.Z_OK
        throw(CodecZlib.ZlibError("zlib error (code: $(code))"))
    end
    return sz[]
end
