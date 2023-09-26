; ModuleID = 'main_2.c'
source_filename = "main_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@MAX_SIZE = dso_local constant i32 3, align 4
@PI = dso_local constant float 0x400921FA00000000, align 4
@__const.main.numbers = private unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 3], [3 x i32] [i32 4, i32 5, i32 6], [3 x i32] [i32 7, i32 8, i32 9]], align 16
@__const.main.floatArray = private unnamed_addr constant [3 x float] [float 0x3FF19999A0000000, float 0x40019999A0000000, float 0x400A666660000000], align 4
@.str = private unnamed_addr constant [25 x i8] c"\E8\AF\B7\E8\BE\93\E5\85\A5\E4\B8\A4\E4\B8\AA\E6\95\B4\E6\95\B0\EF\BC\9A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"sum\EF\BC\9A%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"result\EF\BC\9A%f\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"\E4\B8\A4\E4\B8\AA\E6\95\B0\E9\83\BD\E6\98\AF\E9\9D\9E\E8\B4\9F\E6\95\B0\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"\E6\B5\AE\E7\82\B9\E6\95\B0\E6\95\B0\E7\BB\84\E7\9A\84\E7\AC\AC %d \E4\B8\AA\E5\85\83\E7\B4\A0\EF\BC\9A%f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [3 x [3 x i32]], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 10, i32* %2, align 4
  store i32 20, i32* %3, align 4
  %9 = bitcast [3 x [3 x i32]]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([3 x [3 x i32]]* @__const.main.numbers to i8*), i64 36, i1 false)
  %10 = bitcast [3 x float]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast ([3 x float]* @__const.main.floatArray to i8*), i64 12, i1 false)
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* noundef %2, i32* noundef %3)
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @add(i32 noundef %13, i32 noundef %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* %3, align 4
  %18 = sub nsw i32 %16, %17
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %3, align 4
  %21 = srem i32 %19, %20
  %22 = mul nsw i32 %18, %21
  %23 = load i32, i32* %3, align 4
  %24 = sdiv i32 %22, %23
  %25 = sitofp i32 %24 to float
  store float %25, float* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef %26)
  %28 = load float, float* %7, align 4
  %29 = fpext float %28 to double
  %30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), double noundef %29)
  %31 = load i32, i32* %2, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %0
  %34 = load i32, i32* %3, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %33, %0
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %42, %38
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 3
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [3 x float], [3 x float]* %5, i64 0, i64 %45
  %47 = load float, float* %46, align 4
  %48 = fpext float %47 to double
  %49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 noundef %43, double noundef %48)
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %39, !llvm.loop !6

52:                                               ; preds = %39
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @printf(i8* noundef, ...) #2

declare i32 @__isoc99_scanf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %5, %6
  ret i32 %7
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
