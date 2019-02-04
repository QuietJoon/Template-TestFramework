Issue with HUnit
====

# Test requires Show class when check equality of value

When I try to check equality against `a::Something` and `b::Something` by `assertEqual`, `@?=`, or `~=?`, it requires `Show` class to `Something`.
This can be avoidable by `assertBool "" (a == b)`.