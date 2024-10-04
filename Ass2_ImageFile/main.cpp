#include <iostream>

#include <time.h>   // time mesasure library

#include <math.h>  // mathematics


#include "peque-image-manager/tinyimage.h"
#include "peque-image-manager/TinyImageJM.hpp"
#include "peque-image-manager/ImagenBMP.hpp"
#include "peque-image-manager/RGBPixelXY.hpp"

#include "ListRGBPixelXY.hpp"

int main(int argc, char **argv)
{
    std::cout << "Hello World" << std::endl;
    //unsigned t0, t1, t2;  // t0,t1,t2 used to get the time
    //t0 = clock();  // get the time
    
    // C style
    //    int width, height;
    //    unsigned char * image = tinyimg_load("im.bmp", &width, &height, TINYIMG_RGB);  
    /*for (int i=0; i<20; i++)
    {
        std::cout<< "punto "<< i << 
        " R("<<(i*3+2)<<"):" << (int) *(image+(i*3+2)) << 
        " G("<<(i*3+1)<<"):" << (int) *(image+(i*3+1)) << 
        " B("<<(i*3+0)<<"):" << (int) *(image+(i*3+0)) << std::endl;
    }
    */
    //t1 = clock();  // get the time
    //std::cout << "width: " << width << "       height: " << height << std::endl; 
    // example of white diagonal line
    /*for (int i=0; i<height && i<width; i++)
    {
        *(image+((i*width*3)+(i*3)))=0xff;
        *(image+((i*width*3)+(i*3)+1))=0xff;
        *(image+((i*width*3)+(i*3)+2))=0xff;
    }
    */
    // example of red diagonal line
    /*for (int i=0; i<height && i<width; i++)
    {
        *(image+(((height-1)*width*3)-(i*width*3)+(i*3)))=0x00;   
        *(image+(((height-1)*width*3)-(i*width*3)+(i*3)+1))=0x00; 
        *(image+(((height-1)*width*3)-(i*width*3)+(i*3)+2))=0xff;
    }
    */
    
    // Notes
    // 0 left-bottom corner
    // ((height-1)*width*3) left-upper corner   
    // (i*width*3) elements in a row  
    // single element BLUE component (i*3)
    // single element GREEN component (i*3)+1
    // single element RED component (i*3)+2
    
    /*
    std::cout << "save result: " << tinyimg_save("im-b.bmp",width,height,TINYIMG_RGB,image) << std::endl;
    t2 = clock();  // get the time
    
    std::cout << "loading time (seconds): " << (double(t1 - t0) / CLOCKS_PER_SEC) << std::endl;
    std::cout << "saving time (seconds): " << (double(t2 - t1) / CLOCKS_PER_SEC) << std::endl;

    */
    
    TinyImageJM* myImg= new TinyImageJM("Sample-im001.bmp");
    myImg->loadImageFromDisk();

    unsigned int maxDist=0;  // max distance to center to calculate ouput image size
    ListRGBPixelXY* listPix = new ListRGBPixelXY();  // list for sorting elements for output image
    
    if (myImg->isValid())
    {
        std::cout << "is valid "<<std::endl;
        unsigned char* image2 = (unsigned char *)malloc(sizeof(unsigned char) * myImg->getWidth() * myImg->getHeight() * 3);
        for (int y=0; y<myImg->getHeight(); y++)
        {
            for (int x=0; x<myImg->getWidth(); x++)
            {
                RGBPixelXY *pp = new RGBPixelXY(x,y);
            
                // load RGB values from raw image data loaded with malloc
                pp->getFromRaw(myImg->getImagePointertoInternal(),myImg->getWidth(),myImg->getHeight(),x,y);
                pp->normalizeToRedGreenOrBlue();
                if (pp->isNotBlack())
                {
                    maxDist = std::max(maxDist,pp->getDistACentro(myImg->getWidth(),myImg->getHeight()));
                    //std::cout << "new maxDist:  " <<maxDist<< std::endl;
                
                    listPix->addSorted(pp,myImg->getWidth(),myImg->getHeight());
                }

                // set RGB values in a raw image data to save in disk
                pp->setIntoRaw(image2,myImg->getWidth(),myImg->getHeight(),x,y);
            }
        }

        //std::cout << "save result2: " << tinyimg_save("im-2.bmp",myImg->getWidth(),myImg->getHeight(),TINYIMG_RGB,image2) << std::endl;
        myImg->setNewImagePointerWithOldRemoval(image2,myImg->getWidth(),myImg->getHeight());
        myImg->saveImageToDisk("im-oo.bmp");
    }
    else
        {
           std::cout << "is not valid ---- "<< myImg->getInternalError() <<std::endl;
        }

    
    std::cout << "final maxDist:  " <<maxDist<< std::endl;
    
    /*unsigned int newWidth = (maxDist+1)*2;
    unsigned int newHeight = (maxDist+1)*2;
    unsigned char* newImage;      // new image data
    newImage = (unsigned char *)malloc(sizeof(unsigned char) * newWidth * newHeight * 3);

    int i=0;
    unsigned char colorComponent = 255;
    while (listPix->isNotEmpty())
    {
        i++;   //Debug
        RGBPixelXY *pp = listPix->extractSorted()->getSame();
        pp->setComponents(colorComponent,colorComponent,colorComponent);
        pp->setIntoRaw(newImage,newWidth,newHeight,pp->getX(),pp->getY());;
        if (i%10 ==0)
        {
            if (colorComponent>80) 
                {
                    colorComponent--;
                }
        }
    }
    
    std::cout << "list elems: " << i << std::endl;
    
    std::cout << "save result grey: " << tinyimg_save("im-new.bmp",newWidth,newHeight,TINYIMG_RGB,newImage) << std::endl;
    */
    return 0;
}
