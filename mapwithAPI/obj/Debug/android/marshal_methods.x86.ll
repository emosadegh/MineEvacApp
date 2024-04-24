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
@assembly_image_cache_hashes = local_unnamed_addr constant [38 x i32] [
	i32 321597661, ; 0: System.Numerics => 0x132b30dd => 6
	i32 442521989, ; 1: Xamarin.Essentials => 0x1a605985 => 13
	i32 465846621, ; 2: mscorlib => 0x1bc4415d => 2
	i32 469710990, ; 3: System.dll => 0x1bff388e => 4
	i32 748832960, ; 4: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 10
	i32 1098259244, ; 5: System => 0x41761b2c => 4
	i32 1292207520, ; 6: SQLitePCLRaw.core.dll => 0x4d0585a0 => 11
	i32 1306176955, ; 7: mapwithAPI.dll => 0x4ddaadbb => 18
	i32 1639515021, ; 8: System.Net.Http.dll => 0x61b9038d => 5
	i32 1776026572, ; 9: System.Core.dll => 0x69dc03cc => 3
	i32 1867746548, ; 10: Xamarin.Essentials.dll => 0x6f538cf4 => 13
	i32 1898885626, ; 11: mapwithAPI => 0x712eb1fa => 18
	i32 1908813208, ; 12: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 14
	i32 2103459038, ; 13: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 12
	i32 2201231467, ; 14: System.Net.Http => 0x8334206b => 5
	i32 2465273461, ; 15: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 10
	i32 2475788418, ; 16: Java.Interop.dll => 0x93918882 => 0
	i32 2905242038, ; 17: mscorlib.dll => 0xad2a79b6 => 2
	i32 3017076677, ; 18: Xamarin.GooglePlayServices.Maps => 0xb3d4efc5 => 16
	i32 3058099980, ; 19: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 17
	i32 3230466174, ; 20: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 14
	i32 3247949154, ; 21: Mono.Security => 0xc197c562 => 8
	i32 3286872994, ; 22: SQLite-net.dll => 0xc3e9b3a2 => 9
	i32 3360279109, ; 23: SQLitePCLRaw.core => 0xc849ca45 => 11
	i32 3362522851, ; 24: Xamarin.AndroidX.Core => 0xc86c06e3 => 7
	i32 3366347497, ; 25: Java.Interop => 0xc8a662e9 => 0
	i32 3476120550, ; 26: Mono.Android => 0xcf3163e6 => 1
	i32 3494395880, ; 27: Xamarin.GooglePlayServices.Location.dll => 0xd0483fe8 => 15
	i32 3672681054, ; 28: Mono.Android.dll => 0xdae8aa5e => 1
	i32 3754567612, ; 29: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 12
	i32 3829621856, ; 30: System.Numerics.dll => 0xe4436460 => 6
	i32 3876362041, ; 31: SQLite-net => 0xe70c9739 => 9
	i32 3896760992, ; 32: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 7
	i32 3967165417, ; 33: Xamarin.GooglePlayServices.Location => 0xec7623e9 => 15
	i32 3970018735, ; 34: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 17
	i32 4105002889, ; 35: Mono.Security.dll => 0xf4ad5f89 => 8
	i32 4151237749, ; 36: System.Core => 0xf76edc75 => 3
	i32 4278134329 ; 37: Xamarin.GooglePlayServices.Maps.dll => 0xfeff2639 => 16
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [38 x i32] [
	i32 6, i32 13, i32 2, i32 4, i32 10, i32 4, i32 11, i32 18, ; 0..7
	i32 5, i32 3, i32 13, i32 18, i32 14, i32 12, i32 5, i32 10, ; 8..15
	i32 0, i32 2, i32 16, i32 17, i32 14, i32 8, i32 9, i32 11, ; 16..23
	i32 7, i32 0, i32 1, i32 15, i32 1, i32 12, i32 6, i32 9, ; 24..31
	i32 7, i32 15, i32 17, i32 8, i32 3, i32 16 ; 32..37
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
