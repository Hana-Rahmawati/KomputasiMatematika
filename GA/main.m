clc
clear
% GEN
target = 'HANA_RAHMA'
len = length(target);
genes = create_genes(len);
% FITNESS
fitness = calculate_fitness(genes,len);
% POPULASI
population_size = 10;
population = create_population(target,population_size)
%SELECTION
[parent1,parent2] = selection(population)
%CROSSOVER
[child1,child2] = crossover(parent1,parent2)
%MUTATION
mutation_rate = 0.5;
mutant1 = mutation(child1,mutation_rate)
mutant2 = mutation(child2,mutation_rate)

%REGENERASI
children = [mutant1 mutant2];
population = regeneration(children,population)
