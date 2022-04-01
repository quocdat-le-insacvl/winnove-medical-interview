# winnove-medical-interview
I'm trying to solve an coding interview of Wimnove Medical Company

# Recap
Voici un petit résumé pour présenter ce que j'ai fait :
1. J'ai essayé de voir plusieurs libraries C++ qui aide à traiter le fichier .stl 
2. Au final j'ai choisi VTK. Mais en effect, ce n'était pas un bon choix car il s'agit une framework qui serve à visualiser mais il ne supporte pas tellement de faire la géométrie.
3. Les fonctions sont plutôt simple à utiliser (abstract), j'arrive quand même à les adapter en écrivant une solution dans le dossier vtk_effort. 
4. Dans le fichier vtk_effort/main.cpp, j'ai lu en mémoire le .stl, puis créer le mapper, actor, et visualiser. 
5. Il y'a aussi une fonction qui permet de tourner l'action (la géométrie), avec le paramètre X.
6. Le problème c'est qu'on ne peut pas exporter action en fichier stl. C'est plutôt logique, car on utilise action + render + windows pour visualiser le géométrie. Si on veut vraiment le transformer en fichier, on devrait export avec l'environement en plus (la scène), en fichier .OBJ ou .GLTF.
![image](https://user-images.githubusercontent.com/71183203/161159699-d1f32b4b-6cfc-442e-99e5-ca7ddd996465.png)
7. Pour la suite, j'ai tenté avec CGAL, la plupart du temps j'essaie de lire la documentation.
8. Je remarque qu'on peut simplement faire un multiplication les coordonnées, avec la matrix de transformation. 
https://doc.cgal.org/latest/Kernel_23/classCGAL_1_1Aff__transformation__3.html
9. Je pense que j'ai bien paramétré mais le résultat n'est pas toujours le bon. Et je suis bloqué par ici. 

