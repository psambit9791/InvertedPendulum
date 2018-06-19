sim('ANNModelStep50');
figure(1);
[hAx,hLine1,hLine2] = plotyy(OutputANN(:,1),OutputANN(:,2),OutputANN(:,1),OutputANN(:,3));
set(findall(gcf,'-property','FontSize'),'FontSize',14);
title('50 Neuron Step Input Result Plot','FontName','Timesnewroman');
xlabel('Time (sec)');
grid on;
ylabel(hAx(1),'Displacement (m)','FontName','Timesnewroman') % left y-axis
ylabel(hAx(2),'Angle Deviation (rad)','FontName','Timesnewroman') % right y-axis

figure(2);
plot(InputANN(:,1),InputANN(:,2));
axis([0 150 0 3])
set(gca,'YTick', 0:1:3)
set(findall(gcf,'-property','FontSize'),'FontSize',14)
grid on;
title('Step Input','FontName','Timesnewroman');
xlabel('Time (sec)','FontName','Timesnewroman');
