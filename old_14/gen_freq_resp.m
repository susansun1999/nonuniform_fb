load("nonuniform500.mat");
hold on;
for i = 1:16
  plot(linspace(0,1,8192),20*log10(abs(all_hs(i,:))),'LineWidth',2);
end
hold off;