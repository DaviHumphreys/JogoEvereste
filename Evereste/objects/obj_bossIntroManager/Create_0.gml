t = 0.132
v = 0
resL = 1920;
resA = 1080;
resScale = 3.021;

global.larguraCamera = resL / resScale;
global.alturaCamera = resA / resScale;
window_set_size(global.larguraCamera * resScale, global.alturaCamera * resScale);
surface_resize(application_surface, global.larguraCamera * resScale, global.alturaCamera * resScale)

obj_camera.view_target = obj_bossIntroManager;