Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D68B9C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Apr 2024 08:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yOVm6CnqJDY5QSbnOHWveka9TFp3+htqmBkuIHDX4Rk=; b=GBheGrKMwLWe3A
	hmD68fcfrcPZF2dP6tvPrg468HD8LLNYLTVDxj4MsMrJ/B4qxoi/KK+OpvtiSUxl332rGaE9R+ShX
	HWAvv2ZTlFxnOtMm6o72gCnKDj0+PoKKxrYOGeqjh0+IVGhKvM6VwAjelR16v4o7P3z2qPWwb4HOg
	9kzgxf6mwfcVSOU4xA80oaYQqr41Uzh9GlXmRAG9PIgXXv2jvjx5ENXkPKWcj53jtrVrNvLbjwsX2
	P1kO+zZdLM4ARQF8VeOTb6kE/GlL5xk8IlCqhLy3DgpMQdMHg5HTZmC7p9v6W5PzeTNK7pVNpsgo2
	0xPQTkeNN62SROq9le0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwe69-0000000BQxC-309n;
	Tue, 16 Apr 2024 08:23:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwe66-0000000BQvz-0FlK;
	Tue, 16 Apr 2024 08:23:23 +0000
Received: from i5e8616c3.versanet.de ([94.134.22.195] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rwe5z-0006fs-Ci; Tue, 16 Apr 2024 10:23:15 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: Add Radxa ZERO 3W/3E
Date: Tue, 16 Apr 2024 10:23:14 +0200
Message-ID: <5772116.DvuYhMxLoT@diego>
In-Reply-To: <f5a9e7c0-1d8c-462b-bf7a-d6aa73f63afa@kwiboo.se>
References: <20240415150349.2207075-1-jonas@kwiboo.se>
 <20240415150349.2207075-3-jonas@kwiboo.se>
 <f5a9e7c0-1d8c-462b-bf7a-d6aa73f63afa@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_012322_250891_919A11D7 
X-CRM114-Status: GOOD (  25.46  )
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

Am Dienstag, 16. April 2024, 10:05:09 CEST schrieb Jonas Karlman:
> On 2024-04-15 17:03, Jonas Karlman wrote:
> > The Radxa ZERO 3W/3E is an ultra-small, high-performance single board
> > computer based on the Rockchip RK3566, with a compact form factor and
> > rich interfaces.
> > 
> > The ZERO 3W and ZERO 3E are basically the same size and model, but
> > differ only in storage and network interfaces.
> > 
> > - eMMC (3W)
> > - SD-card (both)
> > - Ethernet (3E)
> > - WiFi/BT (3W)
> > 
> > This adds initial support for eMMC, SD-card, Ethernet, HDMI and USB.
> > 
> > Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> > ---
> > v2: Add to Makefile
> > v3: Sort hdmi-con and leds nodes alphabetically
> > v3: Sort pmic@20 and regulator@40 nodes by reg
> > v3: Change to regulator-off-in-suspend for vdd_logic
> > 
> > Following issue is reported by dtbs_check and is fixed by patch at [1]:
> > 
> >   hdmi@fe0a0000: Unevaluated properties are not allowed ('#sound-dai-cells' was unexpected)
> >   from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi.yaml#
> > 
> > [1] https://lore.kernel.org/linux-rockchip/3a035c16-75b5-471d-aa9d-e91c2bb9f8d0@gmail.com/
> > ---
> >  arch/arm64/boot/dts/rockchip/Makefile         |   2 +
> >  .../dts/rockchip/rk3566-radxa-zero-3e.dts     |  41 ++
> >  .../dts/rockchip/rk3566-radxa-zero-3w.dts     |  26 +
> >  .../boot/dts/rockchip/rk3566-radxa-zero3.dtsi | 443 ++++++++++++++++++
> >  4 files changed, 512 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3e.dts
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero3.dtsi
> > 
> 
> [snip]
> 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero3.dtsi
> > new file mode 100644
> > index 000000000000..ea8ade3a4c99
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero3.dtsi
> 
> [snip]
> 
> > +
> > +&i2c0 {
> > +	status = "okay";
> > +
> 
> [snip]
> 
> > +	vdd_cpu: regulator@40 {
> > +		compatible = "silergy,syr827";
> 
> After checking once more on schematic and inspecting the board this is
> actually a RK860-0 regulator and should use following:
> 
>   compatible = "rockchip,rk8600";
> 
> Will send a v4 with this change later this week.

ok, will wait for that then.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
