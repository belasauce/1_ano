import java.util.*;

public class pitagoras{
	public static void main(String[]args){
	double c=0;
	int a=0,b=0;
		for( a=1 ; a<100 ; a++)
			{ for ( b=a ; b<100 ; b++)
				{
					c = Math.sqrt(Math.pow(a,2)+Math.pow(b,2));
					if (((int)c)==c)
					{
						System.out.printf("%d\t%d\t%d\n",a,b,((int)c));
					}

				}}
				
	}
	}
