From: Javier Martinez Canillas <javier@osg.samsung.com>
Subject: Re: [PATCH 3/4] ARM: multi_v7_defconfig: Enable Rockchip display
 support
Date: Mon, 7 Sep 2015 11:31:06 +0200
Message-ID: <55ED595A.6070503@osg.samsung.com>
References: <1441570566-14001-1-git-send-email-sjoerd.simons@collabora.co.uk>
 <1441570566-14001-4-git-send-email-sjoerd.simons@collabora.co.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1441570566-14001-4-git-send-email-sjoerd.simons@collabora.co.uk>
Sender: linux-kernel-owner@vger.kernel.org
To: Sjoerd Simons <sjoerd.simons@collabora.co.uk>, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <k.kozlowski@samsung.com>, Thierry Reding <treding@nvidia.com>, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, Russell King <linux@arm.linux.org.uk>, Alexandre Belloni <alexandre.belloni@free-electrons.com>, Arnd Bergmann <arnd@arndb.de>, Lee Jones <lee.jones@linaro.org>, Olof Johansson <olof@lixom.net>, Ray Jui <rjui@broadcom.com>, Stephen Warren <swarren@nvidia.com>
List-Id: linux-rockchip.vger.kernel.org

Hello Sjoerd,

On 09/06/2015 10:16 PM, Sjoerd Simons wrote:
> Enable options needed for HDMI out on rockchip: DRM driver, Rockchip
> DesignWare HDMI glue and the rockchip IOMMU (dependency of the DRM
> driver).
> 
> Signed-off-by: Sjoerd Simons <sjoerd.simons@collabora.co.uk>
> ---
> 
>  arch/arm/configs/multi_v7_defconfig | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
> index 7058fef..fb673e2 100644
> --- a/arch/arm/configs/multi_v7_defconfig
> +++ b/arch/arm/configs/multi_v7_defconfig
> @@ -453,6 +453,8 @@ CONFIG_DRM_EXYNOS=m
>  CONFIG_DRM_EXYNOS_DSI=y
>  CONFIG_DRM_EXYNOS_FIMD=y
>  CONFIG_DRM_EXYNOS_HDMI=y
> +CONFIG_DRM_ROCKCHIP=m
> +CONFIG_ROCKCHIP_DW_HDMI=m
>  CONFIG_DRM_RCAR_DU=m
>  CONFIG_DRM_TEGRA=y
>  CONFIG_DRM_PANEL_SAMSUNG_S6E8AA0=m
> @@ -630,6 +632,7 @@ CONFIG_APQ_MMCC_8084=y
>  CONFIG_MSM_GCC_8660=y
>  CONFIG_MSM_MMCC_8960=y
>  CONFIG_MSM_MMCC_8974=y
> +CONFIG_ROCKCHIP_IOMMU=y
>  CONFIG_TEGRA_IOMMU_GART=y
>  CONFIG_TEGRA_IOMMU_SMMU=y
>  CONFIG_PM_DEVFREQ=y
> 

Reviewed-by: Javier Martinez Canillas <javier@osg.samsung.com>

Best regards,
-- 
Javier Martinez Canillas
Open Source Group
Samsung Research America
