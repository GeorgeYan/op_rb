def is_block
  return yield if block_given?
  p "no block!"
end

is_block
is_block { p "here's a block!"}
