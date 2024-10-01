; ModuleID = 'app.cpp'
source_filename = "app.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: mustprogress noreturn uwtable
define dso_local void @_Z3appv() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %10, %0
  %2 = phi i32 [ 0, %0 ], [ %5, %10 ]
  %3 = add nsw i32 %2, 1
  %4 = icmp sgt i32 %2, 511
  %5 = select i1 %4, i32 0, i32 %3
  %6 = mul nsw i32 %5, %5
  br label %7

7:                                                ; preds = %1, %11
  %8 = phi i32 [ 0, %1 ], [ %12, %11 ]
  %9 = mul nuw nsw i32 %8, %8
  br label %14

10:                                               ; preds = %11
  tail call void @_Z8simFlushv()
  br label %1, !llvm.loop !5

11:                                               ; preds = %14
  %12 = add nuw nsw i32 %8, 1
  %13 = icmp eq i32 %12, 512
  br i1 %13, label %10, label %7, !llvm.loop !7

14:                                               ; preds = %7, %14
  %15 = phi i32 [ 0, %7 ], [ %20, %14 ]
  %16 = mul nuw nsw i32 %15, %15
  %17 = add nuw nsw i32 %16, %9
  %18 = icmp ult i32 %17, %6
  %19 = select i1 %18, i32 -1, i32 -16777216
  tail call void @_Z11simPutPixeliii(i32 noundef %15, i32 noundef %8, i32 noundef %19)
  %20 = add nuw nsw i32 %15, 1
  %21 = icmp eq i32 %20, 512
  br i1 %21, label %11, label %14, !llvm.loop !8
}

declare dso_local void @_Z11simPutPixeliii(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @_Z8simFlushv() local_unnamed_addr #1

attributes #0 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
