const std = @import("std");

fn collatzIterations(start: usize) usize {
    var count: usize = 0;
    var n = start;
    while (n != 1) {
        if (n % 2 == 0) {
            n = @divExact(n, 2);
        } else {
            n = 3 * n + 1;
        }

        count += 1;
    }

    return count;
}

// version 2 of while loop
//fn collatzIterations(start: usize) usize {
  //  var count: usize = 0;
   // var n = start;
    //while (n != 1) : (count += 1) {
      //  if (n % 2 == 0) {
        //    n = @divExact(n, 2);
        //} else {
          //  n = 3 * n + 1;
        //}
    //}

    //return count;
//}

pub fn main() !void {
    const te = collatzIterations(9900);
    std.debug.print("{any} \n", .{te});
}
