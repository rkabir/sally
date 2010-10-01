load jrc.mat
data = [fvec.data];  
labels = [fvec.label];
src = {fvec.src};

[labels idx] = sort(labels);
data = data(:, idx);
src = src(idx);

K = data' * data;
imagesc(K);
colormap(hot)
colorbar;

