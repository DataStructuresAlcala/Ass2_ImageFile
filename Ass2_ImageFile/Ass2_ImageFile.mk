##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Ass2_ImageFile
ConfigurationName      :=Debug
WorkspaceConfiguration :=Debug
WorkspacePath          :=V:/4-Proyectos/4--Codelite/EjemplosCodigo
ProjectPath            :=V:/4-Proyectos/4--Codelite/EjemplosCodigo/Ass2_ImageFile
IntermediateDirectory  :=$(ConfigurationName)
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=JoseM
Date                   :=04/10/2024
CodeLitePath           :="C:/Program Files/CodeLite"
LinkerName             :=C:/SW/TDM-GCC-64/bin/g++.exe
SharedObjectLinkerName :=C:/SW/TDM-GCC-64/bin/g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputDirectory        :=$(IntermediateDirectory)
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="Ass2_ImageFile.txt"
PCHCompileFlags        :=
MakeDirCommand         :="C:/Program Files/CodeLite/mkdir.exe" -p
RcCmpOptions           := 
RcCompilerName         :=C:/SW/TDM-GCC-64/bin/windres.exe
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overridden using an environment variable
##
AR       := C:/SW/TDM-GCC-64/bin/ar.exe -r
CXX      := C:/SW/TDM-GCC-64/bin/g++.exe
CC       := C:/SW/TDM-GCC-64/bin/gcc.exe
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -std=c99 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/SW/TDM-GCC-64/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files\CodeLite
Objects0=$(IntermediateDirectory)/peque-image-manager_RGBPixelXY.cpp$(ObjectSuffix) $(IntermediateDirectory)/peque-image-manager_tinyimage.cpp$(ObjectSuffix) $(IntermediateDirectory)/peque-image-manager_ImagenBMP.cpp$(ObjectSuffix) $(IntermediateDirectory)/peque-image-manager_TinyImageJM.cpp$(ObjectSuffix) $(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/ListRGBPixelXY.cpp$(ObjectSuffix) $(IntermediateDirectory)/ElemRGBPixelXY.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "$(ConfigurationName)"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "$(ConfigurationName)"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/peque-image-manager_RGBPixelXY.cpp$(ObjectSuffix): peque-image-manager/RGBPixelXY.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "V:/4-Proyectos/4--Codelite/EjemplosCodigo/Ass2_ImageFile/peque-image-manager/RGBPixelXY.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/peque-image-manager_RGBPixelXY.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/peque-image-manager_RGBPixelXY.cpp$(PreprocessSuffix): peque-image-manager/RGBPixelXY.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/peque-image-manager_RGBPixelXY.cpp$(PreprocessSuffix) peque-image-manager/RGBPixelXY.cpp

$(IntermediateDirectory)/peque-image-manager_tinyimage.cpp$(ObjectSuffix): peque-image-manager/tinyimage.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "V:/4-Proyectos/4--Codelite/EjemplosCodigo/Ass2_ImageFile/peque-image-manager/tinyimage.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/peque-image-manager_tinyimage.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/peque-image-manager_tinyimage.cpp$(PreprocessSuffix): peque-image-manager/tinyimage.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/peque-image-manager_tinyimage.cpp$(PreprocessSuffix) peque-image-manager/tinyimage.cpp

$(IntermediateDirectory)/peque-image-manager_ImagenBMP.cpp$(ObjectSuffix): peque-image-manager/ImagenBMP.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "V:/4-Proyectos/4--Codelite/EjemplosCodigo/Ass2_ImageFile/peque-image-manager/ImagenBMP.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/peque-image-manager_ImagenBMP.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/peque-image-manager_ImagenBMP.cpp$(PreprocessSuffix): peque-image-manager/ImagenBMP.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/peque-image-manager_ImagenBMP.cpp$(PreprocessSuffix) peque-image-manager/ImagenBMP.cpp

$(IntermediateDirectory)/peque-image-manager_TinyImageJM.cpp$(ObjectSuffix): peque-image-manager/TinyImageJM.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "V:/4-Proyectos/4--Codelite/EjemplosCodigo/Ass2_ImageFile/peque-image-manager/TinyImageJM.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/peque-image-manager_TinyImageJM.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/peque-image-manager_TinyImageJM.cpp$(PreprocessSuffix): peque-image-manager/TinyImageJM.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/peque-image-manager_TinyImageJM.cpp$(PreprocessSuffix) peque-image-manager/TinyImageJM.cpp

$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "V:/4-Proyectos/4--Codelite/EjemplosCodigo/Ass2_ImageFile/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp

$(IntermediateDirectory)/ListRGBPixelXY.cpp$(ObjectSuffix): ListRGBPixelXY.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "V:/4-Proyectos/4--Codelite/EjemplosCodigo/Ass2_ImageFile/ListRGBPixelXY.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ListRGBPixelXY.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/ListRGBPixelXY.cpp$(PreprocessSuffix): ListRGBPixelXY.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/ListRGBPixelXY.cpp$(PreprocessSuffix) ListRGBPixelXY.cpp

$(IntermediateDirectory)/ElemRGBPixelXY.cpp$(ObjectSuffix): ElemRGBPixelXY.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "V:/4-Proyectos/4--Codelite/EjemplosCodigo/Ass2_ImageFile/ElemRGBPixelXY.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ElemRGBPixelXY.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/ElemRGBPixelXY.cpp$(PreprocessSuffix): ElemRGBPixelXY.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/ElemRGBPixelXY.cpp$(PreprocessSuffix) ElemRGBPixelXY.cpp

##
## Clean
##
clean:
	$(RM) -r $(ConfigurationName)/


