From: Jaehoon Chung <jh80.chung@samsung.com>
Subject: Re: [PATCH v2] mmc: sdhci: Fix HISPD bit handling
Date: Wed, 10 Jun 2020 12:45:33 +0900
Message-ID: <b46fe992-89d4-4a5f-fdb3-e2ec53de2b11@samsung.com>
References: <20200609140135.131887-1-jagan@amarulasolutions.com>
 <CGME20200609143823epcas1p24772f20296869f9a7dc5ed53460ea0a4@epcas1p2.samsung.com>
 <097786ed-37ca-cf20-35f4-20a57e6c3b63@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <097786ed-37ca-cf20-35f4-20a57e6c3b63@arm.com>
Content-Language: en-US
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Robin Murphy <robin.murphy@arm.com>, Jagan Teki <jagan@amarulasolutions.com>, Peng Fan <peng.fan@nxp.com>, Kever Yang <kever.yang@rock-chips.com>
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com, sunil@amarulasolutions.com
List-Id: linux-rockchip.vger.kernel.org

On 6/9/20 11:38 PM, Robin Murphy wrote:
> On 2020-06-09 15:01, Jagan Teki wrote:
>> SDHCI HISPD bits need to be configured based on desired mmc
>> timings mode and some HISPD quirks.
>>
>> So, handle the HISPD bit based on the mmc computed selected
>> mode(timing parameter) rather than fixed mmc card clock
>> frequency.
>>
>> Linux handle the HISPD similar like this in below commit,
>>
>> commit <501639bf2173> ("mmc: sdhci: fix SDHCI_QUIRK_NO_HISPD_BIT handling")
>>
>> This eventually fixed the mmc write issue observed in
>> rk3399 sdhci controller.
>>
>> Bug log for refernece,
>> => gpt write mmc 0 $partitions
>> Writing GPT: mmc write failed
>> ** Can't write to device 0 **
>> ** Can't write to device 0 **
>> error!
>>
>> Cc: Kever Yang <kever.yang@rock-chips.com>
>> Cc: Peng Fan <peng.fan@nxp.com>
>> Reviewed-by: Jaehoon Chung <jh80.chung@samsung.com>
>> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
>> ---
>> Changes for v2:
>> - collect Jaehoon R-b
>>
>>   drivers/mmc/sdhci.c | 23 +++++++++++++++--------
>>   1 file changed, 15 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/mmc/sdhci.c b/drivers/mmc/sdhci.c
>> index 92cc8434af..280b8c88eb 100644
>> --- a/drivers/mmc/sdhci.c
>> +++ b/drivers/mmc/sdhci.c
>> @@ -594,14 +594,21 @@ static int sdhci_set_ios(struct mmc *mmc)
>>               ctrl &= ~SDHCI_CTRL_4BITBUS;
>>       }
>>   -    if (mmc->clock > 26000000)
>> -        ctrl |= SDHCI_CTRL_HISPD;
>> -    else
>> -        ctrl &= ~SDHCI_CTRL_HISPD;
>> -
>> -    if ((host->quirks & SDHCI_QUIRK_NO_HISPD_BIT) ||
>> -        (host->quirks & SDHCI_QUIRK_BROKEN_HISPD_MODE))
>> -        ctrl &= ~SDHCI_CTRL_HISPD;
>> +    if (!(host->quirks & SDHCI_QUIRK_NO_HISPD_BIT) ||
> 
> Should that be "&&" rather than "||"? Otherwise this will always evaluate to true unless *both* quirks are set, which isn't equivalent to the check being removed above.


You're right.

> 
> Robin.
> 
>> +        !(host->quirks & SDHCI_QUIRK_BROKEN_HISPD_MODE)) {
>> +        if (mmc->selected_mode == MMC_HS ||
>> +            mmc->selected_mode == SD_HS ||
>> +            mmc->selected_mode == MMC_DDR_52 ||
>> +            mmc->selected_mode == MMC_HS_200 ||
>> +            mmc->selected_mode == MMC_HS_400 ||
>> +            mmc->selected_mode == UHS_SDR25 ||
>> +            mmc->selected_mode == UHS_SDR50 ||
>> +            mmc->selected_mode == UHS_SDR104 ||
>> +            mmc->selected_mode == UHS_DDR50)
>> +            ctrl |= SDHCI_CTRL_HISPD;
>> +        else
>> +            ctrl &= ~SDHCI_CTRL_HISPD;
>> +    }
>>         sdhci_writeb(host, ctrl, SDHCI_HOST_CONTROL);
>>  
> 
