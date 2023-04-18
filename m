Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5107FC6FD18
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 14:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t7T87hnJdmQ91OLtKAQXtUp3uRmrJzzg+O30tbfbQus=; b=3Cr0pWi0YSLZXH
	zLeFP1nnkH3noH+NK2lZH5ReQioI7UdaZy6xbxK+ToS2YS7VnWE0oOv7Q/4Y3rrXisTVAkpQUW2vt
	c5zGka2/a9FB0JrfBTmSQ9wQDWXj3og1IePCNlKI9UajCZO1Zyf43Geqlouz1ssTFsjRUZI1munES
	Rc/nJUksCsxmEXmgAPpmtOk06ucbXGrM6RUo678KgJYcyBMHCi1N1Ef63xlhOMdAuT0piNQambYeS
	vv5tPPSxAYaaLYGE7GjH+ZFGxvIFHioOKb8MIs7CnhBS8GJNQssdRuhdmhroDlIcfXkWrFInx/iXF
	1LJWKFA1zytz35Q4R4QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pom4Q-002OOQ-05;
	Tue, 18 Apr 2023 14:12:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pom4J-002OJN-1G;
	Tue, 18 Apr 2023 14:12:28 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pom3u-0003l7-Rd; Tue, 18 Apr 2023 16:12:02 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add rk3588 timer
Date: Tue, 18 Apr 2023 16:12:01 +0200
Message-ID: <2828868.BjyWNHgNrj@diego>
In-Reply-To: <e2e59d5d-89cb-ba82-f0fc-ecddb9bdfc2a@collabora.com>
References:  <20230418095344.274025-1-cristian.ciocaltea@collabora.com>
 <a8a9e82b-996e-2b0d-4e3b-9ceda0ab81e4@gmail.com>
 <e2e59d5d-89cb-ba82-f0fc-ecddb9bdfc2a@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_071227_430295_306F0D43 
X-CRM114-Status: GOOD (  23.39  )
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

Am Dienstag, 18. April 2023, 13:53:23 CEST schrieb Cristian Ciocaltea:
> 
> On 4/18/23 14:29, Johan Jonker wrote:
> > 
> > 
> > On 4/18/23 11:53, Cristian Ciocaltea wrote:
> >> Add DT node for Rockchip RK3588/RK3588S SoC timer.
> >>
> >> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> >> ---
> >>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 8 ++++++++
> >>  1 file changed, 8 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> >> index 657c019d27fa..acd89a55374a 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> >> @@ -1400,6 +1400,14 @@ i2c5: i2c@fead0000 {
> >>  		status = "disabled";
> >>  	};
> >>  
> > 
> >> +	rktimer: timer@feae0000 {
> > 
> > There are multiple timers.
> > Use a label in line with the TRM.
> > Maybe change your label to "timer0" in that trend?
> 
> Sure, will use "timer0".
> 
> >> +		compatible = "rockchip,rk3588-timer", "rockchip,rk3288-timer";
> >> +		reg = <0x0 0xfeae0000 0x0 0x20>;
> > 
> >> +		clocks = <&cru PCLK_BUSTIMER0>, <&cru CLK_BUSTIMER0>;
> >> +		clock-names = "pclk", "timer";
> >> +		interrupts = <GIC_SPI 289 IRQ_TYPE_LEVEL_HIGH 0>;
> > 
> > Heiko's sort rules:
> > 
> > compatible
> > reg
> > interrupts
> > [alphabetical]
> > status [if needed]
> 
> Thanks for pointing this out! The sort rule was not obvious as there are
> many other nodes that don't conform.

hmm, that is probably an oversight then :-) . Though looking through
rk3588s.dtsi and rk3588.dtsi, it looks like most peripherals follow that
sorting quite nicely.

But there is also a bit of leeway ... aka there can be an argument made
that assigned-clocks might want to live near clocks or regulator-properties
could be sorted somewhat differently.

So general ideal is alphabetically for the random properties to give some
guidance on sorting.

And compatible, regs, interrupts at the top + status at the bottom makes
it way easier to establish a reading pattern, when looking for something
in the file :-) .


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
