function setFigureProperties()
% �]�w figure �ݩ�
ax = gca;  % ���o��e axes
pl = get(ax, 'Children');  % ���o�Ҧ�ø�Ϫ���
set(pl, 'LineWidth', 1.5);
set(ax, 'FontSize', 14);
set(ax, 'FontName', 'Times New Roman');
set(ax, 'XGrid','on', 'YGrid','on');
set(ax, 'XMinorGrid', 'on', 'YMinorGrid','on');
end