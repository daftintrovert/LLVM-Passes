; ModuleID = 'lbm.opt.bc'
source_filename = "lbm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@OMEGA = dso_local global float 0x3FC99999A0000000, align 4
@TAU = dso_local global float 5.000000e-01, align 4
@FORCING = dso_local global float 0x4060624DE0000000, align 4
@KVISC = dso_local global float 1.500000e+00, align 4
@cx = dso_local global [9 x i32] [i32 1, i32 0, i32 -1, i32 0, i32 1, i32 -1, i32 -1, i32 1, i32 0], align 16
@cy = dso_local global [9 x i32] [i32 0, i32 1, i32 0, i32 -1, i32 1, i32 1, i32 -1, i32 -1, i32 0], align 16
@jx = dso_local global [128 x [128 x float]] zeroinitializer, align 16
@jy = dso_local global [128 x [128 x float]] zeroinitializer, align 16
@rho = dso_local global [128 x [128 x float]] zeroinitializer, align 16
@f = dso_local global [128 x [128 x [128 x float]]] zeroinitializer, align 16
@fprop = dso_local global [128 x [128 x [128 x float]]] zeroinitializer, align 16
@u = dso_local global [128 x [128 x float]] zeroinitializer, align 16
@v = dso_local global [128 x [128 x float]] zeroinitializer, align 16
@feq = dso_local global [128 x [128 x [128 x float]]] zeroinitializer, align 16
@UX = dso_local global float 0.000000e+00, align 4
@force = dso_local global float 0.000000e+00, align 4
@uprofile = dso_local global [128 x float] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @JxJyRhoFFprop(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %5, align 4
  br label %8

8:                                                ; preds = %51, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %54

12:                                               ; preds = %8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %47, %12
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 128
  br i1 %15, label %16, label %50

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* @jx, i64 0, i64 %18
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [128 x float], [128 x float]* %19, i64 0, i64 %21
  store float 0.000000e+00, float* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* @jy, i64 0, i64 %24
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [128 x float], [128 x float]* %25, i64 0, i64 %27
  store float 0.000000e+00, float* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* @rho, i64 0, i64 %30
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [128 x float], [128 x float]* %31, i64 0, i64 %33
  store float 1.000000e+00, float* %34, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 0), i64 0, i64 %36
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [128 x float], [128 x float]* %37, i64 0, i64 %39
  store float 0.000000e+00, float* %40, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @fprop, i64 0, i64 0), i64 0, i64 %42
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [128 x float], [128 x float]* %43, i64 0, i64 %45
  store float 0.000000e+00, float* %46, align 4
  br label %47

47:                                               ; preds = %16
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %13, !llvm.loop !6

50:                                               ; preds = %13
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %8, !llvm.loop !8

54:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initFValues(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %357, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %360

15:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %353, %15
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 128
  br i1 %18, label %19, label %356

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* @jx, i64 0, i64 %21
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [128 x float], [128 x float]* %22, i64 0, i64 %24
  %26 = load float, float* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* @rho, i64 0, i64 %28
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [128 x float], [128 x float]* %29, i64 0, i64 %31
  %33 = load float, float* %32, align 4
  %34 = fdiv float %26, %33
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* @u, i64 0, i64 %36
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [128 x float], [128 x float]* %37, i64 0, i64 %39
  store float %34, float* %40, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* @jy, i64 0, i64 %42
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [128 x float], [128 x float]* %43, i64 0, i64 %45
  %47 = load float, float* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* @rho, i64 0, i64 %49
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [128 x float], [128 x float]* %50, i64 0, i64 %52
  %54 = load float, float* %53, align 4
  %55 = fdiv float %47, %54
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* @v, i64 0, i64 %57
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [128 x float], [128 x float]* %58, i64 0, i64 %60
  store float %55, float* %61, align 4
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* @rho, i64 0, i64 %63
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [128 x float], [128 x float]* %64, i64 0, i64 %66
  %68 = load float, float* %67, align 4
  store float %68, float* %7, align 4
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* @u, i64 0, i64 %70
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [128 x float], [128 x float]* %71, i64 0, i64 %73
  %75 = load float, float* %74, align 4
  store float %75, float* %8, align 4
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* @v, i64 0, i64 %77
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [128 x float], [128 x float]* %78, i64 0, i64 %80
  %82 = load float, float* %81, align 4
  store float %82, float* %9, align 4
  %83 = load float, float* %7, align 4
  %84 = fpext float %83 to double
  %85 = fdiv double %84, 9.000000e+00
  %86 = load float, float* %8, align 4
  %87 = fpext float %86 to double
  %88 = call double @llvm.fmuladd.f64(double 3.000000e+00, double %87, double 1.000000e+00)
  %89 = load float, float* %8, align 4
  %90 = fpext float %89 to double
  %91 = fmul double 4.500000e+00, %90
  %92 = load float, float* %8, align 4
  %93 = fpext float %92 to double
  %94 = call double @llvm.fmuladd.f64(double %91, double %93, double %88)
  %95 = load float, float* %8, align 4
  %96 = load float, float* %8, align 4
  %97 = load float, float* %9, align 4
  %98 = load float, float* %9, align 4
  %99 = fmul float %97, %98
  %100 = call float @llvm.fmuladd.f32(float %95, float %96, float %99)
  %101 = fpext float %100 to double
  %102 = call double @llvm.fmuladd.f64(double -1.500000e+00, double %101, double %94)
  %103 = fmul double %85, %102
  %104 = fptrunc double %103 to float
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 1), i64 0, i64 %106
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [128 x float], [128 x float]* %107, i64 0, i64 %109
  store float %104, float* %110, align 4
  %111 = load float, float* %7, align 4
  %112 = fpext float %111 to double
  %113 = fdiv double %112, 9.000000e+00
  %114 = load float, float* %8, align 4
  %115 = fpext float %114 to double
  %116 = call double @llvm.fmuladd.f64(double 3.000000e+00, double %115, double 1.000000e+00)
  %117 = load float, float* %8, align 4
  %118 = fpext float %117 to double
  %119 = fmul double 4.500000e+00, %118
  %120 = load float, float* %8, align 4
  %121 = fpext float %120 to double
  %122 = call double @llvm.fmuladd.f64(double %119, double %121, double %116)
  %123 = load float, float* %8, align 4
  %124 = load float, float* %8, align 4
  %125 = load float, float* %9, align 4
  %126 = load float, float* %9, align 4
  %127 = fmul float %125, %126
  %128 = call float @llvm.fmuladd.f32(float %123, float %124, float %127)
  %129 = fpext float %128 to double
  %130 = call double @llvm.fmuladd.f64(double -1.500000e+00, double %129, double %122)
  %131 = fmul double %113, %130
  %132 = fptrunc double %131 to float
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 2), i64 0, i64 %134
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [128 x float], [128 x float]* %135, i64 0, i64 %137
  store float %132, float* %138, align 4
  %139 = load float, float* %7, align 4
  %140 = fpext float %139 to double
  %141 = fdiv double %140, 9.000000e+00
  %142 = load float, float* %8, align 4
  %143 = fpext float %142 to double
  %144 = call double @llvm.fmuladd.f64(double -3.000000e+00, double %143, double 1.000000e+00)
  %145 = load float, float* %8, align 4
  %146 = fpext float %145 to double
  %147 = fmul double 4.500000e+00, %146
  %148 = load float, float* %8, align 4
  %149 = fpext float %148 to double
  %150 = call double @llvm.fmuladd.f64(double %147, double %149, double %144)
  %151 = load float, float* %8, align 4
  %152 = load float, float* %8, align 4
  %153 = load float, float* %9, align 4
  %154 = load float, float* %9, align 4
  %155 = fmul float %153, %154
  %156 = call float @llvm.fmuladd.f32(float %151, float %152, float %155)
  %157 = fpext float %156 to double
  %158 = call double @llvm.fmuladd.f64(double -1.500000e+00, double %157, double %150)
  %159 = fmul double %141, %158
  %160 = fptrunc double %159 to float
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 3), i64 0, i64 %162
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [128 x float], [128 x float]* %163, i64 0, i64 %165
  store float %160, float* %166, align 4
  %167 = load float, float* %7, align 4
  %168 = fpext float %167 to double
  %169 = fdiv double %168, 9.000000e+00
  %170 = load float, float* %8, align 4
  %171 = fpext float %170 to double
  %172 = call double @llvm.fmuladd.f64(double -3.000000e+00, double %171, double 1.000000e+00)
  %173 = load float, float* %8, align 4
  %174 = fpext float %173 to double
  %175 = fmul double 4.500000e+00, %174
  %176 = load float, float* %8, align 4
  %177 = fpext float %176 to double
  %178 = call double @llvm.fmuladd.f64(double %175, double %177, double %172)
  %179 = load float, float* %8, align 4
  %180 = load float, float* %8, align 4
  %181 = load float, float* %9, align 4
  %182 = load float, float* %9, align 4
  %183 = fmul float %181, %182
  %184 = call float @llvm.fmuladd.f32(float %179, float %180, float %183)
  %185 = fpext float %184 to double
  %186 = call double @llvm.fmuladd.f64(double -1.500000e+00, double %185, double %178)
  %187 = fmul double %169, %186
  %188 = fptrunc double %187 to float
  %189 = load i32, i32* %5, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 4), i64 0, i64 %190
  %192 = load i32, i32* %6, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [128 x float], [128 x float]* %191, i64 0, i64 %193
  store float %188, float* %194, align 4
  %195 = load float, float* %7, align 4
  %196 = fpext float %195 to double
  %197 = fdiv double %196, 3.600000e+01
  %198 = load float, float* %8, align 4
  %199 = load float, float* %9, align 4
  %200 = fadd float %198, %199
  %201 = fpext float %200 to double
  %202 = call double @llvm.fmuladd.f64(double 3.000000e+00, double %201, double 1.000000e+00)
  %203 = load float, float* %8, align 4
  %204 = load float, float* %8, align 4
  %205 = fadd float %203, %204
  %206 = fpext float %205 to double
  %207 = fmul double 4.500000e+00, %206
  %208 = load float, float* %8, align 4
  %209 = load float, float* %8, align 4
  %210 = fadd float %208, %209
  %211 = fpext float %210 to double
  %212 = call double @llvm.fmuladd.f64(double %207, double %211, double %202)
  %213 = load float, float* %8, align 4
  %214 = load float, float* %8, align 4
  %215 = load float, float* %9, align 4
  %216 = load float, float* %9, align 4
  %217 = fmul float %215, %216
  %218 = call float @llvm.fmuladd.f32(float %213, float %214, float %217)
  %219 = fpext float %218 to double
  %220 = call double @llvm.fmuladd.f64(double -1.500000e+00, double %219, double %212)
  %221 = fmul double %197, %220
  %222 = fptrunc double %221 to float
  %223 = load i32, i32* %5, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 5), i64 0, i64 %224
  %226 = load i32, i32* %6, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [128 x float], [128 x float]* %225, i64 0, i64 %227
  store float %222, float* %228, align 4
  %229 = load float, float* %7, align 4
  %230 = fpext float %229 to double
  %231 = fdiv double %230, 3.600000e+01
  %232 = load float, float* %8, align 4
  %233 = fneg float %232
  %234 = load float, float* %9, align 4
  %235 = fadd float %233, %234
  %236 = fpext float %235 to double
  %237 = call double @llvm.fmuladd.f64(double 3.000000e+00, double %236, double 1.000000e+00)
  %238 = load float, float* %8, align 4
  %239 = fneg float %238
  %240 = load float, float* %8, align 4
  %241 = fadd float %239, %240
  %242 = fpext float %241 to double
  %243 = fmul double 4.500000e+00, %242
  %244 = load float, float* %8, align 4
  %245 = load float, float* %8, align 4
  %246 = fadd float %244, %245
  %247 = fpext float %246 to double
  %248 = call double @llvm.fmuladd.f64(double %243, double %247, double %237)
  %249 = load float, float* %8, align 4
  %250 = load float, float* %8, align 4
  %251 = load float, float* %9, align 4
  %252 = load float, float* %9, align 4
  %253 = fmul float %251, %252
  %254 = call float @llvm.fmuladd.f32(float %249, float %250, float %253)
  %255 = fpext float %254 to double
  %256 = call double @llvm.fmuladd.f64(double -1.500000e+00, double %255, double %248)
  %257 = fmul double %231, %256
  %258 = fptrunc double %257 to float
  %259 = load i32, i32* %5, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 6), i64 0, i64 %260
  %262 = load i32, i32* %6, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [128 x float], [128 x float]* %261, i64 0, i64 %263
  store float %258, float* %264, align 4
  %265 = load float, float* %7, align 4
  %266 = fpext float %265 to double
  %267 = fdiv double %266, 3.600000e+01
  %268 = load float, float* %8, align 4
  %269 = load float, float* %9, align 4
  %270 = fadd float %268, %269
  %271 = fpext float %270 to double
  %272 = call double @llvm.fmuladd.f64(double -3.000000e+00, double %271, double 1.000000e+00)
  %273 = load float, float* %8, align 4
  %274 = load float, float* %8, align 4
  %275 = fadd float %273, %274
  %276 = fpext float %275 to double
  %277 = fmul double 4.500000e+00, %276
  %278 = load float, float* %8, align 4
  %279 = load float, float* %8, align 4
  %280 = fadd float %278, %279
  %281 = fpext float %280 to double
  %282 = call double @llvm.fmuladd.f64(double %277, double %281, double %272)
  %283 = load float, float* %8, align 4
  %284 = load float, float* %8, align 4
  %285 = load float, float* %9, align 4
  %286 = load float, float* %9, align 4
  %287 = fmul float %285, %286
  %288 = call float @llvm.fmuladd.f32(float %283, float %284, float %287)
  %289 = fpext float %288 to double
  %290 = call double @llvm.fmuladd.f64(double -1.500000e+00, double %289, double %282)
  %291 = fmul double %267, %290
  %292 = fptrunc double %291 to float
  %293 = load i32, i32* %5, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 7), i64 0, i64 %294
  %296 = load i32, i32* %6, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [128 x float], [128 x float]* %295, i64 0, i64 %297
  store float %292, float* %298, align 4
  %299 = load float, float* %7, align 4
  %300 = fpext float %299 to double
  %301 = fdiv double %300, 3.600000e+01
  %302 = load float, float* %8, align 4
  %303 = load float, float* %9, align 4
  %304 = fsub float %302, %303
  %305 = fpext float %304 to double
  %306 = call double @llvm.fmuladd.f64(double 3.000000e+00, double %305, double 1.000000e+00)
  %307 = load float, float* %8, align 4
  %308 = load float, float* %8, align 4
  %309 = fsub float %307, %308
  %310 = fpext float %309 to double
  %311 = fmul double 4.500000e+00, %310
  %312 = load float, float* %8, align 4
  %313 = load float, float* %8, align 4
  %314 = fadd float %312, %313
  %315 = fpext float %314 to double
  %316 = call double @llvm.fmuladd.f64(double %311, double %315, double %306)
  %317 = load float, float* %8, align 4
  %318 = load float, float* %8, align 4
  %319 = load float, float* %9, align 4
  %320 = load float, float* %9, align 4
  %321 = fmul float %319, %320
  %322 = call float @llvm.fmuladd.f32(float %317, float %318, float %321)
  %323 = fpext float %322 to double
  %324 = call double @llvm.fmuladd.f64(double -1.500000e+00, double %323, double %316)
  %325 = fmul double %301, %324
  %326 = fptrunc double %325 to float
  %327 = load i32, i32* %5, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 8), i64 0, i64 %328
  %330 = load i32, i32* %6, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [128 x float], [128 x float]* %329, i64 0, i64 %331
  store float %326, float* %332, align 4
  %333 = load float, float* %7, align 4
  %334 = fpext float %333 to double
  %335 = fmul double %334, 4.000000e+00
  %336 = fdiv double %335, 9.000000e+00
  %337 = load float, float* %8, align 4
  %338 = load float, float* %8, align 4
  %339 = load float, float* %9, align 4
  %340 = load float, float* %9, align 4
  %341 = fmul float %339, %340
  %342 = call float @llvm.fmuladd.f32(float %337, float %338, float %341)
  %343 = fpext float %342 to double
  %344 = call double @llvm.fmuladd.f64(double -1.500000e+00, double %343, double 1.000000e+00)
  %345 = fmul double %336, %344
  %346 = fptrunc double %345 to float
  %347 = load i32, i32* %5, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 9), i64 0, i64 %348
  %350 = load i32, i32* %6, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [128 x float], [128 x float]* %349, i64 0, i64 %351
  store float %346, float* %352, align 4
  br label %353

353:                                              ; preds = %19
  %354 = load i32, i32* %6, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %6, align 4
  br label %16, !llvm.loop !9

356:                                              ; preds = %16
  br label %357

357:                                              ; preds = %356
  %358 = load i32, i32* %5, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %5, align 4
  br label %11, !llvm.loop !10

360:                                              ; preds = %11
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CopyFpropAndFeq(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* %5, align 4
  br label %9

9:                                                ; preds = %58, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %61

13:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %54, %13
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 128
  br i1 %16, label %17, label %57

17:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %41, %17
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 9
  br i1 %20, label %21, label %44

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 %23
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* %24, i64 0, i64 %26
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [128 x float], [128 x float]* %27, i64 0, i64 %29
  %31 = load float, float* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @fprop, i64 0, i64 %33
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* %34, i64 0, i64 %36
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [128 x float], [128 x float]* %37, i64 0, i64 %39
  store float %31, float* %40, align 4
  br label %41

41:                                               ; preds = %21
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %18, !llvm.loop !11

44:                                               ; preds = %18
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @feq, i64 0, i64 %46
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* %47, i64 0, i64 %49
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [128 x float], [128 x float]* %50, i64 0, i64 %52
  store float 0.000000e+00, float* %53, align 4
  br label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %14, !llvm.loop !12

57:                                               ; preds = %14
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %9, !llvm.loop !13

61:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load float, float* @FORCING, align 4
  %4 = fpext float %3 to double
  %5 = fmul double 5.000000e-01, %4
  %6 = fmul double %5, 1.280000e+02
  %7 = fmul double %6, 1.280000e+02
  %8 = load float, float* @KVISC, align 4
  %9 = fpext float %8 to double
  %10 = fdiv double %7, %9
  %11 = fptrunc double %10 to float
  store float %11, float* @UX, align 4
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %19, %0
  %13 = load i32, i32* %1, align 4
  %14 = icmp slt i32 %13, 128
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 8
  call void @JxJyRhoFFprop(i32 noundef %16, i32 noundef %18)
  br label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 8
  store i32 %21, i32* %1, align 4
  br label %12, !llvm.loop !14

22:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %30, %22
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %24, 128
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, 8
  call void @initFValues(i32 noundef %27, i32 noundef %29)
  br label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 8
  store i32 %32, i32* %2, align 4
  br label %23, !llvm.loop !15

33:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %41, %33
  %35 = load i32, i32* %2, align 4
  %36 = icmp slt i32 %35, 128
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* %2, align 4
  %40 = add nsw i32 %39, 8
  call void @CopyFpropAndFeq(i32 noundef %38, i32 noundef %40)
  br label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 8
  store i32 %43, i32* %2, align 4
  br label %34, !llvm.loop !16

44:                                               ; preds = %34
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ValueUpdateMain(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %455, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %458

16:                                               ; preds = %12
  store i32 2, i32* %6, align 4
  br label %17

17:                                               ; preds = %413, %16
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 127
  br i1 %19, label %20, label %416

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* @rho, i64 0, i64 %22
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [128 x float], [128 x float]* %23, i64 0, i64 %25
  %27 = load float, float* %26, align 4
  store float %27, float* %8, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* @u, i64 0, i64 %29
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [128 x float], [128 x float]* %30, i64 0, i64 %32
  %34 = load float, float* %33, align 4
  store float %34, float* %9, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* @v, i64 0, i64 %36
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [128 x float], [128 x float]* %37, i64 0, i64 %39
  %41 = load float, float* %40, align 4
  store float %41, float* %10, align 4
  %42 = load float, float* %8, align 4
  %43 = fpext float %42 to double
  %44 = fdiv double %43, 9.000000e+00
  %45 = load float, float* %9, align 4
  %46 = call float @llvm.fmuladd.f32(float 3.000000e+00, float %45, float 1.000000e+00)
  %47 = fpext float %46 to double
  %48 = load float, float* %9, align 4
  %49 = fpext float %48 to double
  %50 = fmul double 4.500000e+00, %49
  %51 = load float, float* %9, align 4
  %52 = fpext float %51 to double
  %53 = call double @llvm.fmuladd.f64(double %50, double %52, double %47)
  %54 = load float, float* %9, align 4
  %55 = load float, float* %9, align 4
  %56 = load float, float* %10, align 4
  %57 = load float, float* %10, align 4
  %58 = fmul float %56, %57
  %59 = call float @llvm.fmuladd.f32(float %54, float %55, float %58)
  %60 = fpext float %59 to double
  %61 = call double @llvm.fmuladd.f64(double -1.500000e+00, double %60, double %53)
  %62 = fmul double %44, %61
  %63 = fptrunc double %62 to float
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @feq, i64 0, i64 1), i64 0, i64 %65
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [128 x float], [128 x float]* %66, i64 0, i64 %68
  store float %63, float* %69, align 4
  %70 = load float, float* %8, align 4
  %71 = fpext float %70 to double
  %72 = fdiv double %71, 9.000000e+00
  %73 = load float, float* %10, align 4
  %74 = call float @llvm.fmuladd.f32(float 3.000000e+00, float %73, float 1.000000e+00)
  %75 = fpext float %74 to double
  %76 = load float, float* %10, align 4
  %77 = fpext float %76 to double
  %78 = fmul double 4.500000e+00, %77
  %79 = load float, float* %10, align 4
  %80 = fpext float %79 to double
  %81 = call double @llvm.fmuladd.f64(double %78, double %80, double %75)
  %82 = load float, float* %9, align 4
  %83 = load float, float* %9, align 4
  %84 = load float, float* %10, align 4
  %85 = load float, float* %10, align 4
  %86 = fmul float %84, %85
  %87 = call float @llvm.fmuladd.f32(float %82, float %83, float %86)
  %88 = fpext float %87 to double
  %89 = call double @llvm.fmuladd.f64(double -1.500000e+00, double %88, double %81)
  %90 = fmul double %72, %89
  %91 = fptrunc double %90 to float
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @feq, i64 0, i64 2), i64 0, i64 %93
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [128 x float], [128 x float]* %94, i64 0, i64 %96
  store float %91, float* %97, align 4
  %98 = load float, float* %8, align 4
  %99 = fpext float %98 to double
  %100 = fdiv double %99, 9.000000e+00
  %101 = load float, float* %9, align 4
  %102 = call float @llvm.fmuladd.f32(float -3.000000e+00, float %101, float 1.000000e+00)
  %103 = fpext float %102 to double
  %104 = load float, float* %9, align 4
  %105 = fpext float %104 to double
  %106 = fmul double 4.500000e+00, %105
  %107 = load float, float* %9, align 4
  %108 = fpext float %107 to double
  %109 = call double @llvm.fmuladd.f64(double %106, double %108, double %103)
  %110 = load float, float* %9, align 4
  %111 = load float, float* %9, align 4
  %112 = load float, float* %10, align 4
  %113 = load float, float* %10, align 4
  %114 = fmul float %112, %113
  %115 = call float @llvm.fmuladd.f32(float %110, float %111, float %114)
  %116 = fpext float %115 to double
  %117 = call double @llvm.fmuladd.f64(double -1.500000e+00, double %116, double %109)
  %118 = fmul double %100, %117
  %119 = fptrunc double %118 to float
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @feq, i64 0, i64 3), i64 0, i64 %121
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [128 x float], [128 x float]* %122, i64 0, i64 %124
  store float %119, float* %125, align 4
  %126 = load float, float* %8, align 4
  %127 = fpext float %126 to double
  %128 = fdiv double %127, 9.000000e+00
  %129 = load float, float* %10, align 4
  %130 = call float @llvm.fmuladd.f32(float -3.000000e+00, float %129, float 1.000000e+00)
  %131 = fpext float %130 to double
  %132 = load float, float* %10, align 4
  %133 = fpext float %132 to double
  %134 = fmul double 4.500000e+00, %133
  %135 = load float, float* %10, align 4
  %136 = fpext float %135 to double
  %137 = call double @llvm.fmuladd.f64(double %134, double %136, double %131)
  %138 = load float, float* %9, align 4
  %139 = load float, float* %9, align 4
  %140 = load float, float* %10, align 4
  %141 = load float, float* %10, align 4
  %142 = fmul float %140, %141
  %143 = call float @llvm.fmuladd.f32(float %138, float %139, float %142)
  %144 = fpext float %143 to double
  %145 = call double @llvm.fmuladd.f64(double -1.500000e+00, double %144, double %137)
  %146 = fmul double %128, %145
  %147 = fptrunc double %146 to float
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @feq, i64 0, i64 4), i64 0, i64 %149
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [128 x float], [128 x float]* %150, i64 0, i64 %152
  store float %147, float* %153, align 4
  %154 = load float, float* %8, align 4
  %155 = fpext float %154 to double
  %156 = fdiv double %155, 3.600000e+01
  %157 = load float, float* %9, align 4
  %158 = load float, float* %10, align 4
  %159 = fadd float %157, %158
  %160 = call float @llvm.fmuladd.f32(float 3.000000e+00, float %159, float 1.000000e+00)
  %161 = fpext float %160 to double
  %162 = load float, float* %9, align 4
  %163 = load float, float* %10, align 4
  %164 = fadd float %162, %163
  %165 = fpext float %164 to double
  %166 = fmul double 4.500000e+00, %165
  %167 = load float, float* %9, align 4
  %168 = load float, float* %10, align 4
  %169 = fadd float %167, %168
  %170 = fpext float %169 to double
  %171 = call double @llvm.fmuladd.f64(double %166, double %170, double %161)
  %172 = load float, float* %9, align 4
  %173 = load float, float* %9, align 4
  %174 = load float, float* %10, align 4
  %175 = load float, float* %10, align 4
  %176 = fmul float %174, %175
  %177 = call float @llvm.fmuladd.f32(float %172, float %173, float %176)
  %178 = fpext float %177 to double
  %179 = call double @llvm.fmuladd.f64(double -1.500000e+00, double %178, double %171)
  %180 = fmul double %156, %179
  %181 = fptrunc double %180 to float
  %182 = load i32, i32* %5, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @feq, i64 0, i64 5), i64 0, i64 %183
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [128 x float], [128 x float]* %184, i64 0, i64 %186
  store float %181, float* %187, align 4
  %188 = load float, float* %8, align 4
  %189 = fpext float %188 to double
  %190 = fdiv double %189, 3.600000e+01
  %191 = load float, float* %9, align 4
  %192 = fneg float %191
  %193 = load float, float* %10, align 4
  %194 = fadd float %192, %193
  %195 = call float @llvm.fmuladd.f32(float 3.000000e+00, float %194, float 1.000000e+00)
  %196 = fpext float %195 to double
  %197 = load float, float* %9, align 4
  %198 = fneg float %197
  %199 = load float, float* %10, align 4
  %200 = fadd float %198, %199
  %201 = fpext float %200 to double
  %202 = fmul double 4.500000e+00, %201
  %203 = load float, float* %9, align 4
  %204 = fneg float %203
  %205 = load float, float* %10, align 4
  %206 = fadd float %204, %205
  %207 = fpext float %206 to double
  %208 = call double @llvm.fmuladd.f64(double %202, double %207, double %196)
  %209 = load float, float* %9, align 4
  %210 = load float, float* %9, align 4
  %211 = load float, float* %10, align 4
  %212 = load float, float* %10, align 4
  %213 = fmul float %211, %212
  %214 = call float @llvm.fmuladd.f32(float %209, float %210, float %213)
  %215 = fpext float %214 to double
  %216 = call double @llvm.fmuladd.f64(double -1.500000e+00, double %215, double %208)
  %217 = fmul double %190, %216
  %218 = fptrunc double %217 to float
  %219 = load i32, i32* %5, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @feq, i64 0, i64 6), i64 0, i64 %220
  %222 = load i32, i32* %6, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [128 x float], [128 x float]* %221, i64 0, i64 %223
  store float %218, float* %224, align 4
  %225 = load float, float* %8, align 4
  %226 = fpext float %225 to double
  %227 = fdiv double %226, 3.600000e+01
  %228 = load float, float* %9, align 4
  %229 = load float, float* %10, align 4
  %230 = fadd float %228, %229
  %231 = call float @llvm.fmuladd.f32(float -3.000000e+00, float %230, float 1.000000e+00)
  %232 = fpext float %231 to double
  %233 = load float, float* %9, align 4
  %234 = load float, float* %10, align 4
  %235 = fadd float %233, %234
  %236 = fpext float %235 to double
  %237 = fmul double 4.500000e+00, %236
  %238 = load float, float* %9, align 4
  %239 = load float, float* %10, align 4
  %240 = fadd float %238, %239
  %241 = fpext float %240 to double
  %242 = call double @llvm.fmuladd.f64(double %237, double %241, double %232)
  %243 = load float, float* %9, align 4
  %244 = load float, float* %9, align 4
  %245 = load float, float* %10, align 4
  %246 = load float, float* %10, align 4
  %247 = fmul float %245, %246
  %248 = call float @llvm.fmuladd.f32(float %243, float %244, float %247)
  %249 = fpext float %248 to double
  %250 = call double @llvm.fmuladd.f64(double -1.500000e+00, double %249, double %242)
  %251 = fmul double %227, %250
  %252 = fptrunc double %251 to float
  %253 = load i32, i32* %5, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @feq, i64 0, i64 7), i64 0, i64 %254
  %256 = load i32, i32* %6, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [128 x float], [128 x float]* %255, i64 0, i64 %257
  store float %252, float* %258, align 4
  %259 = load float, float* %8, align 4
  %260 = fpext float %259 to double
  %261 = fdiv double %260, 3.600000e+01
  %262 = load float, float* %9, align 4
  %263 = load float, float* %10, align 4
  %264 = fsub float %262, %263
  %265 = call float @llvm.fmuladd.f32(float -3.000000e+00, float %264, float 1.000000e+00)
  %266 = fpext float %265 to double
  %267 = load float, float* %9, align 4
  %268 = load float, float* %10, align 4
  %269 = fsub float %267, %268
  %270 = fpext float %269 to double
  %271 = fmul double 4.500000e+00, %270
  %272 = load float, float* %9, align 4
  %273 = load float, float* %10, align 4
  %274 = fsub float %272, %273
  %275 = fpext float %274 to double
  %276 = call double @llvm.fmuladd.f64(double %271, double %275, double %266)
  %277 = load float, float* %9, align 4
  %278 = load float, float* %9, align 4
  %279 = load float, float* %10, align 4
  %280 = load float, float* %10, align 4
  %281 = fmul float %279, %280
  %282 = call float @llvm.fmuladd.f32(float %277, float %278, float %281)
  %283 = fpext float %282 to double
  %284 = call double @llvm.fmuladd.f64(double -1.500000e+00, double %283, double %276)
  %285 = fmul double %261, %284
  %286 = fptrunc double %285 to float
  %287 = load i32, i32* %5, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @feq, i64 0, i64 8), i64 0, i64 %288
  %290 = load i32, i32* %6, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [128 x float], [128 x float]* %289, i64 0, i64 %291
  store float %286, float* %292, align 4
  %293 = load float, float* %8, align 4
  %294 = fpext float %293 to double
  %295 = fmul double %294, 4.000000e+00
  %296 = fdiv double %295, 3.600000e+01
  %297 = load float, float* %9, align 4
  %298 = load float, float* %9, align 4
  %299 = load float, float* %10, align 4
  %300 = load float, float* %10, align 4
  %301 = fmul float %299, %300
  %302 = call float @llvm.fmuladd.f32(float %297, float %298, float %301)
  %303 = fpext float %302 to double
  %304 = call double @llvm.fmuladd.f64(double -1.500000e+00, double %303, double 1.000000e+00)
  %305 = fmul double %296, %304
  %306 = fptrunc double %305 to float
  %307 = load i32, i32* %5, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @feq, i64 0, i64 9), i64 0, i64 %308
  %310 = load i32, i32* %6, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [128 x float], [128 x float]* %309, i64 0, i64 %311
  store float %306, float* %312, align 4
  store i32 0, i32* %7, align 4
  br label %313

313:                                              ; preds = %355, %20
  %314 = load i32, i32* %7, align 4
  %315 = icmp slt i32 %314, 9
  br i1 %315, label %316, label %358

316:                                              ; preds = %313
  %317 = load float, float* @OMEGA, align 4
  %318 = fpext float %317 to double
  %319 = fsub double 1.000000e+00, %318
  %320 = load i32, i32* %7, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 %321
  %323 = load i32, i32* %5, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* %322, i64 0, i64 %324
  %326 = load i32, i32* %6, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [128 x float], [128 x float]* %325, i64 0, i64 %327
  %329 = load float, float* %328, align 4
  %330 = fpext float %329 to double
  %331 = load float, float* @OMEGA, align 4
  %332 = load i32, i32* %7, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @feq, i64 0, i64 %333
  %335 = load i32, i32* %5, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* %334, i64 0, i64 %336
  %338 = load i32, i32* %6, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [128 x float], [128 x float]* %337, i64 0, i64 %339
  %341 = load float, float* %340, align 4
  %342 = fmul float %331, %341
  %343 = fpext float %342 to double
  %344 = call double @llvm.fmuladd.f64(double %319, double %330, double %343)
  %345 = fptrunc double %344 to float
  %346 = load i32, i32* %7, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @fprop, i64 0, i64 %347
  %349 = load i32, i32* %5, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* %348, i64 0, i64 %350
  %352 = load i32, i32* %6, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [128 x float], [128 x float]* %351, i64 0, i64 %353
  store float %345, float* %354, align 4
  br label %355

355:                                              ; preds = %316
  %356 = load i32, i32* %7, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %7, align 4
  br label %313, !llvm.loop !17

358:                                              ; preds = %313
  %359 = load float, float* @force, align 4
  %360 = load i32, i32* %5, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @fprop, i64 0, i64 1), i64 0, i64 %361
  %363 = load i32, i32* %6, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [128 x float], [128 x float]* %362, i64 0, i64 %364
  %366 = load float, float* %365, align 4
  %367 = fadd float %366, %359
  store float %367, float* %365, align 4
  %368 = load float, float* @force, align 4
  %369 = load i32, i32* %5, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @fprop, i64 0, i64 3), i64 0, i64 %370
  %372 = load i32, i32* %6, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds [128 x float], [128 x float]* %371, i64 0, i64 %373
  %375 = load float, float* %374, align 4
  %376 = fsub float %375, %368
  store float %376, float* %374, align 4
  %377 = load float, float* @force, align 4
  %378 = load i32, i32* %5, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @fprop, i64 0, i64 5), i64 0, i64 %379
  %381 = load i32, i32* %6, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds [128 x float], [128 x float]* %380, i64 0, i64 %382
  %384 = load float, float* %383, align 4
  %385 = fadd float %384, %377
  store float %385, float* %383, align 4
  %386 = load float, float* @force, align 4
  %387 = load i32, i32* %5, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @fprop, i64 0, i64 6), i64 0, i64 %388
  %390 = load i32, i32* %6, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [128 x float], [128 x float]* %389, i64 0, i64 %391
  %393 = load float, float* %392, align 4
  %394 = fsub float %393, %386
  store float %394, float* %392, align 4
  %395 = load float, float* @force, align 4
  %396 = load i32, i32* %5, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @fprop, i64 0, i64 7), i64 0, i64 %397
  %399 = load i32, i32* %6, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [128 x float], [128 x float]* %398, i64 0, i64 %400
  %402 = load float, float* %401, align 4
  %403 = fsub float %402, %395
  store float %403, float* %401, align 4
  %404 = load float, float* @force, align 4
  %405 = load i32, i32* %5, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @fprop, i64 0, i64 8), i64 0, i64 %406
  %408 = load i32, i32* %6, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds [128 x float], [128 x float]* %407, i64 0, i64 %409
  %411 = load float, float* %410, align 4
  %412 = fadd float %411, %404
  store float %412, float* %410, align 4
  br label %413

413:                                              ; preds = %358
  %414 = load i32, i32* %6, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %6, align 4
  br label %17, !llvm.loop !18

416:                                              ; preds = %17
  store i32 0, i32* %7, align 4
  br label %417

417:                                              ; preds = %451, %416
  %418 = load i32, i32* %7, align 4
  %419 = icmp slt i32 %418, 10
  br i1 %419, label %420, label %454

420:                                              ; preds = %417
  %421 = load i32, i32* %7, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds [128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 %422
  %424 = load i32, i32* %5, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* %423, i64 0, i64 %425
  %427 = getelementptr inbounds [128 x float], [128 x float]* %426, i64 0, i64 0
  %428 = load float, float* %427, align 16
  %429 = load i32, i32* %7, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds [128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @fprop, i64 0, i64 %430
  %432 = load i32, i32* %5, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* %431, i64 0, i64 %433
  %435 = getelementptr inbounds [128 x float], [128 x float]* %434, i64 0, i64 0
  store float %428, float* %435, align 16
  %436 = load i32, i32* %7, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds [128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 %437
  %439 = load i32, i32* %5, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* %438, i64 0, i64 %440
  %442 = getelementptr inbounds [128 x float], [128 x float]* %441, i64 0, i64 127
  %443 = load float, float* %442, align 4
  %444 = load i32, i32* %7, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds [128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @fprop, i64 0, i64 %445
  %447 = load i32, i32* %5, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* %446, i64 0, i64 %448
  %450 = getelementptr inbounds [128 x float], [128 x float]* %449, i64 0, i64 127
  store float %443, float* %450, align 4
  br label %451

451:                                              ; preds = %420
  %452 = load i32, i32* %7, align 4
  %453 = add nsw i32 %452, 1
  store i32 %453, i32* %7, align 4
  br label %417, !llvm.loop !19

454:                                              ; preds = %417
  br label %455

455:                                              ; preds = %454
  %456 = load i32, i32* %5, align 4
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %5, align 4
  br label %12, !llvm.loop !20

458:                                              ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Propagate(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %56, %7
  %19 = load i32, i32* %15, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %18
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %16, align 4
  br label %24

24:                                               ; preds = %52, %22
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %24
  %29 = load i32, i32* %14, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @fprop, i64 0, i64 %30
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %12, align 4
  %34 = add nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* %31, i64 0, i64 %35
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [128 x float], [128 x float]* %36, i64 0, i64 %40
  %42 = load float, float* %41, align 4
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 %44
  %46 = load i32, i32* %15, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* %45, i64 0, i64 %47
  %49 = load i32, i32* %16, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [128 x float], [128 x float]* %48, i64 0, i64 %50
  store float %42, float* %51, align 4
  br label %52

52:                                               ; preds = %28
  %53 = load i32, i32* %16, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %16, align 4
  br label %24, !llvm.loop !21

55:                                               ; preds = %24
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %15, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %15, align 4
  br label %18, !llvm.loop !22

59:                                               ; preds = %18
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BounceBackBoundaryCondition(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %35, %5
  %13 = load i32, i32* %11, align 4
  %14 = icmp slt i32 %13, 128
  br i1 %14, label %15, label %38

15:                                               ; preds = %12
  %16 = load i32, i32* %10, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @fprop, i64 0, i64 %17
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* %18, i64 0, i64 %20
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [128 x float], [128 x float]* %21, i64 0, i64 %23
  %25 = load float, float* %24, align 4
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 %27
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* %28, i64 0, i64 %30
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [128 x float], [128 x float]* %31, i64 0, i64 %33
  store float %25, float* %34, align 4
  br label %35

35:                                               ; preds = %15
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  br label %12, !llvm.loop !23

38:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BounceBackBoundaryConditionX(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %12, align 4
  br label %14

14:                                               ; preds = %58, %5
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %61

18:                                               ; preds = %14
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 %20
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* %21, i64 0, i64 %23
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [128 x float], [128 x float]* %24, i64 0, i64 %26
  %28 = load float, float* %27, align 4
  store float %28, float* %11, align 4
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 %30
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* %31, i64 0, i64 %33
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [128 x float], [128 x float]* %34, i64 0, i64 %36
  %38 = load float, float* %37, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 %40
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* %41, i64 0, i64 %43
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [128 x float], [128 x float]* %44, i64 0, i64 %46
  store float %38, float* %47, align 4
  %48 = load float, float* %11, align 4
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 %50
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* %51, i64 0, i64 %53
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [128 x float], [128 x float]* %54, i64 0, i64 %56
  store float %48, float* %57, align 4
  br label %58

58:                                               ; preds = %18
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %12, align 4
  br label %14, !llvm.loop !24

61:                                               ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UpdateRHO() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %48, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 128
  br i1 %6, label %7, label %51

7:                                                ; preds = %4
  store i32 2, i32* %2, align 4
  br label %8

8:                                                ; preds = %44, %7
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 127
  br i1 %10, label %11, label %47

11:                                               ; preds = %8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* @rho, i64 0, i64 %13
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [128 x float], [128 x float]* %14, i64 0, i64 %16
  store float 0.000000e+00, float* %17, align 4
  store i32 1, i32* %3, align 4
  br label %18

18:                                               ; preds = %40, %11
  %19 = load i32, i32* %3, align 4
  %20 = icmp sle i32 %19, 9
  br i1 %20, label %21, label %43

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 %23
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* %24, i64 0, i64 %26
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [128 x float], [128 x float]* %27, i64 0, i64 %29
  %31 = load float, float* %30, align 4
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* @rho, i64 0, i64 %33
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [128 x float], [128 x float]* %34, i64 0, i64 %36
  %38 = load float, float* %37, align 4
  %39 = fadd float %38, %31
  store float %39, float* %37, align 4
  br label %40

40:                                               ; preds = %21
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %18, !llvm.loop !25

43:                                               ; preds = %18
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %8, !llvm.loop !26

47:                                               ; preds = %8
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %1, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %1, align 4
  br label %4, !llvm.loop !27

51:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UpdateJXJY() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %121, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 128
  br i1 %5, label %6, label %124

6:                                                ; preds = %3
  store i32 2, i32* %2, align 4
  br label %7

7:                                                ; preds = %117, %6
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 127
  br i1 %9, label %10, label %120

10:                                               ; preds = %7
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 1), i64 0, i64 %12
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [128 x float], [128 x float]* %13, i64 0, i64 %15
  %17 = load float, float* %16, align 4
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 3), i64 0, i64 %19
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [128 x float], [128 x float]* %20, i64 0, i64 %22
  %24 = load float, float* %23, align 4
  %25 = fsub float %17, %24
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 5), i64 0, i64 %27
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [128 x float], [128 x float]* %28, i64 0, i64 %30
  %32 = load float, float* %31, align 4
  %33 = fadd float %25, %32
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 6), i64 0, i64 %35
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [128 x float], [128 x float]* %36, i64 0, i64 %38
  %40 = load float, float* %39, align 4
  %41 = fsub float %33, %40
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 7), i64 0, i64 %43
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [128 x float], [128 x float]* %44, i64 0, i64 %46
  %48 = load float, float* %47, align 4
  %49 = fsub float %41, %48
  %50 = load i32, i32* %1, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 8), i64 0, i64 %51
  %53 = load i32, i32* %2, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [128 x float], [128 x float]* %52, i64 0, i64 %54
  %56 = load float, float* %55, align 4
  %57 = fadd float %49, %56
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* @jx, i64 0, i64 %59
  %61 = load i32, i32* %2, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [128 x float], [128 x float]* %60, i64 0, i64 %62
  store float %57, float* %63, align 4
  %64 = load i32, i32* %1, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 1), i64 0, i64 %65
  %67 = load i32, i32* %2, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [128 x float], [128 x float]* %66, i64 0, i64 %68
  %70 = load float, float* %69, align 4
  %71 = load i32, i32* %1, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 3), i64 0, i64 %72
  %74 = load i32, i32* %2, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [128 x float], [128 x float]* %73, i64 0, i64 %75
  %77 = load float, float* %76, align 4
  %78 = fsub float %70, %77
  %79 = load i32, i32* %1, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 5), i64 0, i64 %80
  %82 = load i32, i32* %2, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [128 x float], [128 x float]* %81, i64 0, i64 %83
  %85 = load float, float* %84, align 4
  %86 = fadd float %78, %85
  %87 = load i32, i32* %1, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 6), i64 0, i64 %88
  %90 = load i32, i32* %2, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [128 x float], [128 x float]* %89, i64 0, i64 %91
  %93 = load float, float* %92, align 4
  %94 = fsub float %86, %93
  %95 = load i32, i32* %1, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 7), i64 0, i64 %96
  %98 = load i32, i32* %2, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [128 x float], [128 x float]* %97, i64 0, i64 %99
  %101 = load float, float* %100, align 4
  %102 = fsub float %94, %101
  %103 = load i32, i32* %1, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* getelementptr inbounds ([128 x [128 x [128 x float]]], [128 x [128 x [128 x float]]]* @f, i64 0, i64 8), i64 0, i64 %104
  %106 = load i32, i32* %2, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [128 x float], [128 x float]* %105, i64 0, i64 %107
  %109 = load float, float* %108, align 4
  %110 = fadd float %102, %109
  %111 = load i32, i32* %1, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* @jx, i64 0, i64 %112
  %114 = load i32, i32* %2, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [128 x float], [128 x float]* %113, i64 0, i64 %115
  store float %110, float* %116, align 4
  br label %117

117:                                              ; preds = %10
  %118 = load i32, i32* %2, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %2, align 4
  br label %7, !llvm.loop !28

120:                                              ; preds = %7
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %1, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %1, align 4
  br label %3, !llvm.loop !29

124:                                              ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CalculateUxyVxy(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %5, align 4
  br label %8

8:                                                ; preds = %63, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %66

12:                                               ; preds = %8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %59, %12
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 128
  br i1 %15, label %16, label %62

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* @jx, i64 0, i64 %18
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [128 x float], [128 x float]* %19, i64 0, i64 %21
  %23 = load float, float* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* @rho, i64 0, i64 %25
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [128 x float], [128 x float]* %26, i64 0, i64 %28
  %30 = load float, float* %29, align 4
  %31 = fdiv float %23, %30
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* @u, i64 0, i64 %33
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [128 x float], [128 x float]* %34, i64 0, i64 %36
  store float %31, float* %37, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* @jy, i64 0, i64 %39
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [128 x float], [128 x float]* %40, i64 0, i64 %42
  %44 = load float, float* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* @rho, i64 0, i64 %46
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [128 x float], [128 x float]* %47, i64 0, i64 %49
  %51 = load float, float* %50, align 4
  %52 = fdiv float %44, %51
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* @v, i64 0, i64 %54
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [128 x float], [128 x float]* %55, i64 0, i64 %57
  store float %52, float* %58, align 4
  br label %59

59:                                               ; preds = %16
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %13, !llvm.loop !30

62:                                               ; preds = %13
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %8, !llvm.loop !31

66:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UpdateFinalUprofile(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* %6, align 4
  br label %9

9:                                                ; preds = %45, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %9
  store float 0.000000e+00, float* %7, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %35, %13
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 128
  br i1 %16, label %17, label %38

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* @jx, i64 0, i64 %19
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [128 x float], [128 x float]* %20, i64 0, i64 %22
  %24 = load float, float* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [128 x [128 x float]], [128 x [128 x float]]* @rho, i64 0, i64 %26
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [128 x float], [128 x float]* %27, i64 0, i64 %29
  %31 = load float, float* %30, align 4
  %32 = fdiv float %24, %31
  %33 = load float, float* %7, align 4
  %34 = fadd float %33, %32
  store float %34, float* %7, align 4
  br label %35

35:                                               ; preds = %17
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %14, !llvm.loop !32

38:                                               ; preds = %14
  %39 = load float, float* %7, align 4
  %40 = fdiv float %39, 1.280000e+02
  store float %40, float* %7, align 4
  %41 = load float, float* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [128 x float], [128 x float]* @uprofile, i64 0, i64 %43
  store float %41, float* %44, align 4
  br label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %9, !llvm.loop !33

48:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LBM() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load float, float* @FORCING, align 4
  %5 = fpext float %4 to double
  %6 = fdiv double %5, 6.000000e+00
  %7 = fptrunc double %6 to float
  store float %7, float* @force, align 4
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %34, %0
  %9 = load i32, i32* %1, align 4
  %10 = icmp slt i32 %9, 20
  br i1 %10, label %11, label %37

11:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %19, %11
  %13 = load i32, i32* %2, align 4
  %14 = icmp slt i32 %13, 128
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = add nsw i32 %17, 8
  call void @CalculateUxyVxy(i32 noundef %16, i32 noundef %18)
  br label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 8
  store i32 %21, i32* %2, align 4
  br label %12, !llvm.loop !34

22:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %30, %22
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %24, 128
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, 8
  call void @ValueUpdateMain(i32 noundef %27, i32 noundef %29)
  br label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 8
  store i32 %32, i32* %2, align 4
  br label %23, !llvm.loop !35

33:                                               ; preds = %23
  call void @Propagate(i32 noundef 1, i32 noundef 128, i32 noundef 0, i32 noundef 128, i32 noundef -1, i32 noundef 0, i32 noundef 1)
  call void @Propagate(i32 noundef 0, i32 noundef 128, i32 noundef 1, i32 noundef 128, i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @Propagate(i32 noundef 0, i32 noundef 127, i32 noundef 0, i32 noundef 128, i32 noundef 1, i32 noundef 0, i32 noundef 3)
  call void @Propagate(i32 noundef 0, i32 noundef 128, i32 noundef 0, i32 noundef 127, i32 noundef 0, i32 noundef 1, i32 noundef 4)
  call void @Propagate(i32 noundef 1, i32 noundef 128, i32 noundef 1, i32 noundef 128, i32 noundef -1, i32 noundef -1, i32 noundef 5)
  call void @Propagate(i32 noundef 0, i32 noundef 127, i32 noundef 0, i32 noundef 128, i32 noundef 1, i32 noundef -1, i32 noundef 6)
  call void @Propagate(i32 noundef 0, i32 noundef 127, i32 noundef 1, i32 noundef 127, i32 noundef 1, i32 noundef 1, i32 noundef 7)
  call void @Propagate(i32 noundef 1, i32 noundef 128, i32 noundef 0, i32 noundef 127, i32 noundef -1, i32 noundef 1, i32 noundef 8)
  call void @Propagate(i32 noundef 0, i32 noundef 128, i32 noundef 0, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef 9)
  call void @BounceBackBoundaryCondition(i32 noundef 0, i32 noundef 128, i32 noundef 0, i32 noundef 127, i32 noundef 1)
  call void @BounceBackBoundaryCondition(i32 noundef 0, i32 noundef 128, i32 noundef 127, i32 noundef 0, i32 noundef 3)
  call void @BounceBackBoundaryCondition(i32 noundef 1, i32 noundef 127, i32 noundef 0, i32 noundef 127, i32 noundef 5)
  call void @BounceBackBoundaryCondition(i32 noundef 1, i32 noundef 127, i32 noundef 127, i32 noundef 0, i32 noundef 6)
  call void @BounceBackBoundaryCondition(i32 noundef 0, i32 noundef 127, i32 noundef 127, i32 noundef 0, i32 noundef 7)
  call void @BounceBackBoundaryCondition(i32 noundef 0, i32 noundef 127, i32 noundef 0, i32 noundef 127, i32 noundef 8)
  call void @BounceBackBoundaryConditionX(i32 noundef 0, i32 noundef 128, i32 noundef 0, i32 noundef 2, i32 noundef 4)
  call void @BounceBackBoundaryConditionX(i32 noundef 0, i32 noundef 128, i32 noundef 127, i32 noundef 2, i32 noundef 4)
  call void @BounceBackBoundaryConditionX(i32 noundef 0, i32 noundef 128, i32 noundef 0, i32 noundef 5, i32 noundef 7)
  call void @BounceBackBoundaryConditionX(i32 noundef 0, i32 noundef 128, i32 noundef 127, i32 noundef 7, i32 noundef 5)
  call void @BounceBackBoundaryConditionX(i32 noundef 0, i32 noundef 128, i32 noundef 0, i32 noundef 6, i32 noundef 8)
  call void @BounceBackBoundaryConditionX(i32 noundef 0, i32 noundef 128, i32 noundef 127, i32 noundef 8, i32 noundef 6)
  call void @UpdateRHO()
  call void @UpdateJXJY()
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %1, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %1, align 4
  br label %8, !llvm.loop !36

37:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @Init()
  call void @LBM()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
