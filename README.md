проигнорированы в будущем благодаря добавленному .gitignore будут:

1- **/.terraform/ -- скрытые папки ".terraform" со всем содержимым;

2- *.tfstate - файлы с расширением "tfstate";

3- .tfstate. - все файлы, содержащие в наименовании строку ".tfstate.";

4- *.tfvars - файлы с расширением "tfvars";

5- override.tf - файл "override.tf";

6- override.tf.json -  файл "override.tf.json";

7-*_ override.tf - все файлы, содержащие строку "_override.tf";

8- *_ override.tf.json - все файлы, содержащие в наименовании строку "_override.tf.json";

9- .terraformrc - скрытый файл ".terraformrc";

10- terraform.rc - файл "terraform.rc".

