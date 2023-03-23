; ModuleID = 'obj\Release\130\android\compressed_assemblies.x86.ll'
source_filename = "obj\Release\130\android\compressed_assemblies.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


%struct.CompressedAssemblyDescriptor = type {
	i32,; uint32_t uncompressed_file_size
	i8,; bool loaded
	i8*; uint8_t* data
}

%struct.CompressedAssemblies = type {
	i32,; uint32_t count
	%struct.CompressedAssemblyDescriptor*; CompressedAssemblyDescriptor* descriptors
}
@__CompressedAssemblyDescriptor_data_0 = internal global [442880 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_1 = internal global [73216 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_2 = internal global [6144 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_3 = internal global [7168 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_4 = internal global [3200000 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_5 = internal global [30208 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_6 = internal global [33280 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_7 = internal global [91136 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_8 = internal global [185856 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_9 = internal global [90112 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_10 = internal global [15872 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_11 = internal global [166912 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_12 = internal global [358912 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_13 = internal global [5120 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_14 = internal global [11776 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_15 = internal global [13312 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_16 = internal global [12288 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_17 = internal global [17920 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_18 = internal global [8192 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_19 = internal global [26112 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_20 = internal global [29696 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_21 = internal global [28672 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_22 = internal global [51712 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_23 = internal global [2307072 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_24 = internal global [122880 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_25 = internal global [684544 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_26 = internal global [20480 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_27 = internal global [125440 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_28 = internal global [14752 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_29 = internal global [553984 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_30 = internal global [748544 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_31 = internal global [36352 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_32 = internal global [220160 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_33 = internal global [39936 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_34 = internal global [1177088 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_35 = internal global [7680 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_36 = internal global [419328 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_37 = internal global [67584 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_38 = internal global [55808 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_39 = internal global [5120 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_40 = internal global [47104 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_41 = internal global [283136 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_42 = internal global [15264 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_43 = internal global [65024 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_44 = internal global [1456640 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_45 = internal global [963072 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_46 = internal global [53248 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_47 = internal global [16896 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_48 = internal global [463360 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_49 = internal global [17920 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_50 = internal global [79360 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_51 = internal global [594432 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_52 = internal global [9216 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_53 = internal global [44032 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_54 = internal global [175104 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_55 = internal global [15872 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_56 = internal global [15360 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_57 = internal global [16384 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_58 = internal global [17408 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_59 = internal global [36864 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_60 = internal global [424448 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_61 = internal global [13312 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_62 = internal global [40448 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_63 = internal global [57856 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_64 = internal global [32768 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_65 = internal global [1207296 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_66 = internal global [934912 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_67 = internal global [263040 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_68 = internal global [103424 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_69 = internal global [258048 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_70 = internal global [18072 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_71 = internal global [2226688 x i8] zeroinitializer, align 1


; Compressed assembly data storage
@compressed_assembly_descriptors = internal global [72 x %struct.CompressedAssemblyDescriptor] [
	; 0
	%struct.CompressedAssemblyDescriptor {
		i32 442880, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([442880 x i8], [442880 x i8]* @__CompressedAssemblyDescriptor_data_0, i32 0, i32 0); data
	}, 
	; 1
	%struct.CompressedAssemblyDescriptor {
		i32 73216, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([73216 x i8], [73216 x i8]* @__CompressedAssemblyDescriptor_data_1, i32 0, i32 0); data
	}, 
	; 2
	%struct.CompressedAssemblyDescriptor {
		i32 6144, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([6144 x i8], [6144 x i8]* @__CompressedAssemblyDescriptor_data_2, i32 0, i32 0); data
	}, 
	; 3
	%struct.CompressedAssemblyDescriptor {
		i32 7168, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([7168 x i8], [7168 x i8]* @__CompressedAssemblyDescriptor_data_3, i32 0, i32 0); data
	}, 
	; 4
	%struct.CompressedAssemblyDescriptor {
		i32 3200000, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([3200000 x i8], [3200000 x i8]* @__CompressedAssemblyDescriptor_data_4, i32 0, i32 0); data
	}, 
	; 5
	%struct.CompressedAssemblyDescriptor {
		i32 30208, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([30208 x i8], [30208 x i8]* @__CompressedAssemblyDescriptor_data_5, i32 0, i32 0); data
	}, 
	; 6
	%struct.CompressedAssemblyDescriptor {
		i32 33280, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([33280 x i8], [33280 x i8]* @__CompressedAssemblyDescriptor_data_6, i32 0, i32 0); data
	}, 
	; 7
	%struct.CompressedAssemblyDescriptor {
		i32 91136, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([91136 x i8], [91136 x i8]* @__CompressedAssemblyDescriptor_data_7, i32 0, i32 0); data
	}, 
	; 8
	%struct.CompressedAssemblyDescriptor {
		i32 185856, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([185856 x i8], [185856 x i8]* @__CompressedAssemblyDescriptor_data_8, i32 0, i32 0); data
	}, 
	; 9
	%struct.CompressedAssemblyDescriptor {
		i32 90112, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([90112 x i8], [90112 x i8]* @__CompressedAssemblyDescriptor_data_9, i32 0, i32 0); data
	}, 
	; 10
	%struct.CompressedAssemblyDescriptor {
		i32 15872, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15872 x i8], [15872 x i8]* @__CompressedAssemblyDescriptor_data_10, i32 0, i32 0); data
	}, 
	; 11
	%struct.CompressedAssemblyDescriptor {
		i32 166912, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([166912 x i8], [166912 x i8]* @__CompressedAssemblyDescriptor_data_11, i32 0, i32 0); data
	}, 
	; 12
	%struct.CompressedAssemblyDescriptor {
		i32 358912, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([358912 x i8], [358912 x i8]* @__CompressedAssemblyDescriptor_data_12, i32 0, i32 0); data
	}, 
	; 13
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([5120 x i8], [5120 x i8]* @__CompressedAssemblyDescriptor_data_13, i32 0, i32 0); data
	}, 
	; 14
	%struct.CompressedAssemblyDescriptor {
		i32 11776, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([11776 x i8], [11776 x i8]* @__CompressedAssemblyDescriptor_data_14, i32 0, i32 0); data
	}, 
	; 15
	%struct.CompressedAssemblyDescriptor {
		i32 13312, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([13312 x i8], [13312 x i8]* @__CompressedAssemblyDescriptor_data_15, i32 0, i32 0); data
	}, 
	; 16
	%struct.CompressedAssemblyDescriptor {
		i32 12288, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([12288 x i8], [12288 x i8]* @__CompressedAssemblyDescriptor_data_16, i32 0, i32 0); data
	}, 
	; 17
	%struct.CompressedAssemblyDescriptor {
		i32 17920, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([17920 x i8], [17920 x i8]* @__CompressedAssemblyDescriptor_data_17, i32 0, i32 0); data
	}, 
	; 18
	%struct.CompressedAssemblyDescriptor {
		i32 8192, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @__CompressedAssemblyDescriptor_data_18, i32 0, i32 0); data
	}, 
	; 19
	%struct.CompressedAssemblyDescriptor {
		i32 26112, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([26112 x i8], [26112 x i8]* @__CompressedAssemblyDescriptor_data_19, i32 0, i32 0); data
	}, 
	; 20
	%struct.CompressedAssemblyDescriptor {
		i32 29696, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([29696 x i8], [29696 x i8]* @__CompressedAssemblyDescriptor_data_20, i32 0, i32 0); data
	}, 
	; 21
	%struct.CompressedAssemblyDescriptor {
		i32 28672, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([28672 x i8], [28672 x i8]* @__CompressedAssemblyDescriptor_data_21, i32 0, i32 0); data
	}, 
	; 22
	%struct.CompressedAssemblyDescriptor {
		i32 51712, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([51712 x i8], [51712 x i8]* @__CompressedAssemblyDescriptor_data_22, i32 0, i32 0); data
	}, 
	; 23
	%struct.CompressedAssemblyDescriptor {
		i32 2307072, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([2307072 x i8], [2307072 x i8]* @__CompressedAssemblyDescriptor_data_23, i32 0, i32 0); data
	}, 
	; 24
	%struct.CompressedAssemblyDescriptor {
		i32 122880, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([122880 x i8], [122880 x i8]* @__CompressedAssemblyDescriptor_data_24, i32 0, i32 0); data
	}, 
	; 25
	%struct.CompressedAssemblyDescriptor {
		i32 684544, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([684544 x i8], [684544 x i8]* @__CompressedAssemblyDescriptor_data_25, i32 0, i32 0); data
	}, 
	; 26
	%struct.CompressedAssemblyDescriptor {
		i32 20480, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([20480 x i8], [20480 x i8]* @__CompressedAssemblyDescriptor_data_26, i32 0, i32 0); data
	}, 
	; 27
	%struct.CompressedAssemblyDescriptor {
		i32 125440, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([125440 x i8], [125440 x i8]* @__CompressedAssemblyDescriptor_data_27, i32 0, i32 0); data
	}, 
	; 28
	%struct.CompressedAssemblyDescriptor {
		i32 14752, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([14752 x i8], [14752 x i8]* @__CompressedAssemblyDescriptor_data_28, i32 0, i32 0); data
	}, 
	; 29
	%struct.CompressedAssemblyDescriptor {
		i32 553984, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([553984 x i8], [553984 x i8]* @__CompressedAssemblyDescriptor_data_29, i32 0, i32 0); data
	}, 
	; 30
	%struct.CompressedAssemblyDescriptor {
		i32 748544, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([748544 x i8], [748544 x i8]* @__CompressedAssemblyDescriptor_data_30, i32 0, i32 0); data
	}, 
	; 31
	%struct.CompressedAssemblyDescriptor {
		i32 36352, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([36352 x i8], [36352 x i8]* @__CompressedAssemblyDescriptor_data_31, i32 0, i32 0); data
	}, 
	; 32
	%struct.CompressedAssemblyDescriptor {
		i32 220160, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([220160 x i8], [220160 x i8]* @__CompressedAssemblyDescriptor_data_32, i32 0, i32 0); data
	}, 
	; 33
	%struct.CompressedAssemblyDescriptor {
		i32 39936, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([39936 x i8], [39936 x i8]* @__CompressedAssemblyDescriptor_data_33, i32 0, i32 0); data
	}, 
	; 34
	%struct.CompressedAssemblyDescriptor {
		i32 1177088, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1177088 x i8], [1177088 x i8]* @__CompressedAssemblyDescriptor_data_34, i32 0, i32 0); data
	}, 
	; 35
	%struct.CompressedAssemblyDescriptor {
		i32 7680, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([7680 x i8], [7680 x i8]* @__CompressedAssemblyDescriptor_data_35, i32 0, i32 0); data
	}, 
	; 36
	%struct.CompressedAssemblyDescriptor {
		i32 419328, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([419328 x i8], [419328 x i8]* @__CompressedAssemblyDescriptor_data_36, i32 0, i32 0); data
	}, 
	; 37
	%struct.CompressedAssemblyDescriptor {
		i32 67584, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([67584 x i8], [67584 x i8]* @__CompressedAssemblyDescriptor_data_37, i32 0, i32 0); data
	}, 
	; 38
	%struct.CompressedAssemblyDescriptor {
		i32 55808, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([55808 x i8], [55808 x i8]* @__CompressedAssemblyDescriptor_data_38, i32 0, i32 0); data
	}, 
	; 39
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([5120 x i8], [5120 x i8]* @__CompressedAssemblyDescriptor_data_39, i32 0, i32 0); data
	}, 
	; 40
	%struct.CompressedAssemblyDescriptor {
		i32 47104, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([47104 x i8], [47104 x i8]* @__CompressedAssemblyDescriptor_data_40, i32 0, i32 0); data
	}, 
	; 41
	%struct.CompressedAssemblyDescriptor {
		i32 283136, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([283136 x i8], [283136 x i8]* @__CompressedAssemblyDescriptor_data_41, i32 0, i32 0); data
	}, 
	; 42
	%struct.CompressedAssemblyDescriptor {
		i32 15264, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15264 x i8], [15264 x i8]* @__CompressedAssemblyDescriptor_data_42, i32 0, i32 0); data
	}, 
	; 43
	%struct.CompressedAssemblyDescriptor {
		i32 65024, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([65024 x i8], [65024 x i8]* @__CompressedAssemblyDescriptor_data_43, i32 0, i32 0); data
	}, 
	; 44
	%struct.CompressedAssemblyDescriptor {
		i32 1456640, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1456640 x i8], [1456640 x i8]* @__CompressedAssemblyDescriptor_data_44, i32 0, i32 0); data
	}, 
	; 45
	%struct.CompressedAssemblyDescriptor {
		i32 963072, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([963072 x i8], [963072 x i8]* @__CompressedAssemblyDescriptor_data_45, i32 0, i32 0); data
	}, 
	; 46
	%struct.CompressedAssemblyDescriptor {
		i32 53248, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([53248 x i8], [53248 x i8]* @__CompressedAssemblyDescriptor_data_46, i32 0, i32 0); data
	}, 
	; 47
	%struct.CompressedAssemblyDescriptor {
		i32 16896, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([16896 x i8], [16896 x i8]* @__CompressedAssemblyDescriptor_data_47, i32 0, i32 0); data
	}, 
	; 48
	%struct.CompressedAssemblyDescriptor {
		i32 463360, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([463360 x i8], [463360 x i8]* @__CompressedAssemblyDescriptor_data_48, i32 0, i32 0); data
	}, 
	; 49
	%struct.CompressedAssemblyDescriptor {
		i32 17920, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([17920 x i8], [17920 x i8]* @__CompressedAssemblyDescriptor_data_49, i32 0, i32 0); data
	}, 
	; 50
	%struct.CompressedAssemblyDescriptor {
		i32 79360, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([79360 x i8], [79360 x i8]* @__CompressedAssemblyDescriptor_data_50, i32 0, i32 0); data
	}, 
	; 51
	%struct.CompressedAssemblyDescriptor {
		i32 594432, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([594432 x i8], [594432 x i8]* @__CompressedAssemblyDescriptor_data_51, i32 0, i32 0); data
	}, 
	; 52
	%struct.CompressedAssemblyDescriptor {
		i32 9216, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([9216 x i8], [9216 x i8]* @__CompressedAssemblyDescriptor_data_52, i32 0, i32 0); data
	}, 
	; 53
	%struct.CompressedAssemblyDescriptor {
		i32 44032, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([44032 x i8], [44032 x i8]* @__CompressedAssemblyDescriptor_data_53, i32 0, i32 0); data
	}, 
	; 54
	%struct.CompressedAssemblyDescriptor {
		i32 175104, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([175104 x i8], [175104 x i8]* @__CompressedAssemblyDescriptor_data_54, i32 0, i32 0); data
	}, 
	; 55
	%struct.CompressedAssemblyDescriptor {
		i32 15872, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15872 x i8], [15872 x i8]* @__CompressedAssemblyDescriptor_data_55, i32 0, i32 0); data
	}, 
	; 56
	%struct.CompressedAssemblyDescriptor {
		i32 15360, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15360 x i8], [15360 x i8]* @__CompressedAssemblyDescriptor_data_56, i32 0, i32 0); data
	}, 
	; 57
	%struct.CompressedAssemblyDescriptor {
		i32 16384, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @__CompressedAssemblyDescriptor_data_57, i32 0, i32 0); data
	}, 
	; 58
	%struct.CompressedAssemblyDescriptor {
		i32 17408, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([17408 x i8], [17408 x i8]* @__CompressedAssemblyDescriptor_data_58, i32 0, i32 0); data
	}, 
	; 59
	%struct.CompressedAssemblyDescriptor {
		i32 36864, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([36864 x i8], [36864 x i8]* @__CompressedAssemblyDescriptor_data_59, i32 0, i32 0); data
	}, 
	; 60
	%struct.CompressedAssemblyDescriptor {
		i32 424448, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([424448 x i8], [424448 x i8]* @__CompressedAssemblyDescriptor_data_60, i32 0, i32 0); data
	}, 
	; 61
	%struct.CompressedAssemblyDescriptor {
		i32 13312, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([13312 x i8], [13312 x i8]* @__CompressedAssemblyDescriptor_data_61, i32 0, i32 0); data
	}, 
	; 62
	%struct.CompressedAssemblyDescriptor {
		i32 40448, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([40448 x i8], [40448 x i8]* @__CompressedAssemblyDescriptor_data_62, i32 0, i32 0); data
	}, 
	; 63
	%struct.CompressedAssemblyDescriptor {
		i32 57856, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([57856 x i8], [57856 x i8]* @__CompressedAssemblyDescriptor_data_63, i32 0, i32 0); data
	}, 
	; 64
	%struct.CompressedAssemblyDescriptor {
		i32 32768, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([32768 x i8], [32768 x i8]* @__CompressedAssemblyDescriptor_data_64, i32 0, i32 0); data
	}, 
	; 65
	%struct.CompressedAssemblyDescriptor {
		i32 1207296, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1207296 x i8], [1207296 x i8]* @__CompressedAssemblyDescriptor_data_65, i32 0, i32 0); data
	}, 
	; 66
	%struct.CompressedAssemblyDescriptor {
		i32 934912, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([934912 x i8], [934912 x i8]* @__CompressedAssemblyDescriptor_data_66, i32 0, i32 0); data
	}, 
	; 67
	%struct.CompressedAssemblyDescriptor {
		i32 263040, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([263040 x i8], [263040 x i8]* @__CompressedAssemblyDescriptor_data_67, i32 0, i32 0); data
	}, 
	; 68
	%struct.CompressedAssemblyDescriptor {
		i32 103424, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([103424 x i8], [103424 x i8]* @__CompressedAssemblyDescriptor_data_68, i32 0, i32 0); data
	}, 
	; 69
	%struct.CompressedAssemblyDescriptor {
		i32 258048, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([258048 x i8], [258048 x i8]* @__CompressedAssemblyDescriptor_data_69, i32 0, i32 0); data
	}, 
	; 70
	%struct.CompressedAssemblyDescriptor {
		i32 18072, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([18072 x i8], [18072 x i8]* @__CompressedAssemblyDescriptor_data_70, i32 0, i32 0); data
	}, 
	; 71
	%struct.CompressedAssemblyDescriptor {
		i32 2226688, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([2226688 x i8], [2226688 x i8]* @__CompressedAssemblyDescriptor_data_71, i32 0, i32 0); data
	}
], align 4; end of 'compressed_assembly_descriptors' array


; compressed_assemblies
@compressed_assemblies = local_unnamed_addr global %struct.CompressedAssemblies {
	i32 72, ; count
	%struct.CompressedAssemblyDescriptor* getelementptr inbounds ([72 x %struct.CompressedAssemblyDescriptor], [72 x %struct.CompressedAssemblyDescriptor]* @compressed_assembly_descriptors, i32 0, i32 0); descriptors
}, align 4


!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-4 @ 13ba222766e8e41d419327749426023194660864"}
