%HouseHolder Method to QR
A=input('Give me a Matrix A:');
[m,n]=size(A);
while m<n%ѭ��ֱ������ľ����������ڵ�������
    disp('Sorry, rows should be larger than lines');
    A=input('give me a Matrix A then:');
    [m,n]=size(A);%��ȡ����A���С�����m��n
end
%-------------------------------------------------%
d=zeros(n,1);%����nά����d����������м����
a=zeros(n,1);
sigma=0;%

for k=1:n-1
    sigma=0;%sigma����ֵ0.
    for i=k:m %���sigma
        sigma=sigma+A(i,k)^2;
    end
    if A(k,k)>=0%�ҷ���ȡ��akk�෴������Խ��ԽС
        sigma=-sqrt(sigma);
    end
   d(k)=sigma; %���Ҷ�����nά����d�С�
   a(k)=sigma*(sigma-A(k,k));%���
   A(k,k)= A(k,k)-sigma;%���w_k�ĵ�һ������
   for j=k+1:n%�������A_kj��ֵ
       b=(A(k,k)*A(k,j)); %b��akkakj/ak��SIGMA(aikaij)/ak�����ֹ���
       for i=k+1:m
           b=b+A(i,k)*A(i,j);
       end
       b=b/a(k);
       A(k,j)=A(k,j)-b*A(k,k);
       for i=k+1:m
           A(i,j)=A(i,j)-b*A(i,k);
       end
   end
end
%-------------------------------------------------------%
if m == n
    d(n) = A(n,n);
    %���1
elseif m > n
    sigma = 0;
    for i = n:m
      sigma = sigma+A(i,n)^2;  
    end
    sigma=sqrt(sigma);
elseif A(n,n) >= 0
    sigma = -sigma;
    d(n)=sigma;
    a(n)=sigma*(sigma-A(n,n));
    A(n,n)=A(n,n)-sigma;
end
%---------------------------------------------------%
R = A;%��A�����д�ŵ�wɾȥ�����������ξ���R
for i = 1 : n 
    R(i,i) = d(i);
    for j = 1 : n  
        if i > j
           R(i,j) = 0;
        end
    end
end 
R(n+1:m,:)=zeros(m-n,n);%��R�����n+1��m�и�Ϊ0
H=eye(m);%����wk��ak������������H
for k=1:min(m-1,n)
    h=eye(m-k+1)-(A(k:m,k)*(A(k:m,k).'))/a(k);
    h=[[eye(k-1),zeros(k-1,m-k+1)];[zeros(m-k+1,k-1),h]];
    H=h*H;
end
Q=H.'
R
string=input('do you want to solve a equation with QR? y/n    ','s');

if string == 'y'
    if m == n%��m=n����������Է�����
        b = input('Please enter vector b:');%����b
        b = H * b;%������Ax=bת��ΪQx=QTb���˲���b��ΪQTb��H=QT��
        x = zeros(n,1);%����n������x
        x(n) = b(n)/R(n,n);%���x��n��
        for k = n-1:-1:1%����������ϵ�����󣬴�xn��ǰ�ش����õ�xn-1��x1
            for j = k+1:n
               x(k) = x(k)+R(k,j)*x(j); 
            end
            x(k) = (b(k)-x(k))/R(k,k);
        end
    x %���x
    else
        disp(['Oh man! the size of the A is not support for the equation !']);
    end
else
    disp(['OK fine, have a nice day!']);
end