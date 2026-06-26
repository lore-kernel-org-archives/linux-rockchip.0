Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 220E8C43327
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jun 2026 16:58:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G+3w2jC25ZhAw3KoCpHCvFpfQ6H4QWMMZySQG7dwMhU=; b=Hy/a+pza7M3nra
	BqGT2nH0JisnAZJg1QE6tjQnrJN0d2GLesXS1eqWuTxbiaZrQZJHgfNWCQAjH0cJtsN3sgfHB9Rh0
	ZyKhUmqD5ewsrXw9kSHFClp8xjqiEcdhs2y1JaYbIdp5LwJTyC3e4jRho1vDx2TtamLSOZh5W7xOZ
	wd3IGikPTfLdo2shOGBYMU97WHNXx+WUNGLZMCElhJHdsTWCf66a+u1WpphimvHRsKebjGA3+XSs2
	2lHs0ZIaQvr+98zNT7Cea0r15uQ7tnFTQvSJaUg99tS8wFvZ1u92rF4Ajk0r6prqdNOt3z03LcdgU
	81V3pWF5+Ms7GjO3PW5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd9sy-0000000BfRi-1XxB;
	Fri, 26 Jun 2026 16:58:36 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd9sv-0000000BfQR-3SOV;
	Fri, 26 Jun 2026 16:58:35 +0000
Received: from monstersaurus.ideasonboard.com (cpc89244-aztw30-2-0-cust6594.18-1.cable.virginm.net [86.31.185.195])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id D3CD91E7;
	Fri, 26 Jun 2026 18:57:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1782493070;
	bh=tctF25yDjX2h/D8jTaVAW8rgtRGo6jx+AhqWLDpBgto=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=XavWwpTshvR2O36bfPMEeGMaH0w7ZdslrtG03Qazu+OZnaOrAdHxWil5SaIhIb0cY
	 JMvAYnk+2anzMx7HlygYjieq5FydLfCQQ2JSjFiBcLiE61AZt31R9BdllD2TjmFZbd
	 IcL7snuNtXIT11WheBb0ccOUTcoe4r1AFdHxHaok=
MIME-Version: 1.0
In-Reply-To: <20260626143310.GF2363897@killaraus.ideasonboard.com>
References: <20260626-kbingham-orientation-v2-0-47178be927b4@ideasonboard.com> <20260626-kbingham-orientation-v2-4-47178be927b4@ideasonboard.com> <20260626143310.GF2363897@killaraus.ideasonboard.com>
Subject: Re: [PATCH v2 4/8] ARM: tegra: Convert to new media orientation definitions
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Jacopo Mondi <jacopo@jmondi.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, Jimmy Su <jimmy.su@intel.com>, Matthias Fend <matthias.fend@emfend.at>, Mikhail Rudenko <mike.rudenko@gmail.com>, Daniel Scally <dan.scally@ideasonboard.com>, Jacopo Mondi <jacopo.mondi@ideasonboard.com>, Michael Riesch <michael.riesch@collabora.com>, Benjamin Mugnier <benjamin.mugnier@foss.st.com>, Sylvain Petinot <sylvain.petinot@foss.st.com>, Paul Elder <paul.elder@ideasonboard.com>, Martin Kepplinger <martin.kepplinger@puri.sm>, Quentin Schulz <quentin.schulz@theobroma-systems.com>, Tommaso Merciai <tomm.merciai@gmail.com>, Svyatoslav Ryhel <clamor95@gmail.com>, Richard Acayan <mailingradian@gmail.com>, Thierry Reding <thierry.reding@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.
 de>, Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linux@ew.tq-group.com, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Date: Fri, 26 Jun 2026 17:58:28 +0100
Message-ID: <178249310801.36676.2030968701607803461@ping.linuxembedded.co.uk>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_095834_014205_E1BD5B93 
X-CRM114-Status: GOOD (  19.90  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Quoting Laurent Pinchart (2026-06-26 15:33:10)
> On Fri, Jun 26, 2026 at 01:07:56PM +0100, Kieran Bingham wrote:
> > The orientation property for video interface devices now has definitions
> > to prevent hardcoded integer values for the enum options.
> > 
> > Update the users throughout the nvidia device trees to use the new
> > definitions.
> > 
> > Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
> > ---
> >  arch/arm/boot/dts/nvidia/tegra30-asus-nexus7-grouper-common.dtsi | 3 ++-
> >  arch/arm/boot/dts/nvidia/tegra30-asus-transformer-common.dtsi    | 3 ++-
> >  arch/arm/boot/dts/nvidia/tegra30-lg-p895.dts                     | 4 +++-
> >  arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi                      | 3 ++-
> >  4 files changed, 9 insertions(+), 4 deletions(-)
> > 
<snip>
> > diff --git a/arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi b/arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi
> > index 60e8a19aa70e..c58e3026a115 100644
> > --- a/arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi
> > +++ b/arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi
> > @@ -4,6 +4,7 @@
> >  #include <dt-bindings/input/input.h>
> >  #include <dt-bindings/leds/common.h>
> >  #include <dt-bindings/media/video-interfaces.h>
> > +#include <dt-bindings/media/video-interface-devices.h>
> >  #include <dt-bindings/mfd/max77620.h>
> >  #include <dt-bindings/thermal/thermal.h>
> >  
> > @@ -1216,7 +1217,7 @@ rear-camera@10 {
> >                       dvdd-supply = <&vdd_1v2_rear>;
> >                       avdd-supply = <&vdd_2v7_rear>;
> >  
> > -                     orientation = <1>; /* Rear camera */
> > +                     orientation = <MEDIA_ORIENTATION_REAR>;
> 

It must have been hot when I typed that one out...

> This should be MEDIA_ORIENTATION_BACK. And you should compile all the
> device trees the series touch.

Indeed, I got caught out by these being in arm, with the others in arm64
even though I explicitly pulled these out to a separate patch!

Fixed up and now I have compiled also with:

make O=arm32 ARCH=arm multi_v7_defconfig
make O=arm32 ARCH=arm dtbs -j32

which looks clean.

> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Thanks

Kieran

> 
> >                       rotation = <90>;
> >  
> >                       nvmem = <&m24c08>;
> 
> -- 
> Regards,
> 
> Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
