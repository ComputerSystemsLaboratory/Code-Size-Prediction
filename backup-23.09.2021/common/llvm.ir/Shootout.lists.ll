; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.DLL = type { i32, %struct.DLL*, %struct.DLL* }

@.str = private unnamed_addr constant [12 x i8] c"length: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"i:%3d  v:%3d  n:%3d  p:%3d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"[last entry points to list head]\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"[val of next of tail is:  %d]\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"li2 and li1 are not equal\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"li2 should be empty now\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"li3 should be empty now\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"li1 first value wrong, wanted %d, got %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"last value wrong, wanted %d, got %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"li2 first value wrong, wanted %d, got %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"li1 size wrong, wanted %d, got %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"li1 and li2 are not equal\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_push_tail(%struct.DLL* %0, %struct.DLL* %1) #0 {
  %3 = alloca %struct.DLL*, align 8
  %4 = alloca %struct.DLL*, align 8
  %5 = alloca %struct.DLL*, align 8
  store %struct.DLL* %0, %struct.DLL** %3, align 8
  store %struct.DLL* %1, %struct.DLL** %4, align 8
  %6 = load %struct.DLL*, %struct.DLL** %3, align 8
  %7 = getelementptr inbounds %struct.DLL, %struct.DLL* %6, i32 0, i32 2
  %8 = load %struct.DLL*, %struct.DLL** %7, align 8
  store %struct.DLL* %8, %struct.DLL** %5, align 8
  %9 = load %struct.DLL*, %struct.DLL** %4, align 8
  %10 = load %struct.DLL*, %struct.DLL** %5, align 8
  %11 = getelementptr inbounds %struct.DLL, %struct.DLL* %10, i32 0, i32 1
  store %struct.DLL* %9, %struct.DLL** %11, align 8
  %12 = load %struct.DLL*, %struct.DLL** %3, align 8
  %13 = load %struct.DLL*, %struct.DLL** %4, align 8
  %14 = getelementptr inbounds %struct.DLL, %struct.DLL* %13, i32 0, i32 1
  store %struct.DLL* %12, %struct.DLL** %14, align 8
  %15 = load %struct.DLL*, %struct.DLL** %4, align 8
  %16 = load %struct.DLL*, %struct.DLL** %3, align 8
  %17 = getelementptr inbounds %struct.DLL, %struct.DLL* %16, i32 0, i32 2
  store %struct.DLL* %15, %struct.DLL** %17, align 8
  %18 = load %struct.DLL*, %struct.DLL** %5, align 8
  %19 = load %struct.DLL*, %struct.DLL** %4, align 8
  %20 = getelementptr inbounds %struct.DLL, %struct.DLL* %19, i32 0, i32 2
  store %struct.DLL* %18, %struct.DLL** %20, align 8
  %21 = load %struct.DLL*, %struct.DLL** %3, align 8
  %22 = getelementptr inbounds %struct.DLL, %struct.DLL* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.DLL* @list_pop_tail(%struct.DLL* %0) #0 {
  %2 = alloca %struct.DLL*, align 8
  %3 = alloca %struct.DLL*, align 8
  %4 = alloca %struct.DLL*, align 8
  %5 = alloca %struct.DLL*, align 8
  store %struct.DLL* %0, %struct.DLL** %3, align 8
  %6 = load %struct.DLL*, %struct.DLL** %3, align 8
  %7 = call i32 @list_empty(%struct.DLL* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.DLL* null, %struct.DLL** %2, align 8
  br label %28

10:                                               ; preds = %1
  %11 = load %struct.DLL*, %struct.DLL** %3, align 8
  %12 = getelementptr inbounds %struct.DLL, %struct.DLL* %11, i32 0, i32 2
  %13 = load %struct.DLL*, %struct.DLL** %12, align 8
  store %struct.DLL* %13, %struct.DLL** %5, align 8
  %14 = load %struct.DLL*, %struct.DLL** %5, align 8
  %15 = getelementptr inbounds %struct.DLL, %struct.DLL* %14, i32 0, i32 2
  %16 = load %struct.DLL*, %struct.DLL** %15, align 8
  store %struct.DLL* %16, %struct.DLL** %4, align 8
  %17 = load %struct.DLL*, %struct.DLL** %3, align 8
  %18 = load %struct.DLL*, %struct.DLL** %4, align 8
  %19 = getelementptr inbounds %struct.DLL, %struct.DLL* %18, i32 0, i32 1
  store %struct.DLL* %17, %struct.DLL** %19, align 8
  %20 = load %struct.DLL*, %struct.DLL** %4, align 8
  %21 = load %struct.DLL*, %struct.DLL** %3, align 8
  %22 = getelementptr inbounds %struct.DLL, %struct.DLL* %21, i32 0, i32 2
  store %struct.DLL* %20, %struct.DLL** %22, align 8
  %23 = load %struct.DLL*, %struct.DLL** %3, align 8
  %24 = getelementptr inbounds %struct.DLL, %struct.DLL* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 8
  %27 = load %struct.DLL*, %struct.DLL** %5, align 8
  store %struct.DLL* %27, %struct.DLL** %2, align 8
  br label %28

28:                                               ; preds = %10, %9
  %29 = load %struct.DLL*, %struct.DLL** %2, align 8
  ret %struct.DLL* %29
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @list_empty(%struct.DLL* %0) #0 {
  %2 = alloca %struct.DLL*, align 8
  store %struct.DLL* %0, %struct.DLL** %2, align 8
  %3 = load %struct.DLL*, %struct.DLL** %2, align 8
  %4 = call i32 @list_length(%struct.DLL* %3)
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @list_length(%struct.DLL* %0) #0 {
  %2 = alloca %struct.DLL*, align 8
  store %struct.DLL* %0, %struct.DLL** %2, align 8
  %3 = load %struct.DLL*, %struct.DLL** %2, align 8
  %4 = getelementptr inbounds %struct.DLL, %struct.DLL* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_push_head(%struct.DLL* %0, %struct.DLL* %1) #0 {
  %3 = alloca %struct.DLL*, align 8
  %4 = alloca %struct.DLL*, align 8
  %5 = alloca %struct.DLL*, align 8
  store %struct.DLL* %0, %struct.DLL** %3, align 8
  store %struct.DLL* %1, %struct.DLL** %4, align 8
  %6 = load %struct.DLL*, %struct.DLL** %3, align 8
  %7 = getelementptr inbounds %struct.DLL, %struct.DLL* %6, i32 0, i32 1
  %8 = load %struct.DLL*, %struct.DLL** %7, align 8
  store %struct.DLL* %8, %struct.DLL** %5, align 8
  %9 = load %struct.DLL*, %struct.DLL** %4, align 8
  %10 = load %struct.DLL*, %struct.DLL** %3, align 8
  %11 = getelementptr inbounds %struct.DLL, %struct.DLL* %10, i32 0, i32 1
  store %struct.DLL* %9, %struct.DLL** %11, align 8
  %12 = load %struct.DLL*, %struct.DLL** %4, align 8
  %13 = load %struct.DLL*, %struct.DLL** %5, align 8
  %14 = getelementptr inbounds %struct.DLL, %struct.DLL* %13, i32 0, i32 2
  store %struct.DLL* %12, %struct.DLL** %14, align 8
  %15 = load %struct.DLL*, %struct.DLL** %5, align 8
  %16 = load %struct.DLL*, %struct.DLL** %4, align 8
  %17 = getelementptr inbounds %struct.DLL, %struct.DLL* %16, i32 0, i32 1
  store %struct.DLL* %15, %struct.DLL** %17, align 8
  %18 = load %struct.DLL*, %struct.DLL** %3, align 8
  %19 = load %struct.DLL*, %struct.DLL** %4, align 8
  %20 = getelementptr inbounds %struct.DLL, %struct.DLL* %19, i32 0, i32 2
  store %struct.DLL* %18, %struct.DLL** %20, align 8
  %21 = load %struct.DLL*, %struct.DLL** %3, align 8
  %22 = getelementptr inbounds %struct.DLL, %struct.DLL* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.DLL* @list_pop_head(%struct.DLL* %0) #0 {
  %2 = alloca %struct.DLL*, align 8
  %3 = alloca %struct.DLL*, align 8
  %4 = alloca %struct.DLL*, align 8
  store %struct.DLL* %0, %struct.DLL** %3, align 8
  %5 = load %struct.DLL*, %struct.DLL** %3, align 8
  %6 = call i32 @list_empty(%struct.DLL* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.DLL* null, %struct.DLL** %2, align 8
  br label %28

9:                                                ; preds = %1
  %10 = load %struct.DLL*, %struct.DLL** %3, align 8
  %11 = getelementptr inbounds %struct.DLL, %struct.DLL* %10, i32 0, i32 1
  %12 = load %struct.DLL*, %struct.DLL** %11, align 8
  store %struct.DLL* %12, %struct.DLL** %4, align 8
  %13 = load %struct.DLL*, %struct.DLL** %4, align 8
  %14 = getelementptr inbounds %struct.DLL, %struct.DLL* %13, i32 0, i32 1
  %15 = load %struct.DLL*, %struct.DLL** %14, align 8
  %16 = load %struct.DLL*, %struct.DLL** %3, align 8
  %17 = getelementptr inbounds %struct.DLL, %struct.DLL* %16, i32 0, i32 1
  store %struct.DLL* %15, %struct.DLL** %17, align 8
  %18 = load %struct.DLL*, %struct.DLL** %3, align 8
  %19 = load %struct.DLL*, %struct.DLL** %4, align 8
  %20 = getelementptr inbounds %struct.DLL, %struct.DLL* %19, i32 0, i32 1
  %21 = load %struct.DLL*, %struct.DLL** %20, align 8
  %22 = getelementptr inbounds %struct.DLL, %struct.DLL* %21, i32 0, i32 2
  store %struct.DLL* %18, %struct.DLL** %22, align 8
  %23 = load %struct.DLL*, %struct.DLL** %3, align 8
  %24 = getelementptr inbounds %struct.DLL, %struct.DLL* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 8
  %27 = load %struct.DLL*, %struct.DLL** %4, align 8
  store %struct.DLL* %27, %struct.DLL** %2, align 8
  br label %28

28:                                               ; preds = %9, %8
  %29 = load %struct.DLL*, %struct.DLL** %2, align 8
  ret %struct.DLL* %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @list_equal(%struct.DLL* %0, %struct.DLL* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.DLL*, align 8
  %5 = alloca %struct.DLL*, align 8
  %6 = alloca %struct.DLL*, align 8
  %7 = alloca %struct.DLL*, align 8
  store %struct.DLL* %0, %struct.DLL** %4, align 8
  store %struct.DLL* %1, %struct.DLL** %5, align 8
  %8 = load %struct.DLL*, %struct.DLL** %4, align 8
  store %struct.DLL* %8, %struct.DLL** %6, align 8
  %9 = load %struct.DLL*, %struct.DLL** %5, align 8
  store %struct.DLL* %9, %struct.DLL** %7, align 8
  br label %10

10:                                               ; preds = %26, %2
  %11 = load %struct.DLL*, %struct.DLL** %6, align 8
  %12 = getelementptr inbounds %struct.DLL, %struct.DLL* %11, i32 0, i32 1
  %13 = load %struct.DLL*, %struct.DLL** %12, align 8
  %14 = load %struct.DLL*, %struct.DLL** %4, align 8
  %15 = icmp ne %struct.DLL* %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %10
  %17 = load %struct.DLL*, %struct.DLL** %6, align 8
  %18 = getelementptr inbounds %struct.DLL, %struct.DLL* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.DLL*, %struct.DLL** %7, align 8
  %21 = getelementptr inbounds %struct.DLL, %struct.DLL* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %49

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.DLL*, %struct.DLL** %6, align 8
  %28 = getelementptr inbounds %struct.DLL, %struct.DLL* %27, i32 0, i32 1
  %29 = load %struct.DLL*, %struct.DLL** %28, align 8
  store %struct.DLL* %29, %struct.DLL** %6, align 8
  %30 = load %struct.DLL*, %struct.DLL** %7, align 8
  %31 = getelementptr inbounds %struct.DLL, %struct.DLL* %30, i32 0, i32 1
  %32 = load %struct.DLL*, %struct.DLL** %31, align 8
  store %struct.DLL* %32, %struct.DLL** %7, align 8
  br label %10

33:                                               ; preds = %10
  %34 = load %struct.DLL*, %struct.DLL** %6, align 8
  %35 = getelementptr inbounds %struct.DLL, %struct.DLL* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.DLL*, %struct.DLL** %7, align 8
  %38 = getelementptr inbounds %struct.DLL, %struct.DLL* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %49

42:                                               ; preds = %33
  %43 = load %struct.DLL*, %struct.DLL** %7, align 8
  %44 = getelementptr inbounds %struct.DLL, %struct.DLL* %43, i32 0, i32 1
  %45 = load %struct.DLL*, %struct.DLL** %44, align 8
  %46 = load %struct.DLL*, %struct.DLL** %5, align 8
  %47 = icmp eq %struct.DLL* %45, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %42, %41, %24
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_print(i8* %0, %struct.DLL* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.DLL*, align 8
  %5 = alloca %struct.DLL*, align 8
  %6 = alloca %struct.DLL*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.DLL* %1, %struct.DLL** %4, align 8
  %8 = load %struct.DLL*, %struct.DLL** %4, align 8
  %9 = getelementptr inbounds %struct.DLL, %struct.DLL* %8, i32 0, i32 1
  %10 = load %struct.DLL*, %struct.DLL** %9, align 8
  store %struct.DLL* %10, %struct.DLL** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @puts(i8* %11)
  %13 = load %struct.DLL*, %struct.DLL** %4, align 8
  %14 = call i32 @list_length(%struct.DLL* %13)
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.DLL*, %struct.DLL** %4, align 8
  %17 = getelementptr inbounds %struct.DLL, %struct.DLL* %16, i32 0, i32 1
  %18 = load %struct.DLL*, %struct.DLL** %17, align 8
  store %struct.DLL* %18, %struct.DLL** %5, align 8
  br label %19

19:                                               ; preds = %42, %2
  %20 = load %struct.DLL*, %struct.DLL** %5, align 8
  %21 = getelementptr inbounds %struct.DLL, %struct.DLL* %20, i32 0, i32 1
  %22 = load %struct.DLL*, %struct.DLL** %21, align 8
  %23 = load %struct.DLL*, %struct.DLL** %6, align 8
  %24 = icmp ne %struct.DLL* %22, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  %28 = load %struct.DLL*, %struct.DLL** %5, align 8
  %29 = getelementptr inbounds %struct.DLL, %struct.DLL* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.DLL*, %struct.DLL** %5, align 8
  %32 = getelementptr inbounds %struct.DLL, %struct.DLL* %31, i32 0, i32 1
  %33 = load %struct.DLL*, %struct.DLL** %32, align 8
  %34 = getelementptr inbounds %struct.DLL, %struct.DLL* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.DLL*, %struct.DLL** %5, align 8
  %37 = getelementptr inbounds %struct.DLL, %struct.DLL* %36, i32 0, i32 2
  %38 = load %struct.DLL*, %struct.DLL** %37, align 8
  %39 = getelementptr inbounds %struct.DLL, %struct.DLL* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %30, i32 %35, i32 %40)
  br label %42

42:                                               ; preds = %25
  %43 = load %struct.DLL*, %struct.DLL** %5, align 8
  %44 = getelementptr inbounds %struct.DLL, %struct.DLL* %43, i32 0, i32 1
  %45 = load %struct.DLL*, %struct.DLL** %44, align 8
  store %struct.DLL* %45, %struct.DLL** %5, align 8
  br label %19

46:                                               ; preds = %19
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.DLL*, %struct.DLL** %5, align 8
  %49 = getelementptr inbounds %struct.DLL, %struct.DLL* %48, i32 0, i32 1
  %50 = load %struct.DLL*, %struct.DLL** %49, align 8
  %51 = getelementptr inbounds %struct.DLL, %struct.DLL* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  ret void
}

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.DLL* @list_new() #0 {
  %1 = alloca %struct.DLL*, align 8
  %2 = call noalias i8* @malloc(i64 24) #5
  %3 = bitcast i8* %2 to %struct.DLL*
  store %struct.DLL* %3, %struct.DLL** %1, align 8
  %4 = load %struct.DLL*, %struct.DLL** %1, align 8
  %5 = load %struct.DLL*, %struct.DLL** %1, align 8
  %6 = getelementptr inbounds %struct.DLL, %struct.DLL* %5, i32 0, i32 1
  store %struct.DLL* %4, %struct.DLL** %6, align 8
  %7 = load %struct.DLL*, %struct.DLL** %1, align 8
  %8 = load %struct.DLL*, %struct.DLL** %1, align 8
  %9 = getelementptr inbounds %struct.DLL, %struct.DLL* %8, i32 0, i32 2
  store %struct.DLL* %7, %struct.DLL** %9, align 8
  %10 = load %struct.DLL*, %struct.DLL** %1, align 8
  %11 = getelementptr inbounds %struct.DLL, %struct.DLL* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.DLL*, %struct.DLL** %1, align 8
  ret %struct.DLL* %12
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.DLL* @list_sequence(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.DLL*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %13, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = sub nsw i32 %18, %19
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 24
  %26 = call noalias i8* @malloc(i64 %25) #5
  %27 = bitcast i8* %26 to %struct.DLL*
  store %struct.DLL* %27, %struct.DLL** %9, align 8
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %3, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %30

30:                                               ; preds = %62, %17
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %67

34:                                               ; preds = %30
  %35 = load %struct.DLL*, %struct.DLL** %9, align 8
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.DLL, %struct.DLL* %35, i64 %38
  %40 = load %struct.DLL*, %struct.DLL** %9, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.DLL, %struct.DLL* %40, i64 %42
  %44 = getelementptr inbounds %struct.DLL, %struct.DLL* %43, i32 0, i32 1
  store %struct.DLL* %39, %struct.DLL** %44, align 8
  %45 = load %struct.DLL*, %struct.DLL** %9, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.DLL, %struct.DLL* %45, i64 %48
  %50 = load %struct.DLL*, %struct.DLL** %9, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.DLL, %struct.DLL* %50, i64 %52
  %54 = getelementptr inbounds %struct.DLL, %struct.DLL* %53, i32 0, i32 2
  store %struct.DLL* %49, %struct.DLL** %54, align 8
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  %57 = load %struct.DLL*, %struct.DLL** %9, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.DLL, %struct.DLL* %57, i64 %59
  %61 = getelementptr inbounds %struct.DLL, %struct.DLL* %60, i32 0, i32 0
  store i32 %55, i32* %61, align 8
  br label %62

62:                                               ; preds = %34
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %30

67:                                               ; preds = %30
  %68 = load %struct.DLL*, %struct.DLL** %9, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.DLL, %struct.DLL* %68, i64 %70
  %72 = load %struct.DLL*, %struct.DLL** %9, align 8
  %73 = getelementptr inbounds %struct.DLL, %struct.DLL* %72, i64 0
  %74 = getelementptr inbounds %struct.DLL, %struct.DLL* %73, i32 0, i32 2
  store %struct.DLL* %71, %struct.DLL** %74, align 8
  %75 = load %struct.DLL*, %struct.DLL** %9, align 8
  %76 = getelementptr inbounds %struct.DLL, %struct.DLL* %75, i64 0
  %77 = load %struct.DLL*, %struct.DLL** %9, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.DLL, %struct.DLL* %77, i64 %79
  %81 = getelementptr inbounds %struct.DLL, %struct.DLL* %80, i32 0, i32 1
  store %struct.DLL* %76, %struct.DLL** %81, align 8
  %82 = load %struct.DLL*, %struct.DLL** %9, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.DLL, %struct.DLL* %82, i64 %85
  %87 = load %struct.DLL*, %struct.DLL** %9, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.DLL, %struct.DLL* %87, i64 %89
  %91 = getelementptr inbounds %struct.DLL, %struct.DLL* %90, i32 0, i32 2
  store %struct.DLL* %86, %struct.DLL** %91, align 8
  %92 = load i32, i32* %3, align 4
  %93 = load %struct.DLL*, %struct.DLL** %9, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.DLL, %struct.DLL* %93, i64 %95
  %97 = getelementptr inbounds %struct.DLL, %struct.DLL* %96, i32 0, i32 0
  store i32 %92, i32* %97, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.DLL*, %struct.DLL** %9, align 8
  %100 = getelementptr inbounds %struct.DLL, %struct.DLL* %99, i64 0
  %101 = getelementptr inbounds %struct.DLL, %struct.DLL* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  %102 = load %struct.DLL*, %struct.DLL** %9, align 8
  ret %struct.DLL* %102
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.DLL* @list_copy(%struct.DLL* %0) #0 {
  %2 = alloca %struct.DLL*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.DLL*, align 8
  %7 = alloca %struct.DLL*, align 8
  store %struct.DLL* %0, %struct.DLL** %2, align 8
  %8 = load %struct.DLL*, %struct.DLL** %2, align 8
  %9 = call i32 @list_length(%struct.DLL* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 24
  %14 = call noalias i8* @malloc(i64 %13) #5
  %15 = bitcast i8* %14 to %struct.DLL*
  store %struct.DLL* %15, %struct.DLL** %7, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %16 = load %struct.DLL*, %struct.DLL** %2, align 8
  store %struct.DLL* %16, %struct.DLL** %6, align 8
  br label %17

17:                                               ; preds = %48, %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %56

21:                                               ; preds = %17
  %22 = load %struct.DLL*, %struct.DLL** %7, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.DLL, %struct.DLL* %22, i64 %24
  %26 = load %struct.DLL*, %struct.DLL** %7, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.DLL, %struct.DLL* %26, i64 %28
  %30 = getelementptr inbounds %struct.DLL, %struct.DLL* %29, i32 0, i32 1
  store %struct.DLL* %25, %struct.DLL** %30, align 8
  %31 = load %struct.DLL*, %struct.DLL** %7, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.DLL, %struct.DLL* %31, i64 %33
  %35 = load %struct.DLL*, %struct.DLL** %7, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.DLL, %struct.DLL* %35, i64 %37
  %39 = getelementptr inbounds %struct.DLL, %struct.DLL* %38, i32 0, i32 2
  store %struct.DLL* %34, %struct.DLL** %39, align 8
  %40 = load %struct.DLL*, %struct.DLL** %6, align 8
  %41 = getelementptr inbounds %struct.DLL, %struct.DLL* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.DLL*, %struct.DLL** %7, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.DLL, %struct.DLL* %43, i64 %45
  %47 = getelementptr inbounds %struct.DLL, %struct.DLL* %46, i32 0, i32 0
  store i32 %42, i32* %47, align 8
  br label %48

48:                                               ; preds = %21
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  %53 = load %struct.DLL*, %struct.DLL** %6, align 8
  %54 = getelementptr inbounds %struct.DLL, %struct.DLL* %53, i32 0, i32 1
  %55 = load %struct.DLL*, %struct.DLL** %54, align 8
  store %struct.DLL* %55, %struct.DLL** %6, align 8
  br label %17

56:                                               ; preds = %17
  %57 = load %struct.DLL*, %struct.DLL** %7, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.DLL, %struct.DLL* %57, i64 %59
  %61 = load %struct.DLL*, %struct.DLL** %7, align 8
  %62 = getelementptr inbounds %struct.DLL, %struct.DLL* %61, i64 0
  %63 = getelementptr inbounds %struct.DLL, %struct.DLL* %62, i32 0, i32 2
  store %struct.DLL* %60, %struct.DLL** %63, align 8
  %64 = load %struct.DLL*, %struct.DLL** %7, align 8
  %65 = getelementptr inbounds %struct.DLL, %struct.DLL* %64, i64 0
  %66 = load %struct.DLL*, %struct.DLL** %7, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.DLL, %struct.DLL* %66, i64 %68
  %70 = getelementptr inbounds %struct.DLL, %struct.DLL* %69, i32 0, i32 1
  store %struct.DLL* %65, %struct.DLL** %70, align 8
  %71 = load %struct.DLL*, %struct.DLL** %2, align 8
  %72 = call %struct.DLL* @list_last(%struct.DLL* %71)
  %73 = getelementptr inbounds %struct.DLL, %struct.DLL* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.DLL*, %struct.DLL** %7, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.DLL, %struct.DLL* %75, i64 %77
  %79 = getelementptr inbounds %struct.DLL, %struct.DLL* %78, i32 0, i32 0
  store i32 %74, i32* %79, align 8
  %80 = load %struct.DLL*, %struct.DLL** %7, align 8
  ret %struct.DLL* %80
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.DLL* @list_last(%struct.DLL* %0) #0 {
  %2 = alloca %struct.DLL*, align 8
  store %struct.DLL* %0, %struct.DLL** %2, align 8
  %3 = load %struct.DLL*, %struct.DLL** %2, align 8
  %4 = getelementptr inbounds %struct.DLL, %struct.DLL* %3, i32 0, i32 2
  %5 = load %struct.DLL*, %struct.DLL** %4, align 8
  ret %struct.DLL* %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_reverse(%struct.DLL* %0) #0 {
  %2 = alloca %struct.DLL*, align 8
  %3 = alloca %struct.DLL*, align 8
  %4 = alloca %struct.DLL*, align 8
  store %struct.DLL* %0, %struct.DLL** %2, align 8
  %5 = load %struct.DLL*, %struct.DLL** %2, align 8
  store %struct.DLL* %5, %struct.DLL** %4, align 8
  br label %6

6:                                                ; preds = %19, %1
  %7 = load %struct.DLL*, %struct.DLL** %4, align 8
  %8 = getelementptr inbounds %struct.DLL, %struct.DLL* %7, i32 0, i32 1
  %9 = load %struct.DLL*, %struct.DLL** %8, align 8
  store %struct.DLL* %9, %struct.DLL** %3, align 8
  %10 = load %struct.DLL*, %struct.DLL** %4, align 8
  %11 = getelementptr inbounds %struct.DLL, %struct.DLL* %10, i32 0, i32 2
  %12 = load %struct.DLL*, %struct.DLL** %11, align 8
  %13 = load %struct.DLL*, %struct.DLL** %4, align 8
  %14 = getelementptr inbounds %struct.DLL, %struct.DLL* %13, i32 0, i32 1
  store %struct.DLL* %12, %struct.DLL** %14, align 8
  %15 = load %struct.DLL*, %struct.DLL** %3, align 8
  %16 = load %struct.DLL*, %struct.DLL** %4, align 8
  %17 = getelementptr inbounds %struct.DLL, %struct.DLL* %16, i32 0, i32 2
  store %struct.DLL* %15, %struct.DLL** %17, align 8
  %18 = load %struct.DLL*, %struct.DLL** %3, align 8
  store %struct.DLL* %18, %struct.DLL** %4, align 8
  br label %19

19:                                               ; preds = %6
  %20 = load %struct.DLL*, %struct.DLL** %4, align 8
  %21 = load %struct.DLL*, %struct.DLL** %2, align 8
  %22 = icmp ne %struct.DLL* %20, %21
  br i1 %22, label %6, label %23

23:                                               ; preds = %19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test_lists() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.DLL*, align 8
  %3 = alloca %struct.DLL*, align 8
  %4 = alloca %struct.DLL*, align 8
  store i32 0, i32* %1, align 4
  %5 = call %struct.DLL* @list_sequence(i32 1, i32 100)
  store %struct.DLL* %5, %struct.DLL** %2, align 8
  %6 = load %struct.DLL*, %struct.DLL** %2, align 8
  %7 = call %struct.DLL* @list_copy(%struct.DLL* %6)
  store %struct.DLL* %7, %struct.DLL** %3, align 8
  %8 = call %struct.DLL* @list_new()
  store %struct.DLL* %8, %struct.DLL** %4, align 8
  %9 = load %struct.DLL*, %struct.DLL** %3, align 8
  %10 = load %struct.DLL*, %struct.DLL** %2, align 8
  %11 = call i32 @list_equal(%struct.DLL* %9, %struct.DLL* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %0
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

15:                                               ; preds = %0
  br label %16

16:                                               ; preds = %21, %15
  %17 = load %struct.DLL*, %struct.DLL** %3, align 8
  %18 = call i32 @list_empty(%struct.DLL* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.DLL*, %struct.DLL** %4, align 8
  %23 = load %struct.DLL*, %struct.DLL** %3, align 8
  %24 = call %struct.DLL* @list_pop_head(%struct.DLL* %23)
  call void @list_push_tail(%struct.DLL* %22, %struct.DLL* %24)
  br label %16

25:                                               ; preds = %16
  %26 = load %struct.DLL*, %struct.DLL** %3, align 8
  %27 = call i32 @list_empty(%struct.DLL* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %37, %31
  %33 = load %struct.DLL*, %struct.DLL** %4, align 8
  %34 = call i32 @list_empty(%struct.DLL* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.DLL*, %struct.DLL** %3, align 8
  %39 = load %struct.DLL*, %struct.DLL** %4, align 8
  %40 = call %struct.DLL* @list_pop_tail(%struct.DLL* %39)
  call void @list_push_tail(%struct.DLL* %38, %struct.DLL* %40)
  br label %32

41:                                               ; preds = %32
  %42 = load %struct.DLL*, %struct.DLL** %4, align 8
  %43 = call i32 @list_empty(%struct.DLL* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

47:                                               ; preds = %41
  %48 = load %struct.DLL*, %struct.DLL** %2, align 8
  call void @list_reverse(%struct.DLL* %48)
  %49 = load %struct.DLL*, %struct.DLL** %2, align 8
  %50 = call %struct.DLL* @list_first(%struct.DLL* %49)
  %51 = getelementptr inbounds %struct.DLL, %struct.DLL* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 100
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.DLL*, %struct.DLL** %2, align 8
  %56 = call %struct.DLL* @list_first(%struct.DLL* %55)
  %57 = getelementptr inbounds %struct.DLL, %struct.DLL* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 100, i32 %58)
  call void @exit(i32 1) #6
  unreachable

60:                                               ; preds = %47
  %61 = load %struct.DLL*, %struct.DLL** %2, align 8
  %62 = call %struct.DLL* @list_last(%struct.DLL* %61)
  %63 = getelementptr inbounds %struct.DLL, %struct.DLL* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 1
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.DLL*, %struct.DLL** %2, align 8
  %68 = call %struct.DLL* @list_last(%struct.DLL* %67)
  %69 = getelementptr inbounds %struct.DLL, %struct.DLL* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 100, i32 %70)
  call void @exit(i32 1) #6
  unreachable

72:                                               ; preds = %60
  %73 = load %struct.DLL*, %struct.DLL** %3, align 8
  %74 = call %struct.DLL* @list_first(%struct.DLL* %73)
  %75 = getelementptr inbounds %struct.DLL, %struct.DLL* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 100
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load %struct.DLL*, %struct.DLL** %3, align 8
  %80 = call %struct.DLL* @list_first(%struct.DLL* %79)
  %81 = getelementptr inbounds %struct.DLL, %struct.DLL* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 100, i32 %82)
  call void @exit(i32 1) #6
  unreachable

84:                                               ; preds = %72
  %85 = load %struct.DLL*, %struct.DLL** %3, align 8
  %86 = call %struct.DLL* @list_last(%struct.DLL* %85)
  %87 = getelementptr inbounds %struct.DLL, %struct.DLL* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 1
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load %struct.DLL*, %struct.DLL** %3, align 8
  %92 = call %struct.DLL* @list_last(%struct.DLL* %91)
  %93 = getelementptr inbounds %struct.DLL, %struct.DLL* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 100, i32 %94)
  call void @exit(i32 1) #6
  unreachable

96:                                               ; preds = %84
  %97 = load %struct.DLL*, %struct.DLL** %2, align 8
  %98 = call i32 @list_length(%struct.DLL* %97)
  %99 = icmp ne i32 %98, 100
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load %struct.DLL*, %struct.DLL** %2, align 8
  %102 = call i32 @list_length(%struct.DLL* %101)
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 100, i32 %102)
  call void @exit(i32 1) #6
  unreachable

104:                                              ; preds = %96
  %105 = load %struct.DLL*, %struct.DLL** %2, align 8
  %106 = load %struct.DLL*, %struct.DLL** %3, align 8
  %107 = call i32 @list_equal(%struct.DLL* %105, %struct.DLL* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %104
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

111:                                              ; preds = %104
  %112 = load %struct.DLL*, %struct.DLL** %2, align 8
  %113 = call i32 @list_length(%struct.DLL* %112)
  store i32 %113, i32* %1, align 4
  %114 = load %struct.DLL*, %struct.DLL** %2, align 8
  %115 = bitcast %struct.DLL* %114 to i8*
  call void @free(i8* %115) #5
  %116 = load %struct.DLL*, %struct.DLL** %3, align 8
  %117 = bitcast %struct.DLL* %116 to i8*
  call void @free(i8* %117) #5
  %118 = load %struct.DLL*, %struct.DLL** %4, align 8
  %119 = bitcast %struct.DLL* %118 to i8*
  call void @free(i8* %119) #5
  %120 = load i32, i32* %1, align 4
  ret i32 %120
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: noinline nounwind uwtable
define internal %struct.DLL* @list_first(%struct.DLL* %0) #0 {
  %2 = alloca %struct.DLL*, align 8
  store %struct.DLL* %0, %struct.DLL** %2, align 8
  %3 = load %struct.DLL*, %struct.DLL** %2, align 8
  %4 = getelementptr inbounds %struct.DLL, %struct.DLL* %3, i32 0, i32 1
  %5 = load %struct.DLL*, %struct.DLL** %4, align 8
  ret %struct.DLL* %5
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @atoi(i8* %13) #7
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %10
  %17 = phi i32 [ %14, %10 ], [ 3000000, %15 ]
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %22, %16
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %6, align 4
  %21 = icmp ne i32 %19, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @test_lists()
  store i32 %23, i32* %7, align 4
  br label %18

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %25)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #4

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
