From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH 3/3] doc: rockchip: Add doc for rk3399 TPL build/flash
Date: Sat, 1 Jun 2019 10:39:50 +0800
Message-ID: <f821cb88-a2b4-e586-91ef-71052cd0098a@rock-chips.com>
References: <20190509105746.24830-1-jagan@amarulasolutions.com>
 <20190509105746.24830-3-jagan@amarulasolutions.com>
 <b5cd9180-56c9-dd02-e6bf-4e7638902d5c@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <b5cd9180-56c9-dd02-e6bf-4e7638902d5c-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
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



On 05/29/2019 04:02 PM, Kever Yang wrote:
> Hi Jagan,
>
>
> On 05/09/2019 06:57 PM, Jagan Teki wrote:
>> This patch add documentation for TPL build and flashing steps
>> for rk3399 boards.
>>
>> Add full boot log for future reference.
>>
>> Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> Reviewed-by: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

Applied to u-boot-rockchip/master, thanks!

>
> Thanks,
> - Kever
>> ---
>>  doc/README.rockchip | 51 ++++++++++++++++++++++++++++++++++++++++++++-
>>  1 file changed, 50 insertions(+), 1 deletion(-)
>>
>> diff --git a/doc/README.rockchip b/doc/README.rockchip
>> index ca4d6473b0..264f7e4994 100644
>> --- a/doc/README.rockchip
>> +++ b/doc/README.rockchip
>> @@ -173,7 +173,10 @@ For example:
>>       => make u-boot.itb
>>  
>>       (Get spl/u-boot-spl-dtb.bin, u-boot.itb images and some boards would get
>> -      spl/u-boot-spl.bin since it doesn't enable CONFIG_SPL_OF_CONTROL)
>> +      spl/u-boot-spl.bin since it doesn't enable CONFIG_SPL_OF_CONTROL
>> +
>> +      If TPL enabled on the target, get tpl/u-boot-tpl-dtb.bin or tpl/u-boot-tpl.bin
>> +      if CONFIG_TPL_OF_CONTROL not enabled)
>>  
>>  Writing to the board with USB
>>  =============================
>> @@ -455,6 +458,52 @@ Net:   eth0: ethernet@fe300000
>>  Hit any key to stop autoboot:  0
>>  =>
>>  
>> +Option 3: Package the image with TPL:
>> +
>> +  - Prefix rk3399 header to TPL image
>> +
>> +    => cd /path/to/u-boot
>> +    => ./tools/mkimage -n rk3399 -T rksd -d tpl/u-boot-tpl-dtb.bin out
>> +
>> +  - Concatinate tpl with spl
>> +
>> +    => cd /path/to/u-boot
>> +    => cat ./spl/u-boot-spl-dtb.bin >> out
>> +
>> +  - Write tpl+spl at 64th sector
>> +
>> +    => sudo dd if=out of=/dev/sdc seek=64
>> +
>> +  - Write U-Boot proper at 16384 sector
>> +
>> +    => sudo dd if=u-boot.itb of=/dev/sdc seek=16384
>> +    => sync
>> +
>> +Put this SD (or micro-SD) card into your board and reset it. You should see
>> +something like:
>> +
>> +U-Boot TPL board init
>> +Trying to boot from BOOTROM
>> +Returning to boot ROM...
>> +
>> +U-Boot SPL board init
>> +Trying to boot from MMC1
>> +
>> +
>> +U-Boot 2019.07-rc1-00241-g5b3244767a (May 08 2019 - 10:51:06 +0530)
>> +
>> +Model: Orange Pi RK3399 Board
>> +DRAM:  2 GiB
>> +MMC:   dwmmc@fe310000: 2, dwmmc@fe320000: 1, sdhci@fe330000: 0
>> +Loading Environment from MMC... OK
>> +In:    serial@ff1a0000
>> +Out:   serial@ff1a0000
>> +Err:   serial@ff1a0000
>> +Model: Orange Pi RK3399 Board
>> +Net:   eth0: ethernet@fe300000
>> +Hit any key to stop autoboot:  0
>> +=>
>> +
>>  Using fastboot on rk3288
>>  ========================
>>  - Write GPT partition layout to mmc device which fastboot want to use it to
>
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>
