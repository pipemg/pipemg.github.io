# El test binomial se utiliza para ver si una variable con dos estados (como la cara y cruz de una moneda) se ajusta a una probabilidad determinada.

# Test binomial exacto
 
# Al lanzar una moneda 20 veces se obtienen 14 caras y 6 cruces
# ¿Se ajusta a una probalidad del 50%?
 
print(binom.test(14,20))

#Como p-value > 0.05 debemos concluir que entra dentro de lo posible obtener este resultado

# Al lanzar un dado 30 veces se obtienen 12 veces el 2
# ¿Se ajusta a una probabilidad de 1/6?

print(binom.test(12,30,p=1/6))


# Como p-value < 0.05 el resultado obtenido no se ajusta a lo esperado en un dado.
