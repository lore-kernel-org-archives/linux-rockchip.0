Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 092D0D59F44
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Dec 2025 22:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xH8nFVdQsCxA3R5yiBQyQlxzG071XVuxPLWk3zeUOYM=; b=zSol2cYLVFLcQ+
	A9niyhPtMgQAdytJOV+hupCrW5/meEG7NI1inV2BVlejxkOMeO3/lE6nBMklqW6+vCE0uEz47aMj1
	ROeokHzWh4poxbI5yGGONHtko55gWW15x2ekcJnpD5a533MqZEjlgF95phEFGfHkd0IcdM7wuTXba
	QwqDIXZN3eoPRJv4RING9C7FPh6VAZbarutGvSY+6IOQX6nJi1r104zV3uF8zniNyPtgE5fDsKXuS
	ASGXriKY4aotP5u89OE1e+TxjcyPbhjdcCVOuonMQjhZ7o+uRmVvwDvvsgZ1pZJgoXOKc9qEjaJp3
	ks6OGLXNCPkBaxRQvwmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vUBaC-000000019nF-22pT;
	Fri, 12 Dec 2025 22:25:52 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vUBa5-000000019cj-2OfF;
	Fri, 12 Dec 2025 22:25:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=5hB/xgi8wkQ2IXSB8CEixUZsLKng335tdHLW4IL6cEQ=; b=bRf38v9Dq/IgsTZNH8Cr1xcg3k
	REVAA7pjWYHtSUB6SkUzsiynj/AUL6jb7xfjL0VbUktp3EPYh7s4uu9e/snOX1MrJzkMNeU0btS+d
	XePz/oFfZfKwLwMcg4HA7X84G6rNUqL4Qcl54d4gBTp4s0hQPwEYpvEVa7oH5oxyA2Os=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vUBZv-00Go4B-8Q; Fri, 12 Dec 2025 23:25:35 +0100
Date: Fri, 12 Dec 2025 23:25:35 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Adrian Kossmann <adrian.kossmann@posteo.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Adjust RGMII TXD/RXD delays for
 the Rock Pi E
Message-ID: <57e99fa1-0e59-4129-bcae-b94df46447e7@lunn.ch>
References: <20251212220151.574860-1-adrian.kossmann@posteo.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251212220151.574860-1-adrian.kossmann@posteo.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_142546_639231_D8DF761C 
X-CRM114-Status: GOOD (  17.12  )
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

On Fri, Dec 12, 2025 at 10:02:24PM +0000, Adrian Kossmann wrote:
> Current RGMII TXD/RXD delay results in link instability
> under load, with throughput eventually dropping to zero.
> Adjust the RGMII TXD/RXD delay values for stable link
> under load and stable Gigabit throughput
> 
> Signed-off-by: Adrian Kossmann <adrian.kossmann@posteo.de>
> ---
> Changes in v2:
> - Changed the patch subject as the last one contained
>   incorrect changes
> - Drop incorrect PHY compatible string change from v1
> - Adjustments to RGMII RX/TX delay values
> - Link to v1: https://lore.kernel.org/linux-rockchip/20251209210658.458506-2-adrian.kossmann@posteo.de/
> 
>  arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> index a4bdd87d0729..29ff0b8b8f18 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> @@ -153,8 +153,8 @@ &gmac2io {
>  	phy-supply = <&vcc_io>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&rgmiim1_pins>;
> -	tx_delay = <0x26>;
> -	rx_delay = <0x11>;
> +	tx_delay = <0x1a>;
> +	rx_delay = <0x14>;
>  	status = "okay";

You cannot see it here, it appears before this context:

&gmac2io {
        assigned-clocks = <&cru SCLK_MAC2IO>, <&cru SCLK_MAC2IO_EXT>;
        assigned-clock-parents = <&gmac_clkin>, <&gmac_clkin>;
        clock_in_out = "input";
        phy-handle = <&rtl8211>;
        phy-mode = "rgmii";

rgmii means the PCB provides the delay. I doubt that is the
case. Please try changing this to rgmii-id, as recommended here:

https://elixir.bootlin.com/linux/v6.15/source/Documentation/devicetree/bindings/net/ethernet-controller.yaml#L287

and then try out different rx_delay and tx_delay values.

    Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
