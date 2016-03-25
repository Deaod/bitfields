# Bitfields
A custom bitfield class for C++. Hopefully also at least as fast as a native implementation.

## Usage
```c++
#include "bitfield.hpp"
// template<
//     typename base_type,
//     int first_bit,
//     int last_bit = first_bit
// > class bitfield;

union some_register {
    volatile uint32_t all_bits;
    bitfield<volatile uint32_t, 0, 2> bits_0_1_and_2;
    bitfield<volatile uint32_t, 3, 7> bits_3_through_7;
    bitfield<volatile uint32_t, 8> bit_8;
};
```


## Design Goals
It is designed to be used on embedded devices to abstract memory mapped registers of silicon devices away. To reduce overhead and to avoid wandering into undefined behavior no initialization is done. To allow use within volatile structures all custom operators are overloaded on volatile.

## Codegen Comparisons
