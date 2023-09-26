#include <stdio.h>

// 常量声明和初始化
const int MAX_SIZE = 3;
const float PI = 3.14159;

// 函数声明
int add(int a, int b);

int main() {
    // 变量声明和初始化
    int num1 = 10;
    int num2 = 20;

    // 数组声明和初始化
    int numbers[MAX_SIZE][MAX_SIZE]={{1,2,3},{4,5,6},{7,8,9}};
    float floatArray[3] = {1.1, 2.2, 3.3};

    // 输入
    printf("请输入两个整数：");
    scanf("%d %d", &num1, &num2);

    // 函数调用
    int sum = add(num1, num2);

    // 赋值与四则运算
    float res = (num1 - num2)*(num1 % num2)/num2;

    // 输出
    printf("sum：%d\n", sum);
    printf("result：%f\n", res);


    // 关系运算
    if (num1 > num2) {
        printf("%d 大于 %d\n", num1, num2);
    } else if (num1 < num2) {
        printf("%d 小于 %d\n", num1, num2);
    } else {
        printf("%d 等于 %d\n", num1, num2);
    }

    // 关系与逻辑运算
    if (num1 >= 0 && num2 >= 0) {
        printf("两个数都是非负数\n");
    }

    // 循环语句
    int i = 0;
    while (i < 3) {
        printf("浮点数数组的第 %d 个元素：%f\n", i, floatArray[i]);
        i++;
    }

    // 返回语句
    return 0;
}

// 函数定义
int add(int a, int b) {
    return a + b;
}

