From: Javier Martinez Canillas <javier@osg.samsung.com>
Subject: Re: [PATCH 4/4] ARM: multi_v7_defconfig: Enable DW USB2 support and
 rockchip phy
Date: Mon, 7 Sep 2015 11:33:31 +0200
Message-ID: <55ED59EB.4010000@osg.samsung.com>
References: <1441570566-14001-1-git-send-email-sjoerd.simons@collabora.co.uk>
 <1441570566-14001-5-git-send-email-sjoerd.simons@collabora.co.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1441570566-14001-5-git-send-email-sjoerd.simons@collabora.co.uk>
Sender: linux-kernel-owner@vger.kernel.org
To: Sjoerd Simons <sjoerd.simons@collabora.co.uk>, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <k.kozlowski@samsung.com>, Thierry Reding <treding@nvidia.com>, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, Russell King <linux@arm.linux.org.uk>, Alexandre Belloni <alexandre.belloni@free-electrons.com>, Arnd Bergmann <arnd@arndb.de>, Lee Jones <lee.jones@linaro.org>, Olof Johansson <olof@lixom.net>, Ray Jui <rjui@broadcom.com>, Stephen Warren <swarren@nvidia.com>
List-Id: linux-rockchip.vger.kernel.org

Hello Sjoerd,

On 09/06/2015 10:16 PM, Sjoerd Simons wrote:
> The DesignWare HS OTG USB 2.0 is used in various SoC families among wich
> the various rockchip SoCs, enable the driver and the PHY glue for
> rockchip
> 
> Signed-off-by: Sjoerd Simons <sjoerd.simons@collabora.co.uk>
> 
> ---
> 
>  arch/arm/configs/multi_v7_defconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
> index fb673e2..49c733a 100644
> --- a/arch/arm/configs/multi_v7_defconfig
> +++ b/arch/arm/configs/multi_v7_defconfig
> @@ -514,6 +514,7 @@ CONFIG_USB_STORAGE=y
>  CONFIG_USB_DWC3=y
>  CONFIG_USB_CHIPIDEA=y
>  CONFIG_USB_CHIPIDEA_HOST=y
> +CONFIG_USB_DWC2=y
>  CONFIG_AB8500_USB=y
>  CONFIG_KEYSTONE_USB_PHY=y
>  CONFIG_OMAP_USB3=y
> @@ -658,6 +659,7 @@ CONFIG_PHY_HIX5HD2_SATA=y
>  CONFIG_PWM_STI=m
>  CONFIG_OMAP_USB2=y
>  CONFIG_TI_PIPE3=y
> +CONFIG_PHY_ROCKCHIP_USB=y
>  CONFIG_PHY_MIPHY28LP=y
>  CONFIG_PHY_MIPHY365X=y
>  CONFIG_PHY_RCAR_GEN2=m
>

After dropping the DWC2 and keeping only the PHY as suggested
by Heiko and Krzysztof:

Reviewed-by: Javier Martinez Canillas <javier@osg.samsung.com>

Best regards,
-- 
Javier Martinez Canillas
Open Source Group
Samsung Research America
