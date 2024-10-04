#include "ElemRGBPixelXY.hpp"

ElemRGBPixelXY::ElemRGBPixelXY(RGBPixelXY* p_pixel)
{
    pixel=p_pixel;
    next=nullptr;
}

ElemRGBPixelXY::ElemRGBPixelXY(RGBPixelXY* p_pixel, ElemRGBPixelXY* p_next)
{
    pixel=p_pixel;
    next=p_next;
}

ElemRGBPixelXY::~ElemRGBPixelXY()
{
}

RGBPixelXY* ElemRGBPixelXY::getFresh()
{
    return new RGBPixelXY(pixel->getX(),pixel->getY(),pixel->getR(),pixel->getG(),pixel->getB());
}

RGBPixelXY* ElemRGBPixelXY::getSame()
{
    return pixel;
}

ElemRGBPixelXY* ElemRGBPixelXY::getNext()
{
    return next;
}

void ElemRGBPixelXY::setNext(ElemRGBPixelXY* p_next)
{
    next=p_next;
}