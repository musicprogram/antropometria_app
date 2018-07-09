class Measurement < ApplicationRecord
    validates :bust, :inclusion => 1..200 
    validates :waist, :inclusion => 1..200
    validates :hip, :inclusion => 1..200
    # def busto
    #     # 98 102.9  107.8 112.7 117.6
    #     # 98 93.1 88.2 83.3 78.4 73.5
    #     if self.bust >= 98 && self.bust < 102.9
    #             resultado = 0
    #         elsif self.bust > 102.9 && self.bust < 107.8
    #             resultado =  1
    #         elsif self.bust > 107.8 && self.bust < 112.7
    #             resultado = 2
    #         elsif self.bust > 112.7 && self.bust < 117.6
    #             resultado = 3 # positivos
    #         elsif self.bust > 117.6
    #             resultado = 4 # positivos    
    #         elsif self.bust < 98 && self.bust > 93.1
    #             resultado = 0 # negativos 
    #         elsif self.bust < 93.1 && self.bust > 88.2
    #             resultado = -1
                
    #         elsif self.bust < 88.2 && self.bust > 83.3
    #             resultado = -2
                
    #         elsif self.bust < 83.3 && self.bust > 78.4
    #             resultado = -3
                
    #         elsif self.bust < 78.4 && self.bust > 73.5 || self.bust < 73.5
    #             resultado = -4   
    #     end
    # end
    
    # def cintura
    #     # 80.73 84.77 88.81 92.85 96.89 100.93
    #     # 76.69 72.65 68.61 64.57 60.53 56.49
    #     if self.waist >= 80.73 && self.waist < 84.77
    #             resultado = 0
    #         elsif self.waist > 84.77 && self.waist < 88.81
    #             resultado =  1
    #         elsif self.waist > 88.81 && self.waist < 92.85
    #             resultado = 2
    #         elsif self.waist > 92.85 && self.waist < 96.89
    #             resultado = 3 
    #         elsif self.waist > 96.89
    #             resultado = 4 # positivos    
    #         elsif self.waist < 80.73 && self.waist > 76.69
    #             resultado = 0 # negativos 
    #         elsif self.waist < 76.69 && self.waist > 72.65
    #             resultado = -1
                
    #         elsif self.waist < 72.65 && self.waist > 68.61
    #             resultado = -2
                
    #         elsif self.waist < 68.61 && self.waist > 64.57
    #             resultado = -3
                
    #         elsif self.waist < 64.57 && self.waist > 60.53 || self.waist < 60.53
    #             resultado = -4   
    #     end
    # end
    
    
    # def cadera
    #     # 104.99 110.24 115.49 120.74 125.99 131.24
    #     # 104.99 99.74 94.49 89.24 83.99 78.74 
    #     if self.hip >= 104.99 && self.hip < 110.24
    #             resultado = 0
    #         elsif self.hip > 110.24 && self.hip < 115.49
    #             resultado =  1
    #         elsif self.hip > 115.49 && self.hip < 120.74
    #             resultado = 2
    #         elsif self.hip > 120.74 && self.hip < 125.99
    #             resultado = 3 
    #         elsif self.hip > 125.99
    #             resultado = 4 # positivos    
    #         elsif self.hip < 104.99 && self.hip > 99.74
    #             resultado = 0 # negativos 
    #         elsif self.hip < 99.74 && self.hip > 94.49
    #             resultado = -1
                
    #         elsif self.hip < 94.49 && self.hip > 89.24
    #             resultado = -2
                
    #         elsif self.hip < 89.24 && self.hip > 83.99
    #             resultado = -3
                
    #         elsif self.hip < 83.99 && self.hip > 78.74 || self.hip < 78.74
    #             resultado = -4   
    #     end
    # end
    
    
    
    
    

    
    
    def busto_medida
      busto = ((self.bust - 98) / 4.90).round(2)
    end
 
    def cintura_medida
      ((self.waist - 80.73) /4.04).round(2)
    end

    def cadera_medida
      ((self.hip - 104.99) / 5.25).round(2)
    end
    
    def sum_promedio
       (busto_medida() + cintura_medida() + cadera_medida()) / 3
    end
    
    def retornando_busto
        busto_medida() - sum_promedio()
    end
    
    def retornando_cintura
        cintura_medida() - sum_promedio()
    end
    
    def retornando_cadera
        cadera_medida() - sum_promedio()
    end
    

    # obtener los flotantes de un numero y sumar el numero entero positivo o negativo
    # def decimal_sum(mi_variable)
    #   if mi_variable > 0
    #     parts = mi_variable.to_s.split(".")
    #     decimal_rest = parts[1].to_i
        
    #     if decimal_rest > 1 && decimal_rest <= 99
    #       mi_variable.to_i + 1
    #     else  
    #       mi_variable.to_i
    #     end
    #   elsif
    #     parts = mi_variable.to_s.split(".")
    #     decimal_rest = parts[1].to_i
        
    #     if decimal_rest > 1 && decimal_rest <= 99
    #       positivo = mi_variable.to_i * -1
    #       (positivo + 1 ) * -1
    #     else  
    #       mi_variable.to_i
    #     end
    #   end
    # end
    
    
 
    
    
    
    
    
    
    
    
    
   
    
   
    
end


