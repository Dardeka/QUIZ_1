void minHeap(int[] arr) {
    int step = 1;
    int n = arr.length;
    int res = n / 2;

    while (step != res) {
        for (int i = (n - 1); i >= 0; i--) {
            stdout.printf("Current index : %d\n", i);
            int parent = i / 2;
            int left = 2 * parent + 1;
            int right = 2 * parent + 2;
            
            if (parent <= res) {
                stdout.printf("index : %d %d %d\n", parent, left, right);
                stdout.printf("Before : %d %d %d\n", arr[parent], left < n ? arr[left] : 0, right < n ? arr[right] : 0);
                
                if (left >= n) arr[left] = 0;
                if (right >= n) arr[right] = 0;
            }
            
            if (parent <= res) {
                if (arr[parent] > arr[left] && left < n) {
                    int temp = arr[left];
                    arr[left] = arr[parent];
                    arr[parent] = temp;
                }
                if (arr[parent] > arr[right] && right < n) {
                    int temp = arr[right];
                    arr[right] = arr[parent];
                    arr[parent] = temp;
                }
            }
            
            stdout.printf("After : %d %d %d\n", arr[parent], left < n ? arr[left] : 0, right < n ? arr[right] : 0);
            foreach (int value in arr) {
                stdout.printf("%d ", value);
            }
            stdout.printf("\n\n");
        }
        
        stdout.printf("End %d round\n\n", step);
        step += 1;
    }
}

int main() {
    int[] array = {8, 5, 7, 2, 4, 3, 6, 1};
    stdout.printf("Before using Heap :\n");
    foreach (int value in array) {
        stdout.printf("%d ", value);
    }
    stdout.printf("\n\n");
    
    minHeap(array);
    
    stdout.printf("After using Min Heap :\n");
    foreach (int value in array) {
        stdout.printf("%d ", value);
    }
    stdout.printf("\n");
    
    return 0;
}
