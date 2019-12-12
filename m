From: Soeren Moch <smoch@web.de>
Subject: Re: [PATCH v2 5/9] brcmfmac: add support for BCM4359 SDIO chipset
Date: Thu, 12 Dec 2019 02:02:27 +0100
Message-ID: <56de6321-bfc5-a66c-23c0-8928221c2a7f@web.de>
References: <20191211235253.2539-1-smoch@web.de>
 <20191211235253.2539-6-smoch@web.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191211235253.2539-6-smoch@web.de>
Content-Language: en-GB
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: brcm80211-dev-list.pdl@broadcom.com, Arend van Spriel <arend.vanspriel@broadcom.com>, Heiko Stuebner <heiko@sntech.de>, netdev@vger.kernel.org, Chi-Hsien Lin <chi-hsien.lin@cypress.com>, linux-wireless@vger.kernel.org, Hante Meuleman <hante.meuleman@broadcom.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, Wright Feng <wright.feng@cypress.com>, linux-mmc@vger.kernel.org, brcm80211-dev-list@cypress.com, Kalle Valo <kvalo@codeaurora.org>, Franky Lin <franky.lin@broadcom.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Ulf,

This patch is part of a series [1] to add support for the BCM4359
chipset with SDIO interface to the brcmfmac wireless network driver.

I just realized that this patch touches
include/linux/mmc/sdio_ids.h
and therefore I need an Ack from MMC folks. Can you please look at this?

Thanks and sorry for not including you in the original patch series
submission,
Soeren

[1] https://lkml.org/lkml/2019/12/11/1958

On 12.12.19 00:52, Soeren Moch wrote:
> BCM4359 is a 2x2 802.11 abgn+ac Dual-Band HT80 combo chip and it
> supports Real Simultaneous Dual Band feature.
>
> Based on a similar patch by: Wright Feng <wright.feng@cypress.com>
>
> Signed-off-by: Soeren Moch <smoch@web.de>
> ---
> changes in v2:
> - add SDIO_DEVICE_ID_CYPRESS_89359 as requested
>   by Chi-Hsien Lin <chi-hsien.lin@cypress.com>
>
> Cc: Kalle Valo <kvalo@codeaurora.org>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: Arend van Spriel <arend.vanspriel@broadcom.com>
> Cc: Franky Lin <franky.lin@broadcom.com>
> Cc: Hante Meuleman <hante.meuleman@broadcom.com>
> Cc: Chi-Hsien Lin <chi-hsien.lin@cypress.com>
> Cc: Wright Feng <wright.feng@cypress.com>
> Cc: linux-wireless@vger.kernel.org
> Cc: brcm80211-dev-list.pdl@broadcom.com
> Cc: brcm80211-dev-list@cypress.com
> Cc: netdev@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c | 2 ++
>  drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c   | 1 +
>  drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c   | 2 ++
>  include/linux/mmc/sdio_ids.h                              | 2 ++
>  4 files changed, 7 insertions(+)
>
> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c
> index 68baf0189305..f4c53ab46058 100644
> --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c
> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c
> @@ -973,8 +973,10 @@ static const struct sdio_device_id brcmf_sdmmc_ids[] = {
>  	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_BROADCOM_43455),
>  	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_BROADCOM_4354),
>  	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_BROADCOM_4356),
> +	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_BROADCOM_4359),
>  	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_CYPRESS_4373),
>  	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_CYPRESS_43012),
> +	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_CYPRESS_89359),
>  	{ /* end: all zeroes */ }
>  };
>  MODULE_DEVICE_TABLE(sdio, brcmf_sdmmc_ids);
> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
> index baf72e3984fc..282d0bc14e8e 100644
> --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
> @@ -1408,6 +1408,7 @@ bool brcmf_chip_sr_capable(struct brcmf_chip *pub)
>  		addr = CORE_CC_REG(base, sr_control0);
>  		reg = chip->ops->read32(chip->ctx, addr);
>  		return (reg & CC_SR_CTL0_ENABLE_MASK) != 0;
> +	case BRCM_CC_4359_CHIP_ID:
>  	case CY_CC_43012_CHIP_ID:
>  		addr = CORE_CC_REG(pmu->base, retention_ctl);
>  		reg = chip->ops->read32(chip->ctx, addr);
> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> index 21e535072f3f..c4012ed58b9c 100644
> --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> @@ -616,6 +616,7 @@ BRCMF_FW_DEF(43455, "brcmfmac43455-sdio");
>  BRCMF_FW_DEF(43456, "brcmfmac43456-sdio");
>  BRCMF_FW_DEF(4354, "brcmfmac4354-sdio");
>  BRCMF_FW_DEF(4356, "brcmfmac4356-sdio");
> +BRCMF_FW_DEF(4359, "brcmfmac4359-sdio");
>  BRCMF_FW_DEF(4373, "brcmfmac4373-sdio");
>  BRCMF_FW_DEF(43012, "brcmfmac43012-sdio");
>
> @@ -638,6 +639,7 @@ static const struct brcmf_firmware_mapping brcmf_sdio_fwnames[] = {
>  	BRCMF_FW_ENTRY(BRCM_CC_4345_CHIP_ID, 0xFFFFFDC0, 43455),
>  	BRCMF_FW_ENTRY(BRCM_CC_4354_CHIP_ID, 0xFFFFFFFF, 4354),
>  	BRCMF_FW_ENTRY(BRCM_CC_4356_CHIP_ID, 0xFFFFFFFF, 4356),
> +	BRCMF_FW_ENTRY(BRCM_CC_4359_CHIP_ID, 0xFFFFFFFF, 4359),
>  	BRCMF_FW_ENTRY(CY_CC_4373_CHIP_ID, 0xFFFFFFFF, 4373),
>  	BRCMF_FW_ENTRY(CY_CC_43012_CHIP_ID, 0xFFFFFFFF, 43012)
>  };
> diff --git a/include/linux/mmc/sdio_ids.h b/include/linux/mmc/sdio_ids.h
> index 08b25c02b5a1..2e9a6e4634eb 100644
> --- a/include/linux/mmc/sdio_ids.h
> +++ b/include/linux/mmc/sdio_ids.h
> @@ -41,8 +41,10 @@
>  #define SDIO_DEVICE_ID_BROADCOM_43455		0xa9bf
>  #define SDIO_DEVICE_ID_BROADCOM_4354		0x4354
>  #define SDIO_DEVICE_ID_BROADCOM_4356		0x4356
> +#define SDIO_DEVICE_ID_BROADCOM_4359		0x4359
>  #define SDIO_DEVICE_ID_CYPRESS_4373		0x4373
>  #define SDIO_DEVICE_ID_CYPRESS_43012		43012
> +#define SDIO_DEVICE_ID_CYPRESS_89359		0x4355
>
>  #define SDIO_VENDOR_ID_INTEL			0x0089
>  #define SDIO_DEVICE_ID_INTEL_IWMC3200WIMAX	0x1402
> --
> 2.17.1
>
