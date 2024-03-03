/*!
 * \file searching.cpp
 * Binary search, Linear search, Upper bound, lower bound implementation for an array of integers.
 * \author Selan R. dos Santos
 * \date June 17th, 2021.
 */
#include <iostream>
#include <string>
using std::string;
#include <cassert>
#include <sstream>
#include <iterator>
#include <chrono>
#include <bits/stdc++.h>
using std::ostringstream;

#include "searching.h"

// Alias to make code easier to mantain.
using value_t = int;
// typedef int value_t;
using index_t = size_t;

namespace sa {
    /*!
     * Performs a **linear search** for `value` in `[first;last)` and returns a pointer to the location of `value` in the range `[first,last]`, or `last` if no such element is found.
     * \param first Pointer to the begining of the data range.
     * \param last Pointer just past the last element of the data range.
     * \param value The value we are looking for.
     */
    value_type * lsearch( value_type * first, value_type * last, value_type value ){
        
        for(int *i = first; i < last; ++i){//no range [first, last), percorre um ponteiro chamado i
          if(*i == value){ //caso i indique um valor igual a value, retornará ele mesmo
            return i;
          }
          else{//senão, continuará procurando
            continue;
          }
        }

        return last; //caso não encontre o valor procurado, retornará o último elemento, indicando que percorreu todo o array.
    }

    /*!
     * Performs a **binary search** for `value` in `[first;last)` and returns a pointer to the location of `value` in the range `[first,last]`, or `last` if no such element is found.
     * \note The range **must** be sorted.
     * \param first Pointer to the begining of the data range.
     * \param last Pointer just past the last element of the data range.
     * \param value The value we are looking for.
     */
    value_type *bsearch( value_type *first, value_type *last, value_type value ){
      
      int *n = last;//ponteiro n que aponta para last.

      if(value == *first)
        return first;


      for(int *i= first; i <= last; ++i){//partindo de first e indo até last, o ponteiro i realiza seu loop
        value_t *mid = first+(last-first)/2; //declara-se o valor do mid
        if(*mid == value){
          return mid;//caso o mid seja igual ao valor procurado, ele é retornado
        }
        else if(*mid > value){
          last = mid;//senão, se mid for maior que o valor procurado, o last agora terá o valor de mid
        }
        else{
          first = mid+1;//senão, o first terá o valor de mid+1
        }
        i = first;//e atualiza-se o contador do loop, i
      }
      
      return n; // STUB //retorna o último valor, indicando que percorreu todo o array.
    }

    value_type * binary_search_rec(value_type *first, value_type *last, value_type value) {

      if(first > last){
        return last;//caso o first seja maior que o last, significa que o array não está ordenado, portanto não será possível realizar a busca.
      }
      else{
        value_t *mid = first+(last-first)/2;//declara-se o valor de mid
        if(value == *mid){
          return mid; //caso o mid seja igual ao valor procurado, ele é retornado
        }
        else if(value < *mid){
          return binary_search_rec(first, mid-1, value);//senão, se mid for maior que o valor procurado, retornaremos a função recursiva para buscar novamente, agora com o last = mid-1
        }
        else{
          return binary_search_rec(mid+1, last, value);//senão, retornaremos a função recursiva para buscar novamente, agora com o first = mid+1
        }
      }


      
    return last;//caso não encontremos o valor procurado, retorna-se o last, indicando que todo o array foi percorrido.
    }

    /*!
     * Returns a pointer to the first element in the range `[first, last)` that is _not less_  than (i.e. greater or equal to) `value`, or `last` if no such element is found.
     * \note The range **must** be sorted.
     * \param first Pointer to the begining of the data range.
     * \param last Pointer just past the last element of the data range.
     * \param value The value we are looking for.
     */

    value_type * lbound( value_type * first, value_type * last, value_type value ){

      value_t *mid = first+(last-first)/2; //declara-se o valor de mid
      value_t count = std::distance(first, last);// e count sendo a distância de first para last

      while(count !=0){//enquanto a distância for diferente de 0
        mid = first+(last-first)/2;//o valor de mid é estabelecido
        if(*mid < value){
          first = mid+1;
          count -= (count/2)+1;//caso o valor seja maior que o mid, o first equivale mid+1 e count = count - (count/2) +1
        }
        else{
          last = mid;
          count = count/2;//caso o valor seja menor que mid, o last passa a valer mid e o count agora vale metade do seu valor
        }
      }
      
      return last;// STUB
    }

    /*!
     * Returns a pointer to the first element in the range `[first, last)` that is _greater_  than `value`, or `last` if no such element is found.
     * \note The range **must** be sorted.
     * \param first Pointer to the begining of the data range.
     * \param last Pointer just past the last element of the data range.
     * \param value The value we are looking for.
     */
    value_type * ubound( value_type * first, value_type * last, value_type value ){
      
        value_t *mid = first+(last-first)/2;//declara-se o valor de mid
        value_t count = std::distance(first, last);// e count sendo a distância de first para last

      while(count > 0){//enquanto count for maior que zero
        mid = first+(last-first)/2;//o valor de mid é estabelecido

        if(*mid < value+1){//caso mid seja menor que o (valor procurado)-1
          first = mid+1;
          count -= (count/2)+1;//o first equivale mid+1 e count = count - (count/2) +1
        }
        else{
          last = mid;
          count = count/2;//caso o valor seja menor que mid, o last passa a valer mid e o count agora vale metade do seu valor
        }
      }
      return last;

    }
}
