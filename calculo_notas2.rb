def data()
    ori_data = open('./notas.data').readlines
    l = ori_data.count
    array = []
    l.times do |i|
        array.push(ori_data[i])
    end

    return array
end

array = data()
array_final = []

def nota_mas_alta(x)
    y = []
    for i in 1..(x.length)
        y.push(x[i].to_i)
    end
    return y.max
end

(array.length).times do |i|
    array_final.push(nota_mas_alta(array[i]))
end 

puts array_final