From: Tiezhu Yang <yangtiezhu@loongson.cn>
Subject: Re: [PATCH 2/2] phy: Remove CONFIG_ARCH_ROCKCHIP check for subdir
 rockchip
Date: Mon, 25 May 2020 20:35:17 +0800
Message-ID: <bf02bc5c-84e8-d699-e0fe-8bcf1bbd1030@loongson.cn>
References: <1590379739-18729-1-git-send-email-yangtiezhu@loongson.cn>
 <1590379739-18729-2-git-send-email-yangtiezhu@loongson.cn>
 <2687194.6AVWON70EC@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <2687194.6AVWON70EC@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Xuefeng Li <lixuefeng@loongson.cn>
List-Id: linux-rockchip.vger.kernel.org

On 05/25/2020 06:48 PM, Heiko Stübner wrote:
> Am Montag, 25. Mai 2020, 06:08:59 CEST schrieb Tiezhu Yang:
>> If CONFIG_ARCH_ROCKCHIP is not set but COMPILE_TEST is set, the file in
>> the subdir rockchip can not be built due to CONFIG_ARCH_ROCKCHIP check
>> in drivers/phy/Makefile.
>>
>> Since the related configs in drivers/phy/rockchip/Kconfig depend on
>> ARCH_ROCKCHIP, so remove CONFIG_ARCH_ROCKCHIP check for subdir rockchip
>> in drivers/phy/Makefile.
>>
>> Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
> wouldn't this make more sense to do for all subdirs?
>
> - allwinner: also has arch_sunxi || compile_test in its Kconfig
> - amlogic: same
> - mediatek: same
> - renesas: same
> - tega: same
>
> So I think the right way would be to drop all the obj-$(CONFIG_ARCH_...)
> options and group the separate directories into the generic subdir
> listing below them.

Hi Heiko,

Thanks for your suggestions. I will check it and then send v2.

Thanks,
Tiezhu Yang

>
> Heiko
>
>> ---
>>   drivers/phy/Makefile | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
>> index 310c149..e5b4f58 100644
>> --- a/drivers/phy/Makefile
>> +++ b/drivers/phy/Makefile
>> @@ -12,7 +12,7 @@ obj-$(CONFIG_ARCH_SUNXI)		+= allwinner/
>>   obj-$(CONFIG_ARCH_MESON)		+= amlogic/
>>   obj-$(CONFIG_ARCH_MEDIATEK)		+= mediatek/
>>   obj-$(CONFIG_ARCH_RENESAS)		+= renesas/
>> -obj-$(CONFIG_ARCH_ROCKCHIP)		+= rockchip/
>> +obj-y					+= rockchip/
>>   obj-$(CONFIG_ARCH_TEGRA)		+= tegra/
>>   obj-y					+= broadcom/	\
>>   					   cadence/	\
>>
>
>
