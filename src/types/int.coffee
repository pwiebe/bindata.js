class BinData.Type.Int extends BinData.DataType
  opts:
    unsigned: false

  read: (file) ->
    code = switch @opts.unsigned
      when true then "I"
      else "i"

    @readFormat code, file

  numBytes: -> 4

BinData.Record.registerType ["int", "int32"], (name) -> 
  @readType "Int", name

BinData.Record.registerType ["uint", "uint32"], (name) ->
  @readType "Int", name, unsigned: true