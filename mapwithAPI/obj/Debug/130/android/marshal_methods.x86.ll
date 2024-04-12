; ModuleID = 'obj\Debug\130\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [264 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 81
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 108
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 5
	i32 57967248, ; 3: Xamarin.Android.Support.VersionedParcelable.dll => 0x3748290 => 41
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 93
	i32 108920425, ; 5: Xamarin.AndroidX.AppCompat.Resources.dll => 0x67dfe69 => 49
	i32 120558881, ; 6: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 93
	i32 160529393, ; 7: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 13
	i32 165246403, ; 8: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 55
	i32 166922606, ; 9: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 24
	i32 182336117, ; 10: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 95
	i32 201930040, ; 11: Xamarin.Android.Arch.Core.Runtime => 0xc093538 => 14
	i32 209399409, ; 12: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 53
	i32 230216969, ; 13: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 74
	i32 232815796, ; 14: System.Web.Services => 0xde07cb4 => 129
	i32 261689757, ; 15: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 59
	i32 278686392, ; 16: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 79
	i32 280482487, ; 17: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 72
	i32 318968648, ; 18: Xamarin.AndroidX.Activity.dll => 0x13031348 => 43
	i32 321597661, ; 19: System.Numerics => 0x132b30dd => 9
	i32 342366114, ; 20: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 76
	i32 388313361, ; 21: Xamarin.Android.Support.Animated.Vector.Drawable => 0x17253111 => 20
	i32 389971796, ; 22: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 26
	i32 441335492, ; 23: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 58
	i32 442521989, ; 24: Xamarin.Essentials => 0x1a605985 => 105
	i32 450948140, ; 25: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 71
	i32 465846621, ; 26: mscorlib => 0x1bc4415d => 4
	i32 469710990, ; 27: System.dll => 0x1bff388e => 7
	i32 476646585, ; 28: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 72
	i32 486930444, ; 29: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 85
	i32 514659665, ; 30: Xamarin.Android.Support.Compat => 0x1ead1551 => 24
	i32 524864063, ; 31: Xamarin.Android.Support.Print => 0x1f48ca3f => 36
	i32 526420162, ; 32: System.Transactions.dll => 0x1f6088c2 => 122
	i32 569601784, ; 33: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 104
	i32 605376203, ; 34: System.IO.Compression.FileSystem => 0x24154ecb => 125
	i32 627609679, ; 35: Xamarin.AndroidX.CustomView => 0x2568904f => 64
	i32 639843206, ; 36: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 70
	i32 663517072, ; 37: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 100
	i32 666292255, ; 38: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 50
	i32 690569205, ; 39: System.Xml.Linq.dll => 0x29293ff5 => 130
	i32 691348768, ; 40: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 116
	i32 692692150, ; 41: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 21
	i32 700284507, ; 42: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 114
	i32 775507847, ; 43: System.IO.Compression => 0x2e394f87 => 124
	i32 790371945, ; 44: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 65
	i32 801787702, ; 45: Xamarin.Android.Support.Interpolator => 0x2fca4f36 => 33
	i32 807930345, ; 46: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 78
	i32 809851609, ; 47: System.Drawing.Common.dll => 0x30455ad9 => 119
	i32 843511501, ; 48: Xamarin.AndroidX.Print => 0x3246f6cd => 88
	i32 916714535, ; 49: Xamarin.Android.Support.Print.dll => 0x36a3f427 => 36
	i32 928116545, ; 50: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 108
	i32 955402788, ; 51: Newtonsoft.Json => 0x38f24a24 => 5
	i32 963428712, ; 52: Xamarin.AndroidX.AppCompat.Resources => 0x396cc168 => 49
	i32 967690846, ; 53: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 76
	i32 987342438, ; 54: Xamarin.Android.Arch.Lifecycle.LiveData.dll => 0x3ad9a666 => 17
	i32 1012816738, ; 55: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 92
	i32 1031528504, ; 56: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 107
	i32 1035644815, ; 57: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 48
	i32 1044640096, ; 58: GoogleMapsUtilityBinding => 0x3e43f160 => 1
	i32 1052210849, ; 59: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 82
	i32 1084122840, ; 60: Xamarin.Kotlin.StdLib => 0x409e66d8 => 115
	i32 1098167829, ; 61: Xamarin.Android.Arch.Lifecycle.ViewModel => 0x4174b615 => 19
	i32 1098259244, ; 62: System => 0x41761b2c => 7
	i32 1149092582, ; 63: Xamarin.AndroidX.Window => 0x447dc2e6 => 103
	i32 1175144683, ; 64: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 98
	i32 1204270330, ; 65: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 50
	i32 1243150071, ; 66: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 104
	i32 1246548578, ; 67: Xamarin.AndroidX.Collection.Jvm.dll => 0x4a4cd262 => 56
	i32 1264511973, ; 68: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 94
	i32 1264890200, ; 69: Xamarin.KotlinX.Coroutines.Core.dll => 0x4b64b158 => 117
	i32 1267360935, ; 70: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 99
	i32 1275534314, ; 71: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 116
	i32 1278448581, ; 72: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 46
	i32 1292763917, ; 73: Xamarin.Android.Support.CursorAdapter.dll => 0x4d0e030d => 28
	i32 1293217323, ; 74: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 67
	i32 1297413738, ; 75: Xamarin.Android.Arch.Lifecycle.LiveData.Core => 0x4d54f66a => 16
	i32 1306176955, ; 76: mapwithAPI.dll => 0x4ddaadbb => 0
	i32 1322716291, ; 77: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 103
	i32 1365406463, ; 78: System.ServiceModel.Internals.dll => 0x516272ff => 128
	i32 1376866003, ; 79: Xamarin.AndroidX.SavedState => 0x52114ed3 => 92
	i32 1395857551, ; 80: Xamarin.AndroidX.Media.dll => 0x5333188f => 86
	i32 1406073936, ; 81: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 60
	i32 1445445088, ; 82: Xamarin.Android.Support.Fragment => 0x5627bde0 => 32
	i32 1462112819, ; 83: System.IO.Compression.dll => 0x57261233 => 124
	i32 1469204771, ; 84: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 47
	i32 1574652163, ; 85: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 27
	i32 1582372066, ; 86: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 66
	i32 1587447679, ; 87: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 13
	i32 1592978981, ; 88: System.Runtime.Serialization.dll => 0x5ef2ee25 => 127
	i32 1597949149, ; 89: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 107
	i32 1622152042, ; 90: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 84
	i32 1624863272, ; 91: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 102
	i32 1635184631, ; 92: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 70
	i32 1636350590, ; 93: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 63
	i32 1639515021, ; 94: System.Net.Http.dll => 0x61b9038d => 8
	i32 1657153582, ; 95: System.Runtime => 0x62c6282e => 11
	i32 1658241508, ; 96: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 96
	i32 1658251792, ; 97: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 106
	i32 1662014763, ; 98: Xamarin.Android.Support.Vector.Drawable => 0x6310552b => 40
	i32 1670060433, ; 99: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 59
	i32 1720223769, ; 100: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 78
	i32 1729485958, ; 101: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 54
	i32 1766324549, ; 102: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 95
	i32 1776026572, ; 103: System.Core.dll => 0x69dc03cc => 6
	i32 1788241197, ; 104: Xamarin.AndroidX.Fragment => 0x6a96652d => 71
	i32 1808609942, ; 105: Xamarin.AndroidX.Loader => 0x6bcd3296 => 84
	i32 1813058853, ; 106: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 115
	i32 1813201214, ; 107: Xamarin.Google.Android.Material => 0x6c13413e => 106
	i32 1866717392, ; 108: Xamarin.Android.Support.Interpolator.dll => 0x6f43d8d0 => 33
	i32 1867746548, ; 109: Xamarin.Essentials.dll => 0x6f538cf4 => 105
	i32 1885316902, ; 110: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 51
	i32 1898885626, ; 111: mapwithAPI => 0x712eb1fa => 0
	i32 1908813208, ; 112: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 110
	i32 1916660109, ; 113: Xamarin.Android.Arch.Lifecycle.ViewModel.dll => 0x723de98d => 19
	i32 1919157823, ; 114: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 87
	i32 2019465201, ; 115: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 82
	i32 2037417872, ; 116: Xamarin.Android.Support.ViewPager => 0x79708790 => 42
	i32 2044222327, ; 117: Xamarin.Android.Support.Loader => 0x79d85b77 => 34
	i32 2055257422, ; 118: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 77
	i32 2079903147, ; 119: System.Runtime.dll => 0x7bf8cdab => 11
	i32 2090596640, ; 120: System.Numerics.Vectors => 0x7c9bf920 => 10
	i32 2097448633, ; 121: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 73
	i32 2129483829, ; 122: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 109
	i32 2139458754, ; 123: Xamarin.Android.Support.DrawerLayout => 0x7f858cc2 => 31
	i32 2166116741, ; 124: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 27
	i32 2196165013, ; 125: Xamarin.Android.Support.VersionedParcelable => 0x82e6d195 => 41
	i32 2201107256, ; 126: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 118
	i32 2201231467, ; 127: System.Net.Http => 0x8334206b => 8
	i32 2217644978, ; 128: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 98
	i32 2244775296, ; 129: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 85
	i32 2256548716, ; 130: Xamarin.AndroidX.MultiDex => 0x8680336c => 87
	i32 2261435625, ; 131: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 75
	i32 2279755925, ; 132: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 90
	i32 2315684594, ; 133: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 44
	i32 2330457430, ; 134: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 26
	i32 2330986192, ; 135: Xamarin.Android.Support.SlidingPaneLayout.dll => 0x8af006d0 => 37
	i32 2373288475, ; 136: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 32
	i32 2403452196, ; 137: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 69
	i32 2440966767, ; 138: Xamarin.Android.Support.Loader.dll => 0x917e326f => 34
	i32 2465532216, ; 139: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 58
	i32 2471841756, ; 140: netstandard.dll => 0x93554fdc => 120
	i32 2475788418, ; 141: Java.Interop.dll => 0x93918882 => 2
	i32 2487632829, ; 142: Xamarin.Android.Support.DocumentFile => 0x944643bd => 30
	i32 2501346920, ; 143: System.Data.DataSetExtensions => 0x95178668 => 123
	i32 2505896520, ; 144: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 81
	i32 2581819634, ; 145: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 99
	i32 2605712449, ; 146: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 118
	i32 2620871830, ; 147: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 63
	i32 2624644809, ; 148: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 68
	i32 2633051222, ; 149: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 79
	i32 2671474046, ; 150: Xamarin.KotlinX.Coroutines.Core => 0x9f3b757e => 117
	i32 2698266930, ; 151: Xamarin.Android.Arch.Lifecycle.LiveData => 0xa0d44932 => 17
	i32 2701096212, ; 152: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 96
	i32 2732626843, ; 153: Xamarin.AndroidX.Activity => 0xa2e0939b => 43
	i32 2737747696, ; 154: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 47
	i32 2751899777, ; 155: Xamarin.Android.Support.Collections => 0xa406a881 => 23
	i32 2770495804, ; 156: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 114
	i32 2778768386, ; 157: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 101
	i32 2779977773, ; 158: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 91
	i32 2788639665, ; 159: Xamarin.Android.Support.LocalBroadcastManager => 0xa63743b1 => 35
	i32 2788775637, ; 160: Xamarin.Android.Support.SwipeRefreshLayout.dll => 0xa63956d5 => 38
	i32 2810250172, ; 161: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 60
	i32 2819470561, ; 162: System.Xml.dll => 0xa80db4e1 => 12
	i32 2821294376, ; 163: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 91
	i32 2847418871, ; 164: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 109
	i32 2853208004, ; 165: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 101
	i32 2855708567, ; 166: Xamarin.AndroidX.Transition => 0xaa36a797 => 97
	i32 2876493027, ; 167: Xamarin.Android.Support.SwipeRefreshLayout => 0xab73cce3 => 38
	i32 2893257763, ; 168: Xamarin.Android.Arch.Core.Runtime.dll => 0xac739c23 => 14
	i32 2903344695, ; 169: System.ComponentModel.Composition => 0xad0d8637 => 126
	i32 2905242038, ; 170: mscorlib.dll => 0xad2a79b6 => 4
	i32 2916838712, ; 171: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 102
	i32 2919462931, ; 172: System.Numerics.Vectors.dll => 0xae037813 => 10
	i32 2921128767, ; 173: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 45
	i32 2921692953, ; 174: Xamarin.Android.Support.CustomView.dll => 0xae257f19 => 29
	i32 2922925221, ; 175: Xamarin.Android.Support.Vector.Drawable.dll => 0xae384ca5 => 40
	i32 2978675010, ; 176: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 67
	i32 2996846495, ; 177: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 80
	i32 3016983068, ; 178: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 94
	i32 3017076677, ; 179: Xamarin.GooglePlayServices.Maps => 0xb3d4efc5 => 112
	i32 3024354802, ; 180: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 74
	i32 3056250942, ; 181: Xamarin.Android.Support.AsyncLayoutInflater.dll => 0xb62ab03e => 22
	i32 3058099980, ; 182: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 113
	i32 3068715062, ; 183: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 15
	i32 3111772706, ; 184: System.Runtime.Serialization => 0xb979e222 => 127
	i32 3204380047, ; 185: System.Data.dll => 0xbefef58f => 121
	i32 3204912593, ; 186: Xamarin.Android.Support.AsyncLayoutInflater => 0xbf0715d1 => 22
	i32 3211777861, ; 187: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 66
	i32 3230466174, ; 188: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 110
	i32 3233339011, ; 189: Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll => 0xc0b8d683 => 16
	i32 3247949154, ; 190: Mono.Security => 0xc197c562 => 131
	i32 3250442814, ; 191: GoogleMapsUtilityBinding.dll => 0xc1bdd23e => 1
	i32 3258312781, ; 192: Xamarin.AndroidX.CardView => 0xc235e84d => 54
	i32 3267021929, ; 193: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 52
	i32 3296380511, ; 194: Xamarin.Android.Support.Collections.dll => 0xc47ac65f => 23
	i32 3317135071, ; 195: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 64
	i32 3317144872, ; 196: System.Data => 0xc5b79d28 => 121
	i32 3321585405, ; 197: Xamarin.Android.Support.DocumentFile.dll => 0xc5fb5efd => 30
	i32 3340431453, ; 198: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 51
	i32 3345895724, ; 199: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 89
	i32 3352662376, ; 200: Xamarin.Android.Support.CoordinaterLayout => 0xc7d59168 => 25
	i32 3353484488, ; 201: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 73
	i32 3357663996, ; 202: Xamarin.Android.Support.CursorAdapter => 0xc821e2fc => 28
	i32 3362522851, ; 203: Xamarin.AndroidX.Core => 0xc86c06e3 => 62
	i32 3366347497, ; 204: Java.Interop => 0xc8a662e9 => 2
	i32 3374999561, ; 205: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 90
	i32 3404865022, ; 206: System.ServiceModel.Internals => 0xcaf21dfe => 128
	i32 3405233483, ; 207: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 65
	i32 3429136800, ; 208: System.Xml => 0xcc6479a0 => 12
	i32 3430777524, ; 209: netstandard => 0xcc7d82b4 => 120
	i32 3439690031, ; 210: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 21
	i32 3441283291, ; 211: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 68
	i32 3476120550, ; 212: Mono.Android => 0xcf3163e6 => 3
	i32 3486566296, ; 213: System.Transactions => 0xcfd0c798 => 122
	i32 3493954962, ; 214: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 57
	i32 3494395880, ; 215: Xamarin.GooglePlayServices.Location.dll => 0xd0483fe8 => 111
	i32 3501239056, ; 216: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 52
	i32 3509114376, ; 217: System.Xml.Linq => 0xd128d608 => 130
	i32 3547625832, ; 218: Xamarin.Android.Support.SlidingPaneLayout => 0xd3747968 => 37
	i32 3567349600, ; 219: System.ComponentModel.Composition.dll => 0xd4a16f60 => 126
	i32 3627220390, ; 220: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 88
	i32 3633644679, ; 221: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 45
	i32 3641597786, ; 222: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 77
	i32 3664423555, ; 223: Xamarin.Android.Support.ViewPager.dll => 0xda6aaa83 => 42
	i32 3672681054, ; 224: Mono.Android.dll => 0xdae8aa5e => 3
	i32 3676310014, ; 225: System.Web.Services.dll => 0xdb2009fe => 129
	i32 3678221644, ; 226: Xamarin.Android.Support.v7.AppCompat => 0xdb3d354c => 39
	i32 3681174138, ; 227: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 15
	i32 3682565725, ; 228: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 53
	i32 3684561358, ; 229: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 57
	i32 3689375977, ; 230: System.Drawing.Common => 0xdbe768e9 => 119
	i32 3706696989, ; 231: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 61
	i32 3714038699, ; 232: Xamarin.Android.Support.LocalBroadcastManager.dll => 0xdd5fbbab => 35
	i32 3718463572, ; 233: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0xdda34054 => 20
	i32 3718780102, ; 234: Xamarin.AndroidX.Annotation => 0xdda814c6 => 44
	i32 3758932259, ; 235: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 75
	i32 3776062606, ; 236: Xamarin.Android.Support.DrawerLayout.dll => 0xe112248e => 31
	i32 3786282454, ; 237: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 55
	i32 3822602673, ; 238: Xamarin.AndroidX.Media => 0xe3d849b1 => 86
	i32 3829621856, ; 239: System.Numerics.dll => 0xe4436460 => 9
	i32 3832731800, ; 240: Xamarin.Android.Support.CoordinaterLayout.dll => 0xe472d898 => 25
	i32 3862817207, ; 241: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 18
	i32 3874897629, ; 242: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 18
	i32 3883175360, ; 243: Xamarin.Android.Support.v7.AppCompat.dll => 0xe7748dc0 => 39
	i32 3885922214, ; 244: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 97
	i32 3888767677, ; 245: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 89
	i32 3896760992, ; 246: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 62
	i32 3910130544, ; 247: Xamarin.AndroidX.Collection.Jvm => 0xe90fdb70 => 56
	i32 3920810846, ; 248: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 125
	i32 3921031405, ; 249: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 100
	i32 3945713374, ; 250: System.Data.DataSetExtensions.dll => 0xeb2ecede => 123
	i32 3955647286, ; 251: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 48
	i32 3959773229, ; 252: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 80
	i32 3967165417, ; 253: Xamarin.GooglePlayServices.Location => 0xec7623e9 => 111
	i32 3970018735, ; 254: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 113
	i32 4015948917, ; 255: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 46
	i32 4063435586, ; 256: Xamarin.Android.Support.CustomView => 0xf2331b42 => 29
	i32 4101593132, ; 257: Xamarin.AndroidX.Emoji2 => 0xf479582c => 69
	i32 4105002889, ; 258: Mono.Security.dll => 0xf4ad5f89 => 131
	i32 4151237749, ; 259: System.Core => 0xf76edc75 => 6
	i32 4182413190, ; 260: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 83
	i32 4256097574, ; 261: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 61
	i32 4278134329, ; 262: Xamarin.GooglePlayServices.Maps.dll => 0xfeff2639 => 112
	i32 4292120959 ; 263: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 83
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [264 x i32] [
	i32 81, i32 108, i32 5, i32 41, i32 93, i32 49, i32 93, i32 13, ; 0..7
	i32 55, i32 24, i32 95, i32 14, i32 53, i32 74, i32 129, i32 59, ; 8..15
	i32 79, i32 72, i32 43, i32 9, i32 76, i32 20, i32 26, i32 58, ; 16..23
	i32 105, i32 71, i32 4, i32 7, i32 72, i32 85, i32 24, i32 36, ; 24..31
	i32 122, i32 104, i32 125, i32 64, i32 70, i32 100, i32 50, i32 130, ; 32..39
	i32 116, i32 21, i32 114, i32 124, i32 65, i32 33, i32 78, i32 119, ; 40..47
	i32 88, i32 36, i32 108, i32 5, i32 49, i32 76, i32 17, i32 92, ; 48..55
	i32 107, i32 48, i32 1, i32 82, i32 115, i32 19, i32 7, i32 103, ; 56..63
	i32 98, i32 50, i32 104, i32 56, i32 94, i32 117, i32 99, i32 116, ; 64..71
	i32 46, i32 28, i32 67, i32 16, i32 0, i32 103, i32 128, i32 92, ; 72..79
	i32 86, i32 60, i32 32, i32 124, i32 47, i32 27, i32 66, i32 13, ; 80..87
	i32 127, i32 107, i32 84, i32 102, i32 70, i32 63, i32 8, i32 11, ; 88..95
	i32 96, i32 106, i32 40, i32 59, i32 78, i32 54, i32 95, i32 6, ; 96..103
	i32 71, i32 84, i32 115, i32 106, i32 33, i32 105, i32 51, i32 0, ; 104..111
	i32 110, i32 19, i32 87, i32 82, i32 42, i32 34, i32 77, i32 11, ; 112..119
	i32 10, i32 73, i32 109, i32 31, i32 27, i32 41, i32 118, i32 8, ; 120..127
	i32 98, i32 85, i32 87, i32 75, i32 90, i32 44, i32 26, i32 37, ; 128..135
	i32 32, i32 69, i32 34, i32 58, i32 120, i32 2, i32 30, i32 123, ; 136..143
	i32 81, i32 99, i32 118, i32 63, i32 68, i32 79, i32 117, i32 17, ; 144..151
	i32 96, i32 43, i32 47, i32 23, i32 114, i32 101, i32 91, i32 35, ; 152..159
	i32 38, i32 60, i32 12, i32 91, i32 109, i32 101, i32 97, i32 38, ; 160..167
	i32 14, i32 126, i32 4, i32 102, i32 10, i32 45, i32 29, i32 40, ; 168..175
	i32 67, i32 80, i32 94, i32 112, i32 74, i32 22, i32 113, i32 15, ; 176..183
	i32 127, i32 121, i32 22, i32 66, i32 110, i32 16, i32 131, i32 1, ; 184..191
	i32 54, i32 52, i32 23, i32 64, i32 121, i32 30, i32 51, i32 89, ; 192..199
	i32 25, i32 73, i32 28, i32 62, i32 2, i32 90, i32 128, i32 65, ; 200..207
	i32 12, i32 120, i32 21, i32 68, i32 3, i32 122, i32 57, i32 111, ; 208..215
	i32 52, i32 130, i32 37, i32 126, i32 88, i32 45, i32 77, i32 42, ; 216..223
	i32 3, i32 129, i32 39, i32 15, i32 53, i32 57, i32 119, i32 61, ; 224..231
	i32 35, i32 20, i32 44, i32 75, i32 31, i32 55, i32 86, i32 9, ; 232..239
	i32 25, i32 18, i32 18, i32 39, i32 97, i32 89, i32 62, i32 56, ; 240..247
	i32 125, i32 100, i32 123, i32 48, i32 80, i32 111, i32 113, i32 46, ; 248..255
	i32 29, i32 69, i32 131, i32 6, i32 83, i32 61, i32 112, i32 83 ; 264..263
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
