; ModuleID = 'Example1_Driver_Lockbox.bc'
source_filename = "Example1_Driver_Lockbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._Example1_Driver_Lockbox_PROTOCOL = type { {}*, i32 (%struct._Example1_Driver_Lockbox_PROTOCOL*, i8*, i32, i8*, i32)*, i32 (%struct._Example1_Driver_Lockbox_PROTOCOL*, i8*, i8**, i32, i32)*, i32 (%struct._Example1_Driver_Lockbox_PROTOCOL*, i8*, i8*, i8*, i32)* }
%struct.EFI_SYSTEM_TABLE = type { %struct.EFI_TABLE_HEADER, i16*, i32, i8*, %struct._EFI_SIMPLE_TEXT_INPUT_PROTOCOL*, i8*, %struct._EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL*, i8*, %struct._EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL*, %struct.EFI_RUNTIME_SERVICES*, %struct.EFI_BOOT_SERVICES*, i32, %struct.EFI_CONFIGURATION_TABLE* }
%struct.EFI_TABLE_HEADER = type { i64, i32, i32, i32, i32 }
%struct._EFI_SIMPLE_TEXT_INPUT_PROTOCOL = type { i32 (%struct._EFI_SIMPLE_TEXT_INPUT_PROTOCOL*, i8)*, i32 (%struct._EFI_SIMPLE_TEXT_INPUT_PROTOCOL*, %struct.EFI_INPUT_KEY*)*, i8* }
%struct.EFI_INPUT_KEY = type { i16, i16 }
%struct._EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL = type { i32 (%struct._EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL*, i8)*, i32 (%struct._EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL*, i16*)*, i32 (%struct._EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL*, i16*)*, i32 (%struct._EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL*, i32, i32*, i32*)*, i32 (%struct._EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL*, i32)*, i32 (%struct._EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL*, i32)*, i32 (%struct._EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL*)*, i32 (%struct._EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL*, i32, i32)*, i32 (%struct._EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL*, i8)*, %struct.EFI_SIMPLE_TEXT_OUTPUT_MODE* }
%struct.EFI_SIMPLE_TEXT_OUTPUT_MODE = type { i32, i32, i32, i32, i32, i8 }
%struct.EFI_RUNTIME_SERVICES = type { %struct.EFI_TABLE_HEADER, i32 (%struct.EFI_TIME*, %struct.EFI_TIME_CAPABILITIES*)*, i32 (%struct.EFI_TIME*)*, i32 (i8*, i8*, %struct.EFI_TIME*)*, i32 (i8, %struct.EFI_TIME*)*, i32 (i32, i32, i32, %struct.EFI_MEMORY_DESCRIPTOR*)*, i32 (i32, i8**)*, i32 (i16*, %struct.GUID*, i32*, i32*, i8*)*, i32 (i32*, i16*, %struct.GUID*)*, i32 (i16*, %struct.GUID*, i32, i32, i8*)*, i32 (i32*)*, void (i32, i32, i32, i8*)*, i32 (%struct.EFI_CAPSULE_HEADER**, i32, i64)*, i32 (%struct.EFI_CAPSULE_HEADER**, i32, i64*, i32*)*, i32 (i32, i64*, i64*, i64*)* }
%struct.EFI_TIME = type { i16, i8, i8, i8, i8, i8, i8, i32, i16, i8, i8 }
%struct.EFI_TIME_CAPABILITIES = type { i32, i32, i8 }
%struct.EFI_MEMORY_DESCRIPTOR = type { i32, i64, i64, i64, i64 }
%struct.GUID = type { i32, i16, i16, [8 x i8] }
%struct.EFI_CAPSULE_HEADER = type { %struct.GUID, i32, i32, i32 }
%struct.EFI_BOOT_SERVICES = type { %struct.EFI_TABLE_HEADER, i32 (i32)*, void (i32)*, i32 (i32, i32, i32, i64*)*, i32 (i64, i32)*, i32 (i32*, %struct.EFI_MEMORY_DESCRIPTOR*, i32*, i32*, i32*)*, i32 (i32, i32, i8**)*, i32 (i8*)*, i32 (i32, i32, void (i8*, i8*)*, i8*, i8**)*, i32 (i8*, i32, i64)*, i32 (i32, i8**, i32*)*, i32 (i8*)*, i32 (i8*)*, i32 (i8*)*, i32 (i8**, %struct.GUID*, i32, i8*)*, i32 (i8*, %struct.GUID*, i8*, i8*)*, i32 (i8*, %struct.GUID*, i8*)*, i32 (i8*, %struct.GUID*, i8**)*, i8*, i32 (%struct.GUID*, i8*, i8**)*, i32 (i32, %struct.GUID*, i8*, i32*, i8**)*, i32 (%struct.GUID*, %struct.EFI_DEVICE_PATH_PROTOCOL**, i8**)*, i32 (%struct.GUID*, i8*)*, i32 (i8, i8*, %struct.EFI_DEVICE_PATH_PROTOCOL*, i8*, i32, i8**)*, i32 (i8*, i32*, i16**)*, i32 (i8*, i32, i32, i16*)*, i32 (i8*)*, i32 (i8*, i32)*, i32 (i64*)*, i32 (i32)*, i32 (i32, i64, i32, i16*)*, i32 (i8*, i8**, %struct.EFI_DEVICE_PATH_PROTOCOL*, i8)*, i32 (i8*, i8*, i8*)*, i32 (i8*, %struct.GUID*, i8**, i8*, i8*, i32)*, i32 (i8*, %struct.GUID*, i8*, i8*)*, i32 (i8*, %struct.GUID*, %struct.EFI_OPEN_PROTOCOL_INFORMATION_ENTRY**, i32*)*, i32 (i8*, %struct.GUID***, i32*)*, i32 (i32, %struct.GUID*, i8*, i32*, i8***)*, i32 (%struct.GUID*, i8*, i8**)*, i32 (i8**, ...)*, i32 (i8*, ...)*, i32 (i8*, i32, i32*)*, void (i8*, i8*, i32)*, void (i8*, i32, i8)*, i32 (i32, i32, void (i8*, i8*)*, i8*, %struct.GUID*, i8**)* }
%struct.EFI_DEVICE_PATH_PROTOCOL = type { i8, i8, [2 x i8] }
%struct.EFI_OPEN_PROTOCOL_INFORMATION_ENTRY = type { i8*, i8*, i32, i32 }
%struct.EFI_CONFIGURATION_TABLE = type { %struct.GUID, i8* }

@lockpin = dso_local global i32 0, align 4, !dbg !0
@lockbox_length = dso_local global i32 16384, align 4, !dbg !68
@gExample1_Driver_LockboxProtocol = dso_local global { i32 (%struct._Example1_Driver_Lockbox_PROTOCOL*, i8*, i32)*, i32 (%struct._Example1_Driver_Lockbox_PROTOCOL*, i8*, i32, i8*, i32)*, i32 (%struct._Example1_Driver_Lockbox_PROTOCOL*, i8*, i8**, i32, i32)*, i32 (%struct._Example1_Driver_Lockbox_PROTOCOL*, i8*, i8*, i8*, i32)* } { i32 (%struct._Example1_Driver_Lockbox_PROTOCOL*, i8*, i32)* @Example1_Driver_Lockbox_SetLockPin, i32 (%struct._Example1_Driver_Lockbox_PROTOCOL*, i8*, i32, i8*, i32)* @Example1_Driver_Lockbox_WriteData_Wrapper, i32 (%struct._Example1_Driver_Lockbox_PROTOCOL*, i8*, i8**, i32, i32)* @Example1_Driver_Lockbox_ReadData, i32 (%struct._Example1_Driver_Lockbox_PROTOCOL*, i8*, i8*, i8*, i32)* @Example1_Driver_Lockbox_WriteData }, align 8, !dbg !70
@Pages = dso_local global i32 0, align 4, !dbg !102
@lockbox_start = dso_local global i8* null, align 8, !dbg !104
@PhysicalBuffer = dso_local global i64 0, align 8, !dbg !100
@.str = private unnamed_addr constant [42 x i8] c"Example1_Driver_Lockbox Set Lockpin(%ld)\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ImageHandle\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"SystemTable\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Example1_Driver_Lockbox_SetLockPin(%struct._Example1_Driver_Lockbox_PROTOCOL* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !114 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._Example1_Driver_Lockbox_PROTOCOL*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct._Example1_Driver_Lockbox_PROTOCOL* %0, %struct._Example1_Driver_Lockbox_PROTOCOL** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._Example1_Driver_Lockbox_PROTOCOL** %5, metadata !116, metadata !DIExpression()), !dbg !117
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !118, metadata !DIExpression()), !dbg !119
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !120, metadata !DIExpression()), !dbg !121
  %8 = load i32, i32* @lockpin, align 4, !dbg !122
  %9 = icmp ne i32 %8, 0, !dbg !124
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, 0
  %or.cond = select i1 %9, i1 %11, i1 false, !dbg !125
  br i1 %or.cond, label %12, label %13, !dbg !125

12:                                               ; preds = %3
  store i32 -2147483633, i32* %4, align 4, !dbg !126
  br label %23, !dbg !126

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4, !dbg !128
  store i32 %14, i32* @lockpin, align 4, !dbg !129
  %15 = call zeroext i8 @DebugPrintEnabled(), !dbg !130
  %16 = icmp ne i8 %15, 0, !dbg !130
  br i1 %16, label %17, label %22, !dbg !133

17:                                               ; preds = %13
  %18 = call zeroext i8 @DebugPrintLevelEnabled(i32 noundef 64), !dbg !134
  %19 = icmp ne i8 %18, 0, !dbg !134
  br i1 %19, label %20, label %22, !dbg !138

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4, !dbg !139
  call void (i32, i8*, ...) @DebugPrint(i32 noundef 64, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 noundef %21), !dbg !139
  br label %22, !dbg !139

22:                                               ; preds = %13, %17, %20
  store i32 0, i32* %4, align 4, !dbg !141
  br label %23, !dbg !141

23:                                               ; preds = %22, %12
  %24 = load i32, i32* %4, align 4, !dbg !142
  ret i32 %24, !dbg !142
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Example1_Driver_Lockbox_WriteData_Wrapper(%struct._Example1_Driver_Lockbox_PROTOCOL* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i32 noundef %4) #0 !dbg !143 {
  %6 = alloca %struct._Example1_Driver_Lockbox_PROTOCOL*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct._Example1_Driver_Lockbox_PROTOCOL* %0, %struct._Example1_Driver_Lockbox_PROTOCOL** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._Example1_Driver_Lockbox_PROTOCOL** %6, metadata !144, metadata !DIExpression()), !dbg !145
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !146, metadata !DIExpression()), !dbg !147
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !148, metadata !DIExpression()), !dbg !149
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !150, metadata !DIExpression()), !dbg !151
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !152, metadata !DIExpression()), !dbg !153
  %11 = load %struct._Example1_Driver_Lockbox_PROTOCOL*, %struct._Example1_Driver_Lockbox_PROTOCOL** %6, align 8, !dbg !154
  %12 = load i8*, i8** @lockbox_start, align 8, !dbg !155
  %13 = load i32, i32* %8, align 4, !dbg !156
  %14 = zext i32 %13 to i64, !dbg !157
  %15 = getelementptr i8, i8* %12, i64 %14, !dbg !157
  %16 = load i8*, i8** %9, align 8, !dbg !158
  %17 = load i32, i32* %10, align 4, !dbg !159
  %18 = call i32 @Example1_Driver_Lockbox_WriteData(%struct._Example1_Driver_Lockbox_PROTOCOL* noundef %11, i8* noundef null, i8* noundef %15, i8* noundef %16, i32 noundef %17), !dbg !160
  ret i32 %18, !dbg !161
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Example1_Driver_Lockbox_ReadData(%struct._Example1_Driver_Lockbox_PROTOCOL* noundef %0, i8* noundef %1, i8** noundef %2, i32 noundef %3, i32 noundef %4) #0 !dbg !162 {
  %6 = alloca i32, align 4
  %7 = alloca %struct._Example1_Driver_Lockbox_PROTOCOL*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct._Example1_Driver_Lockbox_PROTOCOL* %0, %struct._Example1_Driver_Lockbox_PROTOCOL** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._Example1_Driver_Lockbox_PROTOCOL** %7, metadata !163, metadata !DIExpression()), !dbg !164
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !165, metadata !DIExpression()), !dbg !166
  store i8** %2, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !167, metadata !DIExpression()), !dbg !168
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !169, metadata !DIExpression()), !dbg !170
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !171, metadata !DIExpression()), !dbg !172
  %13 = load i8**, i8*** %9, align 8, !dbg !173
  %14 = load i8*, i8** %13, align 8, !dbg !175
  %15 = icmp eq i8* %14, null, !dbg !176
  br i1 %15, label %16, label %17, !dbg !177

16:                                               ; preds = %5
  store i32 -2147483646, i32* %6, align 4, !dbg !178
  br label %50, !dbg !178

17:                                               ; preds = %5
  call void @llvm.dbg.declare(metadata i8** %12, metadata !179, metadata !DIExpression()), !dbg !180
  %18 = load i8*, i8** @lockbox_start, align 8, !dbg !181
  %19 = load i32, i32* %10, align 4, !dbg !182
  %20 = zext i32 %19 to i64, !dbg !183
  %21 = getelementptr i8, i8* %18, i64 %20, !dbg !183
  store i8* %21, i8** %12, align 8, !dbg !180
  %22 = load i8*, i8** @lockbox_start, align 8, !dbg !184
  %23 = load i8*, i8** %12, align 8, !dbg !186
  %24 = icmp ugt i8* %22, %23, !dbg !187
  br i1 %24, label %32, label %25, !dbg !188

25:                                               ; preds = %17
  %26 = load i8*, i8** %12, align 8, !dbg !189
  %27 = load i8*, i8** @lockbox_start, align 8, !dbg !190
  %28 = load i32, i32* @lockbox_length, align 4, !dbg !191
  %29 = zext i32 %28 to i64, !dbg !192
  %30 = getelementptr i8, i8* %27, i64 %29, !dbg !192
  %31 = icmp uge i8* %26, %30, !dbg !193
  br i1 %31, label %32, label %33, !dbg !194

32:                                               ; preds = %25, %17
  store i32 -2147483631, i32* %6, align 4, !dbg !195
  br label %50, !dbg !195

33:                                               ; preds = %25
  %34 = load i8*, i8** %12, align 8, !dbg !197
  %35 = load i32, i32* %11, align 4, !dbg !199
  %36 = zext i32 %35 to i64, !dbg !200
  %37 = getelementptr i8, i8* %34, i64 %36, !dbg !200
  %38 = load i8*, i8** @lockbox_start, align 8, !dbg !201
  %39 = load i32, i32* @lockbox_length, align 4, !dbg !202
  %40 = zext i32 %39 to i64, !dbg !203
  %41 = getelementptr i8, i8* %38, i64 %40, !dbg !203
  %42 = icmp uge i8* %37, %41, !dbg !204
  br i1 %42, label %43, label %44, !dbg !205

43:                                               ; preds = %33
  store i32 -2147483631, i32* %6, align 4, !dbg !206
  br label %50, !dbg !206

44:                                               ; preds = %33
  %45 = load i8**, i8*** %9, align 8, !dbg !208
  %46 = load i8*, i8** %45, align 8, !dbg !209
  %47 = load i8*, i8** %12, align 8, !dbg !210
  %48 = load i32, i32* %11, align 4, !dbg !211
  %49 = call i8* @CopyMem(i8* noundef %46, i8* noundef %47, i32 noundef %48), !dbg !212
  store i32 0, i32* %6, align 4, !dbg !213
  br label %50, !dbg !213

50:                                               ; preds = %44, %43, %32, %16
  %51 = load i32, i32* %6, align 4, !dbg !214
  ret i32 %51, !dbg !214
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Example1_Driver_Lockbox_WriteData(%struct._Example1_Driver_Lockbox_PROTOCOL* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i32 noundef %4) #0 !dbg !215 {
  %6 = alloca i32, align 4
  %7 = alloca %struct._Example1_Driver_Lockbox_PROTOCOL*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct._Example1_Driver_Lockbox_PROTOCOL* %0, %struct._Example1_Driver_Lockbox_PROTOCOL** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._Example1_Driver_Lockbox_PROTOCOL** %7, metadata !216, metadata !DIExpression()), !dbg !217
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !218, metadata !DIExpression()), !dbg !219
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !220, metadata !DIExpression()), !dbg !221
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !222, metadata !DIExpression()), !dbg !223
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !224, metadata !DIExpression()), !dbg !225
  %12 = load i32, i32* @lockpin, align 4, !dbg !226
  %13 = icmp ne i32 %12, 0, !dbg !226
  br i1 %13, label %14, label %26, !dbg !228

14:                                               ; preds = %5
  %15 = load i8*, i8** @lockbox_start, align 8, !dbg !229
  %16 = load i8*, i8** %9, align 8, !dbg !232
  %17 = icmp ule i8* %15, %16, !dbg !233
  br i1 %17, label %18, label %26, !dbg !234

18:                                               ; preds = %14
  %19 = load i8*, i8** %9, align 8, !dbg !235
  %20 = load i8*, i8** @lockbox_start, align 8, !dbg !236
  %21 = load i32, i32* @lockbox_length, align 4, !dbg !237
  %22 = zext i32 %21 to i64, !dbg !238
  %23 = getelementptr i8, i8* %20, i64 %22, !dbg !238
  %24 = icmp ult i8* %19, %23, !dbg !239
  br i1 %24, label %25, label %26, !dbg !240

25:                                               ; preds = %18
  store i32 -2147483640, i32* %6, align 4, !dbg !241
  br label %31, !dbg !241

26:                                               ; preds = %14, %18, %5
  %27 = load i8*, i8** %9, align 8, !dbg !243
  %28 = load i8*, i8** %10, align 8, !dbg !244
  %29 = load i32, i32* %11, align 4, !dbg !245
  %30 = call i8* @CopyMem(i8* noundef %27, i8* noundef %28, i32 noundef %29), !dbg !246
  store i32 0, i32* %6, align 4, !dbg !247
  br label %31, !dbg !247

31:                                               ; preds = %26, %25
  %32 = load i32, i32* %6, align 4, !dbg !248
  ret i32 %32, !dbg !248
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Example1_Driver_LockboxInit(i8* noundef %0, %struct.EFI_SYSTEM_TABLE* noundef %1) #0 !dbg !249 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.EFI_SYSTEM_TABLE*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !756, metadata !DIExpression()), !dbg !757
  store %struct.EFI_SYSTEM_TABLE* %1, %struct.EFI_SYSTEM_TABLE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.EFI_SYSTEM_TABLE** %4, metadata !758, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.declare(metadata i32* %5, metadata !760, metadata !DIExpression()), !dbg !761
  store i32 1, i32* @lockpin, align 4, !dbg !762
  store i32 4, i32* @Pages, align 4, !dbg !763
  %6 = load i8*, i8** @lockbox_start, align 8, !dbg !764
  %7 = ptrtoint i8* %6 to i64, !dbg !765
  store i64 %7, i64* @PhysicalBuffer, align 8, !dbg !766
  %8 = load i64, i64* @PhysicalBuffer, align 8, !dbg !767
  %9 = trunc i64 %8 to i32, !dbg !768
  %10 = zext i32 %9 to i64, !dbg !769
  %11 = inttoptr i64 %10 to i8*, !dbg !769
  store i8* %11, i8** @lockbox_start, align 8, !dbg !770
  %12 = load i32, i32* %5, align 4, !dbg !771
  ret i32 %12, !dbg !772
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Example1_Driver_LockboxUnload(i8* noundef %0) #0 !dbg !773 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !774, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.declare(metadata i32* %4, metadata !776, metadata !DIExpression()), !dbg !777
  store i32 0, i32* %4, align 4, !dbg !777
  %5 = load i32, i32* %4, align 4, !dbg !778
  %6 = icmp slt i32 %5, 0, !dbg !778
  br i1 %6, label %7, label %9, !dbg !780

7:                                                ; preds = %1
  %8 = load i32, i32* %4, align 4, !dbg !781
  store i32 %8, i32* %2, align 4, !dbg !783
  br label %11, !dbg !783

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4, !dbg !784
  store i32 %10, i32* %2, align 4, !dbg !785
  br label %11, !dbg !785

11:                                               ; preds = %9, %7
  %12 = load i32, i32* %2, align 4, !dbg !786
  ret i32 %12, !dbg !786
}

declare zeroext i8 @DebugPrintEnabled() #2

declare zeroext i8 @DebugPrintLevelEnabled(i32 noundef) #2

declare void @DebugPrint(i32 noundef, i8* noundef, ...) #2

declare i8* @CopyMem(i8* noundef, i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 !dbg !787 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.EFI_SYSTEM_TABLE*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !793, metadata !DIExpression()), !dbg !794
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !795, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.declare(metadata i8** %6, metadata !797, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.declare(metadata %struct.EFI_SYSTEM_TABLE** %7, metadata !799, metadata !DIExpression()), !dbg !800
  %8 = bitcast i8** %6 to i8*, !dbg !801
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)), !dbg !802
  %9 = bitcast %struct.EFI_SYSTEM_TABLE** %7 to i8*, !dbg !803
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)), !dbg !804
  %10 = load i8*, i8** %6, align 8, !dbg !805
  %11 = load %struct.EFI_SYSTEM_TABLE*, %struct.EFI_SYSTEM_TABLE** %7, align 8, !dbg !806
  %12 = call i32 @Example1_Driver_LockboxInit(i8* noundef %10, %struct.EFI_SYSTEM_TABLE* noundef %11), !dbg !807
  ret i32 0, !dbg !808
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lockpin", scope: !2, file: !3, line: 17, type: !58, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !51, globals: !67, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "Example1_Driver_Lockbox.c", directory: "/home/hira/Research/HARDEN/harden/Example1/edk2/EmulatorPkg/Example1_Driver_Lockbox", checksumkind: CSK_MD5, checksum: "d742a413f21535eebaacfccfa19239f0")
!4 = !{!5, !13, !20, !38, !43, !46}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 112, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./Uefi/../Uefi/UefiMultiPhase.h", directory: "/home/hira/Research/HARDEN/harden/Example1/edk2/EmulatorPkg/Example1_Driver_Lockbox", checksumkind: CSK_MD5, checksum: "1b91450d7999a018fe8ae0f3d044d0dd")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "EfiResetCold", value: 0)
!10 = !DIEnumerator(name: "EfiResetWarm", value: 1)
!11 = !DIEnumerator(name: "EfiResetShutdown", value: 2)
!12 = !DIEnumerator(name: "EfiResetPlatformSpecific", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 28, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./Uefi/UefiSpec.h", directory: "/home/hira/Research/HARDEN/harden/Example1/edk2/EmulatorPkg/Example1_Driver_Lockbox", checksumkind: CSK_MD5, checksum: "e3bf43bf827e1f73dbc649ec717ec761")
!15 = !{!16, !17, !18, !19}
!16 = !DIEnumerator(name: "AllocateAnyPages", value: 0)
!17 = !DIEnumerator(name: "AllocateMaxAddress", value: 1)
!18 = !DIEnumerator(name: "AllocateAddress", value: 2)
!19 = !DIEnumerator(name: "MaxAllocateType", value: 3)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 38, baseType: !7, size: 32, elements: !21)
!21 = !{!22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!22 = !DIEnumerator(name: "EfiReservedMemoryType", value: 0)
!23 = !DIEnumerator(name: "EfiLoaderCode", value: 1)
!24 = !DIEnumerator(name: "EfiLoaderData", value: 2)
!25 = !DIEnumerator(name: "EfiBootServicesCode", value: 3)
!26 = !DIEnumerator(name: "EfiBootServicesData", value: 4)
!27 = !DIEnumerator(name: "EfiRuntimeServicesCode", value: 5)
!28 = !DIEnumerator(name: "EfiRuntimeServicesData", value: 6)
!29 = !DIEnumerator(name: "EfiConventionalMemory", value: 7)
!30 = !DIEnumerator(name: "EfiUnusableMemory", value: 8)
!31 = !DIEnumerator(name: "EfiACPIReclaimMemory", value: 9)
!32 = !DIEnumerator(name: "EfiACPIMemoryNVS", value: 10)
!33 = !DIEnumerator(name: "EfiMemoryMappedIO", value: 11)
!34 = !DIEnumerator(name: "EfiMemoryMappedIOPortSpace", value: 12)
!35 = !DIEnumerator(name: "EfiPalCode", value: 13)
!36 = !DIEnumerator(name: "EfiPersistentMemory", value: 14)
!37 = !DIEnumerator(name: "EfiMaxMemoryType", value: 15)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 505, baseType: !7, size: 32, elements: !39)
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "TimerCancel", value: 0)
!41 = !DIEnumerator(name: "TimerPeriodic", value: 1)
!42 = !DIEnumerator(name: "TimerRelative", value: 2)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 1143, baseType: !7, size: 32, elements: !44)
!44 = !{!45}
!45 = !DIEnumerator(name: "EFI_NATIVE_INTERFACE", value: 0)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 1459, baseType: !7, size: 32, elements: !47)
!47 = !{!48, !49, !50}
!48 = !DIEnumerator(name: "AllHandles", value: 0)
!49 = !DIEnumerator(name: "ByRegisterNotify", value: 1)
!50 = !DIEnumerator(name: "ByProtocol", value: 2)
!51 = !{!52, !57, !58, !60, !63, !65}
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_PHYSICAL_ADDRESS", file: !53, line: 49, baseType: !54)
!53 = !DIFile(filename: "./Uefi/UefiBaseType.h", directory: "/home/hira/Research/HARDEN/harden/Example1/edk2/EmulatorPkg/Example1_Driver_Lockbox", checksumkind: CSK_MD5, checksum: "df241735892a54f674fa0b6db424dab3")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT64", file: !55, line: 101, baseType: !56)
!55 = !DIFile(filename: "./Arm/ProcessorBind.h", directory: "/home/hira/Research/HARDEN/harden/Example1/edk2/EmulatorPkg/Example1_Driver_Lockbox", checksumkind: CSK_MD5, checksum: "f8db787e5f88cd0fbdb06a604eda4fcf")
!56 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINTN", file: !55, line: 118, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT32", file: !55, line: 103, baseType: !7)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "INTN", file: !55, line: 124, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !55, line: 104, baseType: !62)
!62 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "RETURN_STATUS", file: !64, line: 922, baseType: !58)
!64 = !DIFile(filename: "./Uefi/../Base.h", directory: "/home/hira/Research/HARDEN/harden/Example1/edk2/EmulatorPkg/Example1_Driver_Lockbox", checksumkind: CSK_MD5, checksum: "8b9eb8ac5075fcb1c724769b74e364e0")
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "BOOLEAN", file: !55, line: 108, baseType: !66)
!66 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!67 = !{!0, !68, !70, !100, !102, !104}
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "lockbox_length", scope: !2, file: !3, line: 19, type: !58, isLocal: false, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "gExample1_Driver_LockboxProtocol", scope: !2, file: !3, line: 22, type: !72, isLocal: false, isDefinition: true)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "Example1_Driver_Lockbox_PROTOCOL", file: !73, line: 41, baseType: !74)
!73 = !DIFile(filename: "./Example1_Driver_Lockbox.h", directory: "/home/hira/Research/HARDEN/harden/Example1/edk2/EmulatorPkg/Example1_Driver_Lockbox", checksumkind: CSK_MD5, checksum: "3b47136085a08c774a4199996aaaed87")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Example1_Driver_Lockbox_PROTOCOL", file: !73, line: 87, size: 256, elements: !75)
!75 = !{!76, !84, !89, !95}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "Example1_Driver_Lockbox_SetLockPin", scope: !74, file: !73, line: 88, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "MY_DRIVER_FUNCTION_CB", file: !73, line: 49, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{!81, !82, !83, !58}
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_STATUS", file: !53, line: 28, baseType: !63)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_HANDLE", file: !53, line: 32, baseType: !57)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "Example1_Driver_Lockbox_WriteData_Wrapper", scope: !74, file: !73, line: 89, baseType: !85, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "MY_DRIVER_FUNCTION_CB2", file: !73, line: 57, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{!81, !82, !83, !58, !57, !58}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "Example1_Driver_Lockbox_ReadData", scope: !74, file: !73, line: 90, baseType: !90, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "MY_DRIVER_FUNCTION_CB3", file: !73, line: 67, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{!81, !82, !83, !94, !58, !58}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "Example1_Driver_Lockbox_WriteData", scope: !74, file: !73, line: 91, baseType: !96, size: 64, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "MY_DRIVER_FUNCTION_CB4", file: !73, line: 77, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DISubroutineType(types: !99)
!99 = !{!81, !82, !83, !57, !57, !58}
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "PhysicalBuffer", scope: !2, file: !3, line: 15, type: !52, isLocal: false, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "Pages", scope: !2, file: !3, line: 16, type: !58, isLocal: false, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "lockbox_start", scope: !2, file: !3, line: 18, type: !57, isLocal: false, isDefinition: true)
!106 = !{i32 7, !"Dwarf Version", i32 5}
!107 = !{i32 2, !"Debug Info Version", i32 3}
!108 = !{i32 1, !"wchar_size", i32 4}
!109 = !{i32 7, !"PIC Level", i32 2}
!110 = !{i32 7, !"PIE Level", i32 2}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"Ubuntu clang version 14.0.6"}
!114 = distinct !DISubprogram(name: "Example1_Driver_Lockbox_SetLockPin", scope: !3, file: !3, line: 113, type: !79, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !115)
!115 = !{}
!116 = !DILocalVariable(name: "This", arg: 1, scope: !114, file: !3, line: 114, type: !82)
!117 = !DILocation(line: 114, column: 47, scope: !114)
!118 = !DILocalVariable(name: "Controller", arg: 2, scope: !114, file: !3, line: 115, type: !83)
!119 = !DILocation(line: 115, column: 29, scope: !114)
!120 = !DILocalVariable(name: "value", arg: 3, scope: !114, file: !3, line: 116, type: !58)
!121 = !DILocation(line: 116, column: 12, scope: !114)
!122 = !DILocation(line: 119, column: 7, scope: !123)
!123 = distinct !DILexicalBlock(scope: !114, file: !3, line: 119, column: 7)
!124 = !DILocation(line: 119, column: 15, scope: !123)
!125 = !DILocation(line: 119, column: 20, scope: !123)
!126 = !DILocation(line: 120, column: 3, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !3, line: 119, column: 36)
!128 = !DILocation(line: 122, column: 12, scope: !114)
!129 = !DILocation(line: 122, column: 10, scope: !114)
!130 = !DILocation(line: 123, column: 2, scope: !131)
!131 = distinct !DILexicalBlock(scope: !132, file: !3, line: 123, column: 2)
!132 = distinct !DILexicalBlock(scope: !114, file: !3, line: 123, column: 2)
!133 = !DILocation(line: 123, column: 2, scope: !132)
!134 = !DILocation(line: 123, column: 2, scope: !135)
!135 = distinct !DILexicalBlock(scope: !136, file: !3, line: 123, column: 2)
!136 = distinct !DILexicalBlock(scope: !137, file: !3, line: 123, column: 2)
!137 = distinct !DILexicalBlock(scope: !131, file: !3, line: 123, column: 2)
!138 = !DILocation(line: 123, column: 2, scope: !136)
!139 = !DILocation(line: 123, column: 2, scope: !140)
!140 = distinct !DILexicalBlock(scope: !135, file: !3, line: 123, column: 2)
!141 = !DILocation(line: 124, column: 2, scope: !114)
!142 = !DILocation(line: 125, column: 1, scope: !114)
!143 = distinct !DISubprogram(name: "Example1_Driver_Lockbox_WriteData_Wrapper", scope: !3, file: !3, line: 129, type: !87, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !115)
!144 = !DILocalVariable(name: "This", arg: 1, scope: !143, file: !3, line: 130, type: !82)
!145 = !DILocation(line: 130, column: 47, scope: !143)
!146 = !DILocalVariable(name: "Controller", arg: 2, scope: !143, file: !3, line: 131, type: !83)
!147 = !DILocation(line: 131, column: 29, scope: !143)
!148 = !DILocalVariable(name: "offset", arg: 3, scope: !143, file: !3, line: 132, type: !58)
!149 = !DILocation(line: 132, column: 12, scope: !143)
!150 = !DILocalVariable(name: "src", arg: 4, scope: !143, file: !3, line: 133, type: !57)
!151 = !DILocation(line: 133, column: 12, scope: !143)
!152 = !DILocalVariable(name: "length", arg: 5, scope: !143, file: !3, line: 134, type: !58)
!153 = !DILocation(line: 134, column: 12, scope: !143)
!154 = !DILocation(line: 137, column: 44, scope: !143)
!155 = !DILocation(line: 137, column: 65, scope: !143)
!156 = !DILocation(line: 137, column: 79, scope: !143)
!157 = !DILocation(line: 137, column: 78, scope: !143)
!158 = !DILocation(line: 137, column: 88, scope: !143)
!159 = !DILocation(line: 137, column: 93, scope: !143)
!160 = !DILocation(line: 137, column: 10, scope: !143)
!161 = !DILocation(line: 137, column: 3, scope: !143)
!162 = distinct !DISubprogram(name: "Example1_Driver_Lockbox_ReadData", scope: !3, file: !3, line: 164, type: !92, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !115)
!163 = !DILocalVariable(name: "This", arg: 1, scope: !162, file: !3, line: 165, type: !82)
!164 = !DILocation(line: 165, column: 46, scope: !162)
!165 = !DILocalVariable(name: "Controller", arg: 2, scope: !162, file: !3, line: 166, type: !83)
!166 = !DILocation(line: 166, column: 39, scope: !162)
!167 = !DILocalVariable(name: "dest", arg: 3, scope: !162, file: !3, line: 167, type: !94)
!168 = !DILocation(line: 167, column: 41, scope: !162)
!169 = !DILocalVariable(name: "offset", arg: 4, scope: !162, file: !3, line: 168, type: !58)
!170 = !DILocation(line: 168, column: 39, scope: !162)
!171 = !DILocalVariable(name: "length", arg: 5, scope: !162, file: !3, line: 169, type: !58)
!172 = !DILocation(line: 169, column: 39, scope: !162)
!173 = !DILocation(line: 173, column: 15, scope: !174)
!174 = distinct !DILexicalBlock(scope: !162, file: !3, line: 173, column: 7)
!175 = !DILocation(line: 173, column: 14, scope: !174)
!176 = !DILocation(line: 173, column: 20, scope: !174)
!177 = !DILocation(line: 173, column: 7, scope: !162)
!178 = !DILocation(line: 174, column: 5, scope: !174)
!179 = !DILocalVariable(name: "src", scope: !162, file: !3, line: 177, type: !57)
!180 = !DILocation(line: 177, column: 9, scope: !162)
!181 = !DILocation(line: 177, column: 23, scope: !162)
!182 = !DILocation(line: 177, column: 37, scope: !162)
!183 = !DILocation(line: 177, column: 36, scope: !162)
!184 = !DILocation(line: 179, column: 8, scope: !185)
!185 = distinct !DILexicalBlock(scope: !162, file: !3, line: 179, column: 8)
!186 = !DILocation(line: 179, column: 24, scope: !185)
!187 = !DILocation(line: 179, column: 22, scope: !185)
!188 = !DILocation(line: 179, column: 28, scope: !185)
!189 = !DILocation(line: 179, column: 31, scope: !185)
!190 = !DILocation(line: 179, column: 38, scope: !185)
!191 = !DILocation(line: 179, column: 54, scope: !185)
!192 = !DILocation(line: 179, column: 52, scope: !185)
!193 = !DILocation(line: 179, column: 35, scope: !185)
!194 = !DILocation(line: 179, column: 8, scope: !162)
!195 = !DILocation(line: 180, column: 5, scope: !196)
!196 = distinct !DILexicalBlock(scope: !185, file: !3, line: 179, column: 71)
!197 = !DILocation(line: 182, column: 7, scope: !198)
!198 = distinct !DILexicalBlock(scope: !162, file: !3, line: 182, column: 7)
!199 = !DILocation(line: 182, column: 13, scope: !198)
!200 = !DILocation(line: 182, column: 11, scope: !198)
!201 = !DILocation(line: 182, column: 23, scope: !198)
!202 = !DILocation(line: 182, column: 39, scope: !198)
!203 = !DILocation(line: 182, column: 37, scope: !198)
!204 = !DILocation(line: 182, column: 20, scope: !198)
!205 = !DILocation(line: 182, column: 7, scope: !162)
!206 = !DILocation(line: 183, column: 5, scope: !207)
!207 = distinct !DILexicalBlock(scope: !198, file: !3, line: 182, column: 56)
!208 = !DILocation(line: 186, column: 19, scope: !162)
!209 = !DILocation(line: 186, column: 18, scope: !162)
!210 = !DILocation(line: 186, column: 25, scope: !162)
!211 = !DILocation(line: 186, column: 30, scope: !162)
!212 = !DILocation(line: 186, column: 2, scope: !162)
!213 = !DILocation(line: 188, column: 2, scope: !162)
!214 = !DILocation(line: 189, column: 1, scope: !162)
!215 = distinct !DISubprogram(name: "Example1_Driver_Lockbox_WriteData", scope: !3, file: !3, line: 142, type: !98, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !115)
!216 = !DILocalVariable(name: "This", arg: 1, scope: !215, file: !3, line: 143, type: !82)
!217 = !DILocation(line: 143, column: 47, scope: !215)
!218 = !DILocalVariable(name: "Controller", arg: 2, scope: !215, file: !3, line: 144, type: !83)
!219 = !DILocation(line: 144, column: 29, scope: !215)
!220 = !DILocalVariable(name: "dest", arg: 3, scope: !215, file: !3, line: 145, type: !57)
!221 = !DILocation(line: 145, column: 12, scope: !215)
!222 = !DILocalVariable(name: "src", arg: 4, scope: !215, file: !3, line: 146, type: !57)
!223 = !DILocation(line: 146, column: 12, scope: !215)
!224 = !DILocalVariable(name: "length", arg: 5, scope: !215, file: !3, line: 147, type: !58)
!225 = !DILocation(line: 147, column: 12, scope: !215)
!226 = !DILocation(line: 151, column: 7, scope: !227)
!227 = distinct !DILexicalBlock(scope: !215, file: !3, line: 151, column: 7)
!228 = !DILocation(line: 151, column: 7, scope: !215)
!229 = !DILocation(line: 153, column: 8, scope: !230)
!230 = distinct !DILexicalBlock(scope: !231, file: !3, line: 153, column: 8)
!231 = distinct !DILexicalBlock(scope: !227, file: !3, line: 151, column: 17)
!232 = !DILocation(line: 153, column: 25, scope: !230)
!233 = !DILocation(line: 153, column: 22, scope: !230)
!234 = !DILocation(line: 153, column: 30, scope: !230)
!235 = !DILocation(line: 153, column: 33, scope: !230)
!236 = !DILocation(line: 153, column: 40, scope: !230)
!237 = !DILocation(line: 153, column: 56, scope: !230)
!238 = !DILocation(line: 153, column: 54, scope: !230)
!239 = !DILocation(line: 153, column: 38, scope: !230)
!240 = !DILocation(line: 153, column: 8, scope: !231)
!241 = !DILocation(line: 154, column: 5, scope: !242)
!242 = distinct !DILexicalBlock(scope: !230, file: !3, line: 153, column: 73)
!243 = !DILocation(line: 157, column: 11, scope: !215)
!244 = !DILocation(line: 157, column: 17, scope: !215)
!245 = !DILocation(line: 157, column: 22, scope: !215)
!246 = !DILocation(line: 157, column: 2, scope: !215)
!247 = !DILocation(line: 159, column: 2, scope: !215)
!248 = !DILocation(line: 160, column: 1, scope: !215)
!249 = distinct !DISubprogram(name: "Example1_Driver_LockboxInit", scope: !3, file: !3, line: 40, type: !250, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !115)
!250 = !DISubroutineType(types: !251)
!251 = !{!81, !83, !252}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SYSTEM_TABLE", file: !14, line: 2037, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1976, size: 960, elements: !255)
!255 = !{!256, !265, !269, !270, !271, !296, !297, !351, !352, !353, !490, !748, !749}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "Hdr", scope: !254, file: !14, line: 1980, baseType: !257, size: 192)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TABLE_HEADER", file: !6, line: 172, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 145, size: 192, elements: !259)
!259 = !{!260, !261, !262, !263, !264}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "Signature", scope: !258, file: !6, line: 151, baseType: !54, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "Revision", scope: !258, file: !6, line: 158, baseType: !59, size: 32, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "HeaderSize", scope: !258, file: !6, line: 162, baseType: !59, size: 32, offset: 96)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "CRC32", scope: !258, file: !6, line: 167, baseType: !59, size: 32, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !258, file: !6, line: 171, baseType: !59, size: 32, offset: 160)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "FirmwareVendor", scope: !254, file: !14, line: 1985, baseType: !266, size: 64, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAR16", file: !55, line: 106, baseType: !268)
!268 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "FirmwareRevision", scope: !254, file: !14, line: 1990, baseType: !59, size: 32, offset: 256)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "ConsoleInHandle", scope: !254, file: !14, line: 1995, baseType: !83, size: 64, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "ConIn", scope: !254, file: !14, line: 2000, baseType: !272, size: 64, offset: 384)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SIMPLE_TEXT_INPUT_PROTOCOL", file: !274, line: 20, baseType: !275)
!274 = !DIFile(filename: "./Uefi/../Protocol/../Protocol/SimpleTextIn.h", directory: "/home/hira/Research/HARDEN/harden/Example1/edk2/EmulatorPkg/Example1_Driver_Lockbox", checksumkind: CSK_MD5, checksum: "239cf4f3dddb25a8596c70fa738413fd")
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_EFI_SIMPLE_TEXT_INPUT_PROTOCOL", file: !274, line: 116, size: 192, elements: !276)
!276 = !{!277, !282, !294}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "Reset", scope: !275, file: !274, line: 117, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_INPUT_RESET", file: !274, line: 86, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!81, !272, !65}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "ReadKeyStroke", scope: !275, file: !274, line: 118, baseType: !283, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_INPUT_READ_KEY", file: !274, line: 107, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!81, !272, !287}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_INPUT_KEY", file: !274, line: 38, baseType: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !274, line: 35, size: 32, elements: !290)
!290 = !{!291, !293}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ScanCode", scope: !289, file: !274, line: 36, baseType: !292, size: 16)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !55, line: 105, baseType: !268)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "UnicodeChar", scope: !289, file: !274, line: 37, baseType: !267, size: 16, offset: 16)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "WaitForKey", scope: !275, file: !274, line: 122, baseType: !295, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_EVENT", file: !53, line: 36, baseType: !57)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "ConsoleOutHandle", scope: !254, file: !14, line: 2004, baseType: !83, size: 64, offset: 448)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ConOut", scope: !254, file: !14, line: 2009, baseType: !298, size: 64, offset: 512)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL", file: !300, line: 27, baseType: !301)
!300 = !DIFile(filename: "./Uefi/../Protocol/SimpleTextOut.h", directory: "/home/hira/Research/HARDEN/harden/Example1/edk2/EmulatorPkg/Example1_Driver_Lockbox", checksumkind: CSK_MD5, checksum: "685bec042927ad46d31bf42ae7f6ddcd")
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL", file: !300, line: 387, size: 640, elements: !302)
!302 = !{!303, !308, !313, !315, !321, !326, !328, !333, !338, !340}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "Reset", scope: !301, file: !300, line: 388, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_RESET", file: !300, line: 167, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!81, !298, !65}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "OutputString", scope: !301, file: !300, line: 390, baseType: !309, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_STRING", file: !300, line: 192, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!81, !298, !266}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "TestString", scope: !301, file: !300, line: 391, baseType: !314, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_TEST_STRING", file: !300, line: 213, baseType: !310)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "QueryMode", scope: !301, file: !300, line: 393, baseType: !316, size: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_QUERY_MODE", file: !300, line: 236, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!81, !298, !58, !320, !320}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "SetMode", scope: !301, file: !300, line: 394, baseType: !322, size: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_SET_MODE", file: !300, line: 256, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!81, !298, !58}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "SetAttribute", scope: !301, file: !300, line: 395, baseType: !327, size: 64, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_SET_ATTRIBUTE", file: !300, line: 277, baseType: !323)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "ClearScreen", scope: !301, file: !300, line: 397, baseType: !329, size: 64, offset: 384)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_CLEAR_SCREEN", file: !300, line: 295, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!81, !298}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "SetCursorPosition", scope: !301, file: !300, line: 398, baseType: !334, size: 64, offset: 448)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_SET_CURSOR_POSITION", file: !300, line: 318, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!81, !298, !58, !58}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "EnableCursor", scope: !301, file: !300, line: 399, baseType: !339, size: 64, offset: 512)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_ENABLE_CURSOR", file: !300, line: 340, baseType: !305)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "Mode", scope: !301, file: !300, line: 404, baseType: !341, size: 64, offset: 576)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SIMPLE_TEXT_OUTPUT_MODE", file: !300, line: 379, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !300, line: 349, size: 192, elements: !344)
!344 = !{!345, !346, !347, !348, !349, !350}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "MaxMode", scope: !343, file: !300, line: 353, baseType: !61, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "Mode", scope: !343, file: !300, line: 362, baseType: !61, size: 32, offset: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "Attribute", scope: !343, file: !300, line: 366, baseType: !61, size: 32, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "CursorColumn", scope: !343, file: !300, line: 370, baseType: !61, size: 32, offset: 96)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "CursorRow", scope: !343, file: !300, line: 374, baseType: !61, size: 32, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "CursorVisible", scope: !343, file: !300, line: 378, baseType: !65, size: 8, offset: 160)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "StandardErrorHandle", scope: !254, file: !14, line: 2014, baseType: !83, size: 64, offset: 576)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "StdErr", scope: !254, file: !14, line: 2019, baseType: !298, size: 64, offset: 640)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "RuntimeServices", scope: !254, file: !14, line: 2023, baseType: !354, size: 64, offset: 704)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RUNTIME_SERVICES", file: !14, line: 1855, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1812, size: 1088, elements: !357)
!357 = !{!358, !359, !389, !394, !400, !405, !420, !425, !443, !448, !453, !458, !464, !478, !485}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "Hdr", scope: !356, file: !14, line: 1816, baseType: !257, size: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "GetTime", scope: !356, file: !14, line: 1821, baseType: !360, size: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_TIME", file: !14, line: 800, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!81, !364, !382}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TIME", file: !53, line: 79, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 67, size: 128, elements: !367)
!367 = !{!368, !369, !371, !372, !373, !374, !375, !376, !377, !380, !381}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "Year", scope: !366, file: !53, line: 68, baseType: !292, size: 16)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "Month", scope: !366, file: !53, line: 69, baseType: !370, size: 8, offset: 16)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !55, line: 109, baseType: !66)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "Day", scope: !366, file: !53, line: 70, baseType: !370, size: 8, offset: 24)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "Hour", scope: !366, file: !53, line: 71, baseType: !370, size: 8, offset: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "Minute", scope: !366, file: !53, line: 72, baseType: !370, size: 8, offset: 40)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "Second", scope: !366, file: !53, line: 73, baseType: !370, size: 8, offset: 48)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "Pad1", scope: !366, file: !53, line: 74, baseType: !370, size: 8, offset: 56)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "Nanosecond", scope: !366, file: !53, line: 75, baseType: !59, size: 32, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "TimeZone", scope: !366, file: !53, line: 76, baseType: !378, size: 16, offset: 96)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT16", file: !55, line: 107, baseType: !379)
!379 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "Daylight", scope: !366, file: !53, line: 77, baseType: !370, size: 8, offset: 112)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "Pad2", scope: !366, file: !53, line: 78, baseType: !370, size: 8, offset: 120)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TIME_CAPABILITIES", file: !14, line: 783, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 760, size: 96, elements: !385)
!385 = !{!386, !387, !388}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "Resolution", scope: !384, file: !14, line: 767, baseType: !59, size: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "Accuracy", scope: !384, file: !14, line: 774, baseType: !59, size: 32, offset: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "SetsToZero", scope: !384, file: !14, line: 782, baseType: !65, size: 8, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "SetTime", scope: !356, file: !14, line: 1822, baseType: !390, size: 64, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_TIME", file: !14, line: 817, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!81, !364}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "GetWakeupTime", scope: !356, file: !14, line: 1823, baseType: !395, size: 64, offset: 320)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_WAKEUP_TIME", file: !14, line: 838, baseType: !396)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!81, !399, !399, !364}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "SetWakeupTime", scope: !356, file: !14, line: 1824, baseType: !401, size: 64, offset: 384)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_WAKEUP_TIME", file: !14, line: 860, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!81, !65, !364}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "SetVirtualAddressMap", scope: !356, file: !14, line: 1829, baseType: !406, size: 64, offset: 448)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_VIRTUAL_ADDRESS_MAP", file: !14, line: 311, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!81, !58, !58, !59, !410}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_MEMORY_DESCRIPTOR", file: !14, line: 159, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 127, size: 320, elements: !413)
!413 = !{!414, !415, !416, !418, !419}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !412, file: !14, line: 133, baseType: !59, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "PhysicalStart", scope: !412, file: !14, line: 139, baseType: !52, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "VirtualStart", scope: !412, file: !14, line: 145, baseType: !417, size: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_VIRTUAL_ADDRESS", file: !53, line: 54, baseType: !54)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfPages", scope: !412, file: !14, line: 152, baseType: !54, size: 64, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "Attribute", scope: !412, file: !14, line: 158, baseType: !54, size: 64, offset: 256)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "ConvertPointer", scope: !356, file: !14, line: 1830, baseType: !421, size: 64, offset: 512)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CONVERT_POINTER", file: !14, line: 406, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!81, !58, !94}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "GetVariable", scope: !356, file: !14, line: 1835, baseType: !426, size: 64, offset: 576)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_VARIABLE", file: !14, line: 670, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!81, !266, !430, !442, !320, !57}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GUID", file: !53, line: 24, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "GUID", file: !64, line: 218, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 213, size: 128, elements: !434)
!434 = !{!435, !436, !437, !438}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "Data1", scope: !433, file: !64, line: 214, baseType: !59, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "Data2", scope: !433, file: !64, line: 215, baseType: !292, size: 16, offset: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "Data3", scope: !433, file: !64, line: 216, baseType: !292, size: 16, offset: 48)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "Data4", scope: !433, file: !64, line: 217, baseType: !439, size: 64, offset: 64)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 64, elements: !440)
!440 = !{!441}
!441 = !DISubrange(count: 8)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "GetNextVariableName", scope: !356, file: !14, line: 1836, baseType: !444, size: 64, offset: 640)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_NEXT_VARIABLE_NAME", file: !14, line: 706, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!81, !320, !266, !430}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "SetVariable", scope: !356, file: !14, line: 1837, baseType: !449, size: 64, offset: 704)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_VARIABLE", file: !14, line: 748, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!81, !266, !430, !59, !58, !57}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "GetNextHighMonotonicCount", scope: !356, file: !14, line: 1842, baseType: !454, size: 64, offset: 768)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_NEXT_HIGH_MONO_COUNT", file: !14, line: 1081, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!81, !442}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "ResetSystem", scope: !356, file: !14, line: 1843, baseType: !459, size: 64, offset: 832)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RESET_SYSTEM", file: !14, line: 1046, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !463, !81, !58, !57}
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RESET_TYPE", file: !6, line: 140, baseType: !5)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "UpdateCapsule", scope: !356, file: !14, line: 1848, baseType: !465, size: 64, offset: 896)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_UPDATE_CAPSULE", file: !14, line: 1707, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!81, !469, !58, !52}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CAPSULE_HEADER", file: !14, line: 1653, baseType: !472)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1632, size: 224, elements: !473)
!473 = !{!474, !475, !476, !477}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "CapsuleGuid", scope: !472, file: !14, line: 1636, baseType: !431, size: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "HeaderSize", scope: !472, file: !14, line: 1642, baseType: !59, size: 32, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "Flags", scope: !472, file: !14, line: 1648, baseType: !59, size: 32, offset: 160)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "CapsuleImageSize", scope: !472, file: !14, line: 1652, baseType: !59, size: 32, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "QueryCapsuleCapabilities", scope: !356, file: !14, line: 1849, baseType: !479, size: 64, offset: 960)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_QUERY_CAPSULE_CAPABILITIES", file: !14, line: 1738, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!81, !469, !58, !483, !484}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "QueryVariableInfo", scope: !356, file: !14, line: 1854, baseType: !486, size: 64, offset: 1024)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_QUERY_VARIABLE_INFO", file: !14, line: 1769, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!81, !59, !483, !483, !483}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "BootServices", scope: !254, file: !14, line: 2027, baseType: !491, size: 64, offset: 768)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_BOOT_SERVICES", file: !14, line: 1956, baseType: !493)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1863, size: 3008, elements: !494)
!494 = !{!495, !496, !502, !507, !515, !520, !525, !530, !535, !545, !551, !556, !561, !563, !565, !572, !577, !582, !587, !588, !593, !599, !616, !621, !626, !632, !637, !642, !647, !652, !657, !662, !667, !672, !677, !682, !696, !703, !709, !714, !719, !724, !729, !734, !739}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "Hdr", scope: !493, file: !14, line: 1867, baseType: !257, size: 192)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "RaiseTPL", scope: !493, file: !14, line: 1872, baseType: !497, size: 64, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RAISE_TPL", file: !14, line: 628, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!501, !501}
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TPL", file: !53, line: 40, baseType: !58)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "RestoreTPL", scope: !493, file: !14, line: 1873, baseType: !503, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RESTORE_TPL", file: !14, line: 640, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !501}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "AllocatePages", scope: !493, file: !14, line: 1878, baseType: !508, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_ALLOCATE_PAGES", file: !14, line: 187, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!81, !512, !513, !58, !514}
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_ALLOCATE_TYPE", file: !14, line: 46, baseType: !13)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_MEMORY_TYPE", file: !6, line: 107, baseType: !20)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "FreePages", scope: !493, file: !14, line: 1879, baseType: !516, size: 64, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_FREE_PAGES", file: !14, line: 208, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!81, !52, !58}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "GetMemoryMap", scope: !493, file: !14, line: 1880, baseType: !521, size: 64, offset: 448)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_MEMORY_MAP", file: !14, line: 240, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!81, !320, !410, !320, !320, !442}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "AllocatePool", scope: !493, file: !14, line: 1881, baseType: !526, size: 64, offset: 512)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_ALLOCATE_POOL", file: !14, line: 269, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!81, !513, !58, !94}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "FreePool", scope: !493, file: !14, line: 1882, baseType: !531, size: 64, offset: 576)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_FREE_POOL", file: !14, line: 286, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!81, !57}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "CreateEvent", scope: !493, file: !14, line: 1887, baseType: !536, size: 64, offset: 640)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CREATE_EVENT", file: !14, line: 464, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!81, !59, !501, !540, !57, !544}
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_EVENT_NOTIFY", file: !14, line: 441, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !295, !57}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "SetTimer", scope: !493, file: !14, line: 1888, baseType: !546, size: 64, offset: 704)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_TIMER", file: !14, line: 538, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!81, !295, !550, !54}
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TIMER_DELAY", file: !14, line: 518, baseType: !38)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "WaitForEvent", scope: !493, file: !14, line: 1889, baseType: !552, size: 64, offset: 768)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_WAIT_FOR_EVENT", file: !14, line: 574, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!81, !58, !544, !320}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "SignalEvent", scope: !493, file: !14, line: 1890, baseType: !557, size: 64, offset: 832)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SIGNAL_EVENT", file: !14, line: 554, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!81, !295}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "CloseEvent", scope: !493, file: !14, line: 1891, baseType: !562, size: 64, offset: 896)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CLOSE_EVENT", file: !14, line: 590, baseType: !558)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "CheckEvent", scope: !493, file: !14, line: 1892, baseType: !564, size: 64, offset: 960)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CHECK_EVENT", file: !14, line: 606, baseType: !558)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "InstallProtocolInterface", scope: !493, file: !14, line: 1897, baseType: !566, size: 64, offset: 1024)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_INSTALL_PROTOCOL_INTERFACE", file: !14, line: 1172, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!81, !570, !430, !571, !57}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_INTERFACE_TYPE", file: !14, line: 1148, baseType: !43)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ReinstallProtocolInterface", scope: !493, file: !14, line: 1898, baseType: !573, size: 64, offset: 1088)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_REINSTALL_PROTOCOL_INTERFACE", file: !14, line: 1222, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!81, !83, !430, !57, !57}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "UninstallProtocolInterface", scope: !493, file: !14, line: 1899, baseType: !578, size: 64, offset: 1152)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_UNINSTALL_PROTOCOL_INTERFACE", file: !14, line: 1248, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!81, !83, !430, !57}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "HandleProtocol", scope: !493, file: !14, line: 1900, baseType: !583, size: 64, offset: 1216)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_HANDLE_PROTOCOL", file: !14, line: 1289, baseType: !584)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!81, !83, !430, !94}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !493, file: !14, line: 1901, baseType: !57, size: 64, offset: 1280)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "RegisterProtocolNotify", scope: !493, file: !14, line: 1902, baseType: !589, size: 64, offset: 1344)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_REGISTER_PROTOCOL_NOTIFY", file: !14, line: 1450, baseType: !590)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!81, !430, !295, !94}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "LocateHandle", scope: !493, file: !14, line: 1903, baseType: !594, size: 64, offset: 1408)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_LOCATE_HANDLE", file: !14, line: 1499, baseType: !595)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!81, !598, !430, !57, !320, !570}
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_LOCATE_SEARCH_TYPE", file: !14, line: 1473, baseType: !46)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "LocateDevicePath", scope: !493, file: !14, line: 1904, baseType: !600, size: 64, offset: 1472)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_LOCATE_DEVICE_PATH", file: !14, line: 1525, baseType: !601)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!81, !430, !604, !570}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_DEVICE_PATH_PROTOCOL", file: !607, line: 58, baseType: !608)
!607 = !DIFile(filename: "./Library/../Protocol/DevicePath.h", directory: "/home/hira/Research/HARDEN/harden/Example1/edk2/EmulatorPkg/Example1_Driver_Lockbox", checksumkind: CSK_MD5, checksum: "bd75f4e4a58f415956cded2ca9a8d289")
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !607, line: 43, size: 32, elements: !609)
!609 = !{!610, !611, !612}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !608, file: !607, line: 44, baseType: !370, size: 8)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "SubType", scope: !608, file: !607, line: 51, baseType: !370, size: 8, offset: 8)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !608, file: !607, line: 56, baseType: !613, size: 16, offset: 16)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 16, elements: !614)
!614 = !{!615}
!615 = !DISubrange(count: 2)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "InstallConfigurationTable", scope: !493, file: !14, line: 1905, baseType: !617, size: 64, offset: 1536)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_INSTALL_CONFIGURATION_TABLE", file: !14, line: 1546, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!81, !430, !57}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "LoadImage", scope: !493, file: !14, line: 1910, baseType: !622, size: 64, offset: 1600)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_IMAGE_LOAD", file: !14, line: 897, baseType: !623)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!81, !65, !83, !605, !57, !58, !570}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "StartImage", scope: !493, file: !14, line: 1911, baseType: !627, size: 64, offset: 1664)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_IMAGE_START", file: !14, line: 922, baseType: !628)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!81, !83, !320, !631}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "Exit", scope: !493, file: !14, line: 1912, baseType: !633, size: 64, offset: 1728)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_EXIT", file: !14, line: 950, baseType: !634)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!81, !83, !81, !58, !266}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "UnloadImage", scope: !493, file: !14, line: 1913, baseType: !638, size: 64, offset: 1792)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_IMAGE_UNLOAD", file: !14, line: 968, baseType: !639)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!81, !83}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "ExitBootServices", scope: !493, file: !14, line: 1914, baseType: !643, size: 64, offset: 1856)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_EXIT_BOOT_SERVICES", file: !14, line: 984, baseType: !644)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!81, !83, !58}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "GetNextMonotonicCount", scope: !493, file: !14, line: 1919, baseType: !648, size: 64, offset: 1920)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_NEXT_MONOTONIC_COUNT", file: !14, line: 1065, baseType: !649)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!81, !483}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "Stall", scope: !493, file: !14, line: 1920, baseType: !653, size: 64, offset: 1984)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_STALL", file: !14, line: 1000, baseType: !654)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!81, !58}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "SetWatchdogTimer", scope: !493, file: !14, line: 1921, baseType: !658, size: 64, offset: 2048)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_WATCHDOG_TIMER", file: !14, line: 1022, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!81, !58, !54, !58, !266}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "ConnectController", scope: !493, file: !14, line: 1926, baseType: !663, size: 64, offset: 2112)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CONNECT_CONTROLLER", file: !14, line: 345, baseType: !664)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!81, !83, !570, !605, !65}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "DisconnectController", scope: !493, file: !14, line: 1927, baseType: !668, size: 64, offset: 2176)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_DISCONNECT_CONTROLLER", file: !14, line: 378, baseType: !669)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!81, !83, !83, !83}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "OpenProtocol", scope: !493, file: !14, line: 1932, baseType: !673, size: 64, offset: 2240)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_OPEN_PROTOCOL", file: !14, line: 1331, baseType: !674)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!81, !83, !430, !94, !83, !83, !59}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "CloseProtocol", scope: !493, file: !14, line: 1933, baseType: !678, size: 64, offset: 2304)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CLOSE_PROTOCOL", file: !14, line: 1363, baseType: !679)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!81, !83, !430, !83, !83}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "OpenProtocolInformation", scope: !493, file: !14, line: 1934, baseType: !683, size: 64, offset: 2368)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_OPEN_PROTOCOL_INFORMATION", file: !14, line: 1397, baseType: !684)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!81, !83, !430, !687, !320}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_OPEN_PROTOCOL_INFORMATION_ENTRY", file: !14, line: 1378, baseType: !690)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1373, size: 192, elements: !691)
!691 = !{!692, !693, !694, !695}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "AgentHandle", scope: !690, file: !14, line: 1374, baseType: !83, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "ControllerHandle", scope: !690, file: !14, line: 1375, baseType: !83, size: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "Attributes", scope: !690, file: !14, line: 1376, baseType: !59, size: 32, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "OpenCount", scope: !690, file: !14, line: 1377, baseType: !59, size: 32, offset: 160)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "ProtocolsPerHandle", scope: !493, file: !14, line: 1939, baseType: !697, size: 64, offset: 2432)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_PROTOCOLS_PER_HANDLE", file: !14, line: 1427, baseType: !698)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!81, !83, !701, !320}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "LocateHandleBuffer", scope: !493, file: !14, line: 1940, baseType: !704, size: 64, offset: 2496)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_LOCATE_HANDLE_BUFFER", file: !14, line: 1572, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!81, !598, !430, !57, !320, !708}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "LocateProtocol", scope: !493, file: !14, line: 1941, baseType: !710, size: 64, offset: 2560)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_LOCATE_PROTOCOL", file: !14, line: 1599, baseType: !711)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!81, !430, !57, !94}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "InstallMultipleProtocolInterfaces", scope: !493, file: !14, line: 1942, baseType: !715, size: 64, offset: 2624)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_INSTALL_MULTIPLE_PROTOCOL_INTERFACES", file: !14, line: 1197, baseType: !716)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!81, !570, null}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "UninstallMultipleProtocolInterfaces", scope: !493, file: !14, line: 1943, baseType: !720, size: 64, offset: 2688)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_UNINSTALL_MULTIPLE_PROTOCOL_INTERFACES", file: !14, line: 1267, baseType: !721)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!81, !83, null}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "CalculateCrc32", scope: !493, file: !14, line: 1948, baseType: !725, size: 64, offset: 2752)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CALCULATE_CRC32", file: !14, line: 1102, baseType: !726)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!81, !57, !58, !442}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "CopyMem", scope: !493, file: !14, line: 1953, baseType: !730, size: 64, offset: 2816)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_COPY_MEM", file: !14, line: 1118, baseType: !731)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{null, !57, !57, !58}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "SetMem", scope: !493, file: !14, line: 1954, baseType: !735, size: 64, offset: 2880)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_MEM", file: !14, line: 1134, baseType: !736)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{null, !57, !58, !370}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "CreateEventEx", scope: !493, file: !14, line: 1955, baseType: !740, size: 64, offset: 2944)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CREATE_EVENT_EX", file: !14, line: 493, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!81, !59, !501, !540, !744, !746, !544}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfTableEntries", scope: !254, file: !14, line: 2031, baseType: !58, size: 32, offset: 832)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "ConfigurationTable", scope: !254, file: !14, line: 2036, baseType: !750, size: 64, offset: 896)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CONFIGURATION_TABLE", file: !14, line: 1971, baseType: !752)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1962, size: 192, elements: !753)
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "VendorGuid", scope: !752, file: !14, line: 1966, baseType: !431, size: 128)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "VendorTable", scope: !752, file: !14, line: 1970, baseType: !57, size: 64, offset: 128)
!756 = !DILocalVariable(name: "ImageHandle", arg: 1, scope: !249, file: !3, line: 41, type: !83)
!757 = !DILocation(line: 41, column: 24, scope: !249)
!758 = !DILocalVariable(name: "SystemTable", arg: 2, scope: !249, file: !3, line: 42, type: !252)
!759 = !DILocation(line: 42, column: 25, scope: !249)
!760 = !DILocalVariable(name: "Status", scope: !249, file: !3, line: 45, type: !81)
!761 = !DILocation(line: 45, column: 42, scope: !249)
!762 = !DILocation(line: 47, column: 11, scope: !249)
!763 = !DILocation(line: 55, column: 9, scope: !249)
!764 = !DILocation(line: 65, column: 41, scope: !249)
!765 = !DILocation(line: 65, column: 19, scope: !249)
!766 = !DILocation(line: 65, column: 17, scope: !249)
!767 = !DILocation(line: 70, column: 34, scope: !249)
!768 = !DILocation(line: 70, column: 27, scope: !249)
!769 = !DILocation(line: 70, column: 19, scope: !249)
!770 = !DILocation(line: 70, column: 17, scope: !249)
!771 = !DILocation(line: 82, column: 10, scope: !249)
!772 = !DILocation(line: 82, column: 3, scope: !249)
!773 = distinct !DISubprogram(name: "Example1_Driver_LockboxUnload", scope: !3, file: !3, line: 94, type: !640, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !115)
!774 = !DILocalVariable(name: "ImageHandle", arg: 1, scope: !773, file: !3, line: 95, type: !83)
!775 = !DILocation(line: 95, column: 18, scope: !773)
!776 = !DILocalVariable(name: "Status", scope: !773, file: !3, line: 98, type: !81)
!777 = !DILocation(line: 98, column: 14, scope: !773)
!778 = !DILocation(line: 104, column: 7, scope: !779)
!779 = distinct !DILexicalBlock(scope: !773, file: !3, line: 104, column: 7)
!780 = !DILocation(line: 104, column: 7, scope: !773)
!781 = !DILocation(line: 105, column: 12, scope: !782)
!782 = distinct !DILexicalBlock(scope: !779, file: !3, line: 104, column: 27)
!783 = !DILocation(line: 105, column: 5, scope: !782)
!784 = !DILocation(line: 108, column: 10, scope: !773)
!785 = !DILocation(line: 108, column: 3, scope: !773)
!786 = !DILocation(line: 109, column: 1, scope: !773)
!787 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 191, type: !788, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !115)
!788 = !DISubroutineType(types: !789)
!789 = !{!62, !62, !790}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!793 = !DILocalVariable(name: "argc", arg: 1, scope: !787, file: !3, line: 191, type: !62)
!794 = !DILocation(line: 191, column: 14, scope: !787)
!795 = !DILocalVariable(name: "argv", arg: 2, scope: !787, file: !3, line: 191, type: !790)
!796 = !DILocation(line: 191, column: 27, scope: !787)
!797 = !DILocalVariable(name: "ImageHandle", scope: !787, file: !3, line: 192, type: !83)
!798 = !DILocation(line: 192, column: 19, scope: !787)
!799 = !DILocalVariable(name: "SystemTable", scope: !787, file: !3, line: 193, type: !252)
!800 = !DILocation(line: 193, column: 20, scope: !787)
!801 = !DILocation(line: 196, column: 22, scope: !787)
!802 = !DILocation(line: 196, column: 3, scope: !787)
!803 = !DILocation(line: 197, column: 22, scope: !787)
!804 = !DILocation(line: 197, column: 3, scope: !787)
!805 = !DILocation(line: 199, column: 31, scope: !787)
!806 = !DILocation(line: 199, column: 44, scope: !787)
!807 = !DILocation(line: 199, column: 3, scope: !787)
!808 = !DILocation(line: 201, column: 5, scope: !787)
