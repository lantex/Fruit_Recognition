function correlationValue=calculateCorrelation(G)
C=0;
for r = 1:256
    for c= 1:256
        
            deltaX = (r-1)^2*G(r,c)+1; %������Ц�x
            deltaY= (c-1)^2*G(r,c)+1; %������Ц�y
            C = r*c*G(r,c)+C;
       
    end
   correlationValue = (C-1*1)/deltaX/deltaY; %�����
end
end