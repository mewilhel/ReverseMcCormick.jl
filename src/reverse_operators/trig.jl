"""
$(FUNCTIONNAME)

Reverse McCormick operator for `sin`.
"""
function sin_rev(a::MC{N,T}, b::MC{N,T}) where {N, T<:RelaxTag}
    aintv, bintv = sin_rev(a.Intv, b.Intv)
    a = a ∩ MC{N,T}(aintv)
    b = b ∩ MC{N,T}(bintv)
    a, b
end

"""
$(FUNCTIONNAME)

Reverse McCormick operator for `cos`.
"""
function cos_rev(a::MC{N,T}, b::MC{N,T}) where {N, T<:RelaxTag}
    aintv, bintv = cos_rev(a.Intv, b.Intv)
    a = a ∩ MC{N,T}(aintv)
    b = b ∩ MC{N,T}(bintv)
    a, b
end

"""
$(FUNCTIONNAME)

Reverse McCormick operator for `tan`.
"""
function tan_rev(a::MC{N,T}, b::MC{N,T}) where {N, T<:RelaxTag}
    aintv, bintv = tan_rev(a.Intv, b.Intv)
    a = a ∩ MC{N,T}(aintv)
    b = b ∩ MC{N,T}(bintv)
    a, b
end


# trivial definitions
for f in (:sec_rev, :csc_rev, :cot_rev, :secd_rev, :cscd_rev, :cotd_rev)
    @eval function ($f)(y::MC, x::MC)
        isempty(y) && x = empty(x)
        y, x
    end
end
