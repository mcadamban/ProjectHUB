% CPS 118 TERM PROJECT
% Mayuraan Cadamban
% Student #: 501022969

%% Part 1
% Yearly average temperature for each lake and yearly average temperature
% for all six lakes put together
DATA = cpsdata1(:,3:8); % importing data from file
LakeSup = mean(DATA(:,1));
fprintf('The yearly average temperature of Lake Superior is %f degree celsius.\n', LakeSup)
LakeMich = mean(DATA(:,2));
fprintf('The yearly average temperature of Lake Michigan is %f degree celsius.\n', LakeMich)
LakeHuron =mean(DATA(:,3));
fprintf('The yearly average temperature of Lake Huron is %f degree celsius.\n', LakeHuron)
LakeErie = mean(DATA(:,4));
fprintf('The yearly average temperature of Lake Erie is %f degrees celsius.\n', LakeErie)
LakeOnt = mean(DATA(:,5));
fprintf('The yearly average temperature of Lake Ontario is %f degrees celsius.\n', LakeOnt)
LakeStClr = mean(DATA(:,6));
fprintf('The yearly average temperature of Lake St. Clair is %f degrees celsius.\n', LakeStClr)
ALLMAXS = [LakeSup, LakeMich, LakeHuron, LakeErie, LakeOnt, LakeStClr];
ALLAV = mean(ALLMAXS);
fprintf('The yearly average temperature of all the lakes are %f degrees celsius.\n', ALLAV)

%% Part 2
% Coldest and warmest lake below
fprintf('\n')
MAXLAKE = max(ALLMAXS);
fprintf('Lake Erie is the warmest lake with an average of %f degrees celsius.\n', MAXLAKE)
MINLAKE = min(ALLMAXS);
fprintf('Lake Superior is the coolest lake with an average of %f degrees celsius.\n', MINLAKE)
% Lakes averages that are above total average, and below total average
OverAv = [LakeSup, LakeHuron];
fprintf('Lake Superior and Lake Huron are above the average.\n')
UnderAv = [LakeMich, LakeErie, LakeOnt, LakeStClr];
fprintf('Lake Michigan, Erie, Ontario, and St. Clair are below the average.\n')

%% Part 3
fprintf('\n')
% Each lakes warmest temperature with day
a = max(DATA(:,1));
fprintf('Lake Superior warmest day was 237 with temp of %.3f degrees.\n',a)
b = max(DATA(:,2));
fprintf('Lake Michigan warmest day was 190 with temp of %.3f degrees.\n',b)
c = max(DATA(:,3));
fprintf('Lake Huron warmest day was 191 with temp of %.3f degrees.\n',c)
d = max(DATA(:,4));
fprintf('Lake Erie warmest day was 192 with temp of %.3f degrees.\n',d)
e = max(DATA(:,5));
fprintf('Lake Ontario warmest day was 192 with temp of %.3f degrees.\n',e)
f = max(DATA(:,6));
fprintf('Lake St. Clair warmest day was 191 with temp of %.3f degrees.\n',f)
fprintf('\n')
% Each lakes coldest temperature 
g = min(DATA(:,1));
fprintf('Lake Superior coldest days were 74 and 75 with temp of %.3f degrees.\n',g)
h = min(DATA(:,2));
fprintf('Lake Michigan coldest day was 61 with temp of %.3f degrees.\n',h)
i = min(DATA(:,3));
fprintf('Lake Huron coldest day was 61 with temp of %.3f degrees.\n',i)
j = min(DATA(:,4));
fprintf('Lake Erie coldest day was 61 with temp of %.3f degrees.\n',j)
k = min(DATA(:,5));
fprintf('Lake Ontario coldest day was 61 with temp of %.3f degrees.\n',k)
l = min(DATA(:,6));
fprintf('Lake St. Clair coldest days were 59, 60 and 61 with temp of %.3f degrees.\n',l)

%% Part 4
fprintf('\n')
% Finding day, lake and temp of warmest water temp overall
A = [a b c d e f];
MaxA = max(A);
fprintf('Lake Erie had warmest day overall with temp of %.3f degrees.\n',MaxA)
% Finding day, lake and temp of coldest water temp overall
B = [g h i j k l];
MinB = min(B);
fprintf('Lake St. Clair had coldest day overall with temp of %.3f degrees.\n',MinB)
fprintf('\n')
%% Part 5
% Making graphs of each daily average
% graph for Lake Superior
plot(DATA(:,1),'b-')
title('Daily Temperature Average of Lake Superior')
xlabel('Day of the year')
ylabel('Temperature (celsius)')
% graph for Lake Michigan
plot(DATA(:,2),'r-')
title('Daily Temperature Average of Lake Michigan')
xlabel('Day of the year')
ylabel('Temperature (celsius)')
% graph for Lake Huron
plot(DATA(:,3),'g-')
title('Daily Temperature Average of Lake Huron')
xlabel('Day of the year')
ylabel('Temperature (celsius)')
% graph for Lake Erie
plot(DATA(:,4),'c-')
title('Daily Temperature Average of Lake Erie')
xlabel('Day of the year')
ylabel('Temperature (celsius)')
% graph for Lake Ontario
plot(DATA(:,5),'m-')
title('Daily Temperature Average of Lake Ontario')
xlabel('Day of the year')
ylabel('Temperature (celsius)')
% graph for Lake St. Clair
plot(DATA(:,6),'k-')
title('Daily Temperature Average of Lake St. Clair')
xlabel('Day of the year')
ylabel('Temperature (celsius)')

%% Part 6 
% Single graph with all temperatures
plot(DATA(:,1),'b-')
hold on
plot(DATA(:,2),'r-')
plot(DATA(:,3),'g-')
plot(DATA(:,4),'c-')
plot(DATA(:,5),'m-')
plot(DATA(:,6),'k-')
title('Daily Average Temperature at each Great Lake')
xlabel('Day of the year')
ylabel('Temperature (celsius)')
legend('Lake Superior', 'Lake Michigan', 'Lake Huron', 'Lake Erie', 'Lake Ontario', 'Lake St. Clair', 'Location', 'eastoutside')                  
hold off

%% Part 7
% Finding summer average (day 172 to day 256)
LS = mean(DATA(172:3:265)); % avg for Lake Superior
LM = mean(DATA(172:4:265)); % avg for Lake Michigan
LH = mean(DATA(172:5:265)); % avg for Lake Huron
LE = mean(DATA(172:6:265)); % avg for Lake Erie
LO = mean(DATA(172:7:265)); % avg for Lake Ontario
LSC = mean(DATA(172:8:265)); % avg for Lake St. Clair
sumav = [LS, LM, LH, LE, LO, LSC] % list of all avgs 
sumav_order = sort(sumav, 'descend') % sorts list from low to high
% results from calculations
fprintf('Order from warmest to coldest is: Lake Superior, Lake Erie, Lake Michigan,\n Lake Huron, Lake Ontario, and Lake St. Clair.\n')
fprintf('Order is almost the same as #1 except Huron, Erie, and Michigan are switched up.\n')

%% Part 8
% Graph for summer days (172 to 265) with all 6 lakes 
plot((DATA(172:3:265)), 'b-') % Lake Superior
hold on
plot((DATA(172:4:265)), 'r-') % Lake Michigan
plot((DATA(172:5:265)), 'g-') % Lake Huron
plot((DATA(172:6:265)), 'c-') % Lake Erie
plot((DATA(172:7:265)), 'm-') % Lake Ontario
plot((DATA(172:8:265)), 'k-') % Lake St. Clair
title('Average Summer Temperature at each Great Lake')
xlabel('Days of Summer')
ylabel('Temperature (celsius)')
legend('Lake Superior','Lake Michigan','Lake Huron', 'Lake Erie','Lake Ontario','Lake St. Clair','Location', 'eastoutside')
hold off

%% Part 9
% Finding winter average (days 1 to 79 and 355 to 366) with all 6 lakes
% calculating winter avg for Lake Superior
ls = DATA(1:3:79); 
lss = DATA(355:3:366);
aa = [ls lss]; % putting both sets of days together to calculate avg
AA = mean(aa);
% calculating winter avg for Lake Michigan
lm = DATA(1:4:79); 
lmm = DATA(355:4:366);
ab = [lm lmm]; 
AB = mean(ab);
% calculating winter avg for Lake Huron
lh = DATA(1:5:79); 
lhh = DATA(355:5:366);
ac = [lh lhh];
AC = mean(ac);
% calculating winter avg for Lake Erie
le = DATA(1:6:79); 
lee = DATA(355:6:366);
ad = [le lee];
AD = mean(ad);
% calculating winter avg for Lake Ontario
lo = DATA(1:7:79); 
loo = DATA(355:7:366);
ae = [lo loo];
AE = mean(ae);
% calculating winter avg for Lake St. Clair 
lsc = DATA(1:8:79); 
lscc = DATA(355:8:366);
af = [lsc lscc];
AF = mean(af);

winav = [AA AB AC AD AE AF] % ordering all winter avgs 
winav_order = sort(winav, 'descend') % sorting from warmest to coldest
fprintf('Order for winter avg from warm to cold: St.Clair, Ontario, Huron, Michigan, Erie, Superior.\n')
fprintf('Interesting to note that winter avg list is the opposite of summer, but different from #1.\n')

%% Part 10
% Graph for winter days (1 to 79 and 355 to 366) with all 6 lakes 
vv = DATA(1:3:79);
vvv = DATA(355:3:366);
VV = [vv vvv]; % intializing axis of graph 
X1 = aa;
plot(VV,X1, 'DisplayName','Superior')
title("Each Lakes Average Temp. in Winter")
xlabel('Day')
ylabel('Temperature (Degrees Celcius)')
legend('show','Location','best')
title(legend,'Lake names')
hold on
% adding in the other lakes
X2 = ab;
plot(VV,X2, '--', "DisplayName","Michigan")
X3 = ac; 
plot(VV,X3, ':','DisplayName','Huron')
X4 = ad;
plot(VV,X4, '-.','DisplayName','Erie')
X5 = ae;
plot(VV,X5, '.','DisplayName','Ontario')
X6 = af;
plot(VV,X6, '+','DisplayName','St. Claire')
hold off

%% Part 11 
% Swimming in lakes temperature pie chart
SwimSup = sum(DATA(1:3:366) >= 20); %intializing pie charts for x values 
SwimMich = sum(DATA(1:4:366) >= 20); 
SwimHuron = sum(DATA(1:5:366) >= 20);
SwimErie = sum(DATA(1:6:366) >= 20);
SwimOnt = sum(DATA(1:7:366) >= 20);
SwimStClr = sum(DATA(1:8:366) >= 20);

% for y values
ySwimSup = [sum(DATA(1:3:366) >= 20), 366-sum(DATA(1:3:366) >= 20)];
ySwimMich = [sum(DATA(1:4:366) >= 20), 366-sum(DATA(1:4:366) >= 20)];
ySwimHuron = [sum(DATA(1:5:366) >= 20), 366-sum(DATA(1:5:366) >= 20)];
ySwimErie = [sum(DATA(1:6:366) >= 20), 366-sum(DATA(1:6:365) >= 20)];
ySwimOnt = [sum(DATA(1:7:366) >= 20), 366-sum(DATA(1:7:366) >= 20)];
ySwimStClr = [sum(DATA(1:8:366) >= 20), 366-sum(DATA(1:1:366) >= 20)];
labels = ('Above 20 Degrees', 'Below 20 Degrees')

% using tiles to format the 6 pie charts in one
t = tiledlayout(2,3);
ax1 = nexttile; % Lake Superior pie chart 
pie(ax1,ySwimSup)
legend(labels,"Location","east")
title('Lake Superior')

ax2 = nexttile; % Lake Michigan pie chart 
pie(ax2,ySwimMich)
title('Lake Michigan')

ax3 = nexttile; % Lake Huron pie chart 
pie(ax3,ySwimHuron)
title('Lake Huron')

ax4 = nexttile; % Lake Erie pie chart 
pie(ax4,ySwimErie)
title('Lake Erie')

ax5 = nexttile; % Lake Ontario pie chart
pie(ax5,ySwimOnt)
title('Lake Ontario')

ax6 = nexttile; % Lake St. Claire pie chart
pie(ax6,ySwimStClr)
title('Lake St. Claire')














