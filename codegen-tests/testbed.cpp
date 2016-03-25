#include <cstdlib>
#include <cstdint>
#include <climits>
#include <limits>
#include <type_traits>

template<typename base_type, int first_bit, int last_bit = first_bit>
class bitfield {
    static_assert(std::is_const<base_type>::value == false, "");
    static_assert(std::numeric_limits<base_type>::is_signed == false, "");
    static_assert(first_bit >= 0, "");
    static_assert(first_bit <= last_bit, "");
    static_assert(last_bit < static_cast<int>(CHAR_BIT * sizeof(base_type)), "");

    typedef bitfield<base_type, first_bit, last_bit> thistype;

public:
    typedef typename std::remove_volatile<base_type>::type nv_type;

private:
    static const nv_type NUM_BITS = last_bit - first_bit + 1;
    static const nv_type MASK = (static_cast<nv_type>(1) << NUM_BITS) - 1;

public:
    operator nv_type() const {
        return (_raw >> first_bit) & MASK;
    }

    operator nv_type() const volatile {
        return (_raw >> first_bit) & MASK;
    }

    thistype& operator=(nv_type new_value) {
        _raw = _assign(_raw, new_value);
        return *this;
    }

    volatile thistype& operator=(nv_type new_value) volatile {
        _raw = _assign(_raw, new_value);
        return *this;
    }

    //

    thistype& operator+=(nv_type rhs) {
        _raw = _add(_raw, rhs);
        return *this;
    }

    thistype& operator-=(nv_type rhs) {
        _raw = _sub(_raw, rhs);
        return *this;
    }

    thistype& operator*=(nv_type rhs) {
        _raw = _mul(_raw, rhs);
        return *this;
    }

    thistype& operator/=(nv_type rhs) {
        _raw = _div(_raw, rhs);
        return *this;
    }

    thistype& operator%=(nv_type rhs) {
        _raw = _mod(_raw, rhs);
        return *this;
    }

    thistype& operator&=(nv_type rhs) {
        _raw = _and(_raw, rhs);
        return *this;
    }

    thistype& operator|=(nv_type rhs) {
        _raw = _or(_raw, rhs);
        return *this;
    }

    thistype& operator^=(nv_type rhs) {
        _raw = _xor(_raw, rhs);
        return *this;
    }

    thistype& operator<<=(nv_type rhs) {
        _raw = _shl(_raw, rhs);
        return *this;
    }

    thistype& operator>>=(nv_type rhs) {
        _raw = _shr(_raw, rhs);
        return *this;
    }

    nv_type operator++() // pre-increment
    {
        nv_type tmp = _raw;
        nv_type val = ((tmp >> first_bit) + 1) & MASK;
        _raw = (tmp & ~(MASK << first_bit)) | (val << first_bit);
        return val;
    }

    nv_type operator++(int) // post-increment
    {
        nv_type tmp = _raw;
        _raw = (tmp & ~(MASK << first_bit)) | ((tmp + (static_cast<nv_type>(1) << first_bit)) & (MASK << first_bit));
        return (tmp >> first_bit) & MASK;
    }

    nv_type operator--() // pre-decrement
    {
        nv_type tmp = _raw;
        nv_type val = ((tmp >> first_bit) - 1) & MASK;
        _raw = (tmp & ~(MASK << first_bit)) | (val << first_bit);
        return val;
    }

    nv_type operator--(int) // post-decrement
    {
        nv_type tmp = _raw;
        _raw = (tmp & ~(MASK << first_bit)) | ((tmp - (static_cast<nv_type>(1) << first_bit)) & (MASK << first_bit));
        return (tmp >> first_bit) & MASK;
    }

    //

    volatile thistype& operator+=(nv_type rhs) volatile {
        _raw = _add(_raw, rhs);
        return *this;
    }

    volatile thistype& operator-=(nv_type rhs) volatile {
        _raw = _sub(_raw, rhs);
        return *this;
    }

    volatile thistype& operator*=(nv_type rhs) volatile {
        _raw = _mul(_raw, rhs);
        return *this;
    }

    volatile thistype& operator/=(nv_type rhs) volatile {
        _raw = _div(_raw, rhs);
        return *this;
    }

    volatile thistype& operator%=(nv_type rhs) volatile {
        _raw = _mod(_raw, rhs);
        return *this;
    }

    volatile thistype& operator&=(nv_type rhs) volatile {
        _raw = _and(_raw, rhs);
        return *this;
    }

    volatile thistype& operator|=(nv_type rhs) volatile {
        _raw = _or(_raw, rhs);
        return *this;
    }

    volatile thistype& operator^=(nv_type rhs) volatile {
        _raw = _xor(_raw, rhs);
        return *this;
    }

    volatile thistype& operator<<=(nv_type rhs) volatile {
        _raw = _shl(_raw, rhs);
        return *this;
    }

    volatile thistype& operator>>=(nv_type rhs) volatile {
        _raw = _shr(_raw, rhs);
        return *this;
    }

    nv_type operator++() volatile // pre-increment
    {
        nv_type tmp = _raw;
        nv_type val = ((tmp >> first_bit) + 1) & MASK;
        _raw = (tmp & ~(MASK << first_bit)) | (val << first_bit);
        return val;
    }

    nv_type operator++(int) volatile // post-increment
    {
        nv_type tmp = _raw;
        _raw = (tmp & ~(MASK << first_bit)) | ((tmp + (static_cast<nv_type>(1) << first_bit)) & (MASK << first_bit));
        return (tmp >> first_bit) & MASK;
    }

    nv_type operator--() volatile // pre-decrement
    {
        nv_type tmp = _raw;
        nv_type val = ((tmp >> first_bit) - 1) & MASK;
        _raw = (tmp & ~(MASK << first_bit)) | (val << first_bit);
        return val;
    }

    nv_type operator--(int) volatile // post-decrement
    {
        nv_type tmp = _raw;
        _raw = (tmp & ~(MASK << first_bit)) | ((tmp - (static_cast<nv_type>(1) << first_bit)) & (MASK << first_bit));
        return (tmp >> first_bit) & MASK;
    }

private:
    static nv_type _assign(nv_type lhs, nv_type rhs) {
        return (lhs & ~(MASK << first_bit)) | ((rhs & MASK) << first_bit);
    }

    static nv_type _add(nv_type lhs, nv_type rhs) {
        return (lhs & ~(MASK << first_bit)) | ((lhs + (rhs << first_bit)) & (MASK << first_bit));
    }

    static nv_type _sub(nv_type lhs, nv_type rhs) {
        return (lhs & ~(MASK << first_bit)) | ((lhs - (rhs << first_bit)) & (MASK << first_bit));
    }

    static nv_type _mul(nv_type lhs, nv_type rhs) {
        return (lhs & ~(MASK << first_bit)) | (((lhs & (MASK << first_bit)) * rhs) & (MASK << first_bit));
    }

    static nv_type _div(nv_type lhs, nv_type rhs) {
        return (lhs & ~(MASK << first_bit)) | (((lhs & (MASK << first_bit)) / rhs) & (MASK << first_bit));
    }

    static nv_type _mod(nv_type lhs, nv_type rhs) {
        return (lhs & ~(MASK << first_bit)) | ((((lhs >> first_bit) & MASK) % rhs) << first_bit);
    }

    static nv_type _and(nv_type lhs, nv_type rhs) {
        return lhs & (~(MASK << first_bit) | (rhs << first_bit));
    }

    static nv_type _or(nv_type lhs, nv_type rhs) {
        return lhs | ((rhs & MASK) << first_bit);
    }

    static nv_type _xor(nv_type lhs, nv_type rhs) {
        return lhs ^ ((rhs & MASK) << first_bit);
    }

    static nv_type _shl(nv_type lhs, nv_type rhs) {
        return (lhs & ~(MASK << first_bit)) | (((lhs & (MASK << first_bit)) << rhs) & (MASK << first_bit));
    }

    static nv_type _shr(nv_type lhs, nv_type rhs) {
        return (lhs & ~(MASK << first_bit)) | (((lhs & (MASK << first_bit)) >> rhs) & (MASK << first_bit));
    }

private:
    base_type _raw;
};

typedef uint32_t u32;
typedef volatile u32 r32;

#if 1
struct device {
    bitfield<r32, 12, 17> tcc;
};
#else
struct device {
    r32 : 12;
    r32 tcc : 6;
};
#endif

void test_device() {
    volatile device dev;
    u32 tcc = rand();
    
    r32 tcc2;
    
    //dev.tcc = tcc;
    //dev.tcc += tcc;
    //dev.tcc -= tcc;
    //dev.tcc *= tcc;
    //dev.tcc /= tcc;
    //dev.tcc %= tcc;
    //dev.tcc &= tcc;
    //dev.tcc |= tcc;
    //dev.tcc ^= tcc;
    //dev.tcc <<= tcc;
    //dev.tcc >>= tcc;
    //tcc2 = ++dev.tcc;
    //tcc2 = dev.tcc++;
    //tcc2 = --dev.tcc;
    tcc2 = dev.tcc--;
}
