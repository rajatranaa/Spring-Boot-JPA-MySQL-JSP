package com.example.demo.services;

public class pattern {
	
	public static void main(String [] args) {
		
		for(int i =1 ; i<=4; i++) {
			System.out.println();
			for(int k =1; k<=4; k++) {
				
				if(i%2==0) {
					if(k%2==0)
						System.out.print("*");
						else
							System.out.print("1");
				}else {
					if(k%2==0)
					System.out.print("0");
					else
						System.out.print("*");
				}
				
			}
		}
	}

}
