resL = 1366;
resA = 768;
resScale = 2;

global.larguraCamera = resL / resScale;
global.alturaCamera = resA / resScale;
view_target = obj_player;
window_set_size(global.larguraCamera * resScale, global.alturaCamera * resScale);
surface_resize(application_surface, global.larguraCamera * resScale, global.alturaCamera * resScale)

spd = 0.06;
