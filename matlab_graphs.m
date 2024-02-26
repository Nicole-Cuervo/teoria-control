close all;

t1 = linspace(0, 2*pi, 1000); % Incremento en el número de puntos 
t2 = linspace(0, 3, 1000);     % Incremento en el número de puntos

% Definición de las funciones:
f1 = exp(-t1) .* (cos(3*t1) + 2*sin(3*t1));
f2 = sqrt(9 - t2.^2);

% Colores para las gráficas (este paso fue opcional)
color_f1_fplot = [0.8, 0.2, 0.2]; % Rojo oscuro
color_f2_fplot = [0.2, 0.2, 0.8]; % Azul oscuro

% Gráficas con plot
figure;
subplot(2,2,1);
plot(t1, f1, 'Color', color_f1_fplot); % Color personalizado para f1 en plot
title('Gráfica de f1 con plot');
xlabel('tiempo (t)');
ylabel('f1(t)');
subplot(2,2,2);
plot(t2, f2, 'Color', color_f2_fplot); % Color personalizado para f2 en plot
title('Gráfica de f2 con plot');
xlabel('tiempo (t)');
ylabel('f2(t)');

% Gráficas con fplot
subplot(2,2,3);
fplot(@(t) exp(-t) .* (cos(3*t) + 2*sin(3*t)), [0, 2*pi], 'Color', color_f1_fplot);
title('Gráfica de f1 con fplot');
xlabel('tiempo (t)');
ylabel('f1(t)');
subplot(2,2,4);
fplot(@(t) sqrt(9 - t^2), [0, 3], 'Color', color_f2_fplot);
title('Gráfica de f2 con fplot');
xlabel('tiempo (t)');
ylabel('f2(t)');

% Superposición de f1 y f2 con plot
figure;
plot(t1, f1, 'Color', color_f1_fplot); % Color personalizado para f1 en plot
hold on 
plot(t2, f2, 'Color', color_f2_fplot); % Color personalizado para f2 en plot
title('Superposición de f1 y f2 con plot');
xlabel('tiempo (t)');
ylabel('f1(t) y f2(t)');
legend('f1(t)', 'f2(t)');
hold off;

% Superposición de f1 y f2 con fplot
figure;
fplot(@(t) sqrt(9 - t^2), [0, 3], 'Color', color_f2_fplot);
hold on 
fplot(@(t) exp(-t) .* (cos(3*t) + 2*sin(3*t)), [0, 2*pi], 'Color', color_f1_fplot);
title('Superposición de f1 y f2 con fplot');
xlabel('tiempo (t)');
ylabel('f1(t) y f2(t)');
legend('f2(t)', 'f1(t)');
