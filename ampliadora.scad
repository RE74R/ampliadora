// It is licensed under the Creative Commons - GNU GPL license.
// © 2022 by Ricardo Espinosa

xCaja=93;
yCaja=85;// v1=89.7;
zCaja=13;
xPest=xCaja+10;
yPest=yCaja+8;
zPest=zCaja+2;
xPasante=58;
yPasante=60;
zPasante=zCaja+2;
espesor=2.5;

difference(){

cube([xCaja,yCaja, zCaja]);

translate([11.5,yCaja/2-yPasante/2,-1])
cube([xPasante,yPasante, zPasante]);

translate([espesor,espesor,espesor])
cube([75.75,yCaja-espesor*2,zCaja ]);
   
    translate([80,yCaja/2,12.5])
    sphere(10);

}
CubePoints2 = [
  [ xCaja,  0,  0 ],  //0
  [ xPest+2,  0,  0 ],  //1
  [ xPest+2,  yPest,  0 ],  //2
  [ xCaja,  yPest,  0 ],  //3
  [ xCaja,  0,  zPest ],  //4
  [ xPest,  0,  zPest ],  //5
  [ xPest,  yPest,  zPest ],  //6
  [ xCaja,  yPest,  zPest ]]; //7
 
CubeFaces2 = [
  [0,1,2,3],  // bottom
  [4,5,1,0],  // front
  [7,6,5,4],  // top
  [5,6,2,1],  // right
  [6,7,3,2],  // back
  [7,4,0,3]]; // left
  translate([0,-4,0])
polyhedron( CubePoints2, CubeFaces2 );
