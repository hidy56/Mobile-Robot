function setFigureProperties()
% 設定 figure 屬性
ax = gca;  % 取得當前 axes
pl = get(ax, 'Children');  % 取得所有繪圖物件
set(pl, 'LineWidth', 1.5);
set(ax, 'FontSize', 14);
set(ax, 'FontName', 'Times New Roman');
set(ax, 'XGrid','on', 'YGrid','on');
set(ax, 'XMinorGrid', 'on', 'YMinorGrid','on');
end