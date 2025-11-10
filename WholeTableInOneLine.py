# -*- coding: utf-8 -*-
"""
Created on Sat Nov  8 18:10:04 2025

@author: Andrey
"""

def fix_commas(filename, fileout):
    """
    Читает файл и заменяет ',\\n' на ', '
    """
    try:
        with open(filename, 'r', encoding='utf-8') as file:
            content = file.read()
        
        # Заменяем запятую + перевод строки на просто запятую
        fixed_content = content.replace(', \n', ', ')
        
        # Записываем обратно в файл
        with open(fileout, 'w', encoding='utf-8') as file:
            file.write(fixed_content)
        
        print(f"Файл '{filename}' успешно обработан!")
        
    except FileNotFoundError:
        print(f"Ошибка: Файл '{filename}' не найден!")
    except Exception as e:
        print(f"Произошла ошибка: {e}")

# Использование
list_orders = [6,8,12,16,18,20]
for order in list_orders:
    file_in = 'group_'+ str(order)+'_out.txt'
    file_out = 'group_'+ str(order)+'_output.txt'
    fix_commas(file_in, file_out)
   
