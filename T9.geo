Mesh.Algorithm = 1;       // 使用 Frontal-Delaunay-Quads 算法（四边形优先）
// 2D mesh algorithm 
// 1: MeshAdapt, 2: Automatic, 3: Initial mesh only, 5: Delaunay, 6: Frontal-Delaunay, 
// 7: BAMG, 8: Frontal-Delaunay for Quads, 9: Packing of Parallelograms, 11: Quasi-structured Quad
// Default value: 6
Mesh.RecombinationAlgorithm = 2;
// Mesh recombination algorithm
// 0: simple, 1: blossom, 2: simple full-quad, 3: blossom full-quad
// Default value: 1

// 显示点的标签
Geometry.PointLabels = 1;
// 显示曲线的标签
Geometry.CurveLabels = 1;
// 显示有限元节点
Mesh.Points = 1;

scaler = 0.8;
d1 = scaler*20e-3;
d2  = 0.9*scaler*5e-3;
d3 =  scaler*8e-3;

Point(1) = {-70e-3, 0.0, 0.0, d1};
Point(2) = {-10e-3, 0.0, 0.0, d3};
Point(3) = {10e-3, 0.0, 0.0, d3};
Point(4) = {70e-3, 0.0, 0.0, d1};
Point(5) = {70e-3, 10e-3, 0.0, d1};
Point(6) = {10e-3, 10e-3, 0.0, d2};
Point(7) = {10e-3, 20e-3, 0.0, d3};
Point(8) = {10e-3, 80e-3, 0.0, d1};
Point(9) = {-10e-3, 80e-3, 0.0, d1};
Point(10) = {-10e-3, 20e-3, 0.0, d3};
Point(11) = {-10e-3, 10e-3, 0.0, d2};
Point(12) = {-70e-3, 10e-3, 0.0, d1};

Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 4};
Line(4) = {4, 5};
Line(5) = {5, 6};
Line(6) = {6, 7};
Line(7) = {7, 8};
Line(8) = {8, 9};
Line(9) = {9, 10};
Line(10) = {10,11};
Line(11) = {11,12};
Line(12) = {12,1};

Curve Loop(1) = {1, 2, 3, 4, 5, 6, 7, 8,9,10,11,12};
Plane Surface(1) = {1};

Point(13) = {0.0, 10e-3, 0.0, d3};
Point{13} In Surface {1};

Mesh.ElementOrder = 2;  // 设置网格为二阶网格
Mesh.SecondOrderIncomplete = 1;
Mesh.SecondOrderLinear = 0;  // 0 表示生成曲边单元（默认），1 表示生成直边单元
// Recombine Surface {1}; // 定义横断面网格为四边形网格
Mesh 2;

// 设置输出格式为 Abaqus .inp
Mesh.Format = 39;  // 39 是 .inp 格式的代码

// 保存网格文件到本地
Save "T.inp";