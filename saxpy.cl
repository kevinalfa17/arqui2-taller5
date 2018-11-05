__kernel void saxpy_kernel(__global const int *A, __global const int *B, __global int *C) {
 
    // Get the index of the current element to be processed
    int i = get_global_id(0);
    C[i] = (*A)*B[i]+C[i];
}
