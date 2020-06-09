From: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Subject: Re: [PATCH v2] mmc: sdhci: Fix HISPD bit handling
Date: Tue, 9 Jun 2020 15:38:11 +0100
Message-ID: <097786ed-37ca-cf20-35f4-20a57e6c3b63@arm.com>
References: <20200609140135.131887-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200609140135.131887-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Content-Language: en-GB
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Peng Fan <peng.fan-3arQi8VN3Tc@public.gmane.org>, Jaehoon Chung <jh80.chung-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 2020-06-09 15:01, Jagan Teki wrote:
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
> Cc: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Cc: Peng Fan <peng.fan-3arQi8VN3Tc@public.gmane.org>
> Reviewed-by: Jaehoon Chung <jh80.chung-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
> Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> ---
> Changes for v2:
> - collect Jaehoon R-b
> 
>   drivers/mmc/sdhci.c | 23 +++++++++++++++--------
>   1 file changed, 15 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/mmc/sdhci.c b/drivers/mmc/sdhci.c
> index 92cc8434af..280b8c88eb 100644
> --- a/drivers/mmc/sdhci.c
> +++ b/drivers/mmc/sdhci.c
> @@ -594,14 +594,21 @@ static int sdhci_set_ios(struct mmc *mmc)
>   			ctrl &= ~SDHCI_CTRL_4BITBUS;
>   	}
>   
> -	if (mmc->clock > 26000000)
> -		ctrl |= SDHCI_CTRL_HISPD;
> -	else
> -		ctrl &= ~SDHCI_CTRL_HISPD;
> -
> -	if ((host->quirks & SDHCI_QUIRK_NO_HISPD_BIT) ||
> -	    (host->quirks & SDHCI_QUIRK_BROKEN_HISPD_MODE))
> -		ctrl &= ~SDHCI_CTRL_HISPD;
> +	if (!(host->quirks & SDHCI_QUIRK_NO_HISPD_BIT) ||

Should that be "&&" rather than "||"? Otherwise this will always 
evaluate to true unless *both* quirks are set, which isn't equivalent to 
the check being removed above.

Robin.

> +	    !(host->quirks & SDHCI_QUIRK_BROKEN_HISPD_MODE)) {
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
>   	sdhci_writeb(host, ctrl, SDHCI_HOST_CONTROL);
>   
> 
