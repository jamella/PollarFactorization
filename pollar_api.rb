#!/usr/bin/env ruby
#email : w.zongyu@gmail.com

require 'openssl'

class PollarExp
  def initialize(n, b=2)
    @N = n.to_i #number to be factorized
    @B = b.to_i #bound #step1
    @K = findk #step2
    @A = finda #step3
  end

  def exploit
    until !comgcd.nil? do
      @B += 1
      @K = findk
      @A = finda
    end
    p, q = comgcd, @N/comgcd
    p, q = q, p  if p < q
    return p, q
  end

private
  #step 2
  def findk 
    k = 1
    (2..@B).each do |q|
      k *= (q ** (Math.log(@B, q).floor))
    end
    return k
  end

  #step 3
  def finda 
    a = 2
    return a
  end

  #step 4
  def comgcd
    g = ((@A).to_bn.mod_exp(@K, @N).to_i-1).gcd(@N)
    return (g>1 && g<@N) ? g : nil
  end
end

