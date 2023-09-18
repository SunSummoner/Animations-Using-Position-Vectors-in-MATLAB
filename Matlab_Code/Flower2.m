
function[y]=Flower2()

    %% Step 1: Generate Data
    t=linspace(0, 2*pi, 1000);
    x=2.*cos(t)+cos(5.*t)
    y=2.*sin(t)+sin(5.*t)


    %%Step 2: 
    figure

    for k=1:length(t)
        clf

        t_k=t(k);
        x_k=x(k);
        y_k=y(k);


        plot(x_k,y_k, 'go', 'LineWidth', 2, 'MarkerSize', 15)

        hold on
        plot(x,y,'b-', 'LineWidth',2)

        grid on
        xlabel('x')
        ylabel('y')
        zlabel('z')
        title(['Particle a t=', num2str(t_k),'seconds'])
        view([0 0 5])



        %drawnow

        %pause(0.2)

        movieVector(k)=getframe;




    end
end
