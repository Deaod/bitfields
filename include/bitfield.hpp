#ifndef bitfield_hpp_
#define bitfield_hpp_

#include <limits>
#include <limits.h>
#include <type_traits>

#ifndef STATIC_ASSERT
    #define STATIC_ASSERT(condition) static_assert(condition, #condition)
#endif

#ifndef ALWAYS_INLINE
    #if defined(_MSC_VER) || defined(__ICC)
        #define ALWAYS_INLINE __forceinline
    #elif defined(__GNUC__) || defined(__clang__)
        #define ALWAYS_INLINE __attribute__((always_inline))
    #else
        #define ALWAYS_INLINE
    #endif
#endif

template<typename base_type, int first_bit, int last_bit = first_bit>
class bitfield {
    typedef bitfield<base_type, first_bit, last_bit> this_type;

public:
    typedef typename std::remove_volatile<base_type>::type value_type;
    typedef base_type storage_type;

private:
    STATIC_ASSERT(std::is_integral<base_type>::value);
    STATIC_ASSERT(std::is_const<base_type>::value == false);
    STATIC_ASSERT(std::numeric_limits<value_type>::is_signed == false);
    STATIC_ASSERT(first_bit >= 0);
    STATIC_ASSERT(first_bit <= last_bit);
    STATIC_ASSERT(last_bit < static_cast<int>(CHAR_BIT * sizeof(base_type)));

    static const value_type NUM_BITS = last_bit - first_bit + 1;
    static const value_type MASK = (static_cast<value_type>(1) << NUM_BITS) - 1;

public:
    ALWAYS_INLINE operator value_type() const {
        return (_raw >> first_bit) & MASK;
    }

    ALWAYS_INLINE this_type& operator=(value_type new_value) {
        _raw = _assign(_raw, new_value);
        return *this;
    }

    ALWAYS_INLINE this_type& operator+=(value_type rhs) {
        _raw = _add(_raw, rhs);
        return *this;
    }

    ALWAYS_INLINE this_type& operator-=(value_type rhs) {
        _raw = _sub(_raw, rhs);
        return *this;
    }

    ALWAYS_INLINE this_type& operator*=(value_type rhs) {
        _raw = _mul(_raw, rhs);
        return *this;
    }

    ALWAYS_INLINE this_type& operator/=(value_type rhs) {
        _raw = _div(_raw, rhs);
        return *this;
    }

    ALWAYS_INLINE this_type& operator%=(value_type rhs) {
        _raw = _mod(_raw, rhs);
        return *this;
    }

    ALWAYS_INLINE this_type& operator&=(value_type rhs) {
        _raw = _and(_raw, rhs);
        return *this;
    }

    ALWAYS_INLINE this_type& operator|=(value_type rhs) {
        _raw = _or(_raw, rhs);
        return *this;
    }

    ALWAYS_INLINE this_type& operator^=(value_type rhs) {
        _raw = _xor(_raw, rhs);
        return *this;
    }

    ALWAYS_INLINE this_type& operator<<=(value_type rhs) {
        _raw = _shl(_raw, rhs);
        return *this;
    }

    ALWAYS_INLINE this_type& operator>>=(value_type rhs) {
        _raw = _shr(_raw, rhs);
        return *this;
    }

    ALWAYS_INLINE value_type operator++() { // pre-increment
        value_type tmp = _raw;
        value_type val = ((tmp >> first_bit) + 1) & MASK;
        _raw = (tmp & ~(MASK << first_bit)) | (val << first_bit);
        return val;
    }

    ALWAYS_INLINE value_type operator++(int) { // post-increment
        value_type tmp = _raw;
        _raw = _add(tmp, 1);
        return (tmp >> first_bit) & MASK;
    }

    ALWAYS_INLINE value_type operator--() { // pre-decrement
        value_type tmp = _raw;
        value_type val = ((tmp >> first_bit) - 1) & MASK;
        _raw = _assign(tmp, val);
        return val;
    }

    ALWAYS_INLINE value_type operator--(int) { // post-decrement
        value_type tmp = _raw;
        _raw = _sub(tmp, 1);
        return (tmp >> first_bit) & MASK;
    }

    // Now overload all those operators on volatile. Without the non-volatile
    // versions working compilers cannot delete calls to these operators, even
    // if the instance is not volatile.

    ALWAYS_INLINE operator value_type() const volatile {
        return (_raw >> first_bit) & MASK;
    }

    ALWAYS_INLINE volatile this_type& operator=(value_type new_value) volatile {
        _raw = _assign(_raw, new_value);
        return *this;
    }

    ALWAYS_INLINE volatile this_type& operator+=(value_type rhs) volatile {
        _raw = _add(_raw, rhs);
        return *this;
    }

    ALWAYS_INLINE volatile this_type& operator-=(value_type rhs) volatile {
        _raw = _sub(_raw, rhs);
        return *this;
    }

    ALWAYS_INLINE volatile this_type& operator*=(value_type rhs) volatile {
        _raw = _mul(_raw, rhs);
        return *this;
    }

    ALWAYS_INLINE volatile this_type& operator/=(value_type rhs) volatile {
        _raw = _div(_raw, rhs);
        return *this;
    }

    ALWAYS_INLINE volatile this_type& operator%=(value_type rhs) volatile {
        _raw = _mod(_raw, rhs);
        return *this;
    }

    ALWAYS_INLINE volatile this_type& operator&=(value_type rhs) volatile {
        _raw = _and(_raw, rhs);
        return *this;
    }

    ALWAYS_INLINE volatile this_type& operator|=(value_type rhs) volatile {
        _raw = _or(_raw, rhs);
        return *this;
    }

    ALWAYS_INLINE volatile this_type& operator^=(value_type rhs) volatile {
        _raw = _xor(_raw, rhs);
        return *this;
    }

    ALWAYS_INLINE volatile this_type& operator<<=(value_type rhs) volatile {
        _raw = _shl(_raw, rhs);
        return *this;
    }

    ALWAYS_INLINE volatile this_type& operator>>=(value_type rhs) volatile {
        _raw = _shr(_raw, rhs);
        return *this;
    }

    ALWAYS_INLINE value_type operator++() volatile { // pre-increment
        value_type tmp = _raw;
        value_type val = ((tmp >> first_bit) + 1) & MASK;
        _raw = _assign(tmp, val);
        return val;
    }

    ALWAYS_INLINE value_type operator++(int) volatile { // post-increment
        value_type tmp = _raw;
        _raw = _add(tmp, 1);
        return (tmp >> first_bit) & MASK;
    }

    ALWAYS_INLINE value_type operator--() volatile { // pre-decrement
        value_type tmp = _raw;
        value_type val = ((tmp >> first_bit) - 1) & MASK;
        _raw = _assign(tmp, val);
        return val;
    }

    ALWAYS_INLINE value_type operator--(int) volatile { // post-decrement
        value_type tmp = _raw;
        _raw = _sub(tmp, 1);
        return (tmp >> first_bit) & MASK;
    }

private:
    ALWAYS_INLINE static value_type _assign(value_type lhs, value_type rhs) {
        return (lhs & ~(MASK << first_bit)) | ((rhs & MASK) << first_bit);
    }

    ALWAYS_INLINE static value_type _add(value_type lhs, value_type rhs) {
        return (lhs & ~(MASK << first_bit)) | ((lhs + (rhs << first_bit)) & (MASK << first_bit));
    }

    ALWAYS_INLINE static value_type _sub(value_type lhs, value_type rhs) {
        return (lhs & ~(MASK << first_bit)) | ((lhs - (rhs << first_bit)) & (MASK << first_bit));
    }

    ALWAYS_INLINE static value_type _mul(value_type lhs, value_type rhs) {
        return (lhs & ~(MASK << first_bit)) | (((lhs & (MASK << first_bit)) * rhs) & (MASK << first_bit));
    }

    ALWAYS_INLINE static value_type _div(value_type lhs, value_type rhs) {
        return (lhs & ~(MASK << first_bit)) | (((lhs & (MASK << first_bit)) / rhs) & (MASK << first_bit));
    }

    ALWAYS_INLINE static value_type _mod(value_type lhs, value_type rhs) {
        return (lhs & ~(MASK << first_bit)) | ((((lhs >> first_bit) & MASK) % rhs) << first_bit);
    }

    ALWAYS_INLINE static value_type _and(value_type lhs, value_type rhs) {
        return lhs & (~(MASK << first_bit) | (rhs << first_bit));
    }

    ALWAYS_INLINE static value_type _or(value_type lhs, value_type rhs) {
        return lhs | ((rhs & MASK) << first_bit);
    }

    ALWAYS_INLINE static value_type _xor(value_type lhs, value_type rhs) {
        return lhs ^ ((rhs & MASK) << first_bit);
    }

    ALWAYS_INLINE static value_type _shl(value_type lhs, value_type rhs) {
        return (lhs & ~(MASK << first_bit)) | (((lhs & (MASK << first_bit)) << rhs) & (MASK << first_bit));
    }

    ALWAYS_INLINE static value_type _shr(value_type lhs, value_type rhs) {
        return (lhs & ~(MASK << first_bit)) | (((lhs & (MASK << first_bit)) >> rhs) & (MASK << first_bit));
    }

private:
    base_type _raw;
};

#endif // bitfield_hpp_
