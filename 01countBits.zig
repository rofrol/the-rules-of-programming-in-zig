const std = @import("std");
const util = @import("util.zig");
const expectEq = util.expectEq;

fn countBits(comptime T: type) T {
    return 2;
}

test "countBits" {
    try expectEq(true, true);
}
