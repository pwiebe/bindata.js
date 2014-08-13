class BinData.Type.Char extends BinData.DataType
  opts:
    unsigned: false

  read: (file) ->
    code = switch @opts.unsigned
      when true then "B"
      else "b"

    @readFormat code, file

  numBytes: -> 1

BinData.Record.registerType ["char", "int8"], (name, opts = {}) -> 
  @readType "Char", name, opts

BinData.Record.registerType ["uchar", "uint8"], (name, opts = {}) -> 
  @readType "Char", name, unsigned: true