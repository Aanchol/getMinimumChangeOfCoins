// # Given an array of positive integers representing the values of coins in your possession, write a function that returns the minimum amount of change (the minimum sum of money) that you cannot create. The given coins can have any positive integer value and aren't necessarily unique
// # (i.e., you can have multiple coins of the same value).
// # For example, if you're given coins = [1, 2, 5], the minimum amount of change that you can't create is 4. If you're given no coins, the minimum amount of change that you can't create is 1.
// # Sample Input
// # coins = [5, 7, 1, 1, 2, 3, 22]
// # Sample Output
// # 20


void main() {
List<int> coins = [5, 7, 1, 1, 2, 3, 22];
  coins.sort();
  int result =getMinChange(coins);
  print(result);
}

int getMinChange(List<int> sortedCoins){
  int minValue =1;
    for(int i=0;sortedCoins[i]<=minValue; i++){

    minValue = sortedCoins[i]+ minValue;
  }
  return minValue;
} 
