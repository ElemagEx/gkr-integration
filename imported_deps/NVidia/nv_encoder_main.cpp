#include <nvEncodeAPIx.h>

int main()
{
    NV_ENCODE_API_FUNCTION_LIST functionList;

    NVENCSTATUS status = NvEncodeAPICreateInstance(&functionList);

    return (status != NV_ENC_SUCCESS);
}
