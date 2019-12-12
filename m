From: Chi-Hsien Lin <Chi-Hsien.Lin-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>
Subject: Re: [PATCH v2 3/9] brcmfmac: fix rambase for 4359/9
Date: Thu, 12 Dec 2019 02:07:52 +0000
Message-ID: <cdb13e17-64b5-8b58-db66-6827b86dbf39@cypress.com>
References: <20191211235253.2539-1-smoch@web.de>
 <20191211235253.2539-4-smoch@web.de>
Reply-To: Chi-Hsien Lin <Chi-Hsien.Lin-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191211235253.2539-4-smoch-S0/GAf8tV78@public.gmane.org>
Content-Language: en-US
Content-ID: <7C4EC26E46EA7949B54C07F878B62F7B-+1mpgTUVCH2cE4WynfumptQqCkab/8FMAL8bYrjMMd8@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Soeren Moch <smoch-S0/GAf8tV78@public.gmane.org>, Kalle Valo <kvalo-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: "brcm80211-dev-list.pdl-dY08KVG/lbpWk0Htik3J/w@public.gmane.org" <brcm80211-dev-list.pdl-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Arend van Spriel <arend.vanspriel-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, Hante Meuleman <hante.meuleman-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Wright Feng <Wright.Feng-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, brcm80211-dev-list <brcm80211-dev-list-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, "linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Franky Lin <franky.lin-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org



On 12/12/2019 7:52, Soeren Moch wrote:
> Newer 4359 chip revisions need a different rambase address.
> This fixes firmware download on such devices which fails otherwise.
> 
> Signed-off-by: Soeren Moch <smoch-S0/GAf8tV78@public.gmane.org>
Acked-by: Chi-Hsien Lin <chi-hsien.lin-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>

> ---
> changes in v2: none
> 
> Cc: Kalle Valo <kvalo-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>
> Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> Cc: Arend van Spriel <arend.vanspriel-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
> Cc: Franky Lin <franky.lin-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
> Cc: Hante Meuleman <hante.meuleman-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
> Cc: Chi-Hsien Lin <chi-hsien.lin-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>
> Cc: Wright Feng <wright.feng-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>
> Cc: linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> Cc: brcm80211-dev-list.pdl-dY08KVG/lbpWk0Htik3J/w@public.gmane.org
> Cc: brcm80211-dev-list-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org
> Cc: netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> Cc: linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> ---
>   drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
> index 0b5fbe5d8270..baf72e3984fc 100644
> --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
> @@ -712,7 +712,6 @@ static u32 brcmf_chip_tcm_rambase(struct brcmf_chip_priv *ci)
>   	case BRCM_CC_43569_CHIP_ID:
>   	case BRCM_CC_43570_CHIP_ID:
>   	case BRCM_CC_4358_CHIP_ID:
> -	case BRCM_CC_4359_CHIP_ID:
>   	case BRCM_CC_43602_CHIP_ID:
>   	case BRCM_CC_4371_CHIP_ID:
>   		return 0x180000;
> @@ -722,6 +721,8 @@ static u32 brcmf_chip_tcm_rambase(struct brcmf_chip_priv *ci)
>   	case BRCM_CC_4366_CHIP_ID:
>   	case BRCM_CC_43664_CHIP_ID:
>   		return 0x200000;
> +	case BRCM_CC_4359_CHIP_ID:
> +		return (ci->pub.chiprev < 9) ? 0x180000 : 0x160000;
>   	case CY_CC_4373_CHIP_ID:
>   		return 0x160000;
>   	default:
> --
> 2.17.1
> 
> .
> 
