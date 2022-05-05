Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0E76C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 May 2022 09:06:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ycgd69mWCklzpmt77bCey+Cjq6D5Wr14ihz9jnwqUoM=; b=ZQrz//5dDhi9mG
	Xwuvx5rCOIPzACw92Z0wH2ViIrQn3mryDCtUqtAF4x66x69nb8BcRneYDnFFJe1hESnxWOIPd/sm9
	ShJNcNb4QCQmzaMilid0xFOVIDJGS6GfdPeyPqgcDJK76G2SW8QjzCchmPIzI8sbMdlqatffQCHf9
	PD3XbKg4hTNUShoFfWf8xboRBGgAF0SMKU5v83xKtj7zKP8FINGRXssl6gw1ViduNFevB3uSdvBNg
	X7gzfkNmFA+A+MEjLnOGOzB9Qw9fdSuNe0+mPE3wW8cpmaYwaHd0cvWO90spyorl+noXares/EjqI
	a/LckxqPh17I0XjgtJEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmXQt-00Eux0-B0; Thu, 05 May 2022 09:05:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmXQh-00EutD-K6
 for linux-rockchip@lists.infradead.org; Thu, 05 May 2022 09:05:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nmXQe-0001Q4-00; Thu, 05 May 2022 11:05:44 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nmXQb-0007lM-D7; Thu, 05 May 2022 11:05:41 +0200
Date: Thu, 5 May 2022 11:05:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Frank Wunderlich <frank-w@public-files.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v11 17/24] arm64: dts: rockchip: rk356x: Add HDMI nodes
Message-ID: <20220505090541.GN4012@pengutronix.de>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-18-s.hauer@pengutronix.de>
 <trinity-bfbffcba-d1ed-40f7-8f37-0c8ad9245e3c-1651740303894@3c-app-gmx-bs47>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <trinity-bfbffcba-d1ed-40f7-8f37-0c8ad9245e3c-1651740303894@3c-app-gmx-bs47>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:03:13 up 35 days, 21:32, 83 users,  load average: 0.45, 0.31, 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_020547_701685_089B1D1C 
X-CRM114-Status: GOOD (  30.80  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Thu, May 05, 2022 at 10:45:03AM +0200, Frank Wunderlich wrote:
> Hi,
> 
> > Gesendet: Freitag, 22. April 2022 um 09:28 Uhr
> > Von: "Sascha Hauer" <s.hauer@pengutronix.de>
> > Betreff: [PATCH v11 17/24] arm64: dts: rockchip: rk356x: Add HDMI nodes
> >
> > Add support for the HDMI port found on RK3568.
> >
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >
> > Notes:
> >     Changes since v7:
> >     - Rename hclk to niu
> 
> clock-name no more present since v9, see below
> 
> >     Changes since v5:
> >     - Drop unnecessary #size-cells/#address-cells from nodes with only single endpoint
> >
> ...
> > --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > @@ -620,6 +620,38 @@ vop_mmu: iommu@fe043e00 {
> >  		status = "disabled";
> >  	};
> >
> > +	hdmi: hdmi@fe0a0000 {
> > +		compatible = "rockchip,rk3568-dw-hdmi";
> > +		reg = <0x0 0xfe0a0000 0x0 0x20000>;
> > +		interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
> > +		clocks = <&cru PCLK_HDMI_HOST>,
> > +			 <&cru CLK_HDMI_SFR>,
> > +			 <&cru CLK_HDMI_CEC>,
> > +			 <&pmucru CLK_HDMI_REF>,
> > +			 <&cru HCLK_VO>;
> > +		clock-names = "iahb", "isfr", "cec", "ref";
> 
> noticed there are still 5 clocks, but only 4 clock-names. So i added "niu" after ref.
> maybe missing clock-name was causing my iommu page-faults...on a quick test i have not got it,
> but they came not every time.

The clock is not handled by the HDMI driver, so it shouldn't be the
cause for any failure. It should be dropped here.

Heiko, could you apply the below patch or squash it into the original
one?

Sascha

-------------------------------8<---------------------------

From 8e5f90273401d98b2202676aafd49a350c9c4abd Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 5 May 2022 10:59:48 +0200
Subject: [PATCH] arm64: dts: rockchip: rk356x: remove extra hdmi clock

HCLK_VO is not handled by the HDMI driver. This is a leftover from
earlier VOP2 series. Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 1a359bbf65300..49eb45e23f8c9 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -627,8 +627,7 @@ hdmi: hdmi@fe0a0000 {
 		clocks = <&cru PCLK_HDMI_HOST>,
 			 <&cru CLK_HDMI_SFR>,
 			 <&cru CLK_HDMI_CEC>,
-			 <&pmucru CLK_HDMI_REF>,
-			 <&cru HCLK_VO>;
+			 <&pmucru CLK_HDMI_REF>;
 		clock-names = "iahb", "isfr", "cec", "ref";
 		pinctrl-names = "default";
 		pinctrl-0 = <&hdmitx_scl &hdmitx_sda &hdmitxm0_cec>;
-- 
2.30.2

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
