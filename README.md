# CiclistasIOS
Proyecto Swift

Esta aplicación permite la gestión y visualización de eventos, ciclistas y equipos.
La persistencia de los datos se realiza mediante el pod de Realm Swift.
Se ha implementado un login de Google, mediante un pod, que al iniciar la aplicación que permite guardar al usuario logueado.
La aplicación consta de una tabbar con tres vistas, cada una para visualizar los datos de cada clase del modelo.
En la vista de Eventos podemos seleccionar uno y nos despliega otra vista que nos muestra más información sobre el mismo.
En la vista de Ciclistas podemos dar de alta, borrar y mostrar la información completa de un ciclista.
En la vista de Equipos se muestra un lista de equipos.
Para la visualización de la información se ha implementado la clase UITableView.
A la hora de borrar ciclistas se ha usado el protocolo delegado ya que el botón de borrado estaba situado dentro de una celda de la tabla.
Se ha usado el patrón de diseño Model-View-Controller.
En Model encontramos las clases necesarias para el funcionamiento de la aplicación, en View encontramos todos los archivos .xib que se utilizan y en Controller encontramos los archivos .swift que contienen la lógica de la aplicación.
