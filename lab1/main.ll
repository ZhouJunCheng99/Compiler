; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@MAX_SIZE = dso_local constant i32 100, align 4
@PI = dso_local constant float 0x400921FA00000000, align 4
@__const.main.floatArray = private unnamed_addr constant [5 x float] [float 0x3FF19999A0000000, float 0x40019999A0000000, float 0x400A666660000000, float 0x40119999A0000000, float 5.500000e+00], align 16
@.str = private unnamed_addr constant [25 x i8] c"\E8\AF\B7\E8\BE\93\E5\85\A5\E4\B8\A4\E4\B8\AA\E6\95\B4\E6\95\B0\EF\BC\9A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"\E5\92\8C\EF\BC\9A%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"\E5\B7\AE\EF\BC\9A%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"\E7\A7\AF\EF\BC\9A%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"\E5\95\86\EF\BC\9A%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"\E4\BD\99\EF\BC\9A%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"%d \E5\A4\A7\E4\BA\8E %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"%d \E5\B0\8F\E4\BA\8E %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"%d \E7\AD\89\E4\BA\8E %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"\E4\B8\A4\E4\B8\AA\E6\95\B0\E9\83\BD\E6\98\AF\E9\9D\9E\E8\B4\9F\E6\95\B0\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"\E6\B5\AE\E7\82\B9\E6\95\B0\E6\95\B0\E7\BB\84\E7\9A\84\E7\AC\AC %d \E4\B8\AA\E5\85\83\E7\B4\A0\EF\BC\9A%f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [5 x float], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 10, i32* %2, align 4
  store i32 20, i32* %3, align 4
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i32, i64 100, align 16
  %14 = bitcast [5 x float]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([5 x float]* @__const.main.floatArray to i8*), i64 20, i1 false)
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* noundef %2, i32* noundef %3)
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @add(i32 noundef %17, i32 noundef %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* %3, align 4
  %22 = sub nsw i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* %3, align 4
  %25 = mul nsw i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* %3, align 4
  %28 = sdiv i32 %26, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %3, align 4
  %31 = srem i32 %29, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef %32)
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 noundef %34)
  %36 = load i32, i32* %8, align 4
  %37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 noundef %36)
  %38 = load i32, i32* %9, align 4
  %39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 noundef %38)
  %40 = load i32, i32* %10, align 4
  %41 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 noundef %40)
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %0
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef %46, i32 noundef %47)
  br label %62

49:                                               ; preds = %0
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 noundef %54, i32 noundef %55)
  br label %61

57:                                               ; preds = %49
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 noundef %58, i32 noundef %59)
  br label %61

61:                                               ; preds = %57, %53
  br label %62

62:                                               ; preds = %61, %45
  %63 = load i32, i32* %2, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32, i32* %3, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %65, %62
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %74, %70
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %72, 5
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [5 x float], [5 x float]* %5, i64 0, i64 %77
  %79 = load float, float* %78, align 4
  %80 = fpext float %79 to double
  %81 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 noundef %75, double noundef %80)
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %71, !llvm.loop !6

84:                                               ; preds = %71
  store i32 0, i32* %1, align 4
  %85 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %85)
  %86 = load i32, i32* %1, align 4
  ret i32 %86
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @printf(i8* noundef, ...) #3

declare i32 @__isoc99_scanf(i8* noundef, ...) #3

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

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
