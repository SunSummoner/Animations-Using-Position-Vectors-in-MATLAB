function[y]=Flower()

    %% Step 1: Generate Data
    t=linspace(-2, 2, 1000);
    x=3.*cos(cos(7.94.*round(t))).*(1.2).*(t.*cos(14.34.*t));
    y=3.*sin(14.34.*t).*sin(14.34.*t).*sin(7.94.*t);


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
    mywriter= VideoWriter('OD','MPEG-4');
mywriter.FrameRate=20;

open(mywriter);
writeVideo(mywriter, movieVector);
close(mywriter);
end