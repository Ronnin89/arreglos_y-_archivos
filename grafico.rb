array = [5, 3, 2, 5, 10]

def char(x)
    graphic = ''
    caracter ='**'
    l = '--'
    line = ''
    numb = ''
    (x.length).times do |i|
        graphic += "|#{caracter * x[i].to_i}\n"
    end
    (x.max.to_i).times do |i|
       line =">#{l * (i+1)}\n"
       numb += " #{i+1}"
    end
    graphic += line
    graphic += numb
    return graphic
end

 puts char(array)