; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.adpcm_state = type { i16, i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stepsizeTable = internal global [89 x i32] [i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 16, i32 17, i32 19, i32 21, i32 23, i32 25, i32 28, i32 31, i32 34, i32 37, i32 41, i32 45, i32 50, i32 55, i32 60, i32 66, i32 73, i32 80, i32 88, i32 97, i32 107, i32 118, i32 130, i32 143, i32 157, i32 173, i32 190, i32 209, i32 230, i32 253, i32 279, i32 307, i32 337, i32 371, i32 408, i32 449, i32 494, i32 544, i32 598, i32 658, i32 724, i32 796, i32 876, i32 963, i32 1060, i32 1166, i32 1282, i32 1411, i32 1552, i32 1707, i32 1878, i32 2066, i32 2272, i32 2499, i32 2749, i32 3024, i32 3327, i32 3660, i32 4026, i32 4428, i32 4871, i32 5358, i32 5894, i32 6484, i32 7132, i32 7845, i32 8630, i32 9493, i32 10442, i32 11487, i32 12635, i32 13899, i32 15289, i32 16818, i32 18500, i32 20350, i32 22385, i32 24623, i32 27086, i32 29794, i32 32767], align 16
@indexTable = internal global [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8, i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8], align 16
@state = common dso_local global %struct.adpcm_state zeroinitializer, align 2
@abuf = common dso_local global [500 x i8] zeroinitializer, align 16
@sbuf = common dso_local global [1000 x i16] zeroinitializer, align 16
@.str = private unnamed_addr constant [15 x i8] c"_finfo_dataset\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"\0AError: Can't find dataset!\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"input file\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @adpcm_coder(i16* %0, i8* %1, i32 %2, %struct.adpcm_state* %3) #0 {
  %5 = alloca i16*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.adpcm_state*, align 8
  %9 = alloca i16*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i16* %0, i16** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.adpcm_state* %3, %struct.adpcm_state** %8, align 8
  store i32 0, i32* %19, align 4
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %10, align 8
  %22 = load i16*, i16** %5, align 8
  store i16* %22, i16** %9, align 8
  %23 = load %struct.adpcm_state*, %struct.adpcm_state** %8, align 8
  %24 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %23, i32 0, i32 0
  %25 = load i16, i16* %24, align 2
  %26 = sext i16 %25 to i32
  store i32 %26, i32* %16, align 4
  %27 = load %struct.adpcm_state*, %struct.adpcm_state** %8, align 8
  %28 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %27, i32 0, i32 1
  %29 = load i8, i8* %28, align 2
  %30 = sext i8 %29 to i32
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* %18, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [89 x i32], [89 x i32]* @stepsizeTable, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %15, align 4
  store i32 1, i32* %20, align 4
  br label %35

35:                                               ; preds = %156, %4
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %159

38:                                               ; preds = %35
  %39 = load i16*, i16** %9, align 8
  %40 = getelementptr inbounds i16, i16* %39, i32 1
  store i16* %40, i16** %9, align 8
  %41 = load i16, i16* %39, align 2
  %42 = sext i16 %41 to i32
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %16, align 4
  %45 = sub nsw i32 %43, %44
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 8, i32 0
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %38
  %53 = load i32, i32* %14, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %52, %38
  store i32 0, i32* %13, align 4
  %56 = load i32, i32* %15, align 4
  %57 = ashr i32 %56, 3
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  store i32 4, i32* %13, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %14, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %17, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %17, align 4
  br label %68

68:                                               ; preds = %61, %55
  %69 = load i32, i32* %15, align 4
  %70 = ashr i32 %69, 1
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = load i32, i32* %13, align 4
  %76 = or i32 %75, 2
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %14, align 4
  %79 = sub nsw i32 %78, %77
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %17, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %17, align 4
  br label %83

83:                                               ; preds = %74, %68
  %84 = load i32, i32* %15, align 4
  %85 = ashr i32 %84, 1
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp sge i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load i32, i32* %13, align 4
  %91 = or i32 %90, 1
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %17, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %17, align 4
  br label %95

95:                                               ; preds = %89, %83
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* %16, align 4
  %101 = sub nsw i32 %100, %99
  store i32 %101, i32* %16, align 4
  br label %106

102:                                              ; preds = %95
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* %16, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %16, align 4
  br label %106

106:                                              ; preds = %102, %98
  %107 = load i32, i32* %16, align 4
  %108 = icmp sgt i32 %107, 32767
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i32 32767, i32* %16, align 4
  br label %115

110:                                              ; preds = %106
  %111 = load i32, i32* %16, align 4
  %112 = icmp slt i32 %111, -32768
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 -32768, i32* %16, align 4
  br label %114

114:                                              ; preds = %113, %110
  br label %115

115:                                              ; preds = %114, %109
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %13, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [16 x i32], [16 x i32]* @indexTable, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %18, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %18, align 4
  %125 = load i32, i32* %18, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %115
  store i32 0, i32* %18, align 4
  br label %128

128:                                              ; preds = %127, %115
  %129 = load i32, i32* %18, align 4
  %130 = icmp sgt i32 %129, 88
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 88, i32* %18, align 4
  br label %132

132:                                              ; preds = %131, %128
  %133 = load i32, i32* %18, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [89 x i32], [89 x i32]* @stepsizeTable, i64 0, i64 %134
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %20, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %132
  %140 = load i32, i32* %13, align 4
  %141 = shl i32 %140, 4
  %142 = and i32 %141, 240
  store i32 %142, i32* %19, align 4
  br label %151

143:                                              ; preds = %132
  %144 = load i32, i32* %13, align 4
  %145 = and i32 %144, 15
  %146 = load i32, i32* %19, align 4
  %147 = or i32 %145, %146
  %148 = trunc i32 %147 to i8
  %149 = load i8*, i8** %10, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %10, align 8
  store i8 %148, i8* %149, align 1
  br label %151

151:                                              ; preds = %143, %139
  %152 = load i32, i32* %20, align 4
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  store i32 %155, i32* %20, align 4
  br label %156

156:                                              ; preds = %151
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %7, align 4
  br label %35

159:                                              ; preds = %35
  %160 = load i32, i32* %20, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %159
  %163 = load i32, i32* %19, align 4
  %164 = trunc i32 %163 to i8
  %165 = load i8*, i8** %10, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %10, align 8
  store i8 %164, i8* %165, align 1
  br label %167

167:                                              ; preds = %162, %159
  %168 = load i32, i32* %16, align 4
  %169 = trunc i32 %168 to i16
  %170 = load %struct.adpcm_state*, %struct.adpcm_state** %8, align 8
  %171 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %170, i32 0, i32 0
  store i16 %169, i16* %171, align 2
  %172 = load i32, i32* %18, align 4
  %173 = trunc i32 %172 to i8
  %174 = load %struct.adpcm_state*, %struct.adpcm_state** %8, align 8
  %175 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %174, i32 0, i32 1
  store i8 %173, i8* %175, align 2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @adpcm_decoder(i8* %0, i16* %1, i32 %2, %struct.adpcm_state* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.adpcm_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i16* %1, i16** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.adpcm_state* %3, %struct.adpcm_state** %8, align 8
  store i32 0, i32* %17, align 4
  %19 = load i16*, i16** %6, align 8
  store i16* %19, i16** %10, align 8
  %20 = load i8*, i8** %5, align 8
  store i8* %20, i8** %9, align 8
  %21 = load %struct.adpcm_state*, %struct.adpcm_state** %8, align 8
  %22 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %21, i32 0, i32 0
  %23 = load i16, i16* %22, align 2
  %24 = sext i16 %23 to i32
  store i32 %24, i32* %14, align 4
  %25 = load %struct.adpcm_state*, %struct.adpcm_state** %8, align 8
  %26 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %25, i32 0, i32 1
  %27 = load i8, i8* %26, align 2
  %28 = sext i8 %27 to i32
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [89 x i32], [89 x i32]* @stepsizeTable, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  store i32 0, i32* %18, align 4
  br label %33

33:                                               ; preds = %129, %4
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %132

36:                                               ; preds = %33
  %37 = load i32, i32* %18, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %17, align 4
  %41 = and i32 %40, 15
  store i32 %41, i32* %12, align 4
  br label %50

42:                                               ; preds = %36
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %9, align 8
  %45 = load i8, i8* %43, align 1
  %46 = sext i8 %45 to i32
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %17, align 4
  %48 = ashr i32 %47, 4
  %49 = and i32 %48, 15
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %42, %39
  %51 = load i32, i32* %18, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [16 x i32], [16 x i32]* @indexTable, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %16, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  store i32 0, i32* %16, align 4
  br label %64

64:                                               ; preds = %63, %50
  %65 = load i32, i32* %16, align 4
  %66 = icmp sgt i32 %65, 88
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 88, i32* %16, align 4
  br label %68

68:                                               ; preds = %67, %64
  %69 = load i32, i32* %12, align 4
  %70 = and i32 %69, 8
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = and i32 %71, 7
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %13, align 4
  %74 = ashr i32 %73, 3
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %12, align 4
  %76 = and i32 %75, 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %68
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %15, align 4
  br label %82

82:                                               ; preds = %78, %68
  %83 = load i32, i32* %12, align 4
  %84 = and i32 %83, 2
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i32, i32* %13, align 4
  %88 = ashr i32 %87, 1
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %15, align 4
  br label %91

91:                                               ; preds = %86, %82
  %92 = load i32, i32* %12, align 4
  %93 = and i32 %92, 1
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i32, i32* %13, align 4
  %97 = ashr i32 %96, 2
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %15, align 4
  br label %100

100:                                              ; preds = %95, %91
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %14, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %14, align 4
  br label %111

107:                                              ; preds = %100
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %14, align 4
  br label %111

111:                                              ; preds = %107, %103
  %112 = load i32, i32* %14, align 4
  %113 = icmp sgt i32 %112, 32767
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i32 32767, i32* %14, align 4
  br label %120

115:                                              ; preds = %111
  %116 = load i32, i32* %14, align 4
  %117 = icmp slt i32 %116, -32768
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store i32 -32768, i32* %14, align 4
  br label %119

119:                                              ; preds = %118, %115
  br label %120

120:                                              ; preds = %119, %114
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [89 x i32], [89 x i32]* @stepsizeTable, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %14, align 4
  %126 = trunc i32 %125 to i16
  %127 = load i16*, i16** %10, align 8
  %128 = getelementptr inbounds i16, i16* %127, i32 1
  store i16* %128, i16** %10, align 8
  store i16 %126, i16* %127, align 2
  br label %129

129:                                              ; preds = %120
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %7, align 4
  br label %33

132:                                              ; preds = %33
  %133 = load i32, i32* %14, align 4
  %134 = trunc i32 %133 to i16
  %135 = load %struct.adpcm_state*, %struct.adpcm_state** %8, align 8
  %136 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %135, i32 0, i32 0
  store i16 %134, i16* %136, align 2
  %137 = load i32, i32* %16, align 4
  %138 = trunc i32 %137 to i8
  %139 = load %struct.adpcm_state*, %struct.adpcm_state** %8, align 8
  %140 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %139, i32 0, i32 1
  store i8 %138, i8* %140, align 2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.adpcm_state, align 2
  store i32 0, i32* %1, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %2, align 8
  %7 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %7, %struct._IO_FILE** %2, align 8
  %8 = icmp eq %struct._IO_FILE* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 1) #4
  unreachable

12:                                               ; preds = %0
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64* %4)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %16 = call i32 @fclose(%struct._IO_FILE* %15)
  br label %17

17:                                               ; preds = %40, %12
  %18 = bitcast %struct.adpcm_state* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %18, i8* align 2 bitcast (%struct.adpcm_state* @state to i8*), i64 4, i1 false)
  %19 = call i64 @read(i32 0, i8* getelementptr inbounds ([500 x i8], [500 x i8]* @abuf, i64 0, i64 0), i64 500)
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  call void @exit(i32 1) #4
  unreachable

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %45

28:                                               ; preds = %24
  store i64 0, i64* %3, align 8
  br label %29

29:                                               ; preds = %37, %28
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = bitcast %struct.adpcm_state* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 bitcast (%struct.adpcm_state* @state to i8*), i8* align 2 %34, i64 4, i1 false)
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 %35, 2
  call void @adpcm_decoder(i8* getelementptr inbounds ([500 x i8], [500 x i8]* @abuf, i64 0, i64 0), i16* getelementptr inbounds ([1000 x i16], [1000 x i16]* @sbuf, i64 0, i64 0), i32 %36, %struct.adpcm_state* @state)
  br label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %3, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %3, align 8
  br label %29

40:                                               ; preds = %29
  %41 = load i32, i32* %5, align 4
  %42 = mul nsw i32 %41, 4
  %43 = sext i32 %42 to i64
  %44 = call i64 @write(i32 1, i8* bitcast ([1000 x i16]* @sbuf to i8*), i64 %43)
  br label %17

45:                                               ; preds = %27
  ret i32 0
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local void @perror(i8*) #1

declare dso_local i64 @write(i32, i8*, i64) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
