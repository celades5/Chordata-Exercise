# distutils: language = c++
# distutils: sources = mt19937.cpp

cdef extern from "quaternion.h":
    cdef cppclass Quaternion:
    float w,x,y,z
    Quaternion(float,float,float,float)
    float dot(const Quaternion* q)

cdef class Quaternion2:

    cdef Quaternion *_thisptr

    def __cinit__(self, float _w, float _x, float _y, float _z):
        self._thisptr = new Quaternion(_w, _x, _y, _z)
        if self._thisptr == NULL:
            raise MemoryError()

    def __dealloc__(self):
        if self._thisptr != NULL:
            del self._thisptr
            
    @property
    def w(self):
        return self._thisptr.w
    
    @property
    def x(self):
        return self._thisptr.x

    @property
    def y(self):
        return self._thisptr.y

    @property
    def z(self):
        return self._thisptr.z

    @property
    def show_param(self, float _w, float _x, float _y, float _z):
        parameters= [self._thisptr.w,self._thisptr.x,self._thisptr.y,self._thisptr.z]

        return parameters


    @w.setter
    def w(self, val):
        self._thisptr.w = val

    @x.setter
    def w(self, val):
        self._thisptr.x = val

    @y.setter
    def w(self, val):
        self._thisptr.y = val

    @z.setter
    def w(self, val):
        self._thisptr.z = val

    @param.setter
    def param(self, valx, valw, valz, valy):
        self._thisptr.w = valw
        self._thisptr.x = valx
        self._thisptr.y = valy
        self._thisptr.z = valz

        param_set = [self._thisptr.w, self._thisptr.x, self._thisptr.y, self._thisptr.z]

    #Second Exercise

    def dot(self, Quaternion2):
        return self._thisptr.dot.q