; ModuleID = 'obj\Debug\130\android\marshal_methods.x86_64.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [226 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 53
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 4
	i64 210515253464952879, ; 2: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 40
	i64 232391251801502327, ; 3: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 73
	i64 233177144301842968, ; 4: Xamarin.AndroidX.Collection.Jvm.dll => 0x33c696097d9f218 => 41
	i64 295915112840604065, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 74
	i64 316157742385208084, ; 6: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 46
	i64 435170709725415398, ; 7: Xamarin.GooglePlayServices.Location => 0x60a097471d687e6 => 92
	i64 634308326490598313, ; 8: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 63
	i64 687654259221141486, ; 9: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 90
	i64 702024105029695270, ; 10: System.Drawing.Common => 0x9be17343c0e7726 => 104
	i64 720058930071658100, ; 11: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 58
	i64 816102801403336439, ; 12: Xamarin.Android.Support.Collections => 0xb53612c89d8d6f7 => 26
	i64 870603111519317375, ; 13: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 10
	i64 872800313462103108, ; 14: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 52
	i64 940822596282819491, ; 15: System.Transactions => 0xd0e792aa81923a3 => 102
	i64 1000557547492888992, ; 16: Mono.Security.dll => 0xde2b1c9cba651a0 => 112
	i64 1120440138749646132, ; 17: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 87
	i64 1301485588176585670, ; 18: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 9
	i64 1315114680217950157, ; 19: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 35
	i64 1425944114962822056, ; 20: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 108
	i64 1490981186906623721, ; 21: Xamarin.Android.Support.VersionedParcelable => 0x14b1077d6c5c0ee9 => 28
	i64 1518315023656898250, ; 22: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 11
	i64 1576750169145655260, ; 23: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 85
	i64 1624659445732251991, ; 24: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 33
	i64 1628611045998245443, ; 25: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 65
	i64 1636321030536304333, ; 26: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 59
	i64 1672383392659050004, ; 27: Microsoft.Data.Sqlite.dll => 0x17357fd5bfb48e14 => 3
	i64 1731380447121279447, ; 28: Newtonsoft.Json => 0x18071957e9b889d7 => 6
	i64 1743969030606105336, ; 29: System.Memory.dll => 0x1833d297e88f2af8 => 15
	i64 1795316252682057001, ; 30: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 34
	i64 1836611346387731153, ; 31: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 73
	i64 1875917498431009007, ; 32: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 30
	i64 1981742497975770890, ; 33: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 64
	i64 2133195048986300728, ; 34: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 6
	i64 2136356949452311481, ; 35: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 68
	i64 2165725771938924357, ; 36: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 38
	i64 2203565783020068373, ; 37: Xamarin.KotlinX.Coroutines.Core => 0x1e94a367981dde15 => 98
	i64 2262844636196693701, ; 38: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 52
	i64 2284400282711631002, ; 39: System.Web.Services => 0x1fb3d1f42fd4249a => 110
	i64 2304837677853103545, ; 40: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 72
	i64 2329709569556905518, ; 41: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 61
	i64 2337758774805907496, ; 42: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 19
	i64 2470498323731680442, ; 43: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 45
	i64 2479423007379663237, ; 44: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 79
	i64 2497223385847772520, ; 45: System.Runtime => 0x22a7eb7046413568 => 20
	i64 2547086958574651984, ; 46: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 29
	i64 2592350477072141967, ; 47: System.Xml.dll => 0x23f9e10627330e8f => 21
	i64 2624866290265602282, ; 48: mscorlib.dll => 0x246d65fbde2db8ea => 5
	i64 2783046991838674048, ; 49: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 19
	i64 2787234703088983483, ; 50: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 75
	i64 3017704767998173186, ; 51: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 87
	i64 3289520064315143713, ; 52: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 60
	i64 3303437397778967116, ; 53: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 31
	i64 3311221304742556517, ; 54: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 18
	i64 3344514922410554693, ; 55: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 99
	i64 3411255996856937470, ; 56: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 91
	i64 3493805808809882663, ; 57: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 77
	i64 3522470458906976663, ; 58: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 76
	i64 3531994851595924923, ; 59: System.Numerics => 0x31042a9aade235bb => 17
	i64 3571415421602489686, ; 60: System.Runtime.dll => 0x319037675df7e556 => 20
	i64 3716579019761409177, ; 61: netstandard.dll => 0x3393f0ed5c8c5c99 => 100
	i64 3727469159507183293, ; 62: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 71
	i64 3772598417116884899, ; 63: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 53
	i64 3966267475168208030, ; 64: System.Memory => 0x370b03412596249e => 15
	i64 4201423742386704971, ; 65: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 46
	i64 4247996603072512073, ; 66: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 94
	i64 4337444564132831293, ; 67: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 8
	i64 4525561845656915374, ; 68: System.ServiceModel.Internals => 0x3ece06856b710dae => 109
	i64 4636684751163556186, ; 69: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 81
	i64 4759461199762736555, ; 70: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 62
	i64 4782108999019072045, ; 71: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 37
	i64 4794310189461587505, ; 72: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 29
	i64 4795410492532947900, ; 73: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 76
	i64 5129462924058778861, ; 74: Microsoft.Data.Sqlite => 0x472f835a350f5ced => 3
	i64 5203618020066742981, ; 75: Xamarin.Essentials => 0x4836f704f0e652c5 => 86
	i64 5205316157927637098, ; 76: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 67
	i64 5376510917114486089, ; 77: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 79
	i64 5408338804355907810, ; 78: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 78
	i64 5451019430259338467, ; 79: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 44
	i64 5507995362134886206, ; 80: System.Core.dll => 0x4c705499688c873e => 13
	i64 5574231584441077149, ; 81: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 32
	i64 5692067934154308417, ; 82: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 83
	i64 5757522595884336624, ; 83: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 42
	i64 5767696078500135884, ; 84: Xamarin.Android.Support.Annotations.dll => 0x500af9065b6a03cc => 25
	i64 6183170893902868313, ; 85: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 8
	i64 6319713645133255417, ; 86: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 63
	i64 6390478913719370837, ; 87: mapwithAPI => 0x58af8ab6bcde0455 => 0
	i64 6401687960814735282, ; 88: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 61
	i64 6504860066809920875, ; 89: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 38
	i64 6548213210057960872, ; 90: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 49
	i64 6557084851308642443, ; 91: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 84
	i64 6589202984700901502, ; 92: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 88
	i64 6591024623626361694, ; 93: System.Web.Services.dll => 0x5b7805f9751a1b5e => 110
	i64 6659513131007730089, ; 94: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 58
	i64 6876862101832370452, ; 95: System.Xml.Linq => 0x5f6f85a57d108914 => 111
	i64 6894844156784520562, ; 96: System.Numerics.Vectors => 0x5faf683aead1ad72 => 18
	i64 7103753931438454322, ; 97: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 57
	i64 7141281584637745974, ; 98: Xamarin.GooglePlayServices.Maps.dll => 0x631aedc3dd5f1b36 => 93
	i64 7488575175965059935, ; 99: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 111
	i64 7637365915383206639, ; 100: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 86
	i64 7654504624184590948, ; 101: System.Net.Http => 0x6a3a4366801b8264 => 16
	i64 7735352534559001595, ; 102: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 96
	i64 7820441508502274321, ; 103: System.Data => 0x6c87ca1e14ff8111 => 101
	i64 7836164640616011524, ; 104: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 33
	i64 8044118961405839122, ; 105: System.ComponentModel.Composition => 0x6fa2739369944712 => 107
	i64 8083354569033831015, ; 106: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 60
	i64 8101777744205214367, ; 107: Xamarin.Android.Support.Annotations => 0x706f4beeec84729f => 25
	i64 8103644804370223335, ; 108: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 103
	i64 8167236081217502503, ; 109: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 2
	i64 8187640529827139739, ; 110: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 97
	i64 8261286295145402372, ; 111: GoogleMapsUtilityBinding.dll => 0x72a5fc1d81f1d004 => 1
	i64 8385935383968044654, ; 112: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0x7460d3cd16cb566e => 24
	i64 8398329775253868912, ; 113: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 43
	i64 8426919725312979251, ; 114: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 62
	i64 8598790081731763592, ; 115: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 55
	i64 8601935802264776013, ; 116: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 78
	i64 8626175481042262068, ; 117: Java.Interop => 0x77b654e585b55834 => 2
	i64 8684531736582871431, ; 118: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 106
	i64 8951477988056063522, ; 119: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 70
	i64 9031035476476434958, ; 120: Xamarin.KotlinX.Coroutines.Core.dll => 0x7d54aeead9541a0e => 98
	i64 9312692141327339315, ; 121: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 83
	i64 9324707631942237306, ; 122: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 34
	i64 9371199592651241965, ; 123: mapwithAPI.dll => 0x820d3060f74339ed => 0
	i64 9662334977499516867, ; 124: System.Numerics.dll => 0x8617827802b0cfc3 => 17
	i64 9678050649315576968, ; 125: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 45
	i64 9780093022148426479, ; 126: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 85
	i64 9808709177481450983, ; 127: Mono.Android.dll => 0x881f890734e555e7 => 4
	i64 9825649861376906464, ; 128: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 42
	i64 9834056768316610435, ; 129: System.Transactions.dll => 0x8879968718899783 => 102
	i64 9866412715007501892, ; 130: Xamarin.Android.Arch.Lifecycle.Common.dll => 0x88ec8a16fd6b6644 => 23
	i64 9875200773399460291, ; 131: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 90
	i64 9907349773706910547, ; 132: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 55
	i64 9998632235833408227, ; 133: Mono.Security => 0x8ac2470b209ebae3 => 112
	i64 10038780035334861115, ; 134: System.Net.Http.dll => 0x8b50e941206af13b => 16
	i64 10229024438826829339, ; 135: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 49
	i64 10321854143672141184, ; 136: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 95
	i64 10363495123250631811, ; 137: Xamarin.Android.Support.Collections.dll => 0x8fd287e80cd8d483 => 26
	i64 10376576884623852283, ; 138: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 77
	i64 10406448008575299332, ; 139: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 99
	i64 10430153318873392755, ; 140: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 47
	i64 10847732767863316357, ; 141: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 35
	i64 10850923258212604222, ; 142: Xamarin.Android.Arch.Lifecycle.Runtime => 0x9696393672c9593e => 24
	i64 11019817191295005410, ; 143: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 32
	i64 11023048688141570732, ; 144: System.Core => 0x98f9bc61168392ac => 13
	i64 11037814507248023548, ; 145: System.Xml => 0x992e31d0412bf7fc => 21
	i64 11071824625609515081, ; 146: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 88
	i64 11162124722117608902, ; 147: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 82
	i64 11299661109949763898, ; 148: Xamarin.AndroidX.Collection.Jvm => 0x9cd075e94cda113a => 41
	i64 11340910727871153756, ; 149: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 48
	i64 11376461258732682436, ; 150: Xamarin.Android.Support.Compat => 0x9de14f3d5fc13cc4 => 27
	i64 11392833485892708388, ; 151: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 69
	i64 11529969570048099689, ; 152: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 82
	i64 11580057168383206117, ; 153: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 30
	i64 11591352189662810718, ; 154: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 75
	i64 11597940890313164233, ; 155: netstandard => 0xa0f429ca8d1805c9 => 100
	i64 11672361001936329215, ; 156: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 57
	i64 11739066727115742305, ; 157: SQLite-net.dll => 0xa2e98afdf8575c61 => 7
	i64 11806260347154423189, ; 158: SQLite-net => 0xa3d8433bc5eb5d95 => 7
	i64 12102847907131387746, ; 159: System.Buffers => 0xa7f5f40c43256f62 => 12
	i64 12137774235383566651, ; 160: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 80
	i64 12279246230491828964, ; 161: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 11
	i64 12414299427252656003, ; 162: Xamarin.Android.Support.Compat.dll => 0xac48738e28bad783 => 27
	i64 12451044538927396471, ; 163: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 56
	i64 12466513435562512481, ; 164: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 66
	i64 12487638416075308985, ; 165: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 51
	i64 12538491095302438457, ; 166: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 39
	i64 12550732019250633519, ; 167: System.IO.Compression => 0xae2d28465e8e1b2f => 105
	i64 12700543734426720211, ; 168: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 40
	i64 12753841065332862057, ; 169: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 84
	i64 12963446364377008305, ; 170: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 104
	i64 12982280885948128408, ; 171: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 50
	i64 13129914918964716986, ; 172: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 54
	i64 13370592475155966277, ; 173: System.Runtime.Serialization => 0xb98de304062ea945 => 108
	i64 13401370062847626945, ; 174: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 80
	i64 13404347523447273790, ; 175: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 43
	i64 13454009404024712428, ; 176: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 89
	i64 13465488254036897740, ; 177: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 96
	i64 13491513212026656886, ; 178: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 36
	i64 13572454107664307259, ; 179: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 71
	i64 13621154251410165619, ; 180: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 50
	i64 13647894001087880694, ; 181: System.Data.dll => 0xbd670f48cb071df6 => 101
	i64 13959074834287824816, ; 182: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 56
	i64 14124974489674258913, ; 183: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 39
	i64 14172845254133543601, ; 184: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 68
	i64 14261073672896646636, ; 185: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 69
	i64 14495724990987328804, ; 186: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 72
	i64 14644440854989303794, ; 187: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 67
	i64 14678510994762383812, ; 188: Xamarin.GooglePlayServices.Location.dll => 0xcbb48bfaca7a41c4 => 92
	i64 14792063746108907174, ; 189: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 89
	i64 14852515768018889994, ; 190: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 48
	i64 14947108510789879909, ; 191: GoogleMapsUtilityBinding => 0xcf6ecbff54d94865 => 1
	i64 14987728460634540364, ; 192: System.IO.Compression.dll => 0xcfff1ba06622494c => 105
	i64 14988210264188246988, ; 193: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 51
	i64 15150743910298169673, ; 194: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 70
	i64 15188640517174936311, ; 195: Xamarin.Android.Arch.Core.Common => 0xd2c8e413d75142f7 => 22
	i64 15246441518555807158, ; 196: Xamarin.Android.Arch.Core.Common.dll => 0xd3963dc832493db6 => 22
	i64 15279429628684179188, ; 197: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 97
	i64 15370334346939861994, ; 198: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 47
	i64 15568534730848034786, ; 199: Xamarin.Android.Support.VersionedParcelable.dll => 0xd80e8bda21875fe2 => 28
	i64 15582737692548360875, ; 200: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 65
	i64 15609085926864131306, ; 201: System.dll => 0xd89e9cf3334914ea => 14
	i64 15777549416145007739, ; 202: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 74
	i64 15930129725311349754, ; 203: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 94
	i64 16154507427712707110, ; 204: System => 0xe03056ea4e39aa26 => 14
	i64 16565028646146589191, ; 205: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 107
	i64 16621146507174665210, ; 206: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 44
	i64 16755018182064898362, ; 207: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 9
	i64 16822611501064131242, ; 208: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 103
	i64 16833383113903931215, ; 209: mscorlib => 0xe99c30c1484d7f4f => 5
	i64 17024911836938395553, ; 210: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 31
	i64 17037200463775726619, ; 211: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 59
	i64 17544493274320527064, ; 212: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 37
	i64 17704177640604968747, ; 213: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 66
	i64 17710060891934109755, ; 214: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 64
	i64 17760961058993581169, ; 215: Xamarin.Android.Arch.Lifecycle.Common => 0xf67b9bfb46dbac71 => 23
	i64 17838668724098252521, ; 216: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 12
	i64 17891337867145587222, ; 217: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 95
	i64 17928294245072900555, ; 218: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 106
	i64 17969331831154222830, ; 219: Xamarin.GooglePlayServices.Maps => 0xf95fe418471126ee => 93
	i64 17986907704309214542, ; 220: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 91
	i64 18116111925905154859, ; 221: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 36
	i64 18129453464017766560, ; 222: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 109
	i64 18260797123374478311, ; 223: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 54
	i64 18370042311372477656, ; 224: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 10
	i64 18380184030268848184 ; 225: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 81
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [226 x i32] [
	i32 53, i32 4, i32 40, i32 73, i32 41, i32 74, i32 46, i32 92, ; 0..7
	i32 63, i32 90, i32 104, i32 58, i32 26, i32 10, i32 52, i32 102, ; 8..15
	i32 112, i32 87, i32 9, i32 35, i32 108, i32 28, i32 11, i32 85, ; 16..23
	i32 33, i32 65, i32 59, i32 3, i32 6, i32 15, i32 34, i32 73, ; 24..31
	i32 30, i32 64, i32 6, i32 68, i32 38, i32 98, i32 52, i32 110, ; 32..39
	i32 72, i32 61, i32 19, i32 45, i32 79, i32 20, i32 29, i32 21, ; 40..47
	i32 5, i32 19, i32 75, i32 87, i32 60, i32 31, i32 18, i32 99, ; 48..55
	i32 91, i32 77, i32 76, i32 17, i32 20, i32 100, i32 71, i32 53, ; 56..63
	i32 15, i32 46, i32 94, i32 8, i32 109, i32 81, i32 62, i32 37, ; 64..71
	i32 29, i32 76, i32 3, i32 86, i32 67, i32 79, i32 78, i32 44, ; 72..79
	i32 13, i32 32, i32 83, i32 42, i32 25, i32 8, i32 63, i32 0, ; 80..87
	i32 61, i32 38, i32 49, i32 84, i32 88, i32 110, i32 58, i32 111, ; 88..95
	i32 18, i32 57, i32 93, i32 111, i32 86, i32 16, i32 96, i32 101, ; 96..103
	i32 33, i32 107, i32 60, i32 25, i32 103, i32 2, i32 97, i32 1, ; 104..111
	i32 24, i32 43, i32 62, i32 55, i32 78, i32 2, i32 106, i32 70, ; 112..119
	i32 98, i32 83, i32 34, i32 0, i32 17, i32 45, i32 85, i32 4, ; 120..127
	i32 42, i32 102, i32 23, i32 90, i32 55, i32 112, i32 16, i32 49, ; 128..135
	i32 95, i32 26, i32 77, i32 99, i32 47, i32 35, i32 24, i32 32, ; 136..143
	i32 13, i32 21, i32 88, i32 82, i32 41, i32 48, i32 27, i32 69, ; 144..151
	i32 82, i32 30, i32 75, i32 100, i32 57, i32 7, i32 7, i32 12, ; 152..159
	i32 80, i32 11, i32 27, i32 56, i32 66, i32 51, i32 39, i32 105, ; 160..167
	i32 40, i32 84, i32 104, i32 50, i32 54, i32 108, i32 80, i32 43, ; 168..175
	i32 89, i32 96, i32 36, i32 71, i32 50, i32 101, i32 56, i32 39, ; 176..183
	i32 68, i32 69, i32 72, i32 67, i32 92, i32 89, i32 48, i32 1, ; 184..191
	i32 105, i32 51, i32 70, i32 22, i32 22, i32 97, i32 47, i32 28, ; 192..199
	i32 65, i32 14, i32 74, i32 94, i32 14, i32 107, i32 44, i32 9, ; 200..207
	i32 103, i32 5, i32 31, i32 59, i32 37, i32 66, i32 64, i32 23, ; 208..215
	i32 12, i32 95, i32 106, i32 93, i32 91, i32 36, i32 109, i32 54, ; 216..223
	i32 10, i32 81 ; 224..225
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
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
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
