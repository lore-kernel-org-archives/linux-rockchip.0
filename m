Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DA31C4167B
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Nov 2023 23:06:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2v9UnX99zvmr92gQqK6OcljircwGG2/Y98s2+6IrUhU=; b=FdHWdQiVjUVJkg
	UXkmDBkQD2qd2q2Fx8RtI2M4mpXq2U9691OjbBeZyb8CWzbNTaGGUEWuOsvzR+QjU4wuUOg+zAMI8
	wFVk+fJ2REVSxGGIxN6yWqThjOGLOw8eKM+aqlFGZiCb/IF9q9m5b9BpRYmh4LW/mHgKeOPu74tEu
	B+QMvZWX7XryXBscvbdoT2mWC8tjBeHrkmlLQbjwZaaRfiAc9yqfJYoWSlG8jzduE3EAtycyUSI27
	R0CHMXGUQ/Nkw1yBSgLvVrQ+Q8/ocJfyGZT8BjfqPpDatovyjhHipvS09Lj8aQZDDPWTBomBKmVBJ
	kQT8TYTkK0zTqK68Y0VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7OCk-00GU0N-3D;
	Sun, 26 Nov 2023 23:06:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7OCh-00GTue-17;
	Sun, 26 Nov 2023 23:06:21 +0000
Received: from i53875bf8.versanet.de ([83.135.91.248] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r7OCW-0002sV-3l; Mon, 27 Nov 2023 00:06:08 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Tim Lunn <tim@feathertop.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
Date: Mon, 27 Nov 2023 00:06:06 +0100
Message-ID: <4762834.KRxA6XjA2N@diego>
In-Reply-To: <813224c2-398d-4c2d-8909-1839ce63be60@linaro.org>
References: <20231122122232.952696-1-tim@feathertop.org>
 <20231122122232.952696-5-tim@feathertop.org>
 <813224c2-398d-4c2d-8909-1839ce63be60@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_150619_637350_7B41417E 
X-CRM114-Status: GOOD (  20.18  )
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

Hi Krzysztof,

Am Mittwoch, 22. November 2023, 13:29:47 CET schrieb Krzysztof Kozlowski:
> On 22/11/2023 13:22, Tim Lunn wrote:
> > Add i2c2 node and i2c2_xfer pinctrl for Rockchip RV1126
> > 
> > Signed-off-by: Tim Lunn <tim@feathertop.org>
> > ---
> > 
> > (no changes since v1)
> > 
> >  arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 10 ++++++++++
> >  arch/arm/boot/dts/rockchip/rv1126.dtsi         | 15 +++++++++++++++
> >  2 files changed, 25 insertions(+)
> > 
> > diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
> > index 4f85b7b3fc4c..167a48afa3a4 100644
> > --- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
> > +++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
> > @@ -87,6 +87,16 @@ i2c0_xfer: i2c0-xfer {
> >  				<0 RK_PB5 1 &pcfg_pull_none_drv_level_0_smt>;
> >  		};
> >  	};
> > +	i2c2 {
> > +		/omit-if-no-ref/
> > +		i2c2_xfer: i2c2-xfer {
> > +			rockchip,pins =
> > +				/* i2c2_scl */
> > +				<0 RK_PC2 1 &pcfg_pull_none_drv_level_0_smt>,
> > +				/* i2c2_sda */
> > +				<0 RK_PC3 1 &pcfg_pull_none_drv_level_0_smt>;
> > +		};
> > +	};
> >  	pwm2 {
> >  		/omit-if-no-ref/
> >  		pwm2m0_pins: pwm2m0-pins {
> > diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
> > index 6c5c928f06c7..cf1df75df418 100644
> > --- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
> > +++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
> > @@ -21,6 +21,7 @@ / {
> >  
> >  	aliases {
> >  		i2c0 = &i2c0;
> > +		i2c2 = &i2c2;
> 
> No, this should be per-board to match board labeling/schematics.

At least for i2c, uarts and i.e. spi ... Rockchip manuals, pin namings
and also all board schematics I've seen so far are very consistent for
these ... i2c2 for example is labled i2c2 both in the pins in the socs
and also in the board-schematics using them.

So while I can agree that things like mmc-aliases might be board-specific,
I do think aliases for the core busses should be able to live in the soc dtsi
as for all Rockchip SoCs so far?


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
