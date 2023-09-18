function[y]=Differential()
    %% Step 1: Generate Data
    t=linspace(0,2 , 1000);
    for a=1:20
        for b=1:20
            x=[-(a).*sin(5.*t) + (b).*cos(5.*t)].*exp(-2.*t);
            y=[(2.*a).*cos(5.*t) + (2.*b).*sin(5.*t)].*exp(-2.*t);
     

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

        view([0 0 0.0001])

        %drawnow

        %pause(0.2)

        movieVector(k)=getframe;


    end
        end

    end



mywri= VideoWriter('Spiral','MPEG-4');
mywri.FrameRate=20;

open(mywri);
writeVideo(mywri, movieVector);
close(mywri);


   
end
