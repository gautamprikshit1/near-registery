; ModuleID = 'probe1.e9099be7-cgu.0'
source_filename = "probe1.e9099be7-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }
%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }
%"alloc::vec::Vec<u8>" = type { { ptr, i64 }, i64 }
%"core::ptr::metadata::PtrComponents<u8>" = type { ptr, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"alloc::alloc::Global" = type {}
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>" = type { [2 x i64], i64 }

@alloc3 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc9 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc10 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc9, [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc84 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/edf0182213a9e30982eb34f3925ddc4cf5ed3471/library/core/src/fmt/mod.rs" }>, align 1
@alloc85 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc84, [16 x i8] c"K\00\00\00\00\00\00\00\8C\01\00\00\0D\00\00\00" }>, align 8
@alloc103 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/edf0182213a9e30982eb34f3925ddc4cf5ed3471/library/core/src/alloc/layout.rs" }>, align 1
@alloc104 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc103, [16 x i8] c"P\00\00\00\00\00\00\00\B6\01\00\00)\00\00\00" }>, align 8
@str.0 = internal constant [25 x i8] c"attempt to divide by zero"
@alloc105 = private unnamed_addr constant <{ [76 x i8] }> <{ [76 x i8] c"/rustc/edf0182213a9e30982eb34f3925ddc4cf5ed3471/library/alloc/src/raw_vec.rs" }>, align 1
@alloc106 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc105, [16 x i8] c"L\00\00\00\00\00\00\00\F7\00\00\00;\00\00\00" }>, align 8
@alloc4 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc3, [8 x i8] zeroinitializer }>, align 8
@alloc6 = private unnamed_addr constant <{ [8 x i8] }> zeroinitializer, align 8

; <core::ptr::non_null::NonNull<T> as core::convert::From<core::ptr::unique::Unique<T>>>::from
; Function Attrs: inlinehint nonlazybind uwtable
define ptr @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hdc162121e195f4d5E"(ptr %unique) unnamed_addr #0 {
start:
  %0 = alloca ptr, align 8
  store ptr %unique, ptr %0, align 8
  %1 = load ptr, ptr %0, align 8, !nonnull !2, !noundef !2
  ret ptr %1
}

; core::fmt::ArgumentV1::new_lower_exp
; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @_ZN4core3fmt10ArgumentV113new_lower_exp17h6c42dea03d680eabE(ptr align 8 %x) unnamed_addr #0 {
start:
  %0 = alloca ptr, align 8
  %1 = alloca ptr, align 8
  %2 = alloca { ptr, ptr }, align 8
  store ptr @"_ZN4core3fmt3num3imp55_$LT$impl$u20$core..fmt..LowerExp$u20$for$u20$isize$GT$3fmt17h0a92b570c3b62814E", ptr %1, align 8
  %_4 = load ptr, ptr %1, align 8, !nonnull !2, !noundef !2
  br label %bb1

bb1:                                              ; preds = %start
  store ptr %x, ptr %0, align 8
  %_6 = load ptr, ptr %0, align 8, !nonnull !2, !align !3, !noundef !2
  br label %bb2

bb2:                                              ; preds = %bb1
  store ptr %_6, ptr %2, align 8
  %3 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 1
  store ptr %_4, ptr %3, align 8
  %4 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8, !nonnull !2, !align !3, !noundef !2
  %6 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !nonnull !2, !noundef !2
  %8 = insertvalue { ptr, ptr } undef, ptr %5, 0
  %9 = insertvalue { ptr, ptr } %8, ptr %7, 1
  ret { ptr, ptr } %9
}

; core::fmt::Arguments::as_str
; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_ZN4core3fmt9Arguments6as_str17h589e20c1d3c63d99E(ptr align 8 %self) unnamed_addr #0 {
start:
  %_2 = alloca { { ptr, i64 }, { ptr, i64 } }, align 8
  %0 = alloca { ptr, i64 }, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %self, i32 0, i32 0
  %_3.0 = load ptr, ptr %1, align 8, !nonnull !2, !align !4, !noundef !2
  %2 = getelementptr inbounds { ptr, i64 }, ptr %self, i32 0, i32 1
  %_3.1 = load i64, ptr %2, align 8
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %self, i32 0, i32 2
  %4 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 0
  %_4.0 = load ptr, ptr %4, align 8, !nonnull !2, !align !4, !noundef !2
  %5 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 1
  %_4.1 = load i64, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %_2, i32 0, i32 0
  store ptr %_3.0, ptr %6, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %_2, i32 0, i32 1
  store i64 %_3.1, ptr %7, align 8
  %8 = getelementptr inbounds { { ptr, i64 }, { ptr, i64 } }, ptr %_2, i32 0, i32 1
  %9 = getelementptr inbounds { ptr, i64 }, ptr %8, i32 0, i32 0
  store ptr %_4.0, ptr %9, align 8
  %10 = getelementptr inbounds { ptr, i64 }, ptr %8, i32 0, i32 1
  store i64 %_4.1, ptr %10, align 8
  %11 = getelementptr inbounds { ptr, i64 }, ptr %_2, i32 0, i32 0
  %_21.0 = load ptr, ptr %11, align 8, !nonnull !2, !align !4, !noundef !2
  %12 = getelementptr inbounds { ptr, i64 }, ptr %_2, i32 0, i32 1
  %_21.1 = load i64, ptr %12, align 8
  %_16 = icmp eq i64 %_21.1, 0
  br i1 %_16, label %bb1, label %bb3

bb3:                                              ; preds = %start
  %13 = getelementptr inbounds { ptr, i64 }, ptr %_2, i32 0, i32 0
  %_23.0 = load ptr, ptr %13, align 8, !nonnull !2, !align !4, !noundef !2
  %14 = getelementptr inbounds { ptr, i64 }, ptr %_2, i32 0, i32 1
  %_23.1 = load i64, ptr %14, align 8
  %_13 = icmp eq i64 %_23.1, 1
  br i1 %_13, label %bb4, label %bb2

bb1:                                              ; preds = %start
  %15 = getelementptr inbounds { { ptr, i64 }, { ptr, i64 } }, ptr %_2, i32 0, i32 1
  %16 = getelementptr inbounds { ptr, i64 }, ptr %15, i32 0, i32 0
  %_22.0 = load ptr, ptr %16, align 8, !nonnull !2, !align !4, !noundef !2
  %17 = getelementptr inbounds { ptr, i64 }, ptr %15, i32 0, i32 1
  %_22.1 = load i64, ptr %17, align 8
  %_7 = icmp eq i64 %_22.1, 0
  br i1 %_7, label %bb5, label %bb2

bb2:                                              ; preds = %bb4, %bb3, %bb1
  store ptr null, ptr %0, align 8
  br label %bb7

bb5:                                              ; preds = %bb1
  %18 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
  store ptr @alloc3, ptr %18, align 8
  %19 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 0, ptr %19, align 8
  br label %bb7

bb7:                                              ; preds = %bb2, %bb6, %bb5
  %20 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
  %21 = load ptr, ptr %20, align 8, !align !3
  %22 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  %23 = load i64, ptr %22, align 8
  %24 = insertvalue { ptr, i64 } undef, ptr %21, 0
  %25 = insertvalue { ptr, i64 } %24, i64 %23, 1
  ret { ptr, i64 } %25

bb4:                                              ; preds = %bb3
  %26 = getelementptr inbounds { { ptr, i64 }, { ptr, i64 } }, ptr %_2, i32 0, i32 1
  %27 = getelementptr inbounds { ptr, i64 }, ptr %26, i32 0, i32 0
  %_24.0 = load ptr, ptr %27, align 8, !nonnull !2, !align !4, !noundef !2
  %28 = getelementptr inbounds { ptr, i64 }, ptr %26, i32 0, i32 1
  %_24.1 = load i64, ptr %28, align 8
  %_10 = icmp eq i64 %_24.1, 0
  br i1 %_10, label %bb6, label %bb2

bb6:                                              ; preds = %bb4
  %29 = getelementptr inbounds { ptr, i64 }, ptr %_2, i32 0, i32 0
  %_25.0 = load ptr, ptr %29, align 8, !nonnull !2, !align !4, !noundef !2
  %30 = getelementptr inbounds { ptr, i64 }, ptr %_2, i32 0, i32 1
  %_25.1 = load i64, ptr %30, align 8
  %s = getelementptr inbounds [0 x { ptr, i64 }], ptr %_25.0, i64 0, i64 0
  %31 = getelementptr inbounds { ptr, i64 }, ptr %s, i32 0, i32 0
  %_26.0 = load ptr, ptr %31, align 8, !nonnull !2, !align !3, !noundef !2
  %32 = getelementptr inbounds { ptr, i64 }, ptr %s, i32 0, i32 1
  %_26.1 = load i64, ptr %32, align 8
  %33 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
  store ptr %_26.0, ptr %33, align 8
  %34 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 %_26.1, ptr %34, align 8
  br label %bb7
}

; core::fmt::Arguments::new_v1
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117hdc2d6d471e597ecaE(ptr sret(%"core::fmt::Arguments<'_>") %0, ptr align 8 %pieces.0, i64 %pieces.1, ptr align 8 %args.0, i64 %args.1) unnamed_addr #0 {
start:
  %_24 = alloca { ptr, i64 }, align 8
  %_16 = alloca %"core::fmt::Arguments<'_>", align 8
  %_3 = alloca i8, align 1
  %_4 = icmp ult i64 %pieces.1, %args.1
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_12 = add i64 %args.1, 1
  %_9 = icmp ugt i64 %pieces.1, %_12
  %1 = zext i1 %_9 to i8
  store i8 %1, ptr %_3, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 1, ptr %_3, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %2 = load i8, ptr %_3, align 1, !range !5, !noundef !2
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb4, label %bb6

bb6:                                              ; preds = %bb3
  store ptr null, ptr %_24, align 8
  %4 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
  store ptr %pieces.0, ptr %4, align 8
  %5 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 %pieces.1, ptr %5, align 8
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds { ptr, i64 }, ptr %_24, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8, !align !4
  %9 = getelementptr inbounds { ptr, i64 }, ptr %_24, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds { ptr, i64 }, ptr %6, i32 0, i32 0
  store ptr %8, ptr %11, align 8
  %12 = getelementptr inbounds { ptr, i64 }, ptr %6, i32 0, i32 1
  store i64 %10, ptr %12, align 8
  %13 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %0, i32 0, i32 2
  %14 = getelementptr inbounds { ptr, i64 }, ptr %13, i32 0, i32 0
  store ptr %args.0, ptr %14, align 8
  %15 = getelementptr inbounds { ptr, i64 }, ptr %13, i32 0, i32 1
  store i64 %args.1, ptr %15, align 8
  ret void

bb4:                                              ; preds = %bb3
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117hdc2d6d471e597ecaE(ptr sret(%"core::fmt::Arguments<'_>") %_16, ptr align 8 @alloc10, i64 1, ptr align 8 @alloc3, i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17h940cb25cf018faefE(ptr %_16, ptr align 8 @alloc85) #13
  unreachable
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ops8function6FnOnce9call_once17h6003340730dd20a1E(ptr sret(%"alloc::string::String") %0, ptr align 1 %1, i64 %2) unnamed_addr #0 {
start:
  %_2 = alloca { ptr, i64 }, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %_2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = getelementptr inbounds { ptr, i64 }, ptr %_2, i32 0, i32 1
  store i64 %2, ptr %4, align 8
  %5 = getelementptr inbounds { ptr, i64 }, ptr %_2, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8, !nonnull !2, !align !3, !noundef !2
  %7 = getelementptr inbounds { ptr, i64 }, ptr %_2, i32 0, i32 1
  %8 = load i64, ptr %7, align 8
; call alloc::str::<impl alloc::borrow::ToOwned for str>::to_owned
  call void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17hb6cf494b9b0cbb62E"(ptr sret(%"alloc::string::String") %0, ptr align 1 %6, i64 %8)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<alloc::string::String>
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h23f8842d6a17cce7E"(ptr %_1) unnamed_addr #1 {
start:
; call core::ptr::drop_in_place<alloc::vec::Vec<u8>>
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hc23ff83b1a70a8e4E"(ptr %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<alloc::vec::Vec<u8>>
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hc23ff83b1a70a8e4E"(ptr %_1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = alloca { ptr, i32 }, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hecd7b02bd4a6fa47E"(ptr align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
  invoke void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h39bf5772868f7853E"(ptr %_1) #14
          to label %bb1 unwind label %abort

cleanup:                                          ; preds = %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  %4 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 0
  store ptr %2, ptr %4, align 8
  %5 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 1
  store i32 %3, ptr %5, align 8
  br label %bb3

bb4:                                              ; preds = %start
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h39bf5772868f7853E"(ptr %_1)
  br label %bb2

abort:                                            ; preds = %bb3
  %6 = landingpad { ptr, i32 }
          cleanup
; call core::panicking::panic_no_unwind
  call void @_ZN4core9panicking15panic_no_unwind17h975e16a63eaa1fdaE() #15
  unreachable

bb1:                                              ; preds = %bb3
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 8
  %10 = insertvalue { ptr, i32 } undef, ptr %7, 0
  %11 = insertvalue { ptr, i32 } %10, i32 %9, 1
  resume { ptr, i32 } %11

bb2:                                              ; preds = %bb4
  ret void
}

; core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h39bf5772868f7853E"(ptr %_1) unnamed_addr #1 {
start:
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h30373cb9293ee84cE"(ptr align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::mut_ptr::<impl *mut T>::guaranteed_eq
; Function Attrs: inlinehint nonlazybind uwtable
define i8 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17heff4b83e2a8a3491E"(ptr %self, ptr %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = alloca i8, align 1
  %2 = icmp eq ptr %self, %other
  %3 = zext i1 %2 to i8
  store i8 %3, ptr %0, align 1
  %_8 = load i8, ptr %0, align 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i8 %_8, 2
  br i1 %4, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  store i8 2, ptr %1, align 1
  br label %bb4

bb2:                                              ; preds = %bb1
  %_14 = icmp eq i8 %_8, 1
  %5 = zext i1 %_14 to i8
  store i8 %5, ptr %1, align 1
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %6 = load i8, ptr %1, align 1, !range !6, !noundef !2
  ret i8 %6
}

; core::ptr::mut_ptr::<impl *mut T>::is_null
; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h20e66f82d6e57143E"(ptr %self) unnamed_addr #0 {
start:
  %0 = alloca ptr, align 8
  %_13 = alloca %"core::ptr::metadata::PtrComponents<u8>", align 8
  %_12 = alloca %"core::ptr::metadata::PtrRepr<u8>", align 8
  %_2 = alloca i8, align 1
  %1 = alloca i8, align 1
  store i64 0, ptr %0, align 8
  %data_address = load ptr, ptr %0, align 8
  br label %bb6

bb6:                                              ; preds = %start
  store ptr %data_address, ptr %_13, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_12, ptr align 8 %_13, i64 8, i1 false)
  %_5 = load ptr, ptr %_12, align 8
; call core::ptr::mut_ptr::<impl *mut T>::guaranteed_eq
  %2 = call i8 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17heff4b83e2a8a3491E"(ptr %self, ptr %_5), !range !6
  store i8 %2, ptr %_2, align 1
  br label %bb1

bb1:                                              ; preds = %bb6
  %3 = load i8, ptr %_2, align 1, !range !6, !noundef !2
  %4 = sub i8 %3, 2
  %5 = icmp eq i8 %4, 0
  %_6 = select i1 %5, i64 0, i64 1
  %6 = icmp eq i64 %_6, 0
  br i1 %6, label %bb4, label %bb2

bb4:                                              ; preds = %bb1
  store i8 0, ptr %1, align 1
  br label %bb5

bb2:                                              ; preds = %bb1
  %7 = load i8, ptr %_2, align 1, !range !5, !noundef !2
  %res = trunc i8 %7 to i1
  %8 = zext i1 %res to i8
  store i8 %8, ptr %1, align 1
  br label %bb5

bb3:                                              ; No predecessors!
  unreachable

bb5:                                              ; preds = %bb4, %bb2
  %9 = load i8, ptr %1, align 1, !range !5, !noundef !2
  %10 = trunc i8 %9 to i1
  ret i1 %10
}

; core::ptr::non_null::NonNull<T>::new
; Function Attrs: inlinehint nonlazybind uwtable
define ptr @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h541c432bb27d861eE"(ptr %ptr) unnamed_addr #0 {
start:
  %_5 = alloca ptr, align 8
  %0 = alloca ptr, align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_3 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h20e66f82d6e57143E"(ptr %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = xor i1 %_3, true
  br i1 %_2, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  store ptr null, ptr %0, align 8
  br label %bb4

bb2:                                              ; preds = %bb1
  store ptr %ptr, ptr %_5, align 8
  %1 = load ptr, ptr %_5, align 8, !nonnull !2, !noundef !2
  store ptr %1, ptr %0, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %2 = load ptr, ptr %0, align 8
  ret ptr %2
}

; core::hint::unreachable_unchecked
; Function Attrs: inlinehint noreturn nonlazybind uwtable
define internal void @_ZN4core4hint21unreachable_unchecked17hac65c0f7391610abE() unnamed_addr #2 {
start:
  unreachable
}

; core::alloc::layout::Layout::array::inner
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout5array5inner17h7cf3be6836812593E(i64 %element_size, i64 %align, i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %_28 = alloca i64, align 8
  %_24 = alloca i64, align 8
  %_16 = alloca { i64, i64 }, align 8
  %_4 = alloca i8, align 1
  %1 = alloca { i64, i64 }, align 8
  %2 = icmp eq i64 %element_size, 0
  br i1 %2, label %bb1, label %bb2

bb1:                                              ; preds = %start
  store i8 0, ptr %_4, align 1
  br label %bb3

bb2:                                              ; preds = %start
  store i64 %align, ptr %_24, align 8
  %_25 = load i64, ptr %_24, align 8, !range !7, !noundef !2
  %_26 = icmp uge i64 -9223372036854775808, %_25
  call void @llvm.assume(i1 %_26)
  %_27 = icmp ule i64 1, %_25
  call void @llvm.assume(i1 %_27)
  %_21 = sub i64 %_25, 1
  %_9 = sub i64 9223372036854775807, %_21
  %_12 = icmp eq i64 %element_size, 0
  %3 = call i1 @llvm.expect.i1(i1 %_12, i1 false)
  br i1 %3, label %panic, label %bb4

bb4:                                              ; preds = %bb2
  %_8 = udiv i64 %_9, %element_size
  %_6 = icmp ugt i64 %n, %_8
  %4 = zext i1 %_6 to i8
  store i8 %4, ptr %_4, align 1
  br label %bb3

panic:                                            ; preds = %bb2
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17hf0876db436e55c60E(ptr align 1 @str.0, i64 25, ptr align 8 @alloc104) #13
  unreachable

bb3:                                              ; preds = %bb1, %bb4
  %5 = load i8, ptr %_4, align 1, !range !5, !noundef !2
  %6 = trunc i8 %5 to i1
  br i1 %6, label %bb5, label %bb6

bb6:                                              ; preds = %bb3
  %array_size = mul i64 %element_size, %n
  store i64 %align, ptr %_28, align 8
  %_29 = load i64, ptr %_28, align 8, !range !7, !noundef !2
  %_30 = icmp uge i64 -9223372036854775808, %_29
  call void @llvm.assume(i1 %_30)
  %_31 = icmp ule i64 1, %_29
  call void @llvm.assume(i1 %_31)
  store i64 %_29, ptr %0, align 8
  %_33 = load i64, ptr %0, align 8, !range !7, !noundef !2
  br label %bb8

bb5:                                              ; preds = %bb3
  %7 = getelementptr inbounds { i64, i64 }, ptr %1, i32 0, i32 1
  store i64 0, ptr %7, align 8
  br label %bb7

bb7:                                              ; preds = %bb8, %bb5
  %8 = getelementptr inbounds { i64, i64 }, ptr %1, i32 0, i32 0
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds { i64, i64 }, ptr %1, i32 0, i32 1
  %11 = load i64, ptr %10, align 8, !range !8, !noundef !2
  %12 = insertvalue { i64, i64 } undef, i64 %9, 0
  %13 = insertvalue { i64, i64 } %12, i64 %11, 1
  ret { i64, i64 } %13

bb8:                                              ; preds = %bb6
  store i64 %array_size, ptr %_16, align 8
  %14 = getelementptr inbounds { i64, i64 }, ptr %_16, i32 0, i32 1
  store i64 %_33, ptr %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, ptr %_16, i32 0, i32 0
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds { i64, i64 }, ptr %_16, i32 0, i32 1
  %18 = load i64, ptr %17, align 8, !range !7, !noundef !2
  %19 = getelementptr inbounds { i64, i64 }, ptr %1, i32 0, i32 0
  store i64 %16, ptr %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, ptr %1, i32 0, i32 1
  store i64 %18, ptr %20, align 8
  br label %bb7
}

; core::option::Option<T>::map_or_else
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core6option15Option$LT$T$GT$11map_or_else17h4e00be453ea66f85E"(ptr sret(%"alloc::string::String") %0, ptr align 1 %1, i64 %2, ptr align 8 %default) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %3 = alloca { ptr, i32 }, align 8
  %_12 = alloca i8, align 1
  %_11 = alloca i8, align 1
  %_7 = alloca { ptr, i64 }, align 8
  %self = alloca { ptr, i64 }, align 8
  %4 = getelementptr inbounds { ptr, i64 }, ptr %self, i32 0, i32 0
  store ptr %1, ptr %4, align 8
  %5 = getelementptr inbounds { ptr, i64 }, ptr %self, i32 0, i32 1
  store i64 %2, ptr %5, align 8
  store i8 1, ptr %_12, align 1
  store i8 1, ptr %_11, align 1
  %6 = load ptr, ptr %self, align 8
  %7 = icmp eq ptr %6, null
  %_4 = select i1 %7, i64 0, i64 1
  %8 = icmp eq i64 %_4, 0
  br i1 %8, label %bb1, label %bb3

bb1:                                              ; preds = %start
  store i8 0, ptr %_12, align 1
; invoke alloc::fmt::format::{{closure}}
  invoke void @"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hd138c23ee4a8e778E"(ptr sret(%"alloc::string::String") %0, ptr align 8 %default)
          to label %bb5 unwind label %cleanup

bb3:                                              ; preds = %start
  %9 = getelementptr inbounds { ptr, i64 }, ptr %self, i32 0, i32 0
  %t.0 = load ptr, ptr %9, align 8, !nonnull !2, !align !3, !noundef !2
  %10 = getelementptr inbounds { ptr, i64 }, ptr %self, i32 0, i32 1
  %t.1 = load i64, ptr %10, align 8
  store i8 0, ptr %_11, align 1
  %11 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0
  store ptr %t.0, ptr %11, align 8
  %12 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1
  store i64 %t.1, ptr %12, align 8
  %13 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0
  %14 = load ptr, ptr %13, align 8, !nonnull !2, !align !3, !noundef !2
  %15 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1
  %16 = load i64, ptr %15, align 8
; invoke core::ops::function::FnOnce::call_once
  invoke void @_ZN4core3ops8function6FnOnce9call_once17h6003340730dd20a1E(ptr sret(%"alloc::string::String") %0, ptr align 1 %14, i64 %16)
          to label %bb4 unwind label %cleanup

bb2:                                              ; No predecessors!
  unreachable

bb14:                                             ; preds = %cleanup
  %17 = load i8, ptr %_11, align 1, !range !5, !noundef !2
  %18 = trunc i8 %17 to i1
  br i1 %18, label %bb13, label %bb8

cleanup:                                          ; preds = %bb1, %bb3
  %19 = landingpad { ptr, i32 }
          cleanup
  %20 = extractvalue { ptr, i32 } %19, 0
  %21 = extractvalue { ptr, i32 } %19, 1
  %22 = getelementptr inbounds { ptr, i32 }, ptr %3, i32 0, i32 0
  store ptr %20, ptr %22, align 8
  %23 = getelementptr inbounds { ptr, i32 }, ptr %3, i32 0, i32 1
  store i32 %21, ptr %23, align 8
  br label %bb14

bb4:                                              ; preds = %bb3
  br label %bb11

bb11:                                             ; preds = %bb5, %bb4
  %24 = load i8, ptr %_11, align 1, !range !5, !noundef !2
  %25 = trunc i8 %24 to i1
  br i1 %25, label %bb10, label %bb6

bb5:                                              ; preds = %bb1
  br label %bb11

bb8:                                              ; preds = %bb13, %bb14
  %26 = load i8, ptr %_12, align 1, !range !5, !noundef !2
  %27 = trunc i8 %26 to i1
  br i1 %27, label %bb15, label %bb9

bb13:                                             ; preds = %bb14
  br label %bb8

bb6:                                              ; preds = %bb10, %bb11
  %28 = load i8, ptr %_12, align 1, !range !5, !noundef !2
  %29 = trunc i8 %28 to i1
  br i1 %29, label %bb12, label %bb7

bb10:                                             ; preds = %bb11
  br label %bb6

bb9:                                              ; preds = %bb15, %bb8
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds { ptr, i32 }, ptr %3, i32 0, i32 1
  %32 = load i32, ptr %31, align 8
  %33 = insertvalue { ptr, i32 } undef, ptr %30, 0
  %34 = insertvalue { ptr, i32 } %33, i32 %32, 1
  resume { ptr, i32 } %34

bb15:                                             ; preds = %bb8
  br label %bb9

bb7:                                              ; preds = %bb12, %bb6
  ret void

bb12:                                             ; preds = %bb6
  br label %bb7
}

; core::result::Result<T,E>::unwrap_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hbceef9e2fe22a35cE"(i64 %0, i64 %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %3 = alloca { ptr, i32 }, align 8
  %self = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, ptr %self, i32 0, i32 0
  store i64 %0, ptr %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, ptr %self, i32 0, i32 1
  store i64 %1, ptr %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, ptr %self, i32 0, i32 1
  %7 = load i64, ptr %6, align 8, !range !8, !noundef !2
  %8 = icmp eq i64 %7, 0
  %_3 = select i1 %8, i64 1, i64 0
  %9 = icmp eq i64 %_3, 0
  br i1 %9, label %bb3, label %bb1

bb3:                                              ; preds = %start
  %10 = getelementptr inbounds { i64, i64 }, ptr %self, i32 0, i32 0
  %t.0 = load i64, ptr %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, ptr %self, i32 0, i32 1
  %t.1 = load i64, ptr %11, align 8, !range !7, !noundef !2
  %12 = getelementptr inbounds { i64, i64 }, ptr %self, i32 0, i32 1
  %13 = load i64, ptr %12, align 8, !range !8, !noundef !2
  %14 = icmp eq i64 %13, 0
  %_7 = select i1 %14, i64 1, i64 0
  %15 = icmp eq i64 %_7, 0
  br i1 %15, label %bb5, label %bb6

bb1:                                              ; preds = %start
; invoke core::hint::unreachable_unchecked
  invoke void @_ZN4core4hint21unreachable_unchecked17hac65c0f7391610abE() #13
          to label %unreachable unwind label %cleanup

bb2:                                              ; No predecessors!
  unreachable

bb10:                                             ; preds = %cleanup
  %16 = getelementptr inbounds { i64, i64 }, ptr %self, i32 0, i32 1
  %17 = load i64, ptr %16, align 8, !range !8, !noundef !2
  %18 = icmp eq i64 %17, 0
  %_8 = select i1 %18, i64 1, i64 0
  %19 = icmp eq i64 %_8, 0
  br i1 %19, label %bb7, label %bb9

cleanup:                                          ; preds = %bb1
  %20 = landingpad { ptr, i32 }
          cleanup
  %21 = extractvalue { ptr, i32 } %20, 0
  %22 = extractvalue { ptr, i32 } %20, 1
  %23 = getelementptr inbounds { ptr, i32 }, ptr %3, i32 0, i32 0
  store ptr %21, ptr %23, align 8
  %24 = getelementptr inbounds { ptr, i32 }, ptr %3, i32 0, i32 1
  store i32 %22, ptr %24, align 8
  br label %bb10

unreachable:                                      ; preds = %bb1
  unreachable

bb7:                                              ; preds = %bb10
  br i1 true, label %bb8, label %bb4

bb9:                                              ; preds = %bb10
  br label %bb4

bb4:                                              ; preds = %bb8, %bb7, %bb9
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds { ptr, i32 }, ptr %3, i32 0, i32 1
  %27 = load i32, ptr %26, align 8
  %28 = insertvalue { ptr, i32 } undef, ptr %25, 0
  %29 = insertvalue { ptr, i32 } %28, i32 %27, 1
  resume { ptr, i32 } %29

bb8:                                              ; preds = %bb7
  br label %bb4

bb5:                                              ; preds = %bb6, %bb3
  %30 = insertvalue { i64, i64 } undef, i64 %t.0, 0
  %31 = insertvalue { i64, i64 } %30, i64 %t.1, 1
  ret { i64, i64 } %31

bb6:                                              ; preds = %bb3
  br label %bb5
}

; <T as core::convert::Into<U>>::into
; Function Attrs: nonlazybind uwtable
define ptr @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hea8536591f138939E"(ptr %self) unnamed_addr #1 {
start:
; call <core::ptr::non_null::NonNull<T> as core::convert::From<core::ptr::unique::Unique<T>>>::from
  %0 = call ptr @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hdc162121e195f4d5E"(ptr %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret ptr %0
}

; <T as alloc::slice::hack::ConvertVec>::to_vec
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h95e76901d28dd709E"(ptr sret(%"alloc::vec::Vec<u8>") %v, ptr align 1 %s.0, i64 %s.1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = alloca { ptr, i32 }, align 8
  %_46 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %_34 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %_23 = alloca i8, align 1
  %_17 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %_17, i32 0, i32 0
  store ptr %s.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %_17, i32 0, i32 1
  store i64 %s.1, ptr %2, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %_17, i32 0, i32 1
  %capacity = load i64, ptr %3, align 8
  store i8 0, ptr %_23, align 1
  %4 = load i8, ptr %_23, align 1, !range !5, !noundef !2
  %5 = trunc i8 %4 to i1
; invoke alloc::raw_vec::RawVec<T,A>::allocate_in
  %6 = invoke { ptr, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h8751155255020439E"(i64 %capacity, i1 zeroext %5)
          to label %bb5 unwind label %cleanup

bb4:                                              ; preds = %bb1, %cleanup
  br i1 false, label %bb3, label %bb2

cleanup:                                          ; preds = %start
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  %10 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 0
  store ptr %8, ptr %10, align 8
  %11 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 1
  store i32 %9, ptr %11, align 8
  br label %bb4

bb5:                                              ; preds = %start
  %_19.0 = extractvalue { ptr, i64 } %6, 0
  %_19.1 = extractvalue { ptr, i64 } %6, 1
  %12 = getelementptr inbounds { ptr, i64 }, ptr %v, i32 0, i32 0
  store ptr %_19.0, ptr %12, align 8
  %13 = getelementptr inbounds { ptr, i64 }, ptr %v, i32 0, i32 1
  store i64 %_19.1, ptr %13, align 8
  %14 = getelementptr inbounds %"alloc::vec::Vec<u8>", ptr %v, i32 0, i32 1
  store i64 0, ptr %14, align 8
  %self = load ptr, ptr %v, align 8, !nonnull !2, !noundef !2
; invoke core::ptr::mut_ptr::<impl *mut T>::is_null
  %_28 = invoke zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h20e66f82d6e57143E"(ptr %self)
          to label %bb6 unwind label %cleanup1

bb1:                                              ; preds = %cleanup1
; invoke core::ptr::drop_in_place<alloc::vec::Vec<u8>>
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hc23ff83b1a70a8e4E"(ptr %v) #14
          to label %bb4 unwind label %abort

cleanup1:                                         ; preds = %bb5
  %15 = landingpad { ptr, i32 }
          cleanup
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = extractvalue { ptr, i32 } %15, 1
  %18 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 0
  store ptr %16, ptr %18, align 8
  %19 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 1
  store i32 %17, ptr %19, align 8
  br label %bb1

bb6:                                              ; preds = %bb5
  %_27 = xor i1 %_28, true
  call void @llvm.assume(i1 %_27)
  %20 = getelementptr inbounds { ptr, i64 }, ptr %_34, i32 0, i32 0
  store ptr %s.0, ptr %20, align 8
  %21 = getelementptr inbounds { ptr, i64 }, ptr %_34, i32 0, i32 1
  store i64 %s.1, ptr %21, align 8
  %22 = getelementptr inbounds { ptr, i64 }, ptr %_34, i32 0, i32 1
  %count = load i64, ptr %22, align 8
  %23 = mul i64 %count, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %self, ptr align 1 %s.0, i64 %23, i1 false)
  %24 = getelementptr inbounds { ptr, i64 }, ptr %_46, i32 0, i32 0
  store ptr %s.0, ptr %24, align 8
  %25 = getelementptr inbounds { ptr, i64 }, ptr %_46, i32 0, i32 1
  store i64 %s.1, ptr %25, align 8
  %26 = getelementptr inbounds { ptr, i64 }, ptr %_46, i32 0, i32 1
  %new_len = load i64, ptr %26, align 8
  %27 = getelementptr inbounds %"alloc::vec::Vec<u8>", ptr %v, i32 0, i32 1
  store i64 %new_len, ptr %27, align 8
  ret void

abort:                                            ; preds = %bb1
  %28 = landingpad { ptr, i32 }
          cleanup
; call core::panicking::panic_no_unwind
  call void @_ZN4core9panicking15panic_no_unwind17h975e16a63eaa1fdaE() #15
  unreachable

bb2:                                              ; preds = %bb3, %bb4
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 1
  %31 = load i32, ptr %30, align 8
  %32 = insertvalue { ptr, i32 } undef, ptr %29, 0
  %33 = insertvalue { ptr, i32 } %32, i32 %31, 1
  resume { ptr, i32 } %33

bb3:                                              ; preds = %bb4
  br label %bb2
}

; alloc::fmt::format
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc3fmt6format17h7a9f11f18443d056E(ptr sret(%"alloc::string::String") %0, ptr %args) unnamed_addr #0 {
start:
  %_4 = alloca ptr, align 8
; call core::fmt::Arguments::as_str
  %1 = call { ptr, i64 } @_ZN4core3fmt9Arguments6as_str17h589e20c1d3c63d99E(ptr align 8 %args)
  %_2.0 = extractvalue { ptr, i64 } %1, 0
  %_2.1 = extractvalue { ptr, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  store ptr %args, ptr %_4, align 8
  %2 = load ptr, ptr %_4, align 8, !nonnull !2, !align !4, !noundef !2
; call core::option::Option<T>::map_or_else
  call void @"_ZN4core6option15Option$LT$T$GT$11map_or_else17h4e00be453ea66f85E"(ptr sret(%"alloc::string::String") %0, ptr align 1 %_2.0, i64 %_2.1, ptr align 8 %2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; alloc::fmt::format::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hd138c23ee4a8e778E"(ptr sret(%"alloc::string::String") %0, ptr align 8 %1) unnamed_addr #0 {
start:
  %_2 = alloca %"core::fmt::Arguments<'_>", align 8
  %_1 = alloca ptr, align 8
  store ptr %1, ptr %_1, align 8
  %_3 = load ptr, ptr %_1, align 8, !nonnull !2, !align !4, !noundef !2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_2, ptr align 8 %_3, i64 48, i1 false)
; call alloc::fmt::format::format_inner
  call void @_ZN5alloc3fmt6format12format_inner17hf3add86a107d324dE(ptr sret(%"alloc::string::String") %0, ptr %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; alloc::str::<impl alloc::borrow::ToOwned for str>::to_owned
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17hb6cf494b9b0cbb62E"(ptr sret(%"alloc::string::String") %0, ptr align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %1 = alloca { ptr, i64 }, align 8
  %_7 = alloca %"alloc::vec::Vec<u8>", align 8
  %bytes = alloca %"alloc::vec::Vec<u8>", align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  store ptr %self.0, ptr %2, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 1
  store i64 %self.1, ptr %3, align 8
  %4 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  %_4.0 = load ptr, ptr %4, align 8, !nonnull !2, !align !3, !noundef !2
  %5 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 1
  %_4.1 = load i64, ptr %5, align 8
  br label %bb2

bb2:                                              ; preds = %start
; call alloc::slice::<impl alloc::borrow::ToOwned for [T]>::to_owned
  call void @"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17h628b370016bc75b8E"(ptr sret(%"alloc::vec::Vec<u8>") %bytes, ptr align 1 %_4.0, i64 %_4.1)
  br label %bb1

bb1:                                              ; preds = %bb2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_7, ptr align 8 %bytes, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %_7, i64 24, i1 false)
  ret void
}

; alloc::alloc::Global::alloc_impl
; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h221a36477c0d4e29E(ptr align 1 %self, i64 %0, i64 %1, i1 zeroext %zeroed) unnamed_addr #0 {
start:
  %2 = alloca ptr, align 8
  %_93 = alloca { ptr, i64 }, align 8
  %_92 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %_72 = alloca i64, align 8
  %_63 = alloca i64, align 8
  %_51 = alloca { ptr, i64 }, align 8
  %_50 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %_31 = alloca i64, align 8
  %_24 = alloca { ptr, i64 }, align 8
  %self4 = alloca ptr, align 8
  %self3 = alloca ptr, align 8
  %_15 = alloca ptr, align 8
  %layout2 = alloca { i64, i64 }, align 8
  %layout1 = alloca { i64, i64 }, align 8
  %raw_ptr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %_6 = alloca { ptr, i64 }, align 8
  %3 = alloca { ptr, i64 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, ptr %layout, i32 0, i32 0
  store i64 %0, ptr %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, ptr %layout, i32 0, i32 1
  store i64 %1, ptr %5, align 8
  %_4 = load i64, ptr %layout, align 8
  %6 = icmp eq i64 %_4, 0
  br i1 %6, label %bb2, label %bb1

bb2:                                              ; preds = %start
  %7 = getelementptr inbounds { i64, i64 }, ptr %layout, i32 0, i32 1
  %self8 = load i64, ptr %7, align 8, !range !7, !noundef !2
  store i64 %self8, ptr %_31, align 8
  %_32 = load i64, ptr %_31, align 8, !range !7, !noundef !2
  %_33 = icmp uge i64 -9223372036854775808, %_32
  call void @llvm.assume(i1 %_33)
  %_34 = icmp ule i64 1, %_32
  call void @llvm.assume(i1 %_34)
  store i64 %_32, ptr %2, align 8
  %ptr = load ptr, ptr %2, align 8
  br label %bb13

bb1:                                              ; preds = %start
  br i1 %zeroed, label %bb3, label %bb4

bb4:                                              ; preds = %bb1
  %8 = getelementptr inbounds { i64, i64 }, ptr %layout, i32 0, i32 0
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds { i64, i64 }, ptr %layout, i32 0, i32 1
  %11 = load i64, ptr %10, align 8, !range !7, !noundef !2
  %12 = getelementptr inbounds { i64, i64 }, ptr %layout2, i32 0, i32 0
  store i64 %9, ptr %12, align 8
  %13 = getelementptr inbounds { i64, i64 }, ptr %layout2, i32 0, i32 1
  store i64 %11, ptr %13, align 8
  %_67 = load i64, ptr %layout2, align 8
  %14 = getelementptr inbounds { i64, i64 }, ptr %layout2, i32 0, i32 1
  %self6 = load i64, ptr %14, align 8, !range !7, !noundef !2
  store i64 %self6, ptr %_72, align 8
  %_73 = load i64, ptr %_72, align 8, !range !7, !noundef !2
  %_74 = icmp uge i64 -9223372036854775808, %_73
  call void @llvm.assume(i1 %_74)
  %_75 = icmp ule i64 1, %_73
  call void @llvm.assume(i1 %_75)
  %15 = call ptr @__rust_alloc(i64 %_67, i64 %_73) #16
  store ptr %15, ptr %raw_ptr, align 8
  br label %bb15

bb3:                                              ; preds = %bb1
  %16 = getelementptr inbounds { i64, i64 }, ptr %layout, i32 0, i32 0
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds { i64, i64 }, ptr %layout, i32 0, i32 1
  %19 = load i64, ptr %18, align 8, !range !7, !noundef !2
  %20 = getelementptr inbounds { i64, i64 }, ptr %layout1, i32 0, i32 0
  store i64 %17, ptr %20, align 8
  %21 = getelementptr inbounds { i64, i64 }, ptr %layout1, i32 0, i32 1
  store i64 %19, ptr %21, align 8
  %_58 = load i64, ptr %layout1, align 8
  %22 = getelementptr inbounds { i64, i64 }, ptr %layout1, i32 0, i32 1
  %self5 = load i64, ptr %22, align 8, !range !7, !noundef !2
  store i64 %self5, ptr %_63, align 8
  %_64 = load i64, ptr %_63, align 8, !range !7, !noundef !2
  %_65 = icmp uge i64 -9223372036854775808, %_64
  call void @llvm.assume(i1 %_65)
  %_66 = icmp ule i64 1, %_64
  call void @llvm.assume(i1 %_66)
  %23 = call ptr @__rust_alloc_zeroed(i64 %_58, i64 %_64) #16
  store ptr %23, ptr %raw_ptr, align 8
  br label %bb14

bb14:                                             ; preds = %bb3
  br label %bb5

bb5:                                              ; preds = %bb15, %bb14
  %_18 = load ptr, ptr %raw_ptr, align 8
; call core::ptr::non_null::NonNull<T>::new
  %24 = call ptr @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h541c432bb27d861eE"(ptr %_18)
  store ptr %24, ptr %self4, align 8
  br label %bb6

bb15:                                             ; preds = %bb4
  br label %bb5

bb6:                                              ; preds = %bb5
  %25 = load ptr, ptr %self4, align 8
  %26 = icmp eq ptr %25, null
  %_76 = select i1 %26, i64 0, i64 1
  %27 = icmp eq i64 %_76, 0
  br i1 %27, label %bb16, label %bb18

bb16:                                             ; preds = %bb6
  store ptr null, ptr %self3, align 8
  br label %bb19

bb18:                                             ; preds = %bb6
  %v = load ptr, ptr %self4, align 8, !nonnull !2, !noundef !2
  store ptr %v, ptr %self3, align 8
  br label %bb19

bb17:                                             ; No predecessors!
  unreachable

bb19:                                             ; preds = %bb16, %bb18
  %28 = load ptr, ptr %self3, align 8
  %29 = icmp eq ptr %28, null
  %_79 = select i1 %29, i64 1, i64 0
  %30 = icmp eq i64 %_79, 0
  br i1 %30, label %bb22, label %bb20

bb22:                                             ; preds = %bb19
  %v7 = load ptr, ptr %self3, align 8, !nonnull !2, !noundef !2
  store ptr %v7, ptr %_15, align 8
  br label %bb7

bb20:                                             ; preds = %bb19
  store ptr null, ptr %_15, align 8
  br label %bb7

bb21:                                             ; No predecessors!
  unreachable

bb7:                                              ; preds = %bb22, %bb20
  %31 = load ptr, ptr %_15, align 8
  %32 = icmp eq ptr %31, null
  %_20 = select i1 %32, i64 1, i64 0
  %33 = icmp eq i64 %_20, 0
  br i1 %33, label %bb8, label %bb10

bb8:                                              ; preds = %bb7
  %val = load ptr, ptr %_15, align 8, !nonnull !2, !noundef !2
  store ptr %val, ptr %_93, align 8
  %34 = getelementptr inbounds { ptr, i64 }, ptr %_93, i32 0, i32 1
  store i64 %_4, ptr %34, align 8
  %35 = getelementptr inbounds { ptr, i64 }, ptr %_93, i32 0, i32 0
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds { ptr, i64 }, ptr %_93, i32 0, i32 1
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds { ptr, i64 }, ptr %_92, i32 0, i32 0
  store ptr %36, ptr %39, align 8
  %40 = getelementptr inbounds { ptr, i64 }, ptr %_92, i32 0, i32 1
  store i64 %38, ptr %40, align 8
  %41 = getelementptr inbounds { ptr, i64 }, ptr %_92, i32 0, i32 0
  %ptr.0 = load ptr, ptr %41, align 8
  %42 = getelementptr inbounds { ptr, i64 }, ptr %_92, i32 0, i32 1
  %ptr.1 = load i64, ptr %42, align 8
  %43 = getelementptr inbounds { ptr, i64 }, ptr %_24, i32 0, i32 0
  store ptr %ptr.0, ptr %43, align 8
  %44 = getelementptr inbounds { ptr, i64 }, ptr %_24, i32 0, i32 1
  store i64 %ptr.1, ptr %44, align 8
  %45 = getelementptr inbounds { ptr, i64 }, ptr %_24, i32 0, i32 0
  %46 = load ptr, ptr %45, align 8, !nonnull !2, !noundef !2
  %47 = getelementptr inbounds { ptr, i64 }, ptr %_24, i32 0, i32 1
  %48 = load i64, ptr %47, align 8
  %49 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 0
  store ptr %46, ptr %49, align 8
  %50 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 1
  store i64 %48, ptr %50, align 8
  br label %bb11

bb10:                                             ; preds = %bb7
  store ptr null, ptr %3, align 8
  br label %bb12

bb9:                                              ; No predecessors!
  unreachable

bb12:                                             ; preds = %bb11, %bb10
  %51 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 0
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 1
  %54 = load i64, ptr %53, align 8
  %55 = insertvalue { ptr, i64 } undef, ptr %52, 0
  %56 = insertvalue { ptr, i64 } %55, i64 %54, 1
  ret { ptr, i64 } %56

bb11:                                             ; preds = %bb13, %bb8
  br label %bb12

bb13:                                             ; preds = %bb2
  store ptr %ptr, ptr %data, align 8
  %self9 = load ptr, ptr %data, align 8, !nonnull !2, !noundef !2
  store ptr %self9, ptr %_51, align 8
  %57 = getelementptr inbounds { ptr, i64 }, ptr %_51, i32 0, i32 1
  store i64 0, ptr %57, align 8
  %58 = getelementptr inbounds { ptr, i64 }, ptr %_51, i32 0, i32 0
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds { ptr, i64 }, ptr %_51, i32 0, i32 1
  %61 = load i64, ptr %60, align 8
  %62 = getelementptr inbounds { ptr, i64 }, ptr %_50, i32 0, i32 0
  store ptr %59, ptr %62, align 8
  %63 = getelementptr inbounds { ptr, i64 }, ptr %_50, i32 0, i32 1
  store i64 %61, ptr %63, align 8
  %64 = getelementptr inbounds { ptr, i64 }, ptr %_50, i32 0, i32 0
  %ptr.010 = load ptr, ptr %64, align 8
  %65 = getelementptr inbounds { ptr, i64 }, ptr %_50, i32 0, i32 1
  %ptr.111 = load i64, ptr %65, align 8
  %66 = getelementptr inbounds { ptr, i64 }, ptr %_6, i32 0, i32 0
  store ptr %ptr.010, ptr %66, align 8
  %67 = getelementptr inbounds { ptr, i64 }, ptr %_6, i32 0, i32 1
  store i64 %ptr.111, ptr %67, align 8
  %68 = getelementptr inbounds { ptr, i64 }, ptr %_6, i32 0, i32 0
  %69 = load ptr, ptr %68, align 8, !nonnull !2, !noundef !2
  %70 = getelementptr inbounds { ptr, i64 }, ptr %_6, i32 0, i32 1
  %71 = load i64, ptr %70, align 8
  %72 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 0
  store ptr %69, ptr %72, align 8
  %73 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 1
  store i64 %71, ptr %73, align 8
  br label %bb11
}

; alloc::slice::<impl alloc::borrow::ToOwned for [T]>::to_owned
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17h628b370016bc75b8E"(ptr sret(%"alloc::vec::Vec<u8>") %0, ptr align 1 %self.0, i64 %self.1) unnamed_addr #1 {
start:
; call <T as alloc::slice::hack::ConvertVec>::to_vec
  call void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h95e76901d28dd709E"(ptr sret(%"alloc::vec::Vec<u8>") %0, ptr align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; alloc::raw_vec::RawVec<T,A>::allocate_in
; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h8751155255020439E"(i64 %capacity, i1 zeroext %0) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %1 = alloca i64, align 8
  %2 = alloca { ptr, i32 }, align 8
  %_54 = alloca ptr, align 8
  %_36 = alloca i8, align 1
  %self = alloca ptr, align 8
  %_30 = alloca ptr, align 8
  %result = alloca { ptr, i64 }, align 8
  %_14 = alloca { i64, i64 }, align 8
  %_9 = alloca { i64, i64 }, align 8
  %_4 = alloca i8, align 1
  %3 = alloca { ptr, i64 }, align 8
  %alloc = alloca %"alloc::alloc::Global", align 1
  %init = alloca i8, align 1
  %4 = zext i1 %0 to i8
  store i8 %4, ptr %init, align 1
  store i8 1, ptr %_36, align 1
  br i1 false, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_5 = icmp eq i64 %capacity, 0
  %5 = zext i1 %_5 to i8
  store i8 %5, ptr %_4, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 1, ptr %_4, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %6 = load i8, ptr %_4, align 1, !range !5, !noundef !2
  %7 = trunc i8 %6 to i1
  br i1 %7, label %bb4, label %bb6

bb6:                                              ; preds = %bb3
  store i64 1, ptr %1, align 8
  %_38 = load i64, ptr %1, align 8, !range !7, !noundef !2
  br label %bb27

bb4:                                              ; preds = %bb3
  store i8 0, ptr %_36, align 1
; invoke alloc::raw_vec::RawVec<T,A>::new_in
  %8 = invoke { ptr, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17hb4c399a0ea00b554E"()
          to label %bb5 unwind label %cleanup

bb25:                                             ; preds = %cleanup
  %9 = load i8, ptr %_36, align 1, !range !5, !noundef !2
  %10 = trunc i8 %9 to i1
  br i1 %10, label %bb24, label %bb23

cleanup:                                          ; preds = %bb19, %bb15, %bb13, %bb10, %bb7, %bb27, %bb4
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = extractvalue { ptr, i32 } %11, 0
  %13 = extractvalue { ptr, i32 } %11, 1
  %14 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 0
  store ptr %12, ptr %14, align 8
  %15 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 1
  store i32 %13, ptr %15, align 8
  br label %bb25

bb5:                                              ; preds = %bb4
  store { ptr, i64 } %8, ptr %3, align 8
  br label %bb22

bb22:                                             ; preds = %bb21, %bb5
  %16 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 0
  %17 = load ptr, ptr %16, align 8, !nonnull !2, !noundef !2
  %18 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 1
  %19 = load i64, ptr %18, align 8
  %20 = insertvalue { ptr, i64 } undef, ptr %17, 0
  %21 = insertvalue { ptr, i64 } %20, i64 %19, 1
  ret { ptr, i64 } %21

bb27:                                             ; preds = %bb6
; invoke core::alloc::layout::Layout::array::inner
  %22 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout5array5inner17h7cf3be6836812593E(i64 1, i64 %_38, i64 %capacity)
          to label %bb26 unwind label %cleanup

bb26:                                             ; preds = %bb27
  store { i64, i64 } %22, ptr %_9, align 8
  %23 = getelementptr inbounds { i64, i64 }, ptr %_9, i32 0, i32 1
  %24 = load i64, ptr %23, align 8, !range !8, !noundef !2
  %25 = icmp eq i64 %24, 0
  %_11 = select i1 %25, i64 1, i64 0
  %26 = icmp eq i64 %_11, 0
  br i1 %26, label %bb9, label %bb7

bb9:                                              ; preds = %bb26
  %27 = getelementptr inbounds { i64, i64 }, ptr %_9, i32 0, i32 0
  %layout.0 = load i64, ptr %27, align 8
  %28 = getelementptr inbounds { i64, i64 }, ptr %_9, i32 0, i32 1
  %layout.1 = load i64, ptr %28, align 8, !range !7, !noundef !2
  %29 = getelementptr inbounds { i64, i64 }, ptr %_14, i32 0, i32 1
  store i64 -9223372036854775807, ptr %29, align 8
  %30 = getelementptr inbounds { i64, i64 }, ptr %_14, i32 0, i32 1
  %31 = load i64, ptr %30, align 8, !range !9, !noundef !2
  %32 = sub i64 %31, -9223372036854775807
  %33 = icmp eq i64 %32, 0
  %_17 = select i1 %33, i64 0, i64 1
  %34 = icmp eq i64 %_17, 0
  br i1 %34, label %bb12, label %bb10

bb7:                                              ; preds = %bb26
; invoke alloc::raw_vec::capacity_overflow
  invoke void @_ZN5alloc7raw_vec17capacity_overflow17hc91e2982bc8a8747E() #13
          to label %unreachable unwind label %cleanup

bb8:                                              ; No predecessors!
  unreachable

unreachable:                                      ; preds = %bb19, %bb10, %bb7
  unreachable

bb12:                                             ; preds = %bb9
  %35 = load i8, ptr %init, align 1, !range !5, !noundef !2
  %36 = trunc i8 %35 to i1
  %_20 = zext i1 %36 to i64
  %37 = icmp eq i64 %_20, 0
  br i1 %37, label %bb15, label %bb13

bb10:                                             ; preds = %bb9
; invoke alloc::raw_vec::capacity_overflow
  invoke void @_ZN5alloc7raw_vec17capacity_overflow17hc91e2982bc8a8747E() #13
          to label %unreachable unwind label %cleanup

bb11:                                             ; No predecessors!
  unreachable

bb15:                                             ; preds = %bb12
; invoke <alloc::alloc::Global as core::alloc::Allocator>::allocate
  %38 = invoke { ptr, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h9aa613c54c89a09fE"(ptr align 1 %alloc, i64 %layout.0, i64 %layout.1)
          to label %bb16 unwind label %cleanup

bb13:                                             ; preds = %bb12
; invoke <alloc::alloc::Global as core::alloc::Allocator>::allocate_zeroed
  %39 = invoke { ptr, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17hefefe10b09aafb9aE"(ptr align 1 %alloc, i64 %layout.0, i64 %layout.1)
          to label %bb17 unwind label %cleanup

bb14:                                             ; No predecessors!
  unreachable

bb17:                                             ; preds = %bb13
  store { ptr, i64 } %39, ptr %result, align 8
  br label %bb18

bb18:                                             ; preds = %bb16, %bb17
  %40 = load ptr, ptr %result, align 8
  %41 = icmp eq ptr %40, null
  %_26 = select i1 %41, i64 1, i64 0
  %42 = icmp eq i64 %_26, 0
  br i1 %42, label %bb21, label %bb19

bb16:                                             ; preds = %bb15
  store { ptr, i64 } %38, ptr %result, align 8
  br label %bb18

bb21:                                             ; preds = %bb18
  %43 = getelementptr inbounds { ptr, i64 }, ptr %result, i32 0, i32 0
  %ptr.0 = load ptr, ptr %43, align 8, !nonnull !2, !noundef !2
  %44 = getelementptr inbounds { ptr, i64 }, ptr %result, i32 0, i32 1
  %ptr.1 = load i64, ptr %44, align 8
  store ptr %ptr.0, ptr %self, align 8
  %_53 = load ptr, ptr %self, align 8
  store ptr %_53, ptr %_54, align 8
  %45 = load ptr, ptr %_54, align 8, !nonnull !2, !noundef !2
  store ptr %45, ptr %_30, align 8
  %46 = load ptr, ptr %_30, align 8, !nonnull !2, !noundef !2
  store ptr %46, ptr %3, align 8
  %47 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 1
  store i64 %capacity, ptr %47, align 8
  br label %bb22

bb19:                                             ; preds = %bb18
; invoke alloc::alloc::handle_alloc_error
  invoke void @_ZN5alloc5alloc18handle_alloc_error17hfcacdc70f64bb765E(i64 %layout.0, i64 %layout.1) #13
          to label %unreachable unwind label %cleanup

bb20:                                             ; No predecessors!
  unreachable

bb23:                                             ; preds = %bb24, %bb25
  %48 = load ptr, ptr %2, align 8
  %49 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 1
  %50 = load i32, ptr %49, align 8
  %51 = insertvalue { ptr, i32 } undef, ptr %48, 0
  %52 = insertvalue { ptr, i32 } %51, i32 %50, 1
  resume { ptr, i32 } %52

bb24:                                             ; preds = %bb25
  br label %bb23
}

; alloc::raw_vec::RawVec<T,A>::current_memory
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h532242a66397a65dE"(ptr sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %0, ptr align 8 %self) unnamed_addr #1 {
start:
  %1 = alloca i64, align 8
  %pointer = alloca ptr, align 8
  %_10 = alloca ptr, align 8
  %_8 = alloca { ptr, { i64, i64 } }, align 8
  %_2 = alloca i8, align 1
  br i1 false, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %2 = getelementptr inbounds { ptr, i64 }, ptr %self, i32 0, i32 1
  %_4 = load i64, ptr %2, align 8
  %_3 = icmp eq i64 %_4, 0
  %3 = zext i1 %_3 to i8
  store i8 %3, ptr %_2, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 1, ptr %_2, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %4 = load i8, ptr %_2, align 1, !range !5, !noundef !2
  %5 = trunc i8 %4 to i1
  br i1 %5, label %bb4, label %bb5

bb5:                                              ; preds = %bb3
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self, i32 0, i32 1
  %n = load i64, ptr %6, align 8
  store i64 1, ptr %1, align 8
  %_14 = load i64, ptr %1, align 8, !range !7, !noundef !2
  br label %bb10

bb4:                                              ; preds = %bb3
  %7 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", ptr %0, i32 0, i32 1
  store i64 0, ptr %7, align 8
  br label %bb8

bb8:                                              ; preds = %bb7, %bb4
  ret void

bb10:                                             ; preds = %bb5
; call core::alloc::layout::Layout::array::inner
  %8 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array5inner17h7cf3be6836812593E(i64 1, i64 %_14, i64 %n)
  %_6.0 = extractvalue { i64, i64 } %8, 0
  %_6.1 = extractvalue { i64, i64 } %8, 1
  br label %bb9

bb9:                                              ; preds = %bb10
; call core::result::Result<T,E>::unwrap_unchecked
  %9 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hbceef9e2fe22a35cE"(i64 %_6.0, i64 %_6.1, ptr align 8 @alloc106)
  %layout.0 = extractvalue { i64, i64 } %9, 0
  %layout.1 = extractvalue { i64, i64 } %9, 1
  br label %bb6

bb6:                                              ; preds = %bb9
  %self1 = load ptr, ptr %self, align 8, !nonnull !2, !noundef !2
  store ptr %self1, ptr %pointer, align 8
  %_31 = load ptr, ptr %pointer, align 8, !nonnull !2, !noundef !2
  store ptr %_31, ptr %_10, align 8
  %10 = load ptr, ptr %_10, align 8, !nonnull !2, !noundef !2
; call <T as core::convert::Into<U>>::into
  %_9 = call ptr @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hea8536591f138939E"(ptr %10)
  br label %bb7

bb7:                                              ; preds = %bb6
  store ptr %_9, ptr %_8, align 8
  %11 = getelementptr inbounds { ptr, { i64, i64 } }, ptr %_8, i32 0, i32 1
  %12 = getelementptr inbounds { i64, i64 }, ptr %11, i32 0, i32 0
  store i64 %layout.0, ptr %12, align 8
  %13 = getelementptr inbounds { i64, i64 }, ptr %11, i32 0, i32 1
  store i64 %layout.1, ptr %13, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %_8, i64 24, i1 false)
  br label %bb8
}

; alloc::raw_vec::RawVec<T,A>::new_in
; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17hb4c399a0ea00b554E"() unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = alloca { ptr, i32 }, align 8
  %1 = alloca ptr, align 8
  %pointer = alloca ptr, align 8
  %_2 = alloca ptr, align 8
  %2 = alloca { ptr, i64 }, align 8
  store i64 1, ptr %1, align 8
  %ptr = load ptr, ptr %1, align 8
  br label %bb3

bb3:                                              ; preds = %start
  store ptr %ptr, ptr %pointer, align 8
  %_13 = load ptr, ptr %pointer, align 8, !nonnull !2, !noundef !2
  store ptr %_13, ptr %_2, align 8
  %3 = load ptr, ptr %_2, align 8, !nonnull !2, !noundef !2
  store ptr %3, ptr %2, align 8
  %4 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 0, ptr %4, align 8
  %5 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8, !nonnull !2, !noundef !2
  %7 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = insertvalue { ptr, i64 } undef, ptr %6, 0
  %10 = insertvalue { ptr, i64 } %9, i64 %8, 1
  ret { ptr, i64 } %10

bb1:                                              ; No predecessors!
  br label %bb2

bb2:                                              ; preds = %bb1
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 8
  %14 = insertvalue { ptr, i32 } undef, ptr %11, 0
  %15 = insertvalue { ptr, i32 } %14, i32 %13, 1
  resume { ptr, i32 } %15
}

; <alloc::alloc::Global as core::alloc::Allocator>::deallocate
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf28551fed56001c3E"(ptr align 1 %self, ptr %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %_16 = alloca i64, align 8
  %layout1 = alloca { i64, i64 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, ptr %layout, i32 0, i32 0
  store i64 %0, ptr %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, ptr %layout, i32 0, i32 1
  store i64 %1, ptr %3, align 8
  %_4 = load i64, ptr %layout, align 8
  %4 = icmp eq i64 %_4, 0
  br i1 %4, label %bb2, label %bb1

bb2:                                              ; preds = %start
  br label %bb3

bb1:                                              ; preds = %start
  %5 = getelementptr inbounds { i64, i64 }, ptr %layout, i32 0, i32 0
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds { i64, i64 }, ptr %layout, i32 0, i32 1
  %8 = load i64, ptr %7, align 8, !range !7, !noundef !2
  %9 = getelementptr inbounds { i64, i64 }, ptr %layout1, i32 0, i32 0
  store i64 %6, ptr %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, ptr %layout1, i32 0, i32 1
  store i64 %8, ptr %10, align 8
  %_11 = load i64, ptr %layout1, align 8
  %11 = getelementptr inbounds { i64, i64 }, ptr %layout1, i32 0, i32 1
  %self2 = load i64, ptr %11, align 8, !range !7, !noundef !2
  store i64 %self2, ptr %_16, align 8
  %_17 = load i64, ptr %_16, align 8, !range !7, !noundef !2
  %_18 = icmp uge i64 -9223372036854775808, %_17
  call void @llvm.assume(i1 %_18)
  %_19 = icmp ule i64 1, %_17
  call void @llvm.assume(i1 %_19)
  call void @__rust_dealloc(ptr %ptr, i64 %_11, i64 %_17) #16
  br label %bb4

bb4:                                              ; preds = %bb1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb4
  ret void
}

; <alloc::alloc::Global as core::alloc::Allocator>::allocate_zeroed
; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17hefefe10b09aafb9aE"(ptr align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
; call alloc::alloc::Global::alloc_impl
  %0 = call { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h221a36477c0d4e29E(ptr align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext true)
  %1 = extractvalue { ptr, i64 } %0, 0
  %2 = extractvalue { ptr, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { ptr, i64 } undef, ptr %1, 0
  %4 = insertvalue { ptr, i64 } %3, i64 %2, 1
  ret { ptr, i64 } %4
}

; <alloc::alloc::Global as core::alloc::Allocator>::allocate
; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h9aa613c54c89a09fE"(ptr align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
; call alloc::alloc::Global::alloc_impl
  %0 = call { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h221a36477c0d4e29E(ptr align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext false)
  %1 = extractvalue { ptr, i64 } %0, 0
  %2 = extractvalue { ptr, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { ptr, i64 } undef, ptr %1, 0
  %4 = insertvalue { ptr, i64 } %3, i64 %2, 1
  ret { ptr, i64 } %4
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hecd7b02bd4a6fa47E"(ptr align 8 %self) unnamed_addr #1 {
start:
  %_18 = alloca { ptr, i64 }, align 8
  %_17 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %self1 = load ptr, ptr %self, align 8, !nonnull !2, !noundef !2
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_8 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h20e66f82d6e57143E"(ptr %self1)
  br label %bb2

bb2:                                              ; preds = %start
  %_7 = xor i1 %_8, true
  call void @llvm.assume(i1 %_7)
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", ptr %self, i32 0, i32 1
  %len = load i64, ptr %0, align 8
  store ptr %self1, ptr %_18, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %_18, i32 0, i32 1
  store i64 %len, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %_18, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds { ptr, i64 }, ptr %_18, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %_17, i32 0, i32 0
  store ptr %3, ptr %6, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %_17, i32 0, i32 1
  store i64 %5, ptr %7, align 8
  %8 = getelementptr inbounds { ptr, i64 }, ptr %_17, i32 0, i32 0
  %_2.0 = load ptr, ptr %8, align 8
  %9 = getelementptr inbounds { ptr, i64 }, ptr %_17, i32 0, i32 1
  %_2.1 = load i64, ptr %9, align 8
  br label %bb1

bb1:                                              ; preds = %bb2
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h30373cb9293ee84cE"(ptr align 8 %self) unnamed_addr #1 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
; call alloc::raw_vec::RawVec<T,A>::current_memory
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h532242a66397a65dE"(ptr sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_2, ptr align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", ptr %_2, i32 0, i32 1
  %1 = load i64, ptr %0, align 8, !range !8, !noundef !2
  %2 = icmp eq i64 %1, 0
  %_4 = select i1 %2, i64 0, i64 1
  %3 = icmp eq i64 %_4, 1
  br i1 %3, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  %ptr = load ptr, ptr %_2, align 8, !nonnull !2, !noundef !2
  %4 = getelementptr inbounds { ptr, { i64, i64 } }, ptr %_2, i32 0, i32 1
  %5 = getelementptr inbounds { i64, i64 }, ptr %4, i32 0, i32 0
  %layout.0 = load i64, ptr %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, ptr %4, i32 0, i32 1
  %layout.1 = load i64, ptr %6, align 8, !range !7, !noundef !2
; call <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf28551fed56001c3E"(ptr align 1 %self, ptr %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; probe1::probe
; Function Attrs: nonlazybind uwtable
define void @_ZN6probe15probe17h95f6a6456bd265b4E() unnamed_addr #1 {
start:
  %_10 = alloca [1 x { ptr, ptr }], align 8
  %_3 = alloca %"core::fmt::Arguments<'_>", align 8
  %res = alloca %"alloc::string::String", align 8
  %_1 = alloca %"alloc::string::String", align 8
; call core::fmt::ArgumentV1::new_lower_exp
  %0 = call { ptr, ptr } @_ZN4core3fmt10ArgumentV113new_lower_exp17h6c42dea03d680eabE(ptr align 8 @alloc6)
  %_11.0 = extractvalue { ptr, ptr } %0, 0
  %_11.1 = extractvalue { ptr, ptr } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds [1 x { ptr, ptr }], ptr %_10, i64 0, i64 0
  %2 = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 0
  store ptr %_11.0, ptr %2, align 8
  %3 = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 1
  store ptr %_11.1, ptr %3, align 8
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117hdc2d6d471e597ecaE(ptr sret(%"core::fmt::Arguments<'_>") %_3, ptr align 8 @alloc4, i64 1, ptr align 8 %_10, i64 1)
  br label %bb2

bb2:                                              ; preds = %bb1
; call alloc::fmt::format
  call void @_ZN5alloc3fmt6format17h7a9f11f18443d056E(ptr sret(%"alloc::string::String") %res, ptr %_3)
  br label %bb3

bb3:                                              ; preds = %bb2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_1, ptr align 8 %res, i64 24, i1 false)
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h23f8842d6a17cce7E"(ptr %_1)
  br label %bb4

bb4:                                              ; preds = %bb3
  ret void
}

; core::fmt::num::imp::<impl core::fmt::LowerExp for isize>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp55_$LT$impl$u20$core..fmt..LowerExp$u20$for$u20$isize$GT$3fmt17h0a92b570c3b62814E"(ptr align 8, ptr align 8) unnamed_addr #1

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h940cb25cf018faefE(ptr, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #1

; core::panicking::panic_no_unwind
; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking15panic_no_unwind17h975e16a63eaa1fdaE() unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #7

; core::panicking::panic
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hf0876db436e55c60E(ptr align 1, i64, ptr align 8) unnamed_addr #3

; alloc::fmt::format::format_inner
; Function Attrs: nonlazybind uwtable
declare void @_ZN5alloc3fmt6format12format_inner17hf3add86a107d324dE(ptr sret(%"alloc::string::String"), ptr) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias ptr @__rust_alloc_zeroed(i64, i64 allocalign) unnamed_addr #8

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias ptr @__rust_alloc(i64, i64 allocalign) unnamed_addr #9

; alloc::raw_vec::capacity_overflow
; Function Attrs: noreturn nonlazybind uwtable
declare void @_ZN5alloc7raw_vec17capacity_overflow17hc91e2982bc8a8747E() unnamed_addr #10

; alloc::alloc::handle_alloc_error
; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17hfcacdc70f64bb765E(i64, i64) unnamed_addr #11

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @__rust_dealloc(ptr allocptr, i64, i64) unnamed_addr #12

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #2 = { inlinehint noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #4 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #5 = { argmemonly nocallback nofree nounwind willreturn }
attributes #6 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #9 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #10 = { noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #11 = { cold noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #13 = { noreturn }
attributes #14 = { noinline }
attributes #15 = { noinline noreturn nounwind }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{}
!3 = !{i64 1}
!4 = !{i64 8}
!5 = !{i8 0, i8 2}
!6 = !{i8 0, i8 3}
!7 = !{i64 1, i64 -9223372036854775807}
!8 = !{i64 0, i64 -9223372036854775807}
!9 = !{i64 0, i64 -9223372036854775806}
