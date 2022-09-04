Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30A92ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Sep 2022 15:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kzC+D58gfEp5aD1bdRvJSpzLj5lmgKwSswVXaprGrSc=; b=nEppsmCtVJClGV
	qfHZBlQY5hC73AvHbVXzKTO1fgL4JXtkZuqmRgPsoum1ohq2GBNys28lgmLckczA0/8fJSaXb9X04
	AvHFTINQno9dghMtL1Tml4kjOG5mV0KDlA6p5u1nV8QuYWcx6jxmMy0DvHXJSS2tfzkOvjFWLBGdz
	2l1jsU86ZURk7zva76g7ZBI+kktJldjscdullTc14So45tV+1rWD/LNTsyY+l3Iwb7vGGicUwzaB6
	INaRVwXka2Y+OBsW3cMXNRg0ng2o+nMfXBK1s44GPbya2Tt2de6HTSkvl6Quzo+8xdFifjOFk+FNt
	4AoxE28msM8miKw0It/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUrY4-007Yco-3e; Sun, 04 Sep 2022 15:28:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUrY1-007YZb-MV; Sun, 04 Sep 2022 15:28:35 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oUrXm-0000U5-3l; Sun, 04 Sep 2022 17:28:18 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Frank Wunderlich <frank-w@public-files.de>
Cc: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, Yifeng Zhao <yifeng.zhao@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>, Peter Geis <pgwipeout@gmail.com>, Simon Xue <xxm@rock-chips.com>, Liang Chen <cl@rock-chips.com>, Shawn Lin <shawn.lin@rock-chips.com>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: Aw: Re:  Re: [PATCH v5 5/5] arm64: dts: rockchip: Add PCIe v3 nodes to BPI-R2-Pro
Date: Sun, 04 Sep 2022 17:28:14 +0200
Message-ID: <3349380.9Mp67QZiUf@diego>
In-Reply-To: <trinity-9006aaf2-5bc2-467c-a86e-ba43efc692e6-1661591668494@3c-app-gmx-bs16>
References: <20220825193836.54262-1-linux@fw-web.de> <ee6dc940-8b90-1f57-28b7-6de8e3483027@linaro.org> <trinity-9006aaf2-5bc2-467c-a86e-ba43efc692e6-1661591668494@3c-app-gmx-bs16>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220904_082833_790750_7C791E34 
X-CRM114-Status: GOOD (  23.73  )
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

Hi,

Am Samstag, 27. August 2022, 11:14:28 CEST schrieb Frank Wunderlich:
> > Gesendet: Samstag, 27. August 2022 um 10:56 Uhr
> > Von: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
> 
> > On 27/08/2022 11:50, Frank Wunderlich wrote:
> > > Hi
> > >
> > >> Gesendet: Freitag, 26. August 2022 um 08:50 Uhr
> > >> Von: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
> > >> On 25/08/2022 22:38, Frank Wunderlich wrote:
> > >>> From: Frank Wunderlich <frank-w@public-files.de>
> > >
> > >>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> > >>> index 93d383b8be87..40b90c052634 100644
> > >>> --- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> > >>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> > >>> @@ -86,6 +86,66 @@ vcc5v0_sys: vcc5v0-sys {
> > >>>  		vin-supply = <&dc_12v>;
> > >>>  	};
> > >>>
> > >>> +	pcie30_avdd0v9: pcie30-avdd0v9 {
> > >>
> > >> Use consistent naming, so if other nodes have "regulator" suffix, use it
> > >> here as well.
> > >
> > > only these 3 new have the suffix:
> > >
> > > vcc3v3_pi6c_05: vcc3v3-pi6c-05-regulator
> > > vcc3v3_minipcie: vcc3v3-minipcie-regulator
> > > vcc3v3_ngff: vcc3v3-ngff-regulator
> > >
> > > so i would drop it there...
> > >
> > > so i end up with (including existing ones to compare):
> > >
> > > vcc3v3_sys: vcc3v3-sys
> > > vcc5v0_sys: vcc5v0-sys
> > > pcie30_avdd0v9: pcie30-avdd0v9
> > > pcie30_avdd1v8: pcie30-avdd1v8
> > > vcc3v3_pi6c_05: vcc3v3-pi6c-05
> > > vcc3v3_minipcie: vcc3v3-minipcie
> > > vcc3v3_ngff: vcc3v3-ngff
> > > vcc5v0_usb: vcc5v0_usb
> > > vcc5v0_usb_host: vcc5v0-usb-host
> > > vcc5v0_usb_otg: vcc5v0-usb-otg
> > >
> > > is this ok?
> > >
> > > maybe swap avdd* and pcie30 part to have voltage in front of function.
> > >
> >
> > I prefer all of them have regulator suffix. I think reasonable is also
> > to rename the old ones and then add new ones with suffix.
> 
> ok, will change these to add -regulator in name (not label). and then rename the others in separate Patch outside of the series.
> 
> so basicly here
> -       pcie30_avdd0v9: pcie30-avdd0v9 {
> +       pcie30_avdd0v9: pcie30-avdd0v9-regulator {
> -       pcie30_avdd1v8: pcie30-avdd1v8 {
> +       pcie30_avdd1v8: pcie30-avdd1v8-regulator {
> 
> how about the swapping of pcie30 and the avddXvY? In Schematic they are named PCIE30_AVDD_0V9 / PCIE30_AVDD_1V8, so better leave this?
> 
> avdd0v9-pcie30 will be more similar to the other regulators, but inconsistent with Schematic.

now that the phy-driver changes got applied I'll just pick up the remaining
patches and do the node-name conversion while applying, so no need
to send another revision for it.

But of course feel free so send patches for converting the other regulator
names.

And I'm definitly preferring keeping close to schematic names :-)


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
