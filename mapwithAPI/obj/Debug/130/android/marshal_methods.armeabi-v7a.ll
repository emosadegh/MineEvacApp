; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [226 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 63
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 89
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 6
	i32 57967248, ; 3: Xamarin.Android.Support.VersionedParcelable.dll => 0x3748290 => 28
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 74
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 74
	i32 160529393, ; 6: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 22
	i32 165246403, ; 7: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 40
	i32 166922606, ; 8: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 27
	i32 182336117, ; 9: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 76
	i32 209399409, ; 10: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 38
	i32 230216969, ; 11: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 59
	i32 232815796, ; 12: System.Web.Services => 0xde07cb4 => 110
	i32 261689757, ; 13: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 44
	i32 280482487, ; 14: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 57
	i32 318968648, ; 15: Xamarin.AndroidX.Activity.dll => 0x13031348 => 29
	i32 321597661, ; 16: System.Numerics => 0x132b30dd => 17
	i32 342366114, ; 17: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 60
	i32 347068432, ; 18: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 10
	i32 385762202, ; 19: System.Memory.dll => 0x16fe439a => 15
	i32 441335492, ; 20: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 43
	i32 442521989, ; 21: Xamarin.Essentials => 0x1a605985 => 86
	i32 450948140, ; 22: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 56
	i32 465846621, ; 23: mscorlib => 0x1bc4415d => 5
	i32 469710990, ; 24: System.dll => 0x1bff388e => 14
	i32 476646585, ; 25: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 57
	i32 486930444, ; 26: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 67
	i32 514659665, ; 27: Xamarin.Android.Support.Compat => 0x1ead1551 => 27
	i32 526420162, ; 28: System.Transactions.dll => 0x1f6088c2 => 102
	i32 569601784, ; 29: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 85
	i32 605376203, ; 30: System.IO.Compression.FileSystem => 0x24154ecb => 106
	i32 627609679, ; 31: Xamarin.AndroidX.CustomView => 0x2568904f => 49
	i32 639843206, ; 32: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 55
	i32 663517072, ; 33: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 81
	i32 666292255, ; 34: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 35
	i32 690569205, ; 35: System.Xml.Linq.dll => 0x29293ff5 => 111
	i32 691348768, ; 36: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 97
	i32 692692150, ; 37: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 25
	i32 700284507, ; 38: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 95
	i32 748832960, ; 39: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 8
	i32 775507847, ; 40: System.IO.Compression => 0x2e394f87 => 105
	i32 790371945, ; 41: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 50
	i32 809851609, ; 42: System.Drawing.Common.dll => 0x30455ad9 => 104
	i32 843511501, ; 43: Xamarin.AndroidX.Print => 0x3246f6cd => 69
	i32 928116545, ; 44: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 89
	i32 955402788, ; 45: Newtonsoft.Json => 0x38f24a24 => 6
	i32 967690846, ; 46: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 60
	i32 1012816738, ; 47: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 73
	i32 1031528504, ; 48: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 88
	i32 1035644815, ; 49: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 34
	i32 1044640096, ; 50: GoogleMapsUtilityBinding => 0x3e43f160 => 1
	i32 1052210849, ; 51: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 64
	i32 1084122840, ; 52: Xamarin.Kotlin.StdLib => 0x409e66d8 => 96
	i32 1098259244, ; 53: System => 0x41761b2c => 14
	i32 1149092582, ; 54: Xamarin.AndroidX.Window => 0x447dc2e6 => 84
	i32 1175144683, ; 55: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 79
	i32 1204270330, ; 56: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 35
	i32 1243150071, ; 57: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 85
	i32 1246548578, ; 58: Xamarin.AndroidX.Collection.Jvm.dll => 0x4a4cd262 => 41
	i32 1264511973, ; 59: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 75
	i32 1264890200, ; 60: Xamarin.KotlinX.Coroutines.Core.dll => 0x4b64b158 => 98
	i32 1267360935, ; 61: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 80
	i32 1275534314, ; 62: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 97
	i32 1278448581, ; 63: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 32
	i32 1292207520, ; 64: SQLitePCLRaw.core.dll => 0x4d0585a0 => 9
	i32 1293217323, ; 65: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 52
	i32 1306176955, ; 66: mapwithAPI.dll => 0x4ddaadbb => 0
	i32 1322716291, ; 67: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 84
	i32 1365406463, ; 68: System.ServiceModel.Internals.dll => 0x516272ff => 109
	i32 1376866003, ; 69: Xamarin.AndroidX.SavedState => 0x52114ed3 => 73
	i32 1406073936, ; 70: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 45
	i32 1411638395, ; 71: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 19
	i32 1462112819, ; 72: System.IO.Compression.dll => 0x57261233 => 105
	i32 1469204771, ; 73: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 33
	i32 1490351284, ; 74: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 3
	i32 1582372066, ; 75: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 51
	i32 1587447679, ; 76: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 22
	i32 1592978981, ; 77: System.Runtime.Serialization.dll => 0x5ef2ee25 => 108
	i32 1597949149, ; 78: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 88
	i32 1622152042, ; 79: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 66
	i32 1624863272, ; 80: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 83
	i32 1635184631, ; 81: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 55
	i32 1636350590, ; 82: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 48
	i32 1639515021, ; 83: System.Net.Http.dll => 0x61b9038d => 16
	i32 1657153582, ; 84: System.Runtime => 0x62c6282e => 20
	i32 1658241508, ; 85: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 77
	i32 1658251792, ; 86: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 87
	i32 1670060433, ; 87: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 44
	i32 1688112883, ; 88: Microsoft.Data.Sqlite => 0x649e8ef3 => 3
	i32 1711441057, ; 89: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 10
	i32 1729485958, ; 90: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 39
	i32 1766324549, ; 91: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 76
	i32 1776026572, ; 92: System.Core.dll => 0x69dc03cc => 13
	i32 1788241197, ; 93: Xamarin.AndroidX.Fragment => 0x6a96652d => 56
	i32 1808609942, ; 94: Xamarin.AndroidX.Loader => 0x6bcd3296 => 66
	i32 1813058853, ; 95: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 96
	i32 1813201214, ; 96: Xamarin.Google.Android.Material => 0x6c13413e => 87
	i32 1867746548, ; 97: Xamarin.Essentials.dll => 0x6f538cf4 => 86
	i32 1885316902, ; 98: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 36
	i32 1898885626, ; 99: mapwithAPI => 0x712eb1fa => 0
	i32 1908813208, ; 100: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 91
	i32 1919157823, ; 101: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 68
	i32 2011961780, ; 102: System.Buffers.dll => 0x77ec19b4 => 12
	i32 2019465201, ; 103: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 64
	i32 2055257422, ; 104: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 61
	i32 2079903147, ; 105: System.Runtime.dll => 0x7bf8cdab => 20
	i32 2090596640, ; 106: System.Numerics.Vectors => 0x7c9bf920 => 18
	i32 2097448633, ; 107: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 58
	i32 2103459038, ; 108: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 11
	i32 2129483829, ; 109: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 90
	i32 2196165013, ; 110: Xamarin.Android.Support.VersionedParcelable => 0x82e6d195 => 28
	i32 2201107256, ; 111: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 99
	i32 2201231467, ; 112: System.Net.Http => 0x8334206b => 16
	i32 2217644978, ; 113: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 79
	i32 2244775296, ; 114: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 67
	i32 2256548716, ; 115: Xamarin.AndroidX.MultiDex => 0x8680336c => 68
	i32 2279755925, ; 116: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 71
	i32 2315684594, ; 117: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 30
	i32 2403452196, ; 118: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 54
	i32 2465273461, ; 119: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 8
	i32 2465532216, ; 120: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 43
	i32 2471841756, ; 121: netstandard.dll => 0x93554fdc => 100
	i32 2475788418, ; 122: Java.Interop.dll => 0x93918882 => 2
	i32 2501346920, ; 123: System.Data.DataSetExtensions => 0x95178668 => 103
	i32 2505896520, ; 124: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 63
	i32 2581819634, ; 125: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 80
	i32 2605712449, ; 126: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 99
	i32 2620871830, ; 127: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 48
	i32 2624644809, ; 128: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 53
	i32 2671474046, ; 129: Xamarin.KotlinX.Coroutines.Core => 0x9f3b757e => 98
	i32 2701096212, ; 130: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 77
	i32 2732626843, ; 131: Xamarin.AndroidX.Activity => 0xa2e0939b => 29
	i32 2737747696, ; 132: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 33
	i32 2751899777, ; 133: Xamarin.Android.Support.Collections => 0xa406a881 => 26
	i32 2770495804, ; 134: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 95
	i32 2778768386, ; 135: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 82
	i32 2779977773, ; 136: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 72
	i32 2810250172, ; 137: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 45
	i32 2819470561, ; 138: System.Xml.dll => 0xa80db4e1 => 21
	i32 2821294376, ; 139: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 72
	i32 2847418871, ; 140: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 90
	i32 2853208004, ; 141: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 82
	i32 2855708567, ; 142: Xamarin.AndroidX.Transition => 0xaa36a797 => 78
	i32 2903344695, ; 143: System.ComponentModel.Composition => 0xad0d8637 => 107
	i32 2905242038, ; 144: mscorlib.dll => 0xad2a79b6 => 5
	i32 2916838712, ; 145: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 83
	i32 2919462931, ; 146: System.Numerics.Vectors.dll => 0xae037813 => 18
	i32 2921128767, ; 147: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 31
	i32 2978675010, ; 148: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 52
	i32 2996846495, ; 149: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 62
	i32 3016983068, ; 150: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 75
	i32 3017076677, ; 151: Xamarin.GooglePlayServices.Maps => 0xb3d4efc5 => 93
	i32 3024354802, ; 152: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 59
	i32 3058099980, ; 153: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 94
	i32 3068715062, ; 154: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 23
	i32 3111772706, ; 155: System.Runtime.Serialization => 0xb979e222 => 108
	i32 3204380047, ; 156: System.Data.dll => 0xbefef58f => 101
	i32 3211777861, ; 157: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 51
	i32 3230466174, ; 158: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 91
	i32 3247949154, ; 159: Mono.Security => 0xc197c562 => 112
	i32 3250442814, ; 160: GoogleMapsUtilityBinding.dll => 0xc1bdd23e => 1
	i32 3258312781, ; 161: Xamarin.AndroidX.CardView => 0xc235e84d => 39
	i32 3267021929, ; 162: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 37
	i32 3286872994, ; 163: SQLite-net.dll => 0xc3e9b3a2 => 7
	i32 3296380511, ; 164: Xamarin.Android.Support.Collections.dll => 0xc47ac65f => 26
	i32 3317135071, ; 165: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 49
	i32 3317144872, ; 166: System.Data => 0xc5b79d28 => 101
	i32 3340431453, ; 167: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 36
	i32 3345895724, ; 168: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 70
	i32 3353484488, ; 169: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 58
	i32 3360279109, ; 170: SQLitePCLRaw.core => 0xc849ca45 => 9
	i32 3362522851, ; 171: Xamarin.AndroidX.Core => 0xc86c06e3 => 47
	i32 3366347497, ; 172: Java.Interop => 0xc8a662e9 => 2
	i32 3374999561, ; 173: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 71
	i32 3395150330, ; 174: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 19
	i32 3404865022, ; 175: System.ServiceModel.Internals => 0xcaf21dfe => 109
	i32 3405233483, ; 176: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 50
	i32 3429136800, ; 177: System.Xml => 0xcc6479a0 => 21
	i32 3430777524, ; 178: netstandard => 0xcc7d82b4 => 100
	i32 3439690031, ; 179: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 25
	i32 3441283291, ; 180: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 53
	i32 3476120550, ; 181: Mono.Android => 0xcf3163e6 => 4
	i32 3486566296, ; 182: System.Transactions => 0xcfd0c798 => 102
	i32 3493954962, ; 183: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 42
	i32 3494395880, ; 184: Xamarin.GooglePlayServices.Location.dll => 0xd0483fe8 => 92
	i32 3501239056, ; 185: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 37
	i32 3509114376, ; 186: System.Xml.Linq => 0xd128d608 => 111
	i32 3567349600, ; 187: System.ComponentModel.Composition.dll => 0xd4a16f60 => 107
	i32 3627220390, ; 188: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 69
	i32 3633644679, ; 189: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 31
	i32 3641597786, ; 190: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 61
	i32 3672681054, ; 191: Mono.Android.dll => 0xdae8aa5e => 4
	i32 3676310014, ; 192: System.Web.Services.dll => 0xdb2009fe => 110
	i32 3681174138, ; 193: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 23
	i32 3682565725, ; 194: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 38
	i32 3684561358, ; 195: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 42
	i32 3689375977, ; 196: System.Drawing.Common => 0xdbe768e9 => 104
	i32 3706696989, ; 197: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 46
	i32 3718780102, ; 198: Xamarin.AndroidX.Annotation => 0xdda814c6 => 30
	i32 3754567612, ; 199: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 11
	i32 3786282454, ; 200: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 40
	i32 3829621856, ; 201: System.Numerics.dll => 0xe4436460 => 17
	i32 3862817207, ; 202: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 24
	i32 3874897629, ; 203: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 24
	i32 3876362041, ; 204: SQLite-net => 0xe70c9739 => 7
	i32 3885922214, ; 205: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 78
	i32 3888767677, ; 206: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 70
	i32 3896760992, ; 207: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 47
	i32 3910130544, ; 208: Xamarin.AndroidX.Collection.Jvm => 0xe90fdb70 => 41
	i32 3920810846, ; 209: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 106
	i32 3921031405, ; 210: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 81
	i32 3945713374, ; 211: System.Data.DataSetExtensions.dll => 0xeb2ecede => 103
	i32 3955647286, ; 212: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 34
	i32 3959773229, ; 213: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 62
	i32 3967165417, ; 214: Xamarin.GooglePlayServices.Location => 0xec7623e9 => 92
	i32 3970018735, ; 215: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 94
	i32 4015948917, ; 216: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 32
	i32 4025784931, ; 217: System.Memory => 0xeff49a63 => 15
	i32 4101593132, ; 218: Xamarin.AndroidX.Emoji2 => 0xf479582c => 54
	i32 4105002889, ; 219: Mono.Security.dll => 0xf4ad5f89 => 112
	i32 4151237749, ; 220: System.Core => 0xf76edc75 => 13
	i32 4182413190, ; 221: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 65
	i32 4256097574, ; 222: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 46
	i32 4260525087, ; 223: System.Buffers => 0xfdf2741f => 12
	i32 4278134329, ; 224: Xamarin.GooglePlayServices.Maps.dll => 0xfeff2639 => 93
	i32 4292120959 ; 225: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 65
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [226 x i32] [
	i32 63, i32 89, i32 6, i32 28, i32 74, i32 74, i32 22, i32 40, ; 0..7
	i32 27, i32 76, i32 38, i32 59, i32 110, i32 44, i32 57, i32 29, ; 8..15
	i32 17, i32 60, i32 10, i32 15, i32 43, i32 86, i32 56, i32 5, ; 16..23
	i32 14, i32 57, i32 67, i32 27, i32 102, i32 85, i32 106, i32 49, ; 24..31
	i32 55, i32 81, i32 35, i32 111, i32 97, i32 25, i32 95, i32 8, ; 32..39
	i32 105, i32 50, i32 104, i32 69, i32 89, i32 6, i32 60, i32 73, ; 40..47
	i32 88, i32 34, i32 1, i32 64, i32 96, i32 14, i32 84, i32 79, ; 48..55
	i32 35, i32 85, i32 41, i32 75, i32 98, i32 80, i32 97, i32 32, ; 56..63
	i32 9, i32 52, i32 0, i32 84, i32 109, i32 73, i32 45, i32 19, ; 64..71
	i32 105, i32 33, i32 3, i32 51, i32 22, i32 108, i32 88, i32 66, ; 72..79
	i32 83, i32 55, i32 48, i32 16, i32 20, i32 77, i32 87, i32 44, ; 80..87
	i32 3, i32 10, i32 39, i32 76, i32 13, i32 56, i32 66, i32 96, ; 88..95
	i32 87, i32 86, i32 36, i32 0, i32 91, i32 68, i32 12, i32 64, ; 96..103
	i32 61, i32 20, i32 18, i32 58, i32 11, i32 90, i32 28, i32 99, ; 104..111
	i32 16, i32 79, i32 67, i32 68, i32 71, i32 30, i32 54, i32 8, ; 112..119
	i32 43, i32 100, i32 2, i32 103, i32 63, i32 80, i32 99, i32 48, ; 120..127
	i32 53, i32 98, i32 77, i32 29, i32 33, i32 26, i32 95, i32 82, ; 128..135
	i32 72, i32 45, i32 21, i32 72, i32 90, i32 82, i32 78, i32 107, ; 136..143
	i32 5, i32 83, i32 18, i32 31, i32 52, i32 62, i32 75, i32 93, ; 144..151
	i32 59, i32 94, i32 23, i32 108, i32 101, i32 51, i32 91, i32 112, ; 152..159
	i32 1, i32 39, i32 37, i32 7, i32 26, i32 49, i32 101, i32 36, ; 160..167
	i32 70, i32 58, i32 9, i32 47, i32 2, i32 71, i32 19, i32 109, ; 168..175
	i32 50, i32 21, i32 100, i32 25, i32 53, i32 4, i32 102, i32 42, ; 176..183
	i32 92, i32 37, i32 111, i32 107, i32 69, i32 31, i32 61, i32 4, ; 184..191
	i32 110, i32 23, i32 38, i32 42, i32 104, i32 46, i32 30, i32 11, ; 192..199
	i32 40, i32 17, i32 24, i32 24, i32 7, i32 78, i32 70, i32 47, ; 200..207
	i32 41, i32 106, i32 81, i32 103, i32 34, i32 62, i32 92, i32 94, ; 208..215
	i32 32, i32 15, i32 54, i32 112, i32 13, i32 65, i32 46, i32 12, ; 216..223
	i32 93, i32 65 ; 224..225
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
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


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
