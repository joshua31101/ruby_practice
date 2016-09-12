import java.util.*;
public class Main{
  public static void main(String args[]){
    Scanner sc = new Scanner(System.in);
    int arr1[sc.nextInt()];
    int arr2[sc.nextInt()];
    while 
  }

  private void iterate_arr(arr1, arr2) {
    i=0, j=0;
    while (i < arr1.length) && (j < arr2.length) {
      if arr1[i] > arr2[j]
        System.out.print(arr2[j++]+" ");
      else
        System.out.print(arr1[i++]+" ");
    }
    print_leftover(arr1, i);
    print_leftover(arr2, j);
  }

  private void print_leftover(arr, i) {
    if (i < arr.length) {
      for (;i<arr.length; i++)
        System.out.print(arr[i]+" ");
    }
  }
}
