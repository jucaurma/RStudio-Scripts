id <- c(1:10)

name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, name, job_title)

print(employee)

# Separa la columna name en first_name y last_name a partir del primer espacio en blanco
# y lo asignamos al marco employee2
employee2 <- separate(employee, name, into = c('first_name', 'last_name'), sep=' ')
print(employee2)

# Hace el opuesto a separate y une las columnas first_name y last_name en la columna name
unite(employee2, 'name', first_name, last_name, sep = ' ')


library(palmerpenguins)
view(penguins)

# Usamos mutate para añadir una columna que sea el cálculo de la masa en kg
penguins2 <- penguins %>% mutate(body_mass_kg=body_mass_g/1000)
view(penguins2)

# Hace varios cálculos, separados por una "," en la misma orden
penguins3 <- penguins %>% mutate(body_mass_kg=body_mass_g/1000, flipper_length_m=flipper_length_mm/1000)
view(penguins3)

penguins %>% arrange(bill_length_mm)
