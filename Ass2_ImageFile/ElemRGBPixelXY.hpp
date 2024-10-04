#ifndef ELEMRGBPIXELXY_HPP
#define ELEMRGBPIXELXY_HPP

#include "peque-image-manager/RGBPixelXY.hpp"

class ElemRGBPixelXY
{
    RGBPixelXY* pixel;
    ElemRGBPixelXY* next;
    
public:
    ElemRGBPixelXY(RGBPixelXY* p_pixel);
    ElemRGBPixelXY(RGBPixelXY* p_pixel, ElemRGBPixelXY* p_next);
    ~ElemRGBPixelXY();

    RGBPixelXY* getFresh();
    RGBPixelXY* getSame();
    
    ElemRGBPixelXY* getNext();
    void setNext(ElemRGBPixelXY* p_next);
};

#endif // ELEMRGBPIXELXY_HPP
