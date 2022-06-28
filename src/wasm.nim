const magicModuleHeader = [0x00'u8, 0x61, 0x73, 0x6d];
const moduleVersion = [0x01'u8, 0x00, 0x00, 0x00];


proc bytes2string(self: openArray[byte]): string =
    for i, e in self.pairs:
        result.add chr(self[i])
proc emmiter(): string =
    return magicModuleHeader.bytes2string & moduleVersion.bytes2string

when isMainModule:
    echo emmiter()