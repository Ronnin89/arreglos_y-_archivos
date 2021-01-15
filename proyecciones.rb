def data()
    ori_data = open('./ventas_base.db').read
    array = ori_data.split(",")

    return array
end

array_full = data()

def first_semester(array)
    x = 0
    for i in 0..((array.length)/2) do
        x += array[i].to_i
    end
    x = ((x/(array.length/2))*1.1).round(2)
    return x
end

def second_semester(array)
    x = 0
    for i in ((array.length)/2)..(array.length) do
        x += array[i].to_i
    end
    x = ((x/(array.length/2))*1.2).round(2)
    return x
end

data_result = "#{first_semester(array_full)}\n#{second_semester(array_full)}"

File.write('./resultados.data', data_result)