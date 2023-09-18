function[y]=Sphere()

%% Step 1: Generate Data
    c=85;
    t=linspace(0, 2*pi, 100);
    x=sin(t).*sin(c.*t);
    y=sin(t).*cos(c.*t);
    z=cos(t);

    %%Step 2: 
    figure

        for k=1:length(t)
            clf

            t_k=t(k);
            x_k=x(k);
            y_k=y(k);
            z_k=z(k);

            plot3(x_k,y_k,z_k, 'go', 'LineWidth', 3, 'MarkerSize', 15)

            hold on
            plot3(x,y,z,'b-', 'LineWidth',2)

            grid on
            xlabel('x')
            ylabel('y')
            zlabel('z')
            title(['Particle a t=', num2str(t_k),'seconds','c is',num2str(c)])
            view([30 35])



        %drawnow

        %pause(0.2)

            movieVector(k)=getframe;
  
    
    
    
    end
end
