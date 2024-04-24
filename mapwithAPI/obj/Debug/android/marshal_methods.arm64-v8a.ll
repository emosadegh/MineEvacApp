; ModuleID = 'obj/Debug/android/marshal_methods.arm64-v8a.ll'
source_filename = "obj/Debug/android/marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [38 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 1
	i64 435170709725415398, ; 1: Xamarin.GooglePlayServices.Location => 0x60a097471d687e6 => 15
	i64 1000557547492888992, ; 2: Mono.Security.dll => 0xde2b1c9cba651a0 => 8
	i64 1301485588176585670, ; 3: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 11
	i64 1518315023656898250, ; 4: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 12
	i64 2624866290265602282, ; 5: mscorlib.dll => 0x246d65fbde2db8ea => 2
	i64 3411255996856937470, ; 6: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 14
	i64 3531994851595924923, ; 7: System.Numerics => 0x31042a9aade235bb => 6
	i64 4247996603072512073, ; 8: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 17
	i64 4337444564132831293, ; 9: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 10
	i64 5203618020066742981, ; 10: Xamarin.Essentials => 0x4836f704f0e652c5 => 13
	i64 5507995362134886206, ; 11: System.Core.dll => 0x4c705499688c873e => 3
	i64 6183170893902868313, ; 12: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 10
	i64 6390478913719370837, ; 13: mapwithAPI => 0x58af8ab6bcde0455 => 18
	i64 7141281584637745974, ; 14: Xamarin.GooglePlayServices.Maps.dll => 0x631aedc3dd5f1b36 => 16
	i64 7637365915383206639, ; 15: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 13
	i64 7654504624184590948, ; 16: System.Net.Http => 0x6a3a4366801b8264 => 5
	i64 8167236081217502503, ; 17: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 0
	i64 8626175481042262068, ; 18: Java.Interop => 0x77b654e585b55834 => 0
	i64 9371199592651241965, ; 19: mapwithAPI.dll => 0x820d3060f74339ed => 18
	i64 9662334977499516867, ; 20: System.Numerics.dll => 0x8617827802b0cfc3 => 6
	i64 9808709177481450983, ; 21: Mono.Android.dll => 0x881f890734e555e7 => 1
	i64 9998632235833408227, ; 22: Mono.Security => 0x8ac2470b209ebae3 => 8
	i64 10038780035334861115, ; 23: System.Net.Http.dll => 0x8b50e941206af13b => 5
	i64 10430153318873392755, ; 24: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 7
	i64 11023048688141570732, ; 25: System.Core => 0x98f9bc61168392ac => 3
	i64 11739066727115742305, ; 26: SQLite-net.dll => 0xa2e98afdf8575c61 => 9
	i64 11806260347154423189, ; 27: SQLite-net => 0xa3d8433bc5eb5d95 => 9
	i64 12279246230491828964, ; 28: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 12
	i64 14678510994762383812, ; 29: Xamarin.GooglePlayServices.Location.dll => 0xcbb48bfaca7a41c4 => 15
	i64 15370334346939861994, ; 30: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 7
	i64 15609085926864131306, ; 31: System.dll => 0xd89e9cf3334914ea => 4
	i64 15930129725311349754, ; 32: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 17
	i64 16154507427712707110, ; 33: System => 0xe03056ea4e39aa26 => 4
	i64 16755018182064898362, ; 34: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 11
	i64 16833383113903931215, ; 35: mscorlib => 0xe99c30c1484d7f4f => 2
	i64 17969331831154222830, ; 36: Xamarin.GooglePlayServices.Maps => 0xf95fe418471126ee => 16
	i64 17986907704309214542 ; 37: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 14
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [38 x i32] [
	i32 1, i32 15, i32 8, i32 11, i32 12, i32 2, i32 14, i32 6, ; 0..7
	i32 17, i32 10, i32 13, i32 3, i32 10, i32 18, i32 16, i32 13, ; 8..15
	i32 5, i32 0, i32 0, i32 18, i32 6, i32 1, i32 8, i32 5, ; 16..23
	i32 7, i32 3, i32 9, i32 9, i32 12, i32 15, i32 7, i32 4, ; 24..31
	i32 17, i32 4, i32 11, i32 2, i32 16, i32 14 ; 32..37
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
