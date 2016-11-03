# -*- encoding : utf-8 -*-
class CartesianProduct
    include Enumerable
    
    def initialize(array1, array2)
    	@values = array1.product array2
    end
    
    def each
    	@values.each{|elt| yield elt}
    end
    	
end
