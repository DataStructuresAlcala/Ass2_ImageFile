#ifndef LISTRGBPIXELXY_HPP
#define LISTRGBPIXELXY_HPP

#include "ElemRGBPixelXY.hpp"

#include <iostream>

class ListRGBPixelXY
{
    ElemRGBPixelXY* list;
 public:
    ListRGBPixelXY();
    ~ListRGBPixelXY();
    
    void addSorted(RGBPixelXY* p_pix, unsigned int W, unsigned int H);
    ElemRGBPixelXY* extractSorted();
    bool isNotEmpty();
};

#endif // LISTRGBPIXELXY_HPP
