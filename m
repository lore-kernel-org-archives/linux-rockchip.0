Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 693FCEB64DD
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jul 2023 05:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5AD7Em5PRTWFSCCINwmTPoVA5UlQoF07SOPVP1Q9T0E=; b=we3JCLilQZRTV/
	4Uu+K4puPLL5XJRzITHjeFEFnrSbWRRi9PuY8x+VpYNq5CnYjf6VU78wTNoZBe+DhmS/S7qWbDkwZ
	Nd0YGkLB+xT+AvWfXevmK3zcqc1Oczp8k3MB03G/Q/jzG3uXtYufwe1gl3aye1U4dgqFy2wJIYxDQ
	Jj/Mhdx+nmmIJ3HVnyBP+alqNaorYOGDxRdErW4l8FHos8SF8T0KrSolIktiRSfmgRpXJPYxoIBPP
	RIFJwMCE5NobqCnPlYmF302h2n+aNmyy6i3bL1d/pgxei/4kWIpqu9ntYYSTOzg54rGEnCrq0HRWC
	gEQlkF07yTe8i6DSHatA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAzD-006LBg-15;
	Tue, 25 Jul 2023 05:53:31 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAz9-006L9O-0L;
	Tue, 25 Jul 2023 05:53:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1690264407; x=1721800407;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Tw6AmluQo9H+50YOZ8VzyqlQ1Px/nXDHyihqohOhOtQ=;
  b=PXFeu5Foswzjxj5aWZZpAp690B2ldHM7JEu0sUtRpv922LhsgKqJ1paK
   pc3cdjNtmoc98CmgQyDCHSncHwkmVS91TAdf/BBpz8xLhbwZB2AqAOUn3
   Ro0BOnQ2oif0pCPGZnA9VvdD3Cc9C6XTF68og01KucCJGHIhfxpaDKozf
   STov44wW3NGPP2r2DXscdhhk4DI/s8m53VEXKB1PWRHVIgCgI2s3MR4Zg
   nafXilZuaJO49uGXWd1FqgUDsoJXCn4bxCbznvBoVgjh6m1lPC0zqGw/S
   r+aHuor4SYpVsAxwH8KLDBjCqm/BvK3mikU38QrCw4l2rG9QaqsL8NMUz
   A==;
X-IronPort-AV: E=Sophos;i="6.01,229,1684792800"; 
   d="scan'208";a="32093229"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 25 Jul 2023 07:53:24 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 6A288280075;
	Tue, 25 Jul 2023 07:53:24 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, =?ISO-8859-1?Q?Beno=EEt?= Cousson <bcousson@baylibre.com>, Tony Lindgren <tony@atomide.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org, linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4 6/6] arm64: dts: qcom: Replace deprecated extcon-usb-gpio id-gpio/vbus-gpio properties
Date: Tue, 25 Jul 2023 07:53:24 +0200
Message-ID: <45689756.fMDQidcC6G@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <6220628.iIbC2pHGDl@phil>
References: <20230724103914.1779027-1-alexander.stein@ew.tq-group.com> <20230724103914.1779027-7-alexander.stein@ew.tq-group.com> <6220628.iIbC2pHGDl@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_225327_522891_522EA7A8 
X-CRM114-Status: GOOD (  14.47  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Montag, 24. Juli 2023, 20:04:00 CEST schrieb Heiko Stuebner:
> Am Montag, 24. Juli 2023, 12:39:13 CEST schrieb Alexander Stein:
> > Use id-gpios and vbus-gpios instead.
> > =

> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > Reviewed-by: AngeloGioacchino Del Regno
> > <angelogioacchino.delregno@collabora.com> Acked-by: Shawn Guo
> > <shawnguo@kernel.org>
> > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > ---
> > =

> >  arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi                 | 2 +-
> =

> sorry to be a spoilsport, but Rockchip is not part of qcom ;-) .

Oh, I'm pretty sure I splitted them properly, so I probably accidentally =

squashed them again somehow :(

> I don't have a massive problem with this going through the qcom tree
> though, so if you don't respin,
> =

> Acked-by: Heiko Stuebner <heiko@sntech.de> #rockchip

Okay, thanks

Best regards,
Alexander

> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> > b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi index
> > aa3e21bd6c8f..20e3f41efe97 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> > @@ -27,7 +27,7 @@ module_led: led-0 {
> > =

> >  	extcon_usb3: extcon-usb3 {
> >  	=

> >  		compatible =3D "linux,extcon-usb-gpio";
> > =

> > -		id-gpio =3D <&gpio1 RK_PC2 GPIO_ACTIVE_HIGH>;
> > +		id-gpios =3D <&gpio1 RK_PC2 GPIO_ACTIVE_HIGH>;
> > =

> >  		pinctrl-names =3D "default";
> >  		pinctrl-0 =3D <&usb3_id>;
> >  	=

> >  	};


-- =

TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
