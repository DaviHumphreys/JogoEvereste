
resL = 1920;
resA = 1080;
resScale = 10;

global.larguraCamera = resL / resScale;
global.alturaCamera = resA / resScale;
window_set_size(global.larguraCamera * resScale, global.alturaCamera * resScale);
surface_resize(application_surface, global.larguraCamera * resScale, global.alturaCamera * resScale)


video = video_open("IntroJogo.mp4");
video_enable_loop(false);

