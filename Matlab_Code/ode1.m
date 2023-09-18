function[y]=ode1()
    figure
    % generate some data
    [X,Y] = meshgrid( linspace(-1,1,20) );
    Z = X.^2-Y.^2;
    [nx,ny,nz] = surfnorm(X,Y,Z);       % normal vectors
    [az,el,rho] = cart2sph(nx,ny,nz);   % find azimuth and elevation
    [~,ix] = max(el(:));                % find maximum elevation
    mesh(X,Y,Z)
    hold on
    scatter3(X(ix),Y(ix),Z(ix),50,'r','filled')      % saddle point
    quiver3(X,Y,Z,nx,ny,nz,'b')          % show normal vectors
    hold off
    axis equal
end