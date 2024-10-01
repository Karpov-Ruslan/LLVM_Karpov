; ModuleID = 'app.cpp'
source_filename = "app.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: mustprogress uwtable
define dso_local void @_Z3appv() local_unnamed_addr #0 {
  br label %2

1:                                                ; preds = %12
  ret void

2:                                                ; preds = %0, %12
  %3 = phi i32 [ 0, %0 ], [ %7, %12 ]
  %4 = phi i32 [ 0, %0 ], [ %13, %12 ]
  %5 = add nsw i32 %3, 1
  %6 = icmp sgt i32 %3, 511
  %7 = select i1 %6, i32 0, i32 %5
  %8 = mul nsw i32 %7, %7
  br label %9

9:                                                ; preds = %2, %15
  %10 = phi i32 [ 0, %2 ], [ %16, %15 ]
  %11 = mul nuw nsw i32 %10, %10
  br label %18

12:                                               ; preds = %15
  tail call void @_Z8simFlushv()
  %13 = add nuw nsw i32 %4, 1
  %14 = icmp eq i32 %13, 100000
  br i1 %14, label %1, label %2, !llvm.loop !5

15:                                               ; preds = %18
  %16 = add nuw nsw i32 %10, 1
  %17 = icmp eq i32 %16, 512
  br i1 %17, label %12, label %9, !llvm.loop !7

18:                                               ; preds = %9, %18
  %19 = phi i32 [ 0, %9 ], [ %24, %18 ]
  %20 = mul nuw nsw i32 %19, %19
  %21 = add nuw nsw i32 %20, %11
  %22 = icmp ult i32 %21, %8
  %23 = select i1 %22, i32 -1, i32 -16777216
  tail call void @_Z11simPutPixeliii(i32 noundef %19, i32 noundef %10, i32 noundef %23)
  %24 = add nuw nsw i32 %19, 1
  %25 = icmp eq i32 %24, 512
  br i1 %25, label %15, label %18, !llvm.loop !8
}

declare dso_local void @_Z11simPutPixeliii(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @_Z8simFlushv() local_unnamed_addr #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"MaxTLSAlign", i32 65536}
!4 = !{!"clang version 18.1.8"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
