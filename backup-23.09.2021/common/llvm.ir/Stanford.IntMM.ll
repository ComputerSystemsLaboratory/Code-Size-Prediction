; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.node = type { %struct.node*, %struct.node*, i32 }
%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = common dso_local global i64 0, align 8
@ima = common dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imb = common dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imr = common dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@value = common dso_local global float 0.000000e+00, align 4
@fixed = common dso_local global float 0.000000e+00, align 4
@floated = common dso_local global float 0.000000e+00, align 4
@permarray = common dso_local global [11 x i32] zeroinitializer, align 16
@pctr = common dso_local global i32 0, align 4
@tree = common dso_local global %struct.node* null, align 8
@stack = common dso_local global [4 x i32] zeroinitializer, align 16
@cellspace = common dso_local global [19 x %struct.element] zeroinitializer, align 16
@freelist = common dso_local global i32 0, align 4
@movesdone = common dso_local global i32 0, align 4
@rma = common dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmb = common dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmr = common dso_local global [41 x [41 x float]] zeroinitializer, align 16
@piececount = common dso_local global [4 x i32] zeroinitializer, align 16
@class = common dso_local global [13 x i32] zeroinitializer, align 16
@piecemax = common dso_local global [13 x i32] zeroinitializer, align 16
@puzzl = common dso_local global [512 x i32] zeroinitializer, align 16
@p = common dso_local global [13 x [512 x i32]] zeroinitializer, align 16
@n = common dso_local global i32 0, align 4
@kount = common dso_local global i32 0, align 4
@sortlist = common dso_local global [5001 x i32] zeroinitializer, align 16
@biggest = common dso_local global i32 0, align 4
@littlest = common dso_local global i32 0, align 4
@top = common dso_local global i32 0, align 4
@z = common dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = common dso_local global [257 x %struct.complex] zeroinitializer, align 16
@e = common dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = common dso_local global float 0.000000e+00, align 4
@zi = common dso_local global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initrand() #0 {
  store i64 74755, i64* @seed, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Rand() #0 {
  %1 = load i64, i64* @seed, align 8
  %2 = mul nsw i64 %1, 1309
  %3 = add nsw i64 %2, 13849
  %4 = and i64 %3, 65535
  store i64 %4, i64* @seed, align 8
  %5 = load i64, i64* @seed, align 8
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initmatrix([41 x i32]* %0) #0 {
  %2 = alloca [41 x i32]*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store [41 x i32]* %0, [41 x i32]** %2, align 8
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %32, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp sle i32 %7, 40
  br i1 %8, label %9, label %35

9:                                                ; preds = %6
  store i32 1, i32* %5, align 4
  br label %10

10:                                               ; preds = %28, %9
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %11, 40
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = call i32 @Rand()
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = sdiv i32 %16, 120
  %18 = mul nsw i32 %17, 120
  %19 = sub nsw i32 %15, %18
  %20 = sub nsw i32 %19, 60
  %21 = load [41 x i32]*, [41 x i32]** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [41 x i32], [41 x i32]* %21, i64 %23
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [41 x i32], [41 x i32]* %24, i64 0, i64 %26
  store i32 %20, i32* %27, align 4
  br label %28

28:                                               ; preds = %13
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %10

31:                                               ; preds = %10
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %6

35:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Innerproduct(i32* %0, [41 x i32]* %1, [41 x i32]* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca [41 x i32]*, align 8
  %8 = alloca [41 x i32]*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store [41 x i32]* %1, [41 x i32]** %7, align 8
  store [41 x i32]* %2, [41 x i32]** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32*, i32** %6, align 8
  store i32 0, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %13

13:                                               ; preds = %38, %5
  %14 = load i32, i32* %11, align 4
  %15 = icmp sle i32 %14, 40
  br i1 %15, label %16, label %41

16:                                               ; preds = %13
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load [41 x i32]*, [41 x i32]** %7, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [41 x i32], [41 x i32]* %19, i64 %21
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [41 x i32], [41 x i32]* %22, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load [41 x i32]*, [41 x i32]** %8, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [41 x i32], [41 x i32]* %27, i64 %29
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [41 x i32], [41 x i32]* %30, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %26, %34
  %36 = add nsw i32 %18, %35
  %37 = load i32*, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %16
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  br label %13

41:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Intmm(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @Initrand()
  call void @Initmatrix([41 x i32]* getelementptr inbounds ([41 x [41 x i32]], [41 x [41 x i32]]* @ima, i64 0, i64 0))
  call void @Initmatrix([41 x i32]* getelementptr inbounds ([41 x [41 x i32]], [41 x [41 x i32]]* @imb, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp sle i32 %6, 40
  br i1 %7, label %8, label %28

8:                                                ; preds = %5
  store i32 1, i32* %4, align 4
  br label %9

9:                                                ; preds = %21, %8
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %10, 40
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [41 x [41 x i32]], [41 x [41 x i32]]* @imr, i64 0, i64 %14
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [41 x i32], [41 x i32]* %15, i64 0, i64 %17
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  call void @Innerproduct(i32* %18, [41 x i32]* getelementptr inbounds ([41 x [41 x i32]], [41 x [41 x i32]]* @ima, i64 0, i64 0), [41 x i32]* getelementptr inbounds ([41 x [41 x i32]], [41 x [41 x i32]]* @imb, i64 0, i64 0), i32 %19, i32 %20)
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %9

24:                                               ; preds = %9
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %5

28:                                               ; preds = %5
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [41 x [41 x i32]], [41 x [41 x i32]]* @imr, i64 0, i64 %31
  %33 = load i32, i32* %2, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [41 x i32], [41 x i32]* %32, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %37)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %8, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 10
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = load i32, i32* %2, align 4
  call void @Intmm(i32 %7)
  br label %8

8:                                                ; preds = %6
  %9 = load i32, i32* %2, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %2, align 4
  br label %3

11:                                               ; preds = %3
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
