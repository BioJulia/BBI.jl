using Test
using BBI
using CodecZlib

@testset "Compression" begin
    src = Vector{UInt8}("The quick brown fox jumps over the lazy dog. "^10)
    dst = zeros(UInt8, length(src) + 128)
    compressed_sz = BBI.compress!(dst, src)
    @test compressed_sz > 0
    @test compressed_sz < length(src)

    decompressed = zeros(UInt8, length(src))
    decompressed_sz = BBI.uncompress!(decompressed, dst[1:compressed_sz])
    @test decompressed_sz == length(src)
    @test decompressed == src

    # Test error handling on corrupted data
    invalid_data = UInt8[0x00, 0x01, 0x02, 0x03]
    @test_throws CodecZlib.ZlibError BBI.uncompress!(decompressed, invalid_data)
end

@testset "BTree" begin
    chroms = [("chr1", UInt32(1000)), ("chr2", UInt32(2000)), ("chrX", UInt32(1500))]
    chromlist_with_ids = BBI.add_chrom_ids(chroms)
    buf = IOBuffer()
    BBI.write_btree(buf, chromlist_with_ids)
    
    btree = BBI.BTree(seekstart(buf), 0)
    loaded = BBI.chromlist(btree)
    @test length(loaded) == 3
    @test loaded == sort(chromlist_with_ids, by=first)
end
