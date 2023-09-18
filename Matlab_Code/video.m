mywriter= VideoWriter('Sphere','MPEG-4');
mywriter.FrameRate=20;

open(mywriter);
writeVideo(mywriter, movieVector);
close(mywriter);