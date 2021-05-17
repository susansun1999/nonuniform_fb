clear
% parameters
wordlength = 13; % determines precision
%load("nonuniform500.mat");
load("nonuniform500_v2.mat");
%all_Hs = Bark_coefs();

num_filter = size(all_hs, 1);
num_taps = size(all_hs, 2);

% create a datatype (signed, wordlength, fraction length)
% also check to make sure data type is as expected.
T = numerictype(1, wordlength, wordlength-1);
precision = eps(T);
assert(precision == 1/2^(wordlength-1), "Quantization check failed")

scalings = zeros(num_filter,1);

% Loop over filters
for filt_idx = 1:num_filter
    % first compute the scaling factor that we can apply to filter coefficients
%     max_abs = max(abs(all_hs(filt_idx,:)));
%     scaling = 1;
%     while 2*scaling*max_abs < 1
%         scaling = scaling * 2;
%     end
%     scalings(filt_idx) = scaling;


    name = sprintf('filter%d',filt_idx);
    tb_name = sprintf('testbench%d',filt_idx);
    filter_obj = dsp.FIRFilter('Numerator', all_coefs(filt_idx,:),...
        'Structure', 'Direct form symmetric');
    %generatehdl(filter_obj,'InputDataType', T, 'Name', name,...
    %    "TargetLanguage", 'Verilog','GenerateHDLTestBench','on',...
    %    "ClockHighTime", 15);
    padding = zeros(1,16);
%     serial = [60,58,58,58,59,59,59,58,58,58,59,57,60,60,58,49;...
%               60,58,59,58,59,59,59,58,58,58,59,59,60,60,59,49;...
%               padding;
%               60,59,59,59,59,59,59,59,58,59,59,60,60,60,59,49];
    serial = [59,55,56,56,58,58,57,57,57,58,57,56,60,56,56,47;...
              60,56,59,58,59,59,59,58,58,58,57,56,60,59,56,48];
      filter_obj.generatehdl('InputDataType', T, 'Name', name,'SerialPartition',serial(wordlength-12,filt_idx),...
        "TargetLanguage", 'Verilog','GenerateHDLTestbench','on','TestBenchName',tb_name,'TestBenchStimulus',{'ramp','impulse'}) 
end