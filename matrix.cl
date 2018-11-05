   

__kernel void matrix_kernel(__global const int *A, __global const int *B, __global int *C) {
 
        // Get the index of the current element to be processed
   	int i = get_global_id(0);
	int j = get_global_id(1);

	int a_d_temp = 0;
	int b_d_temp = 0; 
	int c_temp = 0;


	for(int k = 0; k < 4 ; k++) {

		a_d_temp = A[i*4 + k];
		b_d_temp = B[k*4 + j];

		c_temp += (a_d_temp * b_d_temp);
	}

	C[i*4 + j] = c_temp;


}
