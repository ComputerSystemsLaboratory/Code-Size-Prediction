; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@A0 = dso_local global double 1.000000e+00, align 8
@A1 = dso_local global double 0xBFC5555555559705, align 8
@A2 = dso_local global double 0x3F811111113AE9A3, align 8
@A3 = dso_local global double 0x3F2A01A03FB1CA71, align 8
@A4 = dso_local global double 0x3EC71DF284AA3566, align 8
@A5 = dso_local global double 0x3E5AEB5A8CF8A426, align 8
@A6 = dso_local global double 0x3DE68DF75229C1A6, align 8
@B0 = dso_local global double 1.000000e+00, align 8
@B1 = dso_local global double 0xBFDFFFFFFFFF8156, align 8
@B2 = dso_local global double 0x3FA5555555290224, align 8
@B3 = dso_local global double 0xBF56C16BFFE76516, align 8
@B4 = dso_local global double 0x3EFA019528242DB7, align 8
@B5 = dso_local global double 0xBE927BB3D47DDB8E, align 8
@B6 = dso_local global double 0x3E2157B275DF182A, align 8
@C0 = dso_local global double 1.000000e+00, align 8
@C1 = dso_local global double 0x3FEFFFFFFE37B3E2, align 8
@C2 = dso_local global double 0x3FDFFFFFCC2BA4B8, align 8
@C3 = dso_local global double 0x3FC555587C476915, align 8
@C4 = dso_local global double 0x3FA5555B7E795548, align 8
@C5 = dso_local global double 0x3F810D9A4AD9120C, align 8
@C6 = dso_local global double 0x3F5713187EDB8C05, align 8
@C7 = dso_local global double 0x3F26C077C8173F3A, align 8
@C8 = dso_local global double 0x3F049D03FE04B1CF, align 8
@D1 = dso_local global double 0x3FA47AE143138374, align 8
@D2 = dso_local global double 9.600000e-04, align 8
@D3 = dso_local global double 0x3EB4B05A0FF4A728, align 8
@E2 = dso_local global double 4.800000e-04, align 8
@E3 = dso_local global double 4.110510e-07, align 8
@TLimit = common dso_local global double 0.000000e+00, align 8
@piref = common dso_local global double 0.000000e+00, align 8
@one = common dso_local global double 0.000000e+00, align 8
@two = common dso_local global double 0.000000e+00, align 8
@three = common dso_local global double 0.000000e+00, align 8
@four = common dso_local global double 0.000000e+00, align 8
@five = common dso_local global double 0.000000e+00, align 8
@scale = common dso_local global double 0.000000e+00, align 8
@sa = common dso_local global double 0.000000e+00, align 8
@sb = common dso_local global double 0.000000e+00, align 8
@sc = common dso_local global double 0.000000e+00, align 8
@nulltime = common dso_local global double 0.000000e+00, align 8
@TimeArray = common dso_local global [3 x double] zeroinitializer, align 16
@T = common dso_local global [36 x double] zeroinitializer, align 16
@sd = common dso_local global double 0.000000e+00, align 8
@piprg = common dso_local global double 0.000000e+00, align 8
@pierr = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"   FLOPS C Program (Double Precision), V2.0 18 Dec 1992\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"   Module     Error        RunTime      MFLOPS\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"                            (usec)\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"     8   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  store i64 15625, i64* %7, align 8
  store double 1.000000e+00, double* @TLimit, align 8
  store i64 512000000, i64* %8, align 8
  store double 0x400921FB54442D18, double* @piref, align 8
  store double 1.000000e+00, double* @one, align 8
  store double 2.000000e+00, double* @two, align 8
  store double 3.000000e+00, double* @three, align 8
  store double 4.000000e+00, double* @four, align 8
  store double 5.000000e+00, double* @five, align 8
  %14 = load double, double* @one, align 8
  store double %14, double* @scale, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %17 = load i64, i64* %7, align 8
  %18 = mul nsw i64 %17, 10000
  store i64 %18, i64* %10, align 8
  %19 = load double, double* @piref, align 8
  %20 = load double, double* @three, align 8
  %21 = load i64, i64* %10, align 8
  %22 = sitofp i64 %21 to double
  %23 = fmul double %20, %22
  %24 = fdiv double %19, %23
  store double %24, double* %6, align 8
  store double 0.000000e+00, double* %2, align 8
  store double 0.000000e+00, double* %4, align 8
  store i64 1, i64* %9, align 8
  br label %25

25:                                               ; preds = %96, %0
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = sub nsw i64 %27, 1
  %29 = icmp sle i64 %26, %28
  br i1 %29, label %30, label %99

30:                                               ; preds = %25
  %31 = load i64, i64* %9, align 8
  %32 = sitofp i64 %31 to double
  %33 = load double, double* %6, align 8
  %34 = fmul double %32, %33
  store double %34, double* %3, align 8
  %35 = load double, double* %3, align 8
  %36 = load double, double* %3, align 8
  %37 = fmul double %35, %36
  store double %37, double* %5, align 8
  %38 = load double, double* %5, align 8
  %39 = load double, double* %5, align 8
  %40 = load double, double* %5, align 8
  %41 = load double, double* %5, align 8
  %42 = load double, double* %5, align 8
  %43 = load double, double* @B6, align 8
  %44 = load double, double* %5, align 8
  %45 = fmul double %43, %44
  %46 = load double, double* @B5, align 8
  %47 = fadd double %45, %46
  %48 = fmul double %42, %47
  %49 = load double, double* @B4, align 8
  %50 = fadd double %48, %49
  %51 = fmul double %41, %50
  %52 = load double, double* @B3, align 8
  %53 = fadd double %51, %52
  %54 = fmul double %40, %53
  %55 = load double, double* @B2, align 8
  %56 = fadd double %54, %55
  %57 = fmul double %39, %56
  %58 = load double, double* @B1, align 8
  %59 = fadd double %57, %58
  %60 = fmul double %38, %59
  %61 = load double, double* @one, align 8
  %62 = fadd double %60, %61
  store double %62, double* %4, align 8
  %63 = load double, double* %2, align 8
  %64 = load double, double* %4, align 8
  %65 = load double, double* %4, align 8
  %66 = fmul double %64, %65
  %67 = load double, double* %3, align 8
  %68 = fmul double %66, %67
  %69 = load double, double* @A6, align 8
  %70 = load double, double* %5, align 8
  %71 = fmul double %69, %70
  %72 = load double, double* @A5, align 8
  %73 = fadd double %71, %72
  %74 = load double, double* %5, align 8
  %75 = fmul double %73, %74
  %76 = load double, double* @A4, align 8
  %77 = fadd double %75, %76
  %78 = load double, double* %5, align 8
  %79 = fmul double %77, %78
  %80 = load double, double* @A3, align 8
  %81 = fadd double %79, %80
  %82 = load double, double* %5, align 8
  %83 = fmul double %81, %82
  %84 = load double, double* @A2, align 8
  %85 = fadd double %83, %84
  %86 = load double, double* %5, align 8
  %87 = fmul double %85, %86
  %88 = load double, double* @A1, align 8
  %89 = fadd double %87, %88
  %90 = load double, double* %5, align 8
  %91 = fmul double %89, %90
  %92 = load double, double* @one, align 8
  %93 = fadd double %91, %92
  %94 = fmul double %68, %93
  %95 = fadd double %63, %94
  store double %95, double* %2, align 8
  br label %96

96:                                               ; preds = %30
  %97 = load i64, i64* %9, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %9, align 8
  br label %25

99:                                               ; preds = %25
  %100 = load double, double* @piref, align 8
  %101 = load double, double* @three, align 8
  %102 = fdiv double %100, %101
  store double %102, double* %3, align 8
  %103 = load double, double* %3, align 8
  %104 = load double, double* %3, align 8
  %105 = fmul double %103, %104
  store double %105, double* %5, align 8
  %106 = load double, double* %3, align 8
  %107 = load double, double* @A6, align 8
  %108 = load double, double* %5, align 8
  %109 = fmul double %107, %108
  %110 = load double, double* @A5, align 8
  %111 = fadd double %109, %110
  %112 = load double, double* %5, align 8
  %113 = fmul double %111, %112
  %114 = load double, double* @A4, align 8
  %115 = fadd double %113, %114
  %116 = load double, double* %5, align 8
  %117 = fmul double %115, %116
  %118 = load double, double* @A3, align 8
  %119 = fadd double %117, %118
  %120 = load double, double* %5, align 8
  %121 = fmul double %119, %120
  %122 = load double, double* @A2, align 8
  %123 = fadd double %121, %122
  %124 = load double, double* %5, align 8
  %125 = fmul double %123, %124
  %126 = load double, double* @A1, align 8
  %127 = fadd double %125, %126
  %128 = load double, double* %5, align 8
  %129 = fmul double %127, %128
  %130 = load double, double* @one, align 8
  %131 = fadd double %129, %130
  %132 = fmul double %106, %131
  store double %132, double* @sa, align 8
  %133 = load double, double* %5, align 8
  %134 = load double, double* %5, align 8
  %135 = load double, double* %5, align 8
  %136 = load double, double* %5, align 8
  %137 = load double, double* %5, align 8
  %138 = load double, double* @B6, align 8
  %139 = load double, double* %5, align 8
  %140 = fmul double %138, %139
  %141 = load double, double* @B5, align 8
  %142 = fadd double %140, %141
  %143 = fmul double %137, %142
  %144 = load double, double* @B4, align 8
  %145 = fadd double %143, %144
  %146 = fmul double %136, %145
  %147 = load double, double* @B3, align 8
  %148 = fadd double %146, %147
  %149 = fmul double %135, %148
  %150 = load double, double* @B2, align 8
  %151 = fadd double %149, %150
  %152 = fmul double %134, %151
  %153 = load double, double* @B1, align 8
  %154 = fadd double %152, %153
  %155 = fmul double %133, %154
  %156 = load double, double* @one, align 8
  %157 = fadd double %155, %156
  store double %157, double* @sb, align 8
  %158 = load double, double* @sa, align 8
  %159 = load double, double* @sb, align 8
  %160 = fmul double %158, %159
  %161 = load double, double* @sb, align 8
  %162 = fmul double %160, %161
  store double %162, double* @sa, align 8
  %163 = load double, double* %6, align 8
  %164 = load double, double* @sa, align 8
  %165 = load double, double* @two, align 8
  %166 = load double, double* %2, align 8
  %167 = fmul double %165, %166
  %168 = fadd double %164, %167
  %169 = fmul double %163, %168
  %170 = load double, double* @two, align 8
  %171 = fdiv double %169, %170
  store double %171, double* @sa, align 8
  store double 0x3FD2AAAAAAAAAAAB, double* @sb, align 8
  %172 = load double, double* @sa, align 8
  %173 = load double, double* @sb, align 8
  %174 = fsub double %172, %173
  store double %174, double* @sc, align 8
  %175 = load double, double* @sc, align 8
  %176 = fmul double %175, 1.000000e-30
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), double %176, double 0.000000e+00, double 0.000000e+00)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
