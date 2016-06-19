pub fn square_of_sum(i: u32) -> u32 {
  let mut sum = 0; // sum: u32
  for x in 1..(i+1) {
    sum += x;
  }
  sum * sum
}

pub fn sum_of_squares(i: u32) -> u32 {
  let mut sum = 0; // sum: u32
  for x in 1..(i+1) {
    sum += x * x;
  }
  sum
}

pub fn difference(i: u32) -> u32 {
  square_of_sum(i) - sum_of_squares(i)
}