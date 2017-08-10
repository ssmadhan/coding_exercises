#!/Users/smadhan/.rvm/rubies/jruby-9.0.5.0/bin/ruby

def is_match(s, p)
  i = 0
  j = 0
  n = s.length
  m = p.length
  if n == 1 && m == 1
    return true if p == '*'
    return true if s == p
    return false
  end
  if p[0] == '.'
    if j+2 < m
      return true if is_match(s, p[j+2..m-1])
      return false
    else
      return true
    end
  elsif p[0] == '*'
    return true if j+1 < m
    return true if is_match(s,p[j+1..m-1])
    return false
  elsif s[0] == p[0]
    if i+1 < n && j+1 < m
      return true if is_match(s[i+1..n-1], p[j+1..m-1])
      return false
    elsif j+1 < m
      return true if p == '*' || p == '.*'
      return false
    elsif i+1 < n
      return false
    end
  elsif s[0] != p[0]
    return false if p[1] != '*'
    if j+2 < m
      return true if is_match(s, p[j+2..m-1])
      return false
    else
      return true
    end
  end
end

ret = is_match('aa', 'a*')
if ret == true
  puts("true")
elsif ret == false
  puts("false")
else
  puts("null")
end