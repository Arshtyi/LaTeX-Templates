void qsort(int a[], int l, int r)
{
    int i = l, j = r, flag = a[(l + r) >> 1], tmp;
    do
    {
        while (a[i] < flag)
            i++;
        while (a[j] > flag)
            j--;
        if (i <= j)
        {
            tmp = a[i];
            a[i] = a[j];
            a[j] = tmp;
            i++;
            j--;
        }
    } while (i <= j);
    if (l < j)
        qsort(a, l, j);
    if (i < r)
        qsort(a, i, r);
}
void qsort(int a[], int l, int r)
{
    int i = l, j = r, flag = a[(l + r) >> 1], tmp;
    do
    {
        while (a[i] < flag)
            i++;
        while (a[j] > flag)
            j--;
        if (i <= j)
        {
            tmp = a[i];
            a[i] = a[j];
            a[j] = tmp;
            i++;
            j--;
        }
    } while (i <= j);
    if (l < j)
        qsort(a, l, j);
    if (i < r)
        qsort(a, i, r);
}
void qsort(int a[], int l, int r)
{
    int i = l, j = r, flag = a[(l + r) >> 1], tmp;
    do
    {
        while (a[i] < flag)
            i++;
        while (a[j] > flag)
            j--;
        if (i <= j)
        {
            tmp = a[i];
            a[i] = a[j];
            a[j] = tmp;
            i++;
            j--;
        }
    } while (i <= j);
    if (l < j)
        qsort(a, l, j);
    if (i < r)
        qsort(a, i, r);
}
void qsort(int a[], int l, int r)
{
    int i = l, j = r, flag = a[(l + r) >> 1], tmp;
    do
    {
        while (a[i] < flag)
            i++;
        while (a[j] > flag)
            j--;
        if (i <= j)
        {
            tmp = a[i];
            a[i] = a[j];
            a[j] = tmp;
            i++;
            j--;
        }
    } while (i <= j);
    if (l < j)
        qsort(a, l, j);
    if (i < r)
        qsort(a, i, r);
}
void qsort(int a[], int l, int r)
{
    int i = l, j = r, flag = a[(l + r) >> 1], tmp;
    do
    {
        while (a[i] < flag)
            i++;
        while (a[j] > flag)
            j--;
        if (i <= j)
        {
            tmp = a[i];
            a[i] = a[j];
            a[j] = tmp;
            i++;
            j--;
        }
    } while (i <= j);
    if (l < j)
        qsort(a, l, j);
    if (i < r)
        qsort(a, i, r);
}
