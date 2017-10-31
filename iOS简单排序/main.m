//
//  main.m
//  iOS简单排序
//
//  Created by sino on 17/10/31.
//  Copyright © 2017年 Daniel. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        /* 
            直接插入排序
            思路：将一个记录插入到已排序好的有序表中，从而得到一个新，记录数增1的有序表。即：先将序列的第1个记录看成是一个有序的子序列，然后从第2个记录逐个进行插入，直至整个序列有序为止。
         
         */
        NSMutableArray *mutableArrOne = [NSMutableArray arrayWithObjects:@1,@2,@5,@6,@3,@4,@10,@7,@9,@8, nil];
        for (int i = 1; i<=mutableArrOne.count - 1; i++) {
            
            if (mutableArrOne[i - 1] > mutableArrOne[i]) {
                
                int j = i - 1;
                id temp = mutableArrOne[i];
                mutableArrOne[i] = mutableArrOne[i-1];
                while (j>=0&&temp<mutableArrOne[j]) {
                 
                    mutableArrOne[j + 1] = mutableArrOne[j];
                    j--;
                }
                mutableArrOne[j + 1] = temp;
            }
        }
        NSLog(@"直接插入排序结果:%@",mutableArrOne);
        
        /*
            希尔排序
            思路：希尔排序是1959 年由D.L.Shell 提出来的，相对直接排序有较大的改进。希尔排序又叫缩小增量排序。
            先将整个待排序的记录序列分割成为若干子序列分别进行直接插入排序，待整个序列中的记录“基本有序”时，再对全体记录进行依次直接插入排序。
         */
        NSMutableArray *mutableArrTwo = [NSMutableArray arrayWithObjects:@1,@2,@5,@6,@3,@4,@10,@7,@9,@8, nil];
        int dk = (int)(mutableArrTwo.count - 1)/2;
        while (dk>=1) {
            
            for (int i = dk; i<=mutableArrTwo.count-1; i+=dk) {
                
                int j = i - dk;
                id temp = mutableArrTwo[i];
                mutableArrTwo[i] = mutableArrTwo[i - dk];
                while (j >= 0 && temp < mutableArrTwo[j]) {
                    
                    mutableArrTwo[j+dk] = mutableArrTwo[j];
                    j-=dk;
                }
                mutableArrTwo[j+dk] = temp;
            }
            dk = dk / 2;
        }
        NSLog(@"希尔排序结果:%@",mutableArrTwo);
        
        /*
         简单选择排序
         思路：在要排序的一组数中，选出最小（或者最大）的一个数与第1个位置的数交换；然后在剩下的数当中再找最小（或者最大）的与第2个位置的数交换，依次类推，直到第n-1个元素（倒数第二个数）和第n个元素（最后一个数）比较为止。
         */
        NSMutableArray *mutableArrThree = [NSMutableArray arrayWithObjects:@1,@2,@5,@6,@3,@4,@10,@7,@9,@8, nil];
        int i,j,k;
        for (i = 0; i<= mutableArrThree.count - 1; i++) {
            k = i;
            for (j = i+1; j<=mutableArrThree.count - 1; j++) {
                if (mutableArrThree[k] > mutableArrThree[j]) {
                    k = j;
                }
            }
            
            if (k!=i) {
                id temp = mutableArrThree[i];
                mutableArrThree[i] = mutableArrThree[k];
                mutableArrThree[k] = temp;
            }
        }
        NSLog(@"简单选择排序结果:%@",mutableArrThree);
        

        /*
         冒泡排序
         思路：在要排序的一组数中，对当前还未排好序的范围内的全部数，自上而下对相邻的两个数依次进行比较和调整，让较大的数往下沉，较小的往上冒。即：每当两相邻的数比较后发现它们的排序与排序要求相反时，就将它们互换。
         */
        NSMutableArray *mutableArrFour = [NSMutableArray arrayWithObjects:@1,@2,@5,@6,@3,@4,@10,@7,@9,@8, nil];
        for (int i = 0; i<=mutableArrFour.count - 1; i++) {
            
            for (int j = 0; j<mutableArrFour.count-1-i; j++) {
                
                if (mutableArrFour[j] < mutableArrFour[j+1]) {
                    
                    id string = mutableArrFour[j];
                    mutableArrFour[j] = mutableArrFour[j+1];
                    mutableArrFour[j+1] = string;
                }
            }
        }
        NSLog(@"冒泡排序结果:%@",mutableArrFour);


        
        
        
        
       
    }
    return 0;
}



