#include "ListRGBPixelXY.hpp"

ListRGBPixelXY::ListRGBPixelXY()
{
    list = nullptr;
}

ListRGBPixelXY::~ListRGBPixelXY()
{
}

void ListRGBPixelXY::addSorted(RGBPixelXY* p_pix, unsigned int W, unsigned int H)
{
    ElemRGBPixelXY* p_elem = new ElemRGBPixelXY(p_pix);
    
    if (list == nullptr)
    {
        list=p_elem;
        std::cout << "list nullptr" << std::endl;
    }
    else
    {
        ElemRGBPixelXY* tmp = list;
        bool found = false;
        //std::cout << "list NOT nullptr pre" << std::endl;

        while (tmp->getNext() != nullptr && !found)
        {
            if (tmp->getNext()->getSame()->getDistACentro(W,H) > p_elem->getSame()->getDistACentro(W,H))
            {
                found = true;
            }
            else
            {
                tmp = tmp->getNext();
            }
        }
        p_elem->setNext(tmp->getNext());
        tmp->setNext(p_elem);
        //std::cout << "list NOT nullptr post" << std::endl;
    }
}

// not finished, not working
ElemRGBPixelXY* ListRGBPixelXY::extractSorted()
{
    ElemRGBPixelXY* tmp = list;
    
    /*if (list != nullptr)
    {
        list = list->getNext();
    }    */
    return tmp;
}

bool ListRGBPixelXY::isNotEmpty()
{
    return list!=nullptr;
}