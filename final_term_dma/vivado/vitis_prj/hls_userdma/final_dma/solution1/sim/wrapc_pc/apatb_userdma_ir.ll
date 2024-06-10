; ModuleID = '/home/ubuntu/Desktop/SOC/final_term/vivado/vitis_prj/hls_userdma/final_dma/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, false>" }
%"struct.ap_int_base<32, false>" = type { %"class.hls::stream<int, 0>" }
%"class.hls::stream<int, 0>" = type { i32 }
%"struct.ap_int<1>" = type { %"struct.ap_int_base<1, true>" }
%"struct.ap_int_base<1, true>" = type { %"struct.ssdm_int<1, true>" }
%"struct.ssdm_int<1, true>" = type { i1 }
%"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>" = type { %"struct.hls::axis<ap_uint<24>, 7, 0, 0>" }
%"struct.hls::axis<ap_uint<24>, 7, 0, 0>" = type { %"struct.ap_int<24>", %"struct.ap_uint<3>", %"struct.ap_uint<3>", %"struct.ap_uint<7>", %"struct.ap_int<1>", %"struct.ap_int<1>", %"struct.ap_int<1>" }
%"struct.ap_int<24>" = type { %"struct.ap_int_base<24, true>" }
%"struct.ap_int_base<24, true>" = type { %"struct.ssdm_int<24, true>" }
%"struct.ssdm_int<24, true>" = type { i24 }
%"struct.ap_uint<3>" = type { %"struct.ap_int_base<3, false>" }
%"struct.ap_int_base<3, false>" = type { %"struct.ssdm_int<3, false>" }
%"struct.ssdm_int<3, false>" = type { i3 }
%"struct.ap_uint<7>" = type { %"struct.ap_int_base<7, false>" }
%"struct.ap_int_base<7, false>" = type { %"struct.ssdm_int<7, false>" }
%"struct.ssdm_int<7, false>" = type { i7 }

; Function Attrs: noinline
define void @apatb_userdma_ir(%"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* noalias nonnull dereferenceable(12) %inStreamTop, i1* noalias nocapture nonnull %s2m_buf_sts, i1 zeroext %s2m_sts_clear, %"struct.ap_uint<32>"* nocapture readonly %s2m_len, %"struct.ap_int<1>"* nocapture readonly %s2m_enb_clrsts, %"struct.ap_uint<32>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="64" %s2mbuf, i1* noalias nocapture nonnull %s2m_err, %"struct.ap_uint<32>"* nocapture readonly %Img_width, %"struct.ap_uint<32>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="64" %m2sbuf, i1* noalias nocapture nonnull %m2s_buf_sts, i1 zeroext %m2s_sts_clear, i32 %m2s_len, %"struct.ap_int<1>"* nocapture readonly %m2s_enb_clrsts, %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* noalias nonnull dereferenceable(12) %outStreamTop) local_unnamed_addr #0 {
entry:
  %inStreamTop_copy.data = alloca i24
  %inStreamTop_copy.keep = alloca i3
  %inStreamTop_copy.strb = alloca i3
  %inStreamTop_copy.user = alloca i7
  %inStreamTop_copy.last = alloca i1
  %s2m_buf_sts_copy = alloca i1, align 512
  %s2mbuf_copy = alloca [64 x i32], align 512
  %s2m_err_copy = alloca i1, align 512
  %m2sbuf_copy = alloca [64 x i32], align 512
  %m2s_buf_sts_copy = alloca i1, align 512
  %outStreamTop_copy.data = alloca i24
  %outStreamTop_copy.keep = alloca i3
  %outStreamTop_copy.strb = alloca i3
  %outStreamTop_copy.user = alloca i7
  %outStreamTop_copy.last = alloca i1
  %0 = bitcast %"struct.ap_uint<32>"* %s2mbuf to [64 x %"struct.ap_uint<32>"]*
  %1 = bitcast %"struct.ap_uint<32>"* %m2sbuf to [64 x %"struct.ap_uint<32>"]*
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* nonnull %inStreamTop, i24* %inStreamTop_copy.data, i3* %inStreamTop_copy.keep, i3* %inStreamTop_copy.strb, i7* %inStreamTop_copy.user, i1* %inStreamTop_copy.last, i1* nonnull %s2m_buf_sts, i1* nonnull align 512 %s2m_buf_sts_copy, [64 x %"struct.ap_uint<32>"]* nonnull %0, [64 x i32]* nonnull align 512 %s2mbuf_copy, i1* nonnull %s2m_err, i1* nonnull align 512 %s2m_err_copy, [64 x %"struct.ap_uint<32>"]* nonnull %1, [64 x i32]* nonnull align 512 %m2sbuf_copy, i1* nonnull %m2s_buf_sts, i1* nonnull align 512 %m2s_buf_sts_copy, %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* nonnull %outStreamTop, i24* %outStreamTop_copy.data, i3* %outStreamTop_copy.keep, i3* %outStreamTop_copy.strb, i7* %outStreamTop_copy.user, i1* %outStreamTop_copy.last)
  %2 = getelementptr [64 x i32], [64 x i32]* %s2mbuf_copy, i32 0, i32 0
  %3 = getelementptr [64 x i32], [64 x i32]* %m2sbuf_copy, i32 0, i32 0
  call void @apatb_userdma_hw(i24* %inStreamTop_copy.data, i3* %inStreamTop_copy.keep, i3* %inStreamTop_copy.strb, i7* %inStreamTop_copy.user, i1* %inStreamTop_copy.last, i1* %s2m_buf_sts_copy, i1 %s2m_sts_clear, %"struct.ap_uint<32>"* %s2m_len, %"struct.ap_int<1>"* %s2m_enb_clrsts, i32* %2, i1* %s2m_err_copy, %"struct.ap_uint<32>"* %Img_width, i32* %3, i1* %m2s_buf_sts_copy, i1 %m2s_sts_clear, i32 %m2s_len, %"struct.ap_int<1>"* %m2s_enb_clrsts, i24* %outStreamTop_copy.data, i3* %outStreamTop_copy.keep, i3* %outStreamTop_copy.strb, i7* %outStreamTop_copy.user, i1* %outStreamTop_copy.last)
  call void @copy_back(%"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %inStreamTop, i24* %inStreamTop_copy.data, i3* %inStreamTop_copy.keep, i3* %inStreamTop_copy.strb, i7* %inStreamTop_copy.user, i1* %inStreamTop_copy.last, i1* %s2m_buf_sts, i1* %s2m_buf_sts_copy, [64 x %"struct.ap_uint<32>"]* %0, [64 x i32]* %s2mbuf_copy, i1* %s2m_err, i1* %s2m_err_copy, [64 x %"struct.ap_uint<32>"]* %1, [64 x i32]* %m2sbuf_copy, i1* %m2s_buf_sts, i1* %m2s_buf_sts_copy, %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %outStreamTop, i24* %outStreamTop_copy.data, i3* %outStreamTop_copy.keep, i3* %outStreamTop_copy.strb, i7* %outStreamTop_copy.user, i1* %outStreamTop_copy.last)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* noalias, i24* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i7* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i1* noalias readonly, i1* noalias align 512, [64 x %"struct.ap_uint<32>"]* noalias readonly, [64 x i32]* noalias align 512, i1* noalias readonly, i1* noalias align 512, [64 x %"struct.ap_uint<32>"]* noalias readonly, [64 x i32]* noalias align 512, i1* noalias readonly, i1* noalias align 512, %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* noalias, i24* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.0" %_V_data_V1, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.1" %_V_keep_V2, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.2" %_V_strb_V3, i7* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.3" %_V_user_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.4" %_V_last_V5) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>.62"(i24* %_V_data_V, i3* %_V_keep_V, i3* %_V_strb_V, i7* %_V_user_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %0)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %2, i1* %1)
  call fastcc void @"onebyonecpy_hls.p0a64struct.ap_uint<32>.44"([64 x i32]* align 512 %4, [64 x %"struct.ap_uint<32>"]* %3)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %6, i1* %5)
  call fastcc void @"onebyonecpy_hls.p0a64struct.ap_uint<32>.44"([64 x i32]* align 512 %8, [64 x %"struct.ap_uint<32>"]* %7)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %10, i1* %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>.62"(i24* %_V_data_V1, i3* %_V_keep_V2, i3* %_V_strb_V3, i7* %_V_user_V4, i1* %_V_last_V5, %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %11)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0i1(i1* noalias align 512, i1* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i1* %0, null
  %3 = icmp eq i1* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast i1* %1 to i8*
  %6 = load i8, i8* %5
  %7 = trunc i8 %6 to i1
  store i1 %7, i1* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* noalias, i24* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i7* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i1* noalias, i1* noalias readonly align 512, [64 x %"struct.ap_uint<32>"]* noalias, [64 x i32]* noalias readonly align 512, i1* noalias, i1* noalias readonly align 512, [64 x %"struct.ap_uint<32>"]* noalias, [64 x i32]* noalias readonly align 512, i1* noalias, i1* noalias readonly align 512, %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* noalias, i24* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.0" %_V_data_V1, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.1" %_V_keep_V2, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.2" %_V_strb_V3, i7* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.3" %_V_user_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.4" %_V_last_V5) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %0, i24* %_V_data_V, i3* %_V_keep_V, i3* %_V_strb_V, i7* %_V_user_V, i1* %_V_last_V)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %1, i1* align 512 %2)
  call fastcc void @"onebyonecpy_hls.p0a64struct.ap_uint<32>"([64 x %"struct.ap_uint<32>"]* %3, [64 x i32]* align 512 %4)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %5, i1* align 512 %6)
  call fastcc void @"onebyonecpy_hls.p0a64struct.ap_uint<32>"([64 x %"struct.ap_uint<32>"]* %7, [64 x i32]* align 512 %8)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %9, i1* align 512 %10)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %11, i24* %_V_data_V1, i3* %_V_keep_V2, i3* %_V_strb_V3, i7* %_V_user_V4, i1* %_V_last_V5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a64struct.ap_uint<32>"([64 x %"struct.ap_uint<32>"]* noalias, [64 x i32]* noalias readonly align 512) unnamed_addr #2 {
entry:
  %2 = icmp eq [64 x %"struct.ap_uint<32>"]* %0, null
  %3 = icmp eq [64 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %5 = getelementptr [64 x i32], [64 x i32]* %1, i64 0, i64 %for.loop.idx7
  %dst.addr.0.0.06 = getelementptr [64 x %"struct.ap_uint<32>"], [64 x %"struct.ap_uint<32>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 64
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a64struct.ap_uint<32>.44"([64 x i32]* noalias align 512, [64 x %"struct.ap_uint<32>"]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [64 x i32]* %0, null
  %3 = icmp eq [64 x %"struct.ap_uint<32>"]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [64 x %"struct.ap_uint<32>"], [64 x %"struct.ap_uint<32>"]* %1, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %5 = getelementptr [64 x i32], [64 x i32]* %0, i64 0, i64 %for.loop.idx7
  %6 = load i32, i32* %src.addr.0.0.05, align 4
  store i32 %6, i32* %5, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 64
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i24* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i7* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V) unnamed_addr #4 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>.58"(%"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* nonnull align 512 %0, i24* %_V_data_V, i3* %_V_keep_V, i3* %_V_strb_V, i7* %_V_user_V, i1* %_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>.58"(%"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i24* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i3* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i3* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i7* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V) unnamed_addr #5 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"
  %2 = alloca i24
  %3 = alloca i3
  %4 = alloca i3
  %5 = alloca i7
  %6 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %7 = bitcast i24* %_V_data_V to i8*
  %8 = call i1 @fpga_fifo_not_empty_4(i8* %7)
  br i1 %8, label %push, label %ret

push:                                             ; preds = %empty
  %9 = bitcast i24* %2 to i8*
  %10 = bitcast i24* %_V_data_V to i8*
  call void @fpga_fifo_pop_4(i8* %9, i8* %10)
  %11 = load volatile i24, i24* %2
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %13 = bitcast %"struct.ap_int<24>"* %12 to i24*
  store i24 %11, i24* %13
  %14 = bitcast i3* %4 to i8*
  %15 = bitcast i3* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %14, i8* %15)
  %16 = bitcast i3* %4 to i8*
  %17 = load i8, i8* %16
  %18 = trunc i8 %17 to i3
  %19 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %20 = bitcast %"struct.ap_uint<3>"* %19 to i3*
  store i3 %18, i3* %20
  %21 = bitcast i3* %3 to i8*
  %22 = bitcast i3* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %21, i8* %22)
  %23 = bitcast i3* %3 to i8*
  %24 = load i8, i8* %23
  %25 = trunc i8 %24 to i3
  %26 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %27 = bitcast %"struct.ap_uint<3>"* %26 to i3*
  store i3 %25, i3* %27
  %28 = bitcast i7* %5 to i8*
  %29 = bitcast i7* %_V_user_V to i8*
  call void @fpga_fifo_pop_1(i8* %28, i8* %29)
  %30 = bitcast i7* %5 to i8*
  %31 = load i8, i8* %30
  %32 = trunc i8 %31 to i7
  %33 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %1, i32 0, i32 0, i32 3
  %34 = bitcast %"struct.ap_uint<7>"* %33 to i7*
  store i7 %32, i7* %34
  %35 = bitcast i1* %6 to i8*
  %36 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %35, i8* %36)
  %37 = bitcast i1* %6 to i8*
  %38 = load i8, i8* %37
  %39 = trunc i8 %38 to i1
  %40 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %41 = bitcast %"struct.ap_int<1>"* %40 to i1*
  store i1 %39, i1* %41
  %42 = bitcast %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %1 to i8*
  %43 = bitcast %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %42, i8* %43)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>.62"(i24* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i7* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>.65"(i24* %_V_data_V, i3* %_V_keep_V, i3* %_V_strb_V, i7* %_V_user_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>.65"(i24* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i3* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i3* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i7* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_user_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_12(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_12(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %2
  store %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>" %7, %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_int<24>"* %8 to i24*
  %10 = bitcast i24* %9 to i8*
  %11 = bitcast i24* %_V_data_V to i8*
  call void @fpga_fifo_push_4(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %"struct.ap_uint<3>"* %12 to i3*
  %14 = bitcast i3* %13 to i8*
  %15 = bitcast i3* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %14, i8* %15)
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %17 = bitcast %"struct.ap_uint<3>"* %16 to i3*
  %18 = bitcast i3* %17 to i8*
  %19 = bitcast i3* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %1, i32 0, i32 0, i32 3
  %21 = bitcast %"struct.ap_uint<7>"* %20 to i7*
  %22 = bitcast i7* %21 to i8*
  %23 = bitcast i7* %_V_user_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  %24 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %25 = bitcast %"struct.ap_int<1>"* %24 to i1*
  %26 = bitcast i1* %25 to i8*
  %27 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %26, i8* %27)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_userdma_hw(i24*, i3*, i3*, i7*, i1*, i1*, i1, %"struct.ap_uint<32>"*, %"struct.ap_int<1>"*, i32*, i1*, %"struct.ap_uint<32>"*, i32*, i1*, i1, i32, %"struct.ap_int<1>"*, i24*, i3*, i3*, i7*, i1*)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* noalias, i24* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i7* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i1* noalias, i1* noalias readonly align 512, [64 x %"struct.ap_uint<32>"]* noalias, [64 x i32]* noalias readonly align 512, i1* noalias, i1* noalias readonly align 512, [64 x %"struct.ap_uint<32>"]* noalias, [64 x i32]* noalias readonly align 512, i1* noalias, i1* noalias readonly align 512, %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* noalias, i24* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.0" %_V_data_V1, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.1" %_V_keep_V2, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.2" %_V_strb_V3, i7* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.3" %_V_user_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.4" %_V_last_V5) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %0, i24* %_V_data_V, i3* %_V_keep_V, i3* %_V_strb_V, i7* %_V_user_V, i1* %_V_last_V)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %1, i1* align 512 %2)
  call fastcc void @"onebyonecpy_hls.p0a64struct.ap_uint<32>"([64 x %"struct.ap_uint<32>"]* %3, [64 x i32]* align 512 %4)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %5, i1* align 512 %6)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %9, i1* align 512 %10)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %11, i24* %_V_data_V1, i3* %_V_keep_V2, i3* %_V_strb_V3, i7* %_V_user_V4, i1* %_V_last_V5)
  ret void
}

define void @userdma_hw_stub_wrapper(i24*, i3*, i3*, i7*, i1*, i1*, i1, %"struct.ap_uint<32>"*, %"struct.ap_int<1>"*, i32*, i1*, %"struct.ap_uint<32>"*, i32*, i1*, i1, i32, %"struct.ap_int<1>"*, i24*, i3*, i3*, i7*, i1*) #6 {
entry:
  %22 = alloca %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"
  %23 = alloca [64 x %"struct.ap_uint<32>"]
  %24 = alloca [64 x %"struct.ap_uint<32>"]
  %25 = alloca %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"
  %26 = bitcast i32* %9 to [64 x i32]*
  %27 = bitcast i32* %12 to [64 x i32]*
  call void @copy_out(%"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %22, i24* %0, i3* %1, i3* %2, i7* %3, i1* %4, i1* null, i1* %5, [64 x %"struct.ap_uint<32>"]* %23, [64 x i32]* %26, i1* null, i1* %10, [64 x %"struct.ap_uint<32>"]* %24, [64 x i32]* %27, i1* null, i1* %13, %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %25, i24* %17, i3* %18, i3* %19, i7* %20, i1* %21)
  %28 = bitcast [64 x %"struct.ap_uint<32>"]* %23 to %"struct.ap_uint<32>"*
  %29 = bitcast [64 x %"struct.ap_uint<32>"]* %24 to %"struct.ap_uint<32>"*
  call void @userdma_hw_stub(%"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %22, i1* %5, i1 %6, %"struct.ap_uint<32>"* %7, %"struct.ap_int<1>"* %8, %"struct.ap_uint<32>"* %28, i1* %10, %"struct.ap_uint<32>"* %11, %"struct.ap_uint<32>"* %29, i1* %13, i1 %14, i32 %15, %"struct.ap_int<1>"* %16, %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %25)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %22, i24* %0, i3* %1, i3* %2, i7* %3, i1* %4, i1* null, i1* %5, [64 x %"struct.ap_uint<32>"]* %23, [64 x i32]* %26, i1* null, i1* %10, [64 x %"struct.ap_uint<32>"]* %24, [64 x i32]* %27, i1* null, i1* %13, %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"* %25, i24* %17, i3* %18, i3* %19, i7* %20, i1* %21)
  ret void
}

declare void @userdma_hw_stub(%"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"*, i1*, i1, %"struct.ap_uint<32>"*, %"struct.ap_int<1>"*, %"struct.ap_uint<32>"*, i1*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, i1*, i1, i32, %"struct.ap_int<1>"*, %"class.hls::stream<hls::axis<ap_uint<24>, 7, 0, 0>, 0>"*)

declare i1 @fpga_fifo_not_empty_12(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_12(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_12(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
