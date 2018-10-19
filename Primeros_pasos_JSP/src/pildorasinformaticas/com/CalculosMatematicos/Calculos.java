package pildorasinformaticas.com.CalculosMatematicos;

public class Calculos {

	//Variable estatica resultado
	private static int resultado;
	
	//Métodos estáticos
	public static int metodoSuma(int num1, int num2){
		
		resultado = num1+num2;
		
		return resultado;
	}
	
	public static int metodoResta(int num1, int num2){
					
		resultado = num1-num2;
		
		return resultado;
	}
	
	public static int metodoMultiplica(int num1, int num2){
		
		resultado = num1*num2;
		
		return resultado;
	}
	
}
