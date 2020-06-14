macro "tm_calc_2compFLIM" {
setOption("JFileChooser", true);
Dir=getDirectory("Choose a folder with SPCImage export files"); //chose directory with files
setOption("JFileChooser", false);
list = getFileList(Dir); //get all files in indicated directory
for (i=0;i<list.length;i++){
	if (matches(list[i],".*_t2.asc*")){ //selecting the files with t2 data
		FileName_t2=Dir+list[i];

		//naming other files from the same measurement
        FileName_t1 = Dir+substring(list[i], 0, indexOf(list[i], "t2.asc"))+"t1.asc";
        FileName_a1 = Dir+substring(list[i], 0, indexOf(list[i], "t2.asc"))+"a1.asc";
        FileName_a2 = Dir+substring(list[i], 0, indexOf(list[i], "t2.asc"))+"a2.asc";

        FileName_tm = Dir+substring(list[i], 0, indexOf(list[i], "t2.asc"))+"tm.asc";
        
        //opening all files
        run("Text Image... ", "open=[FileName_t1]"); 
        rename("t1");
        run("Text Image... ", "open=[FileName_t2]"); 
        rename("t2");
        run("Text Image... ", "open=[FileName_a1]"); 
        rename("a1");
        run("Text Image... ", "open=[FileName_a2]"); 
        rename("a2");

        //combine values to obtain tm 
        imageCalculator("Multiply create 32-bit", "t1","a1");
        selectWindow("Result of t1");
        rename("t1a1");

        imageCalculator("Multiply create 32-bit", "t2","a2");
        selectWindow("Result of t2");
        rename("t2a2");
 
        imageCalculator("Add create 32-bit", "t1a1","t2a2");
        selectWindow("Result of t1a1");
        rename("t1a1_t2a2");

        imageCalculator("Add create 32-bit", "a1","a2");
        selectWindow("Result of a1");
        rename("a1_a2");

        imageCalculator("Divide create 32-bit", "t1a1_t2a2","a1_a2");
        selectWindow("Result of t1a1_t2a2");
        rename("tm");
        
        //save resulting file   
        saveAs("Text Image", FileName_tm);//saving file with tm

        //closing all open windows 
        run("Close All");
         	}
     };
     }
