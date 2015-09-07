From: Sjoerd Simons <sjoerd.simons@collabora.co.uk>
Subject: Re: [PATCH 4/4] ARM: multi_v7_defconfig: Enable DW USB2 support and
 rockchip phy
Date: Mon, 07 Sep 2015 09:10:32 +0200
Message-ID: <1441609832.8778.4.camel@collabora.co.uk>
References: <1441570566-14001-1-git-send-email-sjoerd.simons@collabora.co.uk>
	 <1441570566-14001-5-git-send-email-sjoerd.simons@collabora.co.uk>
	 <55ECD40F.8020001@samsung.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <55ECD40F.8020001@samsung.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Krzysztof Kozlowski <k.kozlowski@samsung.com>, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Javier Martinez Canillas <javier@osg.samsung.com>, Kukjin Kim <kgene@kernel.org>, Thierry Reding <treding@nvidia.com>, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, Russell King <linux@arm.linux.org.uk>, Alexandre Belloni <alexandre.belloni@free-electrons.com>, Arnd Bergmann <arnd@arndb.de>, Lee Jones <lee.jones@linaro.org>, Olof Johansson <olof@lixom.net>, Ray Jui <rjui@broadcom.com>, Stephen Warren <swarren@nvidia.com>, Marek Szyprowski <m.szyprowski@samsung.com>
List-Id: linux-rockchip.vger.kernel.org

Hey Krzysztof,

On Mon, 2015-09-07 at 09:02 +0900, Krzysztof Kozlowski wrote:
> On 07.09.2015 05:16, Sjoerd Simons wrote:
> > The DesignWare HS OTG USB 2.0 is used in various SoC families among
> > wich
> > the various rockchip SoCs, enable the driver and the PHY glue for
> > rockchip
> +Cc Marek and Kukjin,
> 
> This would conflict with Marek's:
> [PATCH v2] ARM: multi_v7_defconfig: Enable DWC2 USB driver and USB
> ethernet gadget
> http://www.spinics.net/lists/linux-samsung-soc/msg46743.html
> 
> Probably your series and Marek's change should go together to the
> same
> tree. How about rebasing your work on top of it?

Thanks for the pointer! I'm entirely happy to rebase on Mareks patch or
this one dropped for now until Mareks patch lands. 

These patches were based on current linux-next, so i guess Mareks pathc
didn't land just yet? Tbh, i don't really know what tries multi_v7
tends to go through (especially for non-platform specific changes)

> Best regards,
> Krzysztof
> 
> >  CONFIG_AB8500_USB=y
> >  CONFIG_KEYSTONE_USB_PHY=y
> >  CONFIG_OMAP_USB3=y
> > @@ -658,6 +659,7 @@ CONFIG_PHY_HIX5HD2_SATA=y
> >  CONFIG_PWM_STI=m
> >  CONFIG_OMAP_USB2=y
> >  CONFIG_TI_PIPE3=y
> > +CONFIG_PHY_ROCKCHIP_USB=y
> >  CONFIG_PHY_MIPHY28LP=y
> >  CONFIG_PHY_MIPHY365X=y
> >  CONFIG_PHY_RCAR_GEN2=m
> > 
> 

-- 
Sjoerd Simons <sjoerd.simons@collabora.co.uk>
Collabora Ltd.
