From: Jaehoon Chung <jh80.chung@samsung.com>
Subject: Re: [PATCH] mmc: dw_mmc: update clock after ctrl reset in runtime
 resume
Date: Wed, 04 Jan 2017 17:28:10 +0900
Message-ID: <3b5329de-6aa9-4365-771b-11947989e910@samsung.com>
References: <1483425987-21805-1-git-send-email-xzy.xu@rock-chips.com>
 <CGME20170103065950epcas3p39e7ac0abc2b8b744cd6d51030a2c24fc@epcas3p3.samsung.com>
 <5e789711-b5de-5564-4538-a89d9ed9ca05@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=gbk
Content-Transfer-Encoding: 7bit
Return-path: <linux-mmc-owner@vger.kernel.org>
In-reply-to: <5e789711-b5de-5564-4538-a89d9ed9ca05@rock-chips.com>
Sender: linux-mmc-owner@vger.kernel.org
To: Shawn Lin <shawn.lin@rock-chips.com>, Ziyuan Xu <xzy.xu@rock-chips.com>, ulf.hansson@linaro.org
Cc: linux-mmc@vger.kernel.org, randy.li@rock-chips.com, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 01/03/2017 03:59 PM, Shawn Lin wrote:
> Hi Ziyuan,
> 
> On 2017/1/3 14:46, Ziyuan Xu wrote:
>> Immediately after reset, issue the command which sets
>> update_clock_register_only bit, the card clock will restart.
>>
>> MMC_PM_KEEP_POWER is disabled for SD card and eMMC slots, so that they
>> have no chance to invoke dw_mci_setup_bus for update clock behaviour.
>> Let's consummate it.
>>
>> Fixes: e9ed883 ("mmc: dw_mmc: add runtime PM callback")
>> Reported-by: Randy Li <randy.li@rock-chips.com>
>> Signed-off-by: Ziyuan Xu <xzy.xu@rock-chips.com>
>> ---
>>  drivers/mmc/host/dw_mmc.c | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/drivers/mmc/host/dw_mmc.c b/drivers/mmc/host/dw_mmc.c
>> index b44306b..71715b4 100644
>> --- a/drivers/mmc/host/dw_mmc.c
>> +++ b/drivers/mmc/host/dw_mmc.c
>> @@ -3357,6 +3357,8 @@ int dw_mci_runtime_resume(struct device *dev)
>>          if (slot->mmc->pm_flags & MMC_PM_KEEP_POWER) {
>>              dw_mci_set_ios(slot->mmc, &slot->mmc->ios);
>>              dw_mci_setup_bus(slot, true);
>> +        } else {
>> +            mci_send_cmd(slot, SDMMC_CMD_UPD_CLK, 0);
>>          }
>>      }
> 
> Thanks for sending this, but I think the better fix we talked about
> offlist may be...
> 
> --- a/drivers/mmc/host/dw_mmc.c
> +++ b/drivers/mmc/host/dw_mmc.c
> @@ -3324,7 +3324,7 @@ int dw_mci_runtime_resume(struct device *dev)
>         if (ret)
>                 goto err;
> 
> -       if (!dw_mci_ctrl_reset(host, SDMMC_CTRL_ALL_RESET_FLAGS)) {
> +       if (!dw_mci_reset(host)) {
>                 clk_disable_unprepare(host->ciu_clk);
>                 ret = -ENODEV;
>                 goto err;
> 
> 
> otherwise there still some unhandled cases once the reset is failure.

I  think Shawn's suggestion is more better..After applied Shawn's suggestion, Is the problem  disappeared?
If then, could you resend the patch as Shawn's?
I  don't test yet with exynos..after testing, i will also share.

Best Regards,
Jaehoon Chung

> 
>>
>>
> 
> 

