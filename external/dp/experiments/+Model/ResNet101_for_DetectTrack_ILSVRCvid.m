function model = ResNet101_for_DetectTrack_ILSVRCvid(model)
% ResNet 101 layers D&T with OHEM training (finetuned from res3a)

model.solver_def_file        = fullfile(pwd, '..', '..','..', '..', 'DT_models', 'rfcn_prototxts', 'ResNet-101L_ILSVRCvid_corr', 'solver_160k240k_lr1_4.prototxt');
model.test_net_def_file      = fullfile(pwd, '..', '..','..', '..', 'DT_models', 'rfcn_prototxts', 'ResNet-101L_ILSVRCvid_corr', 'test_track.prototxt');
model.net_file               = fullfile(pwd, '..', '..','..', '..', 'DT_models', 'pre_trained_models', 'ResNet-101L', 'ResNet101-D-ilsvrc-vid.caffemodel');
model.mean_image             = fullfile(pwd, '..', '..','..', '..', 'DT_models', 'pre_trained_models', 'ResNet-101L', 'mean_image');

end