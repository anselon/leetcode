# @param {Integer} a
# @param {Integer} b
# @param {Integer} c
# @param {Integer} d
# @param {Integer} e
# @param {Integer} f
# @param {Integer} g
# @param {Integer} h
# @return {Integer}
def compute_area(a, b, c, d, e, f, g, h)

    
    area1 = (c-a).abs*(d-b).abs
    area2 = (g-e).abs*(h-f).abs
    
    overlap = 0

    if area1 != 0 and area2!=0
    	

        width = [([c,g].min  - [a,e].max),0].max
        height = [([d,h].min - [f,b].max),0].max

        overlap =  width*height


    end
    

    return (area1 + area2 - overlap)
    
end