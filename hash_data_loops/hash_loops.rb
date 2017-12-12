users = {
        dave:{
            age: 24,
            sex: 'm'
        },
        jessica:{
            age: 31,
            sex: 'f'
        },
        goeff:{
            age: 29,
            sex: 'm'
        }
    }

users.each_value do |value|
  puts value
end

users.each do |key,value|
  puts value
end
