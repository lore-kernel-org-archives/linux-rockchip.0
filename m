From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH 1/3] rk3399: orangepi: Enable TPL
Date: Sat, 1 Jun 2019 10:39:32 +0800
Message-ID: <e27cae3b-50ef-af58-0e56-d6c3a826f161@rock-chips.com>
References: <20190509105746.24830-1-jagan@amarulasolutions.com>
 <3d1513a8-202a-9906-ddb0-2ed1000696f3@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <3d1513a8-202a-9906-ddb0-2ed1000696f3-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org



On 05/29/2019 04:01 PM, Kever Yang wrote:
> Hi Jagan,
>
>
> On 05/09/2019 06:57 PM, Jagan Teki wrote:
>> Enable TPL for OrangePI rk3399 board.
>>
>> Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> Reviewed-by: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

Applied to u-boot-rockchip/master, thanks!

>
> Thanks,
> - Kever
>> ---
>>  configs/orangepi-rk3399_defconfig | 7 ++++---
>>  1 file changed, 4 insertions(+), 3 deletions(-)
>>
>> diff --git a/configs/orangepi-rk3399_defconfig b/configs/orangepi-rk3399_defconfig
>> index 3f02c89983..90021bb695 100644
>> --- a/configs/orangepi-rk3399_defconfig
>> +++ b/configs/orangepi-rk3399_defconfig
>> @@ -5,7 +5,7 @@ CONFIG_SPL_LIBCOMMON_SUPPORT=y
>>  CONFIG_SPL_LIBGENERIC_SUPPORT=y
>>  CONFIG_SYS_MALLOC_F_LEN=0x4000
>>  CONFIG_ROCKCHIP_RK3399=y
>> -CONFIG_ROCKCHIP_SPL_RESERVE_IRAM=0x4000
>> +CONFIG_ROCKCHIP_SPL_RESERVE_IRAM=0x50000
>>  CONFIG_DEBUG_UART_BASE=0xFF1A0000
>>  CONFIG_DEBUG_UART_CLOCK=24000000
>>  CONFIG_SPL_STACK_R_ADDR=0x80000
>> @@ -14,9 +14,8 @@ CONFIG_NR_DRAM_BANKS=1
>>  CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-orangepi.dtb"
>>  # CONFIG_DISPLAY_CPUINFO is not set
>>  CONFIG_DISPLAY_BOARDINFO_LATE=y
>> -CONFIG_SPL_TEXT_BASE=0xff8c2000
>>  CONFIG_SPL_STACK_R=y
>> -CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
>> +CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
>>  CONFIG_CMD_BOOTZ=y
>>  CONFIG_CMD_GPT=y
>>  CONFIG_CMD_MMC=y
>> @@ -24,6 +23,7 @@ CONFIG_CMD_SF=y
>>  CONFIG_CMD_USB=y
>>  # CONFIG_CMD_SETEXPR is not set
>>  CONFIG_CMD_TIME=y
>> +CONFIG_TPL=y
>>  CONFIG_SPL_OF_CONTROL=y
>>  CONFIG_DEFAULT_DEVICE_TREE="rk3399-orangepi"
>>  CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
>> @@ -56,4 +56,5 @@ CONFIG_USB_ETHER_MCS7830=y
>>  CONFIG_USB_ETHER_RTL8152=y
>>  CONFIG_USB_ETHER_SMSC95XX=y
>>  CONFIG_USE_TINY_PRINTF=y
>> +CONFIG_SPL_TINY_MEMSET=y
>>  CONFIG_ERRNO_STR=y
>
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>
