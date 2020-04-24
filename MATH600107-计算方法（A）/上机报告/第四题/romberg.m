function I=romberg(fun,a,b,e)
    % �ж���������Ƿ��㹻
    if nargin~=4
        error('��������Ҫ����ֵ�f���Ͻ���½��Լ����e')
    end

    k=0; % ��������
    n=1; % ���仮�ָ���
    h=b-a; %���½���
    T(1,1)=h/2*(fun(a)+fun(b));
    d=b-a; %�����
    while e<=d
        k=k+1;
        h=h/2;
        sum=0;
        % �����һ��T
        for i=1:n
            sum=sum+fun(a+(2*i-1)*h);
        end
        T(k+1,1)=T(k)/2+h*sum;
        % ����
        for j=1:k
            T(k+1,j+1)=T(k+1,j)+(T(k+1,j)-T(k,j))/(4^j-1);
        end
        n=n*2;
        d=abs(T(k+1,k+1)-T(k,k));
    end
    T
    I=T(k+1,k+1);
end