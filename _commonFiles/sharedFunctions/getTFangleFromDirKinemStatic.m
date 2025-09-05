function [tf_angle_used] = getTFangleFromDirKinemStatic(static, side)

% Get TF angle directly from direct kinematic model output from the c3d file.
acq = btkReadAcquisition(static);
angles = btkGetAngles(acq);
kneeVariable = strcat(upper(side),'KneeAngles');
kneeAdd = median(angles.(kneeVariable)(:,2));

tf_angle_used = round(kneeAdd,1);

% Close acq
btkCloseAcquisition(acq);

%% Clear variables except output to prevent memory leak.
clearvars -except tf_angle_used
end