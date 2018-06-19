sim('SSandNNComparisonModel');
figure(1);
[hAx,hLine1,hLine2] = plotyy(DispOut(:,1),DispOut(:,2),DispOut(:,1),DispOut(:,3));
set(findall(gcf,'-property','FontSize'),'FontSize',14);
title('Dispacement Plot (in metres)');
xlabel('Time (sec)','FontName','Timesnewroman');
ylabel(hAx(1),'State-Feedback Model Response','FontName','Timesnewroman') % left y-axis
ylabel(hAx(2),'ANN Model Response','FontName','Timesnewroman') % right y-axis
grid on;
set(hAx(1),'YLim',[-0.01 0.01])
set(hAx(1),'YTick',[-0.01:0.002:0.01])
set(hAx(2),'YLim',[-0.01 0.01])
set(hAx(2),'YTick',[-0.01:0.002:0.01])

figure(2);
[hAx,hLine1,hLine2] = plotyy(ThetaOut(:,1),ThetaOut(:,2),ThetaOut(:,1),ThetaOut(:,3));
set(findall(gcf,'-property','FontSize'),'FontSize',14)
title('Angle Deviation Plot (in radians)');
xlabel('Time (sec)','FontName','Timesnewroman');
ylabel(hAx(1),'State-Feedback Model Response','FontName','Timesnewroman') % left y-axis
ylabel(hAx(2),'ANN Model Response','FontName','Timesnewroman') % right y-axis
grid on;
set(hAx(1),'YLim',[-10*10^-3 10*10^-3])
set(hAx(1),'YTick',[-10*10^-3:0.002:10*10^-3])
set(hAx(2),'YLim',[-10*10^-3 10*10^-3])
set(hAx(2),'YTick',[-10*10^-3:0.002:10*10^-3])

figure(3);
plot(Input(:,1),Input(:,2));
set(findall(gcf,'-property','FontSize'),'FontSize',14)
grid on;
title('Random Noise Input');
xlabel('Time (sec)');


