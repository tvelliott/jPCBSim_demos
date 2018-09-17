function CSX = pcb(CSX)
% matlab script created by hyp2mat
% create minimal mesh
mesh = {};
mesh.x = [0.003 0.197];
mesh.y = [0.003 0.147];
mesh.z = [0 0.00151638];
% add mesh
CSX = DefineRectGrid(CSX, 1, mesh);
CSX = AddHyperLynxDielectric(CSX, 'Dielectric_DL01', 4.8, 0.02);
% board outline, layer DL01
CSX = AddBox(CSX, 'Dielectric_DL01', 100, [ 0.003, 0.003, 0], [ 0.197, 0.147, 0.00151638]  );
% copper
% create layer Top material
CSX = AddHyperLynxMetal2D(CSX, 'Top_copper', 0, 1.778e-05);
% copper
pgon = [];
pgon(:, end+1) = [0.195;0.005];
pgon(:, end+1) = [0.195;0.145];
pgon(:, end+1) = [0.005;0.145];
pgon(:, end+1) = [0.005;0.005];
CSX = AddPolygon(CSX, 'Top_copper', 200, 2, 0.00151638, pgon);
% create layer Bottom material
CSX = AddHyperLynxMetal2D(CSX, 'Bottom_copper', 0, 1.778e-05);
% copper
pgon = [];
pgon(:, end+1) = [0.195;0.005];
pgon(:, end+1) = [0.195;0.145];
pgon(:, end+1) = [0.005;0.145];
pgon(:, end+1) = [0.005;0.005];
CSX = AddPolygon(CSX, 'Bottom_copper', 200, 2, 0, pgon);
% devices
CSX.HyperLynxDevice = {};
CSX.HyperLynxDevice{end+1} = struct('name', 'TPTP06SQ', 'ref', 'TP1', 'layer_name', 'Top');
CSX.HyperLynxDevice{end+1} = struct('name', 'TPTP06SQ', 'ref', 'TP2', 'layer_name', 'Top');
% ports
CSX.HyperLynxPort = {};
CSX.HyperLynxPort{end+1} = struct('ref', 'TP1.TP', 'xc', 0.1673, 'yc', 0.02117, 'z', 0.00151638, 'x1', 0.167, 'y1', 0.02087, 'x2', 0.1676, 'y2', 0.02147, 'position', 'top', 'layer_name', 'Top');
CSX.HyperLynxPort{end+1} = struct('ref', 'TP2.TP', 'xc', 0.06729, 'yc', 0.07782, 'z', 0.00151638, 'x1', 0.06699, 'y1', 0.07752, 'x2', 0.06759, 'y2', 0.07812, 'position', 'top', 'layer_name', 'Top');
%not truncated
