var AssetsFrenteP = layer_get_id("AssetsFrenteP");
var AssetsFundo1 = layer_get_id("AssetsFundo1");
var AssetsFundo2 = layer_get_id("AssetsFundo2");

layer_x(AssetsFrenteP, lerp(0, camera_get_view_x(view_camera[0]), -1));
layer_x(AssetsFundo1, lerp(0, camera_get_view_x(view_camera[0]), -0.09));
layer_x(AssetsFundo2, lerp(0, camera_get_view_x(view_camera[0]), -0.03));