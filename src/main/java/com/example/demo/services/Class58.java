package com.example.demo.services;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;

//PROGRAM FOR THE CHECKING MATCHING COMBINATION IN THE GIVEN ARRAY 


public class Class58{

       
      public void getMatchingPair(int[] userArray){
    	
			HashMap<Integer, Integer> map = new HashMap<>();
			for(int i =0; i <=userArray.length-1; i++){
			int count = 0;
			   for(int j =0; j <=userArray.length-1; j++){
			
			   if(userArray[i] == userArray[j]){
				       count++;
			     }
			   }
			   map.put(userArray[i], count);
			}
	//		List<String> valueList = Collections.list(Collections.enumeration(map.values()));
			
			
			ArrayList<Integer> list = Collections.list(Collections.enumeration(map.keySet()));
			;
		//	String [] arr = map.keySet().toArray()
			
			for(int r=0;r<=list.size()-1;r++) {
				
			//	if(map.get(key))
			}
			
      }



public static void main(String[] args){

		//decalring the array and assigning the value in this array
		int[] userArray = {1,2,1,5,6,5,1};
		
		//creating object of this class
		Class58 obj = new Class58();
		
		//passing the array to a method
		obj.getMatchingPair(userArray);
}
}