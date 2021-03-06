����   2$ kotlin/io/FilesKt__UtilsKt  !kotlin/io/FilesKt__FileTreeWalkKt  createTempDir B(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File; Lkotlin/Deprecated; message �Avoid creating temporary directories in the default temp location with this function due to too wide permissions on the newly created directory. Use kotlin.io.path.createTempDirectory instead. #Lorg/jetbrains/annotations/NotNull; $Lorg/jetbrains/annotations/Nullable; prefix  kotlin/jvm/internal/Intrinsics  checkNotNullParameter '(Ljava/lang/Object;Ljava/lang/String;)V  
   java/io/File  createTempFile  
   delete ()Z  
   mkdir  
   dir   checkNotNullExpressionValue " 
  # java/io/IOException % java/lang/StringBuilder ' <init> ()V ) *
 ( + %Unable to create temporary directory  - append -(Ljava/lang/String;)Ljava/lang/StringBuilder; / 0
 ( 1 -(Ljava/lang/Object;)Ljava/lang/StringBuilder; / 3
 ( 4 (C)Ljava/lang/StringBuilder; / 6
 ( 7 toString ()Ljava/lang/String; 9 :
 ( ; (Ljava/lang/String;)V ) =
 & > java/lang/Throwable @ Ljava/io/File; Ljava/lang/String; suffix 	directory createTempDir$default U(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ILjava/lang/Object;)Ljava/io/File; tmp H java/lang/String J kotlin/io/FilesKt L  
 M N �Avoid creating temporary files in the default temp location with this function due to too wide permissions on the newly created file. Use kotlin.io.path.createTempFile instead or resort to java.io.File.createTempFile. .File.createTempFile(prefix, suffix, directory) Q createTempFile$default
 M  getExtension "(Ljava/io/File;)Ljava/lang/String; $this$extension W getName Y :
  Z name \   ^ kotlin/text/StringsKt ` substringAfterLast 9(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String; b c
 a d getInvariantSeparatorsPath $this$invariantSeparatorsPath g separatorChar C i j	  k getPath m :
  n path p replace$default <(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String; r s
 a t getNameWithoutExtension $this$nameWithoutExtension w . y substringBeforeLast$default ](Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String; { |
 a } toRelativeString 0(Ljava/io/File;Ljava/io/File;)Ljava/lang/String; $this$toRelativeString � base � 'toRelativeStringOrNull$FilesKt__UtilsKt � �
  � "java/lang/IllegalArgumentException � *this and base files have different roots:  �  and  �
 � > 
relativeTo ,(Ljava/io/File;Ljava/io/File;)Ljava/io/File; $this$relativeTo �  �
 M �
  > relativeToOrSelf $this$relativeToOrSelf � p1 1$i$a$-unknown-FilesKt__UtilsKt$relativeToOrSelf$1 I relativeToOrNull $this$relativeToOrNull � 1$i$a$-unknown-FilesKt__UtilsKt$relativeToOrNull$1 toComponents .(Ljava/io/File;)Lkotlin/io/FilePathComponents; � �
 M � normalize$FilesKt__UtilsKt >(Lkotlin/io/FilePathComponents;)Lkotlin/io/FilePathComponents; � �
  � kotlin/io/FilePathComponents � getRoot ()Ljava/io/File; � �
 � � areEqual '(Ljava/lang/Object;Ljava/lang/Object;)Z � �
  � getSize ()I � �
 � � java/lang/Math � min (II)I � �
 � � getSegments ()Ljava/util/List; � �
 � � java/util/List � get (I)Ljava/lang/Object; � � � � .. � java/lang/Iterable �  kotlin/collections/CollectionsKt � drop '(Ljava/lang/Iterable;I)Ljava/util/List; � �
 � � java/lang/Appendable � 	separator � C	  � File.separator � java/lang/CharSequence � joinTo$default �(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable; � �
 � � maxSameCount i $this$countSame =$i$a$-run-FilesKt__UtilsKt$toRelativeStringOrNull$sameCount$1 res Ljava/lang/StringBuilder; 	sameCount 	thisCount 	baseCount baseComponents Lkotlin/io/FilePathComponents; thisComponents $this$toRelativeStringOrNull copyTo .(Ljava/io/File;Ljava/io/File;ZI)Ljava/io/File; $this$copyTo � target � exists � 
  � kotlin/io/NoSuchFileException � The source file doesn't exist. � `(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V ) �
 � � $kotlin/io/FileAlreadyExistsException � $The destination file already exists. � 1(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V ) �
 � � <Tried to overwrite the destination, but failed to delete it. isDirectory 
  mkdirs 
  kotlin/io/FileSystemException	 "Failed to create target directory.

 � getParentFile �
  java/io/FileInputStream (Ljava/io/File;)V )
 java/io/Closeable java/io/FileOutputStream
 java/io/InputStream java/io/OutputStream kotlin/io/ByteStreamsKt /(Ljava/io/InputStream;Ljava/io/OutputStream;I)J �!
 " kotlin/io/CloseableKt$ closeFinally +(Ljava/io/Closeable;Ljava/lang/Throwable;)V&'
%( output Ljava/io/FileOutputStream; %$i$a$-use-FilesKt__UtilsKt$copyTo$1$1 input Ljava/io/FileInputStream; #$i$a$-use-FilesKt__UtilsKt$copyTo$1 	overwrite Z 
bufferSize copyTo$defau