Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5801ECF2576
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Oct 2024 20:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PBLg2B1sfpC9wak5fqslacapK1yAPrQemuFQPbqpHo8=; b=S8dq7WS6LfW8jlpf9TvQg7Zos0
	J2ENpRL5eSzXdvsDg0nrf4JeXjSrVPEo4eOj/hqwvKUkfCF2OxC3Uw1jY5rpnqpNQ/0rBUOfKZpiq
	VQsorfG4uSOz5RuCjZJiheEjv/aP/3Roh8aIwxTMR8P5BWPmHXE3QPLamKS0kOCy4f6m0N01uwp9+
	3cyHkDMENbBEX5ivK2rZnjhDK7p6Z5uP6bbCu4PCk88h6t3VA6rulJHWULeOKawUwEf62ZlNHZAWk
	0keADCDnT2ygqzkg4XS7mL5x33pg77IHLDvuggNjzPkXvlN9ND6ti3WvImaw8En7YhlIjO9lnKIkt
	/yMS60TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t04lC-000000039K4-3K9r;
	Sun, 13 Oct 2024 20:00:14 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t04jn-000000039Dx-0xoR;
	Sun, 13 Oct 2024 19:58:49 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728849522;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NFjzkSGJ68/8aNuPbT1GRdATADanaYwLAEjat1mrxdo=;
	b=Ou90+BeGk04Rs765b04PfD3xGuKAzayo2Vj5hq1h8cwtfQyjNwL0eSmxHBd7xTN52O0Tiu
	W90wi9GbpFqcoYHpMpxeiBJ4UMLFp0VdkFUCsaPHKFLhB36shGndDAxaH1E6E/NJ0W/Ap2
	xHUMOgiUCCU05+4asb+YdakQe24Bw5ct5qrU9M2NT2oKIXwphMDjgzjLowva3wmf3qrnUI
	SwtMeKJHqlWXsUrFIlDPO33rFQNucVxiC8xD7HWwSwrhDYbRfRbvYUXzyL5Ed9KXmYaG6v
	FDFq15Cv50F+60uhGHcO8QCn/khYxnrkYs8p0U2I4Rf7qEPpuA/2FAA4Cna2sA==
Date: Sun, 13 Oct 2024 21:58:41 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 0/5] Binding and driver for gated-fixed-clocks
In-Reply-To: <20240906082511.2963890-1-heiko@sntech.de>
References: <20240906082511.2963890-1-heiko@sntech.de>
Message-ID: <3dd94272e827703c2a2a390fcbd9ff5b@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241013_125847_901219_0EA9647F 
X-CRM114-Status: GOOD (  26.87  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Heiko,

On 2024-09-06 10:25, Heiko Stuebner wrote:
> Rockchip boards with PCIe3 controllers inside the soc (rk3568, rk3588) 
> have
> external oscillators on the board to generate the needed 100MHz 
> reference
> clock the PCIe3 controller needs.
> 
> Often these clock generators need supplies to be enabled to run.
> 
> Modelling this clock has taken a number of shapes:
> - The rk3568 Rock-3a modelled the generator-regulator as "phy-supply" 
> [0]
>   &pcie30phy {
>   	phy-supply = <&vcc3v3_pi6c_03>;
>   	status = "okay";
>   };
>   which is of course not part of the binding
> 
> - On the Rock-5-ITX the supply of the clock generator is controlled by
>   the same gpio as the regulator supplying the the port connected to 
> the
>   pcie30x4 controller, so if this controller probes first, both
>   controllers will just run. But if the pcie30x2 controller probes 
> first
>   (which has a different supply), the controller will stall at the 
> first
>   dbi read.
> 
> There are other types too, where an 25MHz oscillator supplies a PLL
> chip like the diodes,pi6c557 used on Theobroma Jaguar and Tiger boards.
> 
> As we established in v1 [1], these are essentially different types, so
> this series attempts to solve the first case of "voltage controlled
> oscillators" as Stephen called them.
> 
> With the discussion in v2, gated-fixed-clock was deemed one possible
> nice naming, so I did go with that.

Thanks, I find "gated-fixed-clock" a much better choice.

> Stephen also suggested reusing more of clk-gpio to not re-implement the
> gpio handling wrt. sleeping and non-sleeping gpios.
> 
> Though instead of exporting masses of structs and ops, 
> gated-fixed-clock
> is quite close to the other gpio-clocks, so I've put it into the 
> clk-gpio
> file.

Just checking, what's the current state of this patch series?
Would another review help with getting it accepted?

> changes in v4:
> - fix example node-name in binding (Rob)
> - add Rob's and Conor's Reviewed-by
> - which -> with in patch 2 message (Diederik)
> - store rate as unsigned long (with a temporary u32 to make
>   of_property_read_u32 happy) (Stephen)
> - add static to struct clk_ops (Stephen)
> - match table sentinel (Stephen)
> - some formatting (Stephen)
> 
> changes in v3:
> - rename to gated-fixed-clock (Conor)
> - move into clk-gpio
> - some tiny cleanups to the existing clk-gpio drivers
> 
> changes in v2:
> - drop the Diodes PLLs for now, to get the first variant right
> - rename stuff to voltage-oscillator / clk_vco as suggested by Stephen
> - require vdd-supply in the binding
> - enable-gpios stays optional, as they often are tied to vdd-supply
> - drop deprecated elements that were left in from the fixed clock 
> binding
> 
> [0] 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts#n605
> [1] 
> https://lore.kernel.org/linux-clk/b3c450a94bcb4ad0bc5b3c7ee8712cb8.sboyd@kernel.org/
> 
> Heiko Stuebner (5):
>   dt-bindings: clocks: add binding for gated-fixed-clocks
>   clk: clk-gpio: update documentation for gpio-gate clock
>   clk: clk-gpio: use dev_err_probe for gpio-get failure
>   clk: clk-gpio: add driver for gated-fixed-clocks
>   arm64: dts: rockchip: fix the pcie refclock oscillator on Rock 5 ITX
> 
>  .../bindings/clock/gated-fixed-clock.yaml     |  49 +++++
>  .../boot/dts/rockchip/rk3588-rock-5-itx.dts   |  38 +++-
>  drivers/clk/clk-gpio.c                        | 206 ++++++++++++++++--
>  3 files changed, 277 insertions(+), 16 deletions(-)
>  create mode 100644
> Documentation/devicetree/bindings/clock/gated-fixed-clock.yaml

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
