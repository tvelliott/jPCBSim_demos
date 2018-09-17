function CSX = pcb(CSX)
% matlab script created by hyp2mat
% create minimal mesh
mesh = {};
mesh.x = [0.00711 0.04338];
mesh.y = [0.00254 0.03429];
mesh.z = [0 0.00151638];
% add mesh
CSX = DefineRectGrid(CSX, 1, mesh);
CSX = AddHyperLynxDielectric(CSX, 'Dielectric_DL01', 4.8, 0.02);
% board outline, layer DL01
CSX = AddBox(CSX, 'Dielectric_DL01', 100, [ 0.00711, 0.00254, 0], [ 0.04338, 0.03429, 0.00151638]  );
% copper
% create layer Top material
CSX = AddHyperLynxMetal2D(CSX, 'Top_copper', 0, 1.778e-05);
% create layer Top cutout
CSX = AddMaterial( CSX, 'Top_cutout');
CSX = SetMaterialProperty( CSX, 'Top_cutout', 'Epsilon', 1, 'Mue', 1);
% copper
pgon = [];
pgon(:, end+1) = [0.03021;0.031];
pgon(:, end+1) = [0.03021;0.03199];
pgon(:, end+1) = [0.02922;0.03199];
pgon(:, end+1) = [0.02922;0.0318];
pgon(:, end+1) = [0.029;0.0318];
pgon(:, end+1) = [0.0287;0.03192];
pgon(:, end+1) = [0.0284;0.0318];
pgon(:, end+1) = [0.02828;0.0315];
pgon(:, end+1) = [0.0284;0.03119];
pgon(:, end+1) = [0.0287;0.03107];
pgon(:, end+1) = [0.029;0.03119];
pgon(:, end+1) = [0.02922;0.03119];
pgon(:, end+1) = [0.02922;0.031];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.03275;0.031];
pgon(:, end+1) = [0.03275;0.03119];
pgon(:, end+1) = [0.03297;0.03119];
pgon(:, end+1) = [0.03327;0.03107];
pgon(:, end+1) = [0.03358;0.03119];
pgon(:, end+1) = [0.0337;0.0315];
pgon(:, end+1) = [0.03358;0.0318];
pgon(:, end+1) = [0.03327;0.03192];
pgon(:, end+1) = [0.03297;0.0318];
pgon(:, end+1) = [0.03275;0.0318];
pgon(:, end+1) = [0.03275;0.03199];
pgon(:, end+1) = [0.03176;0.03199];
pgon(:, end+1) = [0.03176;0.031];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.032;0.02703];
pgon(:, end+1) = [0.0315;0.02756];
pgon(:, end+1) = [0.0315;0.03073];
pgon(:, end+1) = [0.03048;0.03073];
pgon(:, end+1) = [0.03048;0.02756];
pgon(:, end+1) = [0.02997;0.02703];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.03275;0.02846];
pgon(:, end+1) = [0.03275;0.02865];
pgon(:, end+1) = [0.03297;0.02865];
pgon(:, end+1) = [0.03327;0.02853];
pgon(:, end+1) = [0.03358;0.02865];
pgon(:, end+1) = [0.0337;0.02896];
pgon(:, end+1) = [0.03358;0.02926];
pgon(:, end+1) = [0.03327;0.02938];
pgon(:, end+1) = [0.03297;0.02926];
pgon(:, end+1) = [0.03275;0.02926];
pgon(:, end+1) = [0.03275;0.02945];
pgon(:, end+1) = [0.03176;0.02945];
pgon(:, end+1) = [0.03176;0.02846];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.03021;0.02846];
pgon(:, end+1) = [0.03021;0.02945];
pgon(:, end+1) = [0.02922;0.02945];
pgon(:, end+1) = [0.02922;0.02926];
pgon(:, end+1) = [0.029;0.02926];
pgon(:, end+1) = [0.0287;0.02938];
pgon(:, end+1) = [0.0284;0.02926];
pgon(:, end+1) = [0.02828;0.02896];
pgon(:, end+1) = [0.0284;0.02865];
pgon(:, end+1) = [0.0287;0.02853];
pgon(:, end+1) = [0.029;0.02865];
pgon(:, end+1) = [0.02922;0.02865];
pgon(:, end+1) = [0.02922;0.02846];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.0113;0.02083];
pgon(:, end+1) = [0.0113;0.02616];
pgon(:, end+1) = [0.01981;0.02616];
pgon(:, end+1) = [0.01981;0.02489];
pgon(:, end+1) = [0.01257;0.02489];
pgon(:, end+1) = [0.01257;0.02083];
pgon(:, end+1) = [0.02337;0.02083];
pgon(:, end+1) = [0.02337;0.02311];
pgon(:, end+1) = [0.04041;0.02311];
pgon(:, end+1) = [0.04041;0.02515];
pgon(:, end+1) = [0.032;0.02515];
pgon(:, end+1) = [0.032;0.02703];
pgon(:, end+1) = [0.02997;0.02703];
pgon(:, end+1) = [0.02997;0.02515];
pgon(:, end+1) = [0.02337;0.02515];
pgon(:, end+1) = [0.02337;0.02718];
pgon(:, end+1) = [0.00927;0.02718];
pgon(:, end+1) = [0.00927;0.02083];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.04321;0.02587];
pgon(:, end+1) = [0.04322;0.02588];
pgon(:, end+1) = [0.04322;0.02598];
pgon(:, end+1) = [0.04321;0.02599];
pgon(:, end+1) = [0.04321;0.026];
pgon(:, end+1) = [0.04265;0.026];
pgon(:, end+1) = [0.04263;0.02598];
pgon(:, end+1) = [0.04263;0.02588];
pgon(:, end+1) = [0.04264;0.02587];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% cutout
pgon = [];
pgon(:, end+1) = [0.04266;0.0259];
pgon(:, end+1) = [0.04266;0.02597];
pgon(:, end+1) = [0.04319;0.02597];
pgon(:, end+1) = [0.04319;0.0259];
CSX = AddPolygon(CSX, 'Top_cutout', 201, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.04321;0.02551];
pgon(:, end+1) = [0.04321;0.02552];
pgon(:, end+1) = [0.04322;0.02553];
pgon(:, end+1) = [0.04322;0.02563];
pgon(:, end+1) = [0.04321;0.02564];
pgon(:, end+1) = [0.04264;0.02564];
pgon(:, end+1) = [0.04263;0.02563];
pgon(:, end+1) = [0.04263;0.02553];
pgon(:, end+1) = [0.04265;0.02551];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% cutout
pgon = [];
pgon(:, end+1) = [0.04266;0.02554];
pgon(:, end+1) = [0.04266;0.02562];
pgon(:, end+1) = [0.04319;0.02562];
pgon(:, end+1) = [0.04319;0.02554];
CSX = AddPolygon(CSX, 'Top_cutout', 201, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.04321;0.02518];
pgon(:, end+1) = [0.04321;0.02519];
pgon(:, end+1) = [0.04322;0.0252];
pgon(:, end+1) = [0.04322;0.0253];
pgon(:, end+1) = [0.04321;0.02531];
pgon(:, end+1) = [0.04264;0.02531];
pgon(:, end+1) = [0.04263;0.0253];
pgon(:, end+1) = [0.04263;0.0252];
pgon(:, end+1) = [0.04265;0.02518];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% cutout
pgon = [];
pgon(:, end+1) = [0.04266;0.02521];
pgon(:, end+1) = [0.04266;0.02529];
pgon(:, end+1) = [0.04319;0.02529];
pgon(:, end+1) = [0.04319;0.02521];
CSX = AddPolygon(CSX, 'Top_cutout', 201, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.04321;0.02285];
pgon(:, end+1) = [0.04322;0.02286];
pgon(:, end+1) = [0.04322;0.02296];
pgon(:, end+1) = [0.04321;0.02297];
pgon(:, end+1) = [0.04264;0.02297];
pgon(:, end+1) = [0.04263;0.02296];
pgon(:, end+1) = [0.04263;0.02286];
pgon(:, end+1) = [0.04264;0.02285];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% cutout
pgon = [];
pgon(:, end+1) = [0.04266;0.02287];
pgon(:, end+1) = [0.04266;0.02295];
pgon(:, end+1) = [0.04319;0.02295];
pgon(:, end+1) = [0.04319;0.02287];
CSX = AddPolygon(CSX, 'Top_cutout', 201, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.04321;0.02252];
pgon(:, end+1) = [0.04322;0.02253];
pgon(:, end+1) = [0.04322;0.02263];
pgon(:, end+1) = [0.04321;0.02264];
pgon(:, end+1) = [0.04264;0.02264];
pgon(:, end+1) = [0.04263;0.02263];
pgon(:, end+1) = [0.04263;0.02253];
pgon(:, end+1) = [0.04264;0.02252];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% cutout
pgon = [];
pgon(:, end+1) = [0.04266;0.02254];
pgon(:, end+1) = [0.04266;0.02262];
pgon(:, end+1) = [0.04319;0.02262];
pgon(:, end+1) = [0.04319;0.02254];
CSX = AddPolygon(CSX, 'Top_cutout', 201, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.04321;0.02219];
pgon(:, end+1) = [0.04322;0.0222];
pgon(:, end+1) = [0.04322;0.0223];
pgon(:, end+1) = [0.04321;0.02231];
pgon(:, end+1) = [0.04264;0.02231];
pgon(:, end+1) = [0.04263;0.0223];
pgon(:, end+1) = [0.04263;0.0222];
pgon(:, end+1) = [0.04264;0.02219];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% cutout
pgon = [];
pgon(:, end+1) = [0.04266;0.02221];
pgon(:, end+1) = [0.04266;0.02229];
pgon(:, end+1) = [0.04319;0.02229];
pgon(:, end+1) = [0.04319;0.02221];
CSX = AddPolygon(CSX, 'Top_cutout', 201, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.03914;0.01448];
pgon(:, end+1) = [0.03914;0.0221];
pgon(:, end+1) = [0.02565;0.0221];
pgon(:, end+1) = [0.02565;0.01956];
pgon(:, end+1) = [0.00927;0.01956];
pgon(:, end+1) = [0.00927;0.01676];
pgon(:, end+1) = [0.02565;0.01676];
pgon(:, end+1) = [0.02565;0.01448];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.04321;0.02046];
pgon(:, end+1) = [0.04322;0.02047];
pgon(:, end+1) = [0.04322;0.02057];
pgon(:, end+1) = [0.04321;0.02058];
pgon(:, end+1) = [0.04321;0.02059];
pgon(:, end+1) = [0.04265;0.02059];
pgon(:, end+1) = [0.04263;0.02057];
pgon(:, end+1) = [0.04263;0.02047];
pgon(:, end+1) = [0.04264;0.02046];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% cutout
pgon = [];
pgon(:, end+1) = [0.04266;0.02049];
pgon(:, end+1) = [0.04266;0.02056];
pgon(:, end+1) = [0.04319;0.02056];
pgon(:, end+1) = [0.04319;0.02049];
CSX = AddPolygon(CSX, 'Top_cutout', 201, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.04321;0.0201];
pgon(:, end+1) = [0.04321;0.02011];
pgon(:, end+1) = [0.04322;0.02012];
pgon(:, end+1) = [0.04322;0.02022];
pgon(:, end+1) = [0.04321;0.02023];
pgon(:, end+1) = [0.04264;0.02023];
pgon(:, end+1) = [0.04263;0.02022];
pgon(:, end+1) = [0.04263;0.02012];
pgon(:, end+1) = [0.04265;0.0201];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% cutout
pgon = [];
pgon(:, end+1) = [0.04266;0.02013];
pgon(:, end+1) = [0.04266;0.02021];
pgon(:, end+1) = [0.04319;0.02021];
pgon(:, end+1) = [0.04319;0.02013];
CSX = AddPolygon(CSX, 'Top_cutout', 201, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.04321;0.01975];
pgon(:, end+1) = [0.04322;0.01976];
pgon(:, end+1) = [0.04322;0.01986];
pgon(:, end+1) = [0.04321;0.01987];
pgon(:, end+1) = [0.04321;0.01988];
pgon(:, end+1) = [0.04265;0.01988];
pgon(:, end+1) = [0.04263;0.01986];
pgon(:, end+1) = [0.04263;0.01976];
pgon(:, end+1) = [0.04264;0.01975];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% cutout
pgon = [];
pgon(:, end+1) = [0.04266;0.01977];
pgon(:, end+1) = [0.04266;0.01985];
pgon(:, end+1) = [0.04319;0.01985];
pgon(:, end+1) = [0.04319;0.01977];
CSX = AddPolygon(CSX, 'Top_cutout', 201, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.04321;0.01627];
pgon(:, end+1) = [0.04322;0.01628];
pgon(:, end+1) = [0.04322;0.01638];
pgon(:, end+1) = [0.04321;0.01639];
pgon(:, end+1) = [0.04321;0.0164];
pgon(:, end+1) = [0.04265;0.0164];
pgon(:, end+1) = [0.04263;0.01638];
pgon(:, end+1) = [0.04263;0.01628];
pgon(:, end+1) = [0.04264;0.01627];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% cutout
pgon = [];
pgon(:, end+1) = [0.04266;0.01629];
pgon(:, end+1) = [0.04266;0.01637];
pgon(:, end+1) = [0.04319;0.01637];
pgon(:, end+1) = [0.04319;0.01629];
CSX = AddPolygon(CSX, 'Top_cutout', 201, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.04321;0.01599];
pgon(:, end+1) = [0.04322;0.016];
pgon(:, end+1) = [0.04322;0.0161];
pgon(:, end+1) = [0.04321;0.01611];
pgon(:, end+1) = [0.04321;0.01612];
pgon(:, end+1) = [0.04265;0.01612];
pgon(:, end+1) = [0.04263;0.0161];
pgon(:, end+1) = [0.04263;0.016];
pgon(:, end+1) = [0.04264;0.01599];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% cutout
pgon = [];
pgon(:, end+1) = [0.04266;0.01601];
pgon(:, end+1) = [0.04266;0.01609];
pgon(:, end+1) = [0.04319;0.01609];
pgon(:, end+1) = [0.04319;0.01601];
CSX = AddPolygon(CSX, 'Top_cutout', 201, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.04321;0.01568];
pgon(:, end+1) = [0.04321;0.01569];
pgon(:, end+1) = [0.04322;0.0157];
pgon(:, end+1) = [0.04322;0.0158];
pgon(:, end+1) = [0.04321;0.01581];
pgon(:, end+1) = [0.04264;0.01581];
pgon(:, end+1) = [0.04263;0.0158];
pgon(:, end+1) = [0.04263;0.0157];
pgon(:, end+1) = [0.04265;0.01568];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% cutout
pgon = [];
pgon(:, end+1) = [0.04266;0.01571];
pgon(:, end+1) = [0.04266;0.01579];
pgon(:, end+1) = [0.04319;0.01579];
pgon(:, end+1) = [0.04319;0.01571];
CSX = AddPolygon(CSX, 'Top_cutout', 201, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.02337;0.0094];
pgon(:, end+1) = [0.02337;0.01143];
pgon(:, end+1) = [0.02997;0.01143];
pgon(:, end+1) = [0.02997;0.00965];
pgon(:, end+1) = [0.032;0.00965];
pgon(:, end+1) = [0.032;0.01143];
pgon(:, end+1) = [0.04041;0.01143];
pgon(:, end+1) = [0.04041;0.01346];
pgon(:, end+1) = [0.02337;0.01346];
pgon(:, end+1) = [0.02337;0.01549];
pgon(:, end+1) = [0.01257;0.01549];
pgon(:, end+1) = [0.01257;0.01168];
pgon(:, end+1) = [0.02159;0.01168];
pgon(:, end+1) = [0.02159;0.01041];
pgon(:, end+1) = [0.0113;0.01041];
pgon(:, end+1) = [0.0113;0.01549];
pgon(:, end+1) = [0.00927;0.01549];
pgon(:, end+1) = [0.00927;0.0094];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.04321;0.01429];
pgon(:, end+1) = [0.04322;0.0143];
pgon(:, end+1) = [0.04322;0.0144];
pgon(:, end+1) = [0.04321;0.01441];
pgon(:, end+1) = [0.04264;0.01441];
pgon(:, end+1) = [0.04263;0.0144];
pgon(:, end+1) = [0.04263;0.0143];
pgon(:, end+1) = [0.04264;0.01429];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% cutout
pgon = [];
pgon(:, end+1) = [0.04266;0.01431];
pgon(:, end+1) = [0.04266;0.01439];
pgon(:, end+1) = [0.04319;0.01439];
pgon(:, end+1) = [0.04319;0.01431];
CSX = AddPolygon(CSX, 'Top_cutout', 201, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.04321;0.01396];
pgon(:, end+1) = [0.04322;0.01397];
pgon(:, end+1) = [0.04322;0.01407];
pgon(:, end+1) = [0.04321;0.01408];
pgon(:, end+1) = [0.04264;0.01408];
pgon(:, end+1) = [0.04263;0.01407];
pgon(:, end+1) = [0.04263;0.01397];
pgon(:, end+1) = [0.04264;0.01396];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% cutout
pgon = [];
pgon(:, end+1) = [0.04266;0.01398];
pgon(:, end+1) = [0.04266;0.01406];
pgon(:, end+1) = [0.04319;0.01406];
pgon(:, end+1) = [0.04319;0.01398];
CSX = AddPolygon(CSX, 'Top_cutout', 201, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.04321;0.01365];
pgon(:, end+1) = [0.04321;0.01366];
pgon(:, end+1) = [0.04322;0.01367];
pgon(:, end+1) = [0.04322;0.01377];
pgon(:, end+1) = [0.04321;0.01378];
pgon(:, end+1) = [0.04264;0.01378];
pgon(:, end+1) = [0.04263;0.01377];
pgon(:, end+1) = [0.04263;0.01367];
pgon(:, end+1) = [0.04265;0.01365];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% cutout
pgon = [];
pgon(:, end+1) = [0.04266;0.01368];
pgon(:, end+1) = [0.04266;0.01375];
pgon(:, end+1) = [0.04319;0.01375];
pgon(:, end+1) = [0.04319;0.01368];
CSX = AddPolygon(CSX, 'Top_cutout', 201, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.04321;0.01111];
pgon(:, end+1) = [0.04321;0.01112];
pgon(:, end+1) = [0.04322;0.01113];
pgon(:, end+1) = [0.04322;0.01123];
pgon(:, end+1) = [0.04321;0.01124];
pgon(:, end+1) = [0.04264;0.01124];
pgon(:, end+1) = [0.04263;0.01123];
pgon(:, end+1) = [0.04263;0.01113];
pgon(:, end+1) = [0.04265;0.01111];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% cutout
pgon = [];
pgon(:, end+1) = [0.04266;0.01114];
pgon(:, end+1) = [0.04266;0.01121];
pgon(:, end+1) = [0.04319;0.01121];
pgon(:, end+1) = [0.04319;0.01114];
CSX = AddPolygon(CSX, 'Top_cutout', 201, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.04321;0.01086];
pgon(:, end+1) = [0.04322;0.01087];
pgon(:, end+1) = [0.04322;0.01097];
pgon(:, end+1) = [0.04321;0.01098];
pgon(:, end+1) = [0.04321;0.01099];
pgon(:, end+1) = [0.04265;0.01099];
pgon(:, end+1) = [0.04263;0.01097];
pgon(:, end+1) = [0.04263;0.01087];
pgon(:, end+1) = [0.04264;0.01086];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% cutout
pgon = [];
pgon(:, end+1) = [0.04266;0.01088];
pgon(:, end+1) = [0.04266;0.01096];
pgon(:, end+1) = [0.04319;0.01096];
pgon(:, end+1) = [0.04319;0.01088];
CSX = AddPolygon(CSX, 'Top_cutout', 201, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.04321;0.0106];
pgon(:, end+1) = [0.04321;0.01061];
pgon(:, end+1) = [0.04322;0.01062];
pgon(:, end+1) = [0.04322;0.01072];
pgon(:, end+1) = [0.04321;0.01073];
pgon(:, end+1) = [0.04264;0.01073];
pgon(:, end+1) = [0.04263;0.01072];
pgon(:, end+1) = [0.04263;0.01062];
pgon(:, end+1) = [0.04265;0.0106];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% cutout
pgon = [];
pgon(:, end+1) = [0.04266;0.01063];
pgon(:, end+1) = [0.04266;0.01071];
pgon(:, end+1) = [0.04319;0.01071];
pgon(:, end+1) = [0.04319;0.01063];
CSX = AddPolygon(CSX, 'Top_cutout', 201, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.0315;0.00559];
pgon(:, end+1) = [0.0315;0.00914];
pgon(:, end+1) = [0.032;0.00965];
pgon(:, end+1) = [0.02997;0.00965];
pgon(:, end+1) = [0.03048;0.00912];
pgon(:, end+1) = [0.03048;0.00559];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.03021;0.00687];
pgon(:, end+1) = [0.03021;0.00786];
pgon(:, end+1) = [0.02922;0.00786];
pgon(:, end+1) = [0.02922;0.00767];
pgon(:, end+1) = [0.029;0.00767];
pgon(:, end+1) = [0.0287;0.00779];
pgon(:, end+1) = [0.0284;0.00767];
pgon(:, end+1) = [0.02828;0.00737];
pgon(:, end+1) = [0.0284;0.00706];
pgon(:, end+1) = [0.0287;0.00694];
pgon(:, end+1) = [0.029;0.00706];
pgon(:, end+1) = [0.02922;0.00706];
pgon(:, end+1) = [0.02922;0.00687];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.03275;0.00687];
pgon(:, end+1) = [0.03275;0.00706];
pgon(:, end+1) = [0.03297;0.00706];
pgon(:, end+1) = [0.03327;0.00694];
pgon(:, end+1) = [0.03358;0.00706];
pgon(:, end+1) = [0.0337;0.00737];
pgon(:, end+1) = [0.03358;0.00767];
pgon(:, end+1) = [0.03327;0.00779];
pgon(:, end+1) = [0.03297;0.00767];
pgon(:, end+1) = [0.03275;0.00767];
pgon(:, end+1) = [0.03275;0.00786];
pgon(:, end+1) = [0.03176;0.00786];
pgon(:, end+1) = [0.03176;0.00687];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.02489;0.00707];
pgon(:, end+1) = [0.0249;0.00708];
pgon(:, end+1) = [0.0249;0.0072];
pgon(:, end+1) = [0.02351;0.0072];
pgon(:, end+1) = [0.02351;0.00708];
pgon(:, end+1) = [0.02352;0.00707];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% cutout
pgon = [];
pgon(:, end+1) = [0.0245;0.0071];
pgon(:, end+1) = [0.0245;0.00718];
pgon(:, end+1) = [0.02488;0.00718];
pgon(:, end+1) = [0.02488;0.0071];
CSX = AddPolygon(CSX, 'Top_cutout', 201, 2, 0.00151638, pgon);
% cutout
pgon = [];
pgon(:, end+1) = [0.02409;0.0071];
pgon(:, end+1) = [0.02409;0.00718];
pgon(:, end+1) = [0.02432;0.00718];
pgon(:, end+1) = [0.02432;0.0071];
CSX = AddPolygon(CSX, 'Top_cutout', 201, 2, 0.00151638, pgon);
% cutout
pgon = [];
pgon(:, end+1) = [0.02353;0.0071];
pgon(:, end+1) = [0.02353;0.00718];
pgon(:, end+1) = [0.02391;0.00718];
pgon(:, end+1) = [0.02391;0.0071];
CSX = AddPolygon(CSX, 'Top_cutout', 201, 2, 0.00151638, pgon);
% cutout
pgon = [];
pgon(:, end+1) = [0.02394;0.0071];
pgon(:, end+1) = [0.02394;0.00718];
pgon(:, end+1) = [0.02407;0.00718];
pgon(:, end+1) = [0.02407;0.0071];
CSX = AddPolygon(CSX, 'Top_cutout', 201, 2, 0.00151638, pgon);
% cutout
pgon = [];
pgon(:, end+1) = [0.02435;0.0071];
pgon(:, end+1) = [0.02435;0.00718];
pgon(:, end+1) = [0.02447;0.00718];
pgon(:, end+1) = [0.02447;0.0071];
CSX = AddPolygon(CSX, 'Top_cutout', 201, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.03275;0.00433];
pgon(:, end+1) = [0.03275;0.00452];
pgon(:, end+1) = [0.03297;0.00452];
pgon(:, end+1) = [0.03327;0.0044];
pgon(:, end+1) = [0.03358;0.00452];
pgon(:, end+1) = [0.0337;0.00483];
pgon(:, end+1) = [0.03358;0.00513];
pgon(:, end+1) = [0.03327;0.00525];
pgon(:, end+1) = [0.03297;0.00513];
pgon(:, end+1) = [0.03275;0.00513];
pgon(:, end+1) = [0.03275;0.00532];
pgon(:, end+1) = [0.03176;0.00532];
pgon(:, end+1) = [0.03176;0.00433];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% copper
pgon = [];
pgon(:, end+1) = [0.03021;0.00433];
pgon(:, end+1) = [0.03021;0.00532];
pgon(:, end+1) = [0.02922;0.00532];
pgon(:, end+1) = [0.02922;0.00513];
pgon(:, end+1) = [0.029;0.00513];
pgon(:, end+1) = [0.0287;0.00525];
pgon(:, end+1) = [0.0284;0.00513];
pgon(:, end+1) = [0.02828;0.00483];
pgon(:, end+1) = [0.0284;0.00452];
pgon(:, end+1) = [0.0287;0.0044];
pgon(:, end+1) = [0.029;0.00452];
pgon(:, end+1) = [0.02922;0.00452];
pgon(:, end+1) = [0.02922;0.00433];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% create layer Bottom material
CSX = AddHyperLynxMetal2D(CSX, 'Bottom_copper', 0, 1.778e-05);
% copper
pgon = [];
pgon(:, end+1) = [0.04237;0.00356];
pgon(:, end+1) = [0.04237;0.03327];
pgon(:, end+1) = [0.00813;0.03327];
pgon(:, end+1) = [0.00813;0.00356];
CSX = AddPolygon(CSX, 'Bottom_copper', 200, 2, 0, pgon);
% via copper
CSX = AddMetal( CSX, 'via' );
CSX = AddCylinder(CSX, 'via', 300, [ 0.0396494 , 0.02413 , 0 ], [ 0.0396494 , 0.02413 , 0.00151638 ], 0.0003175);
CSX = AddCylinder(CSX, 'via', 300, [ 0.0396494 , 0.012446 , 0 ], [ 0.0396494 , 0.012446 , 0.00151638 ], 0.0003175);
CSX = AddCylinder(CSX, 'via', 300, [ 0.010033 , 0.018034 , 0 ], [ 0.010033 , 0.018034 , 0.00151638 ], 0.0003175);
CSX = AddCylinder(CSX, 'via', 300, [ 0.033274 , 0.028956 , 0 ], [ 0.033274 , 0.028956 , 0.00151638 ], 0.0001905);
CSX = AddCylinder(CSX, 'via', 300, [ 0.028702 , 0.028956 , 0 ], [ 0.028702 , 0.028956 , 0.00151638 ], 0.0001905);
CSX = AddCylinder(CSX, 'via', 300, [ 0.028702 , 0.031496 , 0 ], [ 0.028702 , 0.031496 , 0.00151638 ], 0.0001905);
CSX = AddCylinder(CSX, 'via', 300, [ 0.033274 , 0.031496 , 0 ], [ 0.033274 , 0.031496 , 0.00151638 ], 0.0001905);
CSX = AddCylinder(CSX, 'via', 300, [ 0.033274 , 0.004826 , 0 ], [ 0.033274 , 0.004826 , 0.00151638 ], 0.0001905);
CSX = AddCylinder(CSX, 'via', 300, [ 0.033274 , 0.007366 , 0 ], [ 0.033274 , 0.007366 , 0.00151638 ], 0.0001905);
CSX = AddCylinder(CSX, 'via', 300, [ 0.028702 , 0.007366 , 0 ], [ 0.028702 , 0.007366 , 0.00151638 ], 0.0001905);
CSX = AddCylinder(CSX, 'via', 300, [ 0.028702 , 0.004826 , 0 ], [ 0.028702 , 0.004826 , 0.00151638 ], 0.0001905);
% devices
CSX.HyperLynxDevice = {};
CSX.HyperLynxDevice{end+1} = struct('name', 'MMCX-J-P-X-RA-SM1SMD', 'ref', 'J1', 'layer_name', 'Top');
CSX.HyperLynxDevice{end+1} = struct('name', 'MMCX-J-P-X-RA-SM1SMD', 'ref', 'J2', 'layer_name', 'Top');
CSX.HyperLynxDevice{end+1} = struct('name', 'TPTP10SQ', 'ref', 'TP1', 'layer_name', 'Top');
CSX.HyperLynxDevice{end+1} = struct('name', 'TPTP10SQ', 'ref', 'TP2', 'layer_name', 'Top');
% ports
CSX.HyperLynxPort = {};
CSX.HyperLynxPort{end+1} = struct('ref', 'J1.SIG', 'xc', 0.03099, 'yc', 0.03023, 'z', 0.00151638, 'x1', 0.03048, 'y1', 0.02972, 'x2', 0.0315, 'y2', 0.03074, 'position', 'top', 'layer_name', 'Top');
CSX.HyperLynxPort{end+1} = struct('ref', 'J2.SIG', 'xc', 0.03099, 'yc', 0.0061, 'z', 0.00151638, 'x1', 0.03048, 'y1', 0.00559, 'x2', 0.0315, 'y2', 0.00661, 'position', 'top', 'layer_name', 'Top');
CSX.HyperLynxPort{end+1} = struct('ref', 'J1.GND@1', 'xc', 0.03226, 'yc', 0.02896, 'z', 0.00151638, 'x1', 0.03176, 'y1', 0.02846, 'x2', 0.03276, 'y2', 0.02946, 'position', 'top', 'layer_name', 'Top');
CSX.HyperLynxPort{end+1} = struct('ref', 'J1.GND@2', 'xc', 0.02972, 'yc', 0.02896, 'z', 0.00151638, 'x1', 0.02922, 'y1', 0.02846, 'x2', 0.03022, 'y2', 0.02946, 'position', 'top', 'layer_name', 'Top');
CSX.HyperLynxPort{end+1} = struct('ref', 'J1.GND@3', 'xc', 0.02972, 'yc', 0.0315, 'z', 0.00151638, 'x1', 0.02922, 'y1', 0.031, 'x2', 0.03022, 'y2', 0.032, 'position', 'top', 'layer_name', 'Top');
CSX.HyperLynxPort{end+1} = struct('ref', 'J1.GND@4', 'xc', 0.03226, 'yc', 0.0315, 'z', 0.00151638, 'x1', 0.03176, 'y1', 0.031, 'x2', 0.03276, 'y2', 0.032, 'position', 'top', 'layer_name', 'Top');
CSX.HyperLynxPort{end+1} = struct('ref', 'J2.GND@1', 'xc', 0.02972, 'yc', 0.00737, 'z', 0.00151638, 'x1', 0.02922, 'y1', 0.00687, 'x2', 0.03022, 'y2', 0.00787, 'position', 'top', 'layer_name', 'Top');
CSX.HyperLynxPort{end+1} = struct('ref', 'J2.GND@2', 'xc', 0.03226, 'yc', 0.00737, 'z', 0.00151638, 'x1', 0.03176, 'y1', 0.00687, 'x2', 0.03276, 'y2', 0.00787, 'position', 'top', 'layer_name', 'Top');
CSX.HyperLynxPort{end+1} = struct('ref', 'J2.GND@3', 'xc', 0.03226, 'yc', 0.00483, 'z', 0.00151638, 'x1', 0.03176, 'y1', 0.00433, 'x2', 0.03276, 'y2', 0.00533, 'position', 'top', 'layer_name', 'Top');
CSX.HyperLynxPort{end+1} = struct('ref', 'J2.GND@4', 'xc', 0.02972, 'yc', 0.00483, 'z', 0.00151638, 'x1', 0.02922, 'y1', 0.00433, 'x2', 0.03022, 'y2', 0.00533, 'position', 'top', 'layer_name', 'Top');
CSX.HyperLynxPort{end+1} = struct('ref', 'TP1.TP', 'xc', 0.03099, 'yc', 0.0061, 'z', 0.00151638, 'x1', 0.03048, 'y1', 0.00559, 'x2', 0.0315, 'y2', 0.00661, 'position', 'top', 'layer_name', 'Top');
CSX.HyperLynxPort{end+1} = struct('ref', 'TP2.TP', 'xc', 0.03099, 'yc', 0.03023, 'z', 0.00151638, 'x1', 0.03048, 'y1', 0.02972, 'x2', 0.0315, 'y2', 0.03074, 'position', 'top', 'layer_name', 'Top');
%not truncated
