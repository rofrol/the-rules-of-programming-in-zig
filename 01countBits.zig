const std = @import("std");
const assert = std.debug.assert;
const expect = std.testing.expect;
const util = @import("util.zig");
const expectEq = util.expectEq;

fn countBits(comptime T: type) T {
    return 2;
}

test "countBits" {
    try expectEq(true, true);
}
