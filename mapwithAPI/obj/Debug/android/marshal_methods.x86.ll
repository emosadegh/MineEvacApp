; ModuleID = 'obj/Debug/android/marshal_methods.x86.ll'
source_filename = "obj/Debug/android/marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [50 x i32] [
	i32 41914562, ; 0: MySql.Data.CF => 0x27f90c2 => 13
	i32 230752869, ; 1: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 321597661, ; 2: System.Numerics => 0x132b30dd => 8
	i32 442521989, ; 3: Xamarin.Essentials => 0x1a605985 => 19
	i32 465846621, ; 4: mscorlib => 0x1bc4415d => 3
	i32 469710990, ; 5: System.dll => 0x1bff388e => 6
	i32 725851412, ; 6: I18N.West.dll => 0x2b439d14 => 12
	i32 748832960, ; 7: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 16
	i32 1098259244, ; 8: System => 0x41761b2c => 6
	i32 1292207520, ; 9: SQLitePCLRaw.core.dll => 0x4d0585a0 => 17
	i32 1306176955, ; 10: mapwithAPI.dll => 0x4ddaadbb => 24
	i32 1525031578, ; 11: Python.Runtime.dll => 0x5ae6229a => 14
	i32 1639515021, ; 12: System.Net.Http.dll => 0x61b9038d => 7
	i32 1776026572, ; 13: System.Core.dll => 0x69dc03cc => 4
	i32 1867746548, ; 14: Xamarin.Essentials.dll => 0x6f538cf4 => 19
	i32 1898885626, ; 15: mapwithAPI => 0x712eb1fa => 24
	i32 1908813208, ; 16: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 20
	i32 2067863569, ; 17: I18N.dll => 0x7b411811 => 11
	i32 2103459038, ; 18: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 18
	i32 2149884392, ; 19: Python.Runtime => 0x8024a1e8 => 14
	i32 2201231467, ; 20: System.Net.Http => 0x8334206b => 7
	i32 2250011516, ; 21: MySql.Data.CF.dll => 0x861c737c => 13
	i32 2465273461, ; 22: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 16
	i32 2475788418, ; 23: Java.Interop.dll => 0x93918882 => 0
	i32 2562349572, ; 24: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2581274016, ; 25: I18N.West => 0x99db1da0 => 12
	i32 2905242038, ; 26: mscorlib.dll => 0xad2a79b6 => 3
	i32 3017076677, ; 27: Xamarin.GooglePlayServices.Maps => 0xb3d4efc5 => 22
	i32 3058099980, ; 28: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 23
	i32 3204380047, ; 29: System.Data.dll => 0xbefef58f => 5
	i32 3230466174, ; 30: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 20
	i32 3247949154, ; 31: Mono.Security => 0xc197c562 => 10
	i32 3286872994, ; 32: SQLite-net.dll => 0xc3e9b3a2 => 15
	i32 3317144872, ; 33: System.Data => 0xc5b79d28 => 5
	i32 3360279109, ; 34: SQLitePCLRaw.core => 0xc849ca45 => 17
	i32 3362522851, ; 35: Xamarin.AndroidX.Core => 0xc86c06e3 => 9
	i32 3366347497, ; 36: Java.Interop => 0xc8a662e9 => 0
	i32 3476120550, ; 37: Mono.Android => 0xcf3163e6 => 2
	i32 3494395880, ; 38: Xamarin.GooglePlayServices.Location.dll => 0xd0483fe8 => 21
	i32 3579244613, ; 39: I18N => 0xd556f045 => 11
	i32 3672681054, ; 40: Mono.Android.dll => 0xdae8aa5e => 2
	i32 3754567612, ; 41: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 18
	i32 3829621856, ; 42: System.Numerics.dll => 0xe4436460 => 8
	i32 3876362041, ; 43: SQLite-net => 0xe70c9739 => 15
	i32 3896760992, ; 44: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 9
	i32 3967165417, ; 45: Xamarin.GooglePlayServices.Location => 0xec7623e9 => 21
	i32 3970018735, ; 46: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 23
	i32 4105002889, ; 47: Mono.Security.dll => 0xf4ad5f89 => 10
	i32 4151237749, ; 48: System.Core => 0xf76edc75 => 4
	i32 4278134329 ; 49: Xamarin.GooglePlayServices.Maps.dll => 0xfeff2639 => 22
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [50 x i32] [
	i32 13, i32 1, i32 8, i32 19, i32 3, i32 6, i32 12, i32 16, ; 0..7
	i32 6, i32 17, i32 24, i32 14, i32 7, i32 4, i32 19, i32 24, ; 8..15
	i32 20, i32 11, i32 18, i32 14, i32 7, i32 13, i32 16, i32 0, ; 16..23
	i32 1, i32 12, i32 3, i32 22, i32 23, i32 5, i32 20, i32 10, ; 24..31
	i32 15, i32 5, i32 17, i32 9, i32 0, i32 2, i32 21, i32 11, ; 32..39
	i32 2, i32 18, i32 8, i32 15, i32 9, i32 21, i32 23, i32 10, ; 40..47
	i32 4, i32 22 ; 48..49
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
