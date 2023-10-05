Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23303E9270D
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Oct 2023 15:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X2yZAjwhRXY3y7h2o6ljOlKnBSJ2SxeW/U9QXPSWyp0=; b=GSIgfPIQj9el1b
	oM13nAb66JK32ejEDQ+xz5/02XI1DuHUK1xCI8aGhKbM3btm6hwndRviXTBCXSsH+yViLqhq4sDS7
	z7XE2r107ccr+f01RRLfZElPSD5uz8nuX+YmPEQ7xgGIr4QGdofNqMVY/Sgn0sFxuHnGkslGceRvo
	MwUdkb53gkIqAvT3lKwzPJLzMd07Y/gq3LfZH37SNb0TG3cfB+uXB9DiicqQL+2fSQy+OsQRWw51t
	db0xr57gQL8kTCzS1mrE5gptQi5pKv6ptaIYHoFwNeC0VuaLgXb4yECrcmJrbdpIEqPE69lfDWgX6
	+haJ1N+n3SOB6/ZL81wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qoQJG-003tev-0n;
	Thu, 05 Oct 2023 15:30:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qoQJ9-003teA-07;
	Thu, 05 Oct 2023 15:30:39 +0000
Received: from i53875a3c.versanet.de ([83.135.90.60] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qoQJ3-0006a1-Rc; Thu, 05 Oct 2023 17:30:29 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH] arm64: dts: rockchip: rk3588is: Add AV1 decoder node
Date: Thu, 05 Oct 2023 17:30:29 +0200
Message-ID: <2298521.ElGaqSPkdT@phil>
In-Reply-To: <20231005151210.nqdx2uoixqjhrtrx@mercury.elektranox.org>
References: <20231005145420.169594-1-benjamin.gaignard@collabora.com>
 <20231005151210.nqdx2uoixqjhrtrx@mercury.elektranox.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231005_083035_098733_3708284F 
X-CRM114-Status: GOOD (  19.84  )
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

Am Donnerstag, 5. Oktober 2023, 17:12:10 CEST schrieb Sebastian Reichel:
> Hi,
> 
> On Thu, Oct 05, 2023 at 04:54:20PM +0200, Benjamin Gaignard wrote:
> > Add node for AV1 video decoder.
> > 
> > Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> 
> No need for my SoB. Instead have this one:
> 
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> 
> Also worth mentioning, that this Patch needs one small fix in the DT
> binding (adding "resets") and one small fix in the driver for out of
> the box AV1 support:
> 
> https://lore.kernel.org/all/20231005144934.169356-1-benjamin.gaignard@collabora.com/
> https://lore.kernel.org/all/20231005145116.169411-1-benjamin.gaignard@collabora.com/

additionally the node name should be generic.
The phandle can of course be av1d but the node
name itself needs a change.

Heiko


> > ---
> >  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> > index 5544f66c6ff4..835e66d85d5f 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> > @@ -2304,6 +2304,20 @@ gpio4: gpio@fec50000 {
> >  			#interrupt-cells = <2>;
> >  		};
> >  	};
> > +
> > +	av1d: av1d@fdc70000 {
> > +		compatible = "rockchip,rk3588-av1-vpu";
> > +		reg = <0x0 0xfdc70000 0x0 0x800>;
> > +		interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH 0>;
> > +		interrupt-names = "vdpu";
> > +		clocks = <&cru ACLK_AV1>, <&cru PCLK_AV1>;
> > +		clock-names = "aclk", "hclk";
> > +		assigned-clocks = <&cru ACLK_AV1>, <&cru PCLK_AV1>;
> > +		assigned-clock-rates = <400000000>, <400000000>;
> > +		resets = <&cru SRST_A_AV1>, <&cru SRST_P_AV1>, <&cru SRST_A_AV1_BIU>, <&cru SRST_P_AV1_BIU>;
> > +		power-domains = <&power RK3588_PD_AV1>;
> > +		status = "okay";
> > +	};
> >  };
> >  
> >  #include "rk3588s-pinctrl.dtsi"
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
