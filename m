From: Jaehoon Chung <jh80.chung@samsung.com>
Subject: Re: [PATCH v3] mmc: sdhci: Fix HISPD bit handling
Date: Wed, 10 Jun 2020 21:06:44 +0900
Message-ID: <8c7edc3c-2876-f407-86a5-708a0164db1d@samsung.com>
References: <CGME20200610114402epcas1p279b1c47dc902904c44d39d50c8e169e8@epcas1p2.samsung.com>
 <20200610114347.118501-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200610114347.118501-1-jagan@amarulasolutions.com>
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
To: Jagan Teki <jagan@amarulasolutions.com>, Peng Fan <peng.fan@nxp.com>, Kever Yang <kever.yang@rock-chips.com>
Cc: Marc Zyngier <maz@kernel.org>, sunil@amarulasolutions.com, u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com, Robin Murphy <robin.murphy@arm.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Jagan,

On 6/10/20 8:43 PM, Jagan Teki wrote:
> SDHCI HISPD bits need to be configured based on desired mmc
> timings mode and some HISPD quirks.
> 
> So, handle the HISPD bit based on the mmc computed selected
> mode(timing parameter) rather than fixed mmc card clock
> frequency.
> 
> Linux handle the HISPD similar like this in below commit,
> 
> commit <501639bf2173> ("mmc: sdhci: fix SDHCI_QUIRK_NO_HISPD_BIT handling")
> 
> This eventually fixed the mmc write issue observed in
> rk3399 sdhci controller.
> 
> Bug log for refernece,
> => gpt write mmc 0 $partitions
> Writing GPT: mmc write failed
> ** Can't write to device 0 **
> ** Can't write to device 0 **
> error!
> 
> Cc: Robin Murphy <robin.murphy@arm.com>
> Cc: Kever Yang <kever.yang@rock-chips.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Reviewed-by: Jaehoon Chung <jh80.chung@samsung.com>
> Tested-by: Marc Zyngier <maz@kernel.org> # nanopc-t4
> Tested-by: Suniel Mahesh <sunil@amarulasolutions.com> # roc-rk3399-pc
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v3:
> - use && for quirk check.
> 
>  drivers/mmc/sdhci.c | 23 +++++++++++++++--------
>  1 file changed, 15 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/mmc/sdhci.c b/drivers/mmc/sdhci.c
> index 92cc8434af..a7db278a0e 100644
> --- a/drivers/mmc/sdhci.c
> +++ b/drivers/mmc/sdhci.c
> @@ -594,14 +594,21 @@ static int sdhci_set_ios(struct mmc *mmc)
>  			ctrl &= ~SDHCI_CTRL_4BITBUS;
>  	}
>  
> -	if (mmc->clock > 26000000)
> -		ctrl |= SDHCI_CTRL_HISPD;
> -	else
> -		ctrl &= ~SDHCI_CTRL_HISPD;
> -
> -	if ((host->quirks & SDHCI_QUIRK_NO_HISPD_BIT) ||
> -	    (host->quirks & SDHCI_QUIRK_BROKEN_HISPD_MODE))
> -		ctrl &= ~SDHCI_CTRL_HISPD;
> +	if (!(host->quirks & SDHCI_QUIRK_NO_HISPD_BIT) &&
> +	    !(host->quirks & SDHCI_QUIRK_BROKEN_HISPD_MODE)) {

Sorry, it needs to check more. Because it's different with kernel code.
Kernel code is only checking condition about SDHCI_QUIRK_NO_HISPD_BIT. 
but in u-boot, one more checking about SDHCI_QUIRK_BROKEN_HISPD_MODE.

So if it doesn't set to both, it's possible to set SDHCI_CTRL_HISPD as ctrl's flags.

> +		if (mmc->selected_mode == MMC_HS ||
> +		    mmc->selected_mode == SD_HS ||
> +		    mmc->selected_mode == MMC_DDR_52 ||
> +		    mmc->selected_mode == MMC_HS_200 ||
> +		    mmc->selected_mode == MMC_HS_400 ||
> +		    mmc->selected_mode == UHS_SDR25 ||
> +		    mmc->selected_mode == UHS_SDR50 ||
> +		    mmc->selected_mode == UHS_SDR104 ||
> +		    mmc->selected_mode == UHS_DDR50)
> +			ctrl |= SDHCI_CTRL_HISPD;
> +		else
> +			ctrl &= ~SDHCI_CTRL_HISPD;
> +	}
>  
I think that needs to add at here 
	 else 
		ctrl &= ~SDHCI_CTRL_HISPD; 

>  	sdhci_writeb(host, ctrl, SDHCI_HOST_CONTROL);
>  
> 
