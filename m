Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A69CC021B8
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Mar 2025 15:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DrG+3woPEp37c+xbt9Am+MH5lGMLGyolfQ6ELDaT0Zg=; b=v+xoNvXC+pMcUb
	G/WP3nWZuNruVQbvtxd7440eVw06WkeBCBC9SFQ9QSLKEnSS7TSoEgaO5ncIKKhbhzi+SNmUMGy23
	4lDAgpyLE7GJhyqJOWoetnhslU9VDiUaZPPMm+twlGVGqYTqEIgkLjwJyST0aNQM269S1wal0mM5H
	g4N7xHK3jb9Z3JCkuun6e3RC9O9XjWNNchGqZ8IR0+wDavkPvSMLJYK7gdMlXAeTKAzcy7OrUBHhJ
	2e/eNhv+i6hp9wnuGkyLK8ls/hRCrwJwIamvTIwIByTk9wk2JaDMV7MDhwyfXC1uFzHuaTK0q7ouT
	9oQGPjHXZqlQZhXAZ15A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1toOb1-0000000EXyq-1vPV;
	Sat, 01 Mar 2025 15:17:43 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1toOZQ-0000000EXsb-0l7z;
	Sat, 01 Mar 2025 15:16:06 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 4033220523;
	Sat,  1 Mar 2025 16:15:59 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0iebN7Isx1Km; Sat,  1 Mar 2025 16:15:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1740842157; bh=OmrR4xD/XRUKk2rcMTrbTAl5fxjRwq+7cvLzauhy6QI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=EBrD/O9RrVrUYRP+VtXW2Qnd/HbT6/xhYVGcT888/R1u+nZe8io1CWfIKSlqN+xVh
	 uosX1SmQ+uG6WyBFrvoMmT17JPz6bItHX9gMyXNllu8xgSfizzV9/xYzM1LbNK//Et
	 VcfncIB0U4fB6PdG2Wr0kCCH4CPj0lKLyBnVPppk3SVEeRppfh+BHYiHR7srIIZm6A
	 ZuNv1C5GeFy9qJKkYwH4vp2FPQ8LHcyP+uq4wv0TAsSn/7aviqrzZh7AF4LU9X0ETQ
	 SdYn8QlV+4DLyohYjHZH6LlYQEMSzJDnHQBh8QLhYMBEBNdU96iGwsLn5J5LXGnR6b
	 mXqu6/2U4c1gw==
Date: Sat, 1 Mar 2025 15:15:32 +0000
From: Yao Zi <ziyao@disroot.org>
To: Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH 8/8] arm64: dts: rockchip: Enable SD-card interface on
 Radxa E20C
Message-ID: <Z8MklJfFz2EA6oNS@pie.lan>
References: <20250301104250.36295-1-ziyao@disroot.org>
 <20250301104835.36439-1-ziyao@disroot.org>
 <0aefd292-7980-434d-9c18-4ab9f6a0b40e@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0aefd292-7980-434d-9c18-4ab9f6a0b40e@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250301_071604_635855_18701243 
X-CRM114-Status: GOOD (  25.18  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Detlev Casanova <detlev.casanova@collabora.com>, Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>, linux-mmc@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>, linux-kernel@vger.kernel.org, Frank Wang <frank.wang@rock-chips.com>, devicetree@vger.kernel.org, Shresth Prasad <shresthprasad7@gmail.com>, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sat, Mar 01, 2025 at 02:01:05PM +0100, Jonas Karlman wrote:
> Hi,
> 
> On 2025-03-01 11:48, Yao Zi wrote:
> > SD-card is available on Radxa E20C board.
> > 
> > Signed-off-by: Yao Zi <ziyao@disroot.org>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> > index d2cdb63d4a9d..473065aa4228 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> > @@ -12,6 +12,10 @@ / {
> >  	model = "Radxa E20C";
> >  	compatible = "radxa,e20c", "rockchip,rk3528";
> >  
> > +	aliases {
> > +		mmc0 = &sdmmc;
> 
> Suggest using mmc1 for sd-card because the e20c typically have onboard
> emmc, compared to removable sd-card.

My board doesn't have an eMMC: it's optional as well, but all variants
of Radxa E20C come with an SD-card interface. The vendor devicetree sets
sdmmc as mmc0 as well[1].

I won't insist on it and am willing to take the change if you still
consider mmc0 is better.

> > +	};
> > +
> >  	chosen {
> >  		stdout-path = "serial0:1500000n8";
> >  	};
> > @@ -20,3 +24,13 @@ chosen {
> >  &uart0 {
> >  	status = "okay";
> >  };
> > +
> > +&sdmmc {
> > +	bus-width = <4>;
> > +	cap-mmc-highspeed;
> > +	cap-sd-highspeed;
> > +	disable-wp;
> > +	rockchip,default-sample-phase = <90>;
> > +	sd-uhs-sdr104;
> 
> Are you sure uhs-sdr104 works as is should?

In fact yes, tuning succeeds at 148.5MHz and results in 66MB/s reading
speed.

> Vendor kernel use a different "v2" tuning

This isn't a problem. IMHO V2 tuning is more like a quick path, which
tries inheritting the phase from firmware and then re-tunes roughly.
Fine tunning is still a fallback here in case of failure, see the commit
message in the downstream kernel[2]. And testing proves it's okay for
RK3528 to issue fine-tuning always.

> and this is also missing the vccio_sd vqmmc-supply to switch between
> 3v3 and 1v8.

But this is a problem, thanks for catching it! Somehow my card managed
to run at 148.5MHz with 3v3 voltage level, but it's definitely a
compatiblity issue. I'm surprised that the driver doesn't complain when
switching to SDR modes without a regulator configured.

> You could add following regulator for sdmmc:
> 
> 	vccio_sd: regulator-vccio-sd {
> 		compatible = "regulator-gpio";
> 		gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
> 		pinctrl-names = "default";
> 		pinctrl-0 = <&sdmmc_vol_ctrl_h>;
> 		regulator-name = "vccio_sd";
> 		regulator-min-microvolt = <1800000>;
> 		regulator-max-microvolt = <3300000>;
> 		states = <1800000 0x0>, <3300000 0x1>;
> 	};
>
> and following pinctrl:
> 
> 	sdmmc {
> 		sdmmc_vol_ctrl_h: sdmmc-vol-ctrl-h {
> 			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
> 		};
> 	};
> 
> add then the power supplies to the sdmmc node:
> 
> 	vmmc-supply = <&vcc_3v3>;
> 	vqmmc-supply = <&vccio_sd>;
> 
> That matches the schematics for e20c, and works when testing non-uhs modes.

Thanks for the hints. Will rebase on your pinctrl series and get
regulators and pinctrl settings applied in the next version.

> Regards,
> Jonas
> 
> > +	status = "okay";
> > +};
> 

Cheers,
Yao Zi

[1]: https://github.com/radxa/kernel/blob/2b0c8de7dc4c68947cda206dcc2e457e9677e426/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts#L22-L26
[2]: https://github.com/rockchip-linux/kernel/commit/795e052cc8610aa59a64b104f975cc4a45493d5d

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
