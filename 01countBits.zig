const util = @import("util.zig");
const expectEq = util.expectEq;

fn countSetBits(
    comptime T: type,
    val: T,
) T {
    var value = val;
    var count: T = 0;
    while (value != 0) : (count += 1) {
        value = value & (value - 1);
    }
    return count;
}

test "countBits" {
    try expectEq(1, countSetBits(u32, 1));
    try expectEq(1, countSetBits(u32, 2));
    try expectEq(2, countSetBits(u32, 3));
}
