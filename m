Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B97C0C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Feb 2022 20:42:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0mYrD3M+l50aZOMuixZq8M1Ta2kksraIrL6xl/V6808=; b=taA0XV5MYSB26R
	BcmxlwtBGVWHzh5uYSp1yZ/aYonD7g7FokmpraFcezNMaqAvuatQ7IfXnxdJfsnwZ95ke5G/Urwra
	/1nkVyiKMj6Y7at/6WjY1Elm6/Eb67Rw1/XnyaYQ+K3CjeXNJOasNjr5Qu9sxoOcfeZsbH/gHwMho
	RVvg6U3mrt1XBCa2s5wE9oRTwqNUUUZtUyXsAxECTtrVUrgoJpROO8Cn5W2Rj1nOJv12w5g8SuKhl
	j/i5Ml9ckSiJbcPrV+OrBCu3a/f/Pfn2rJ1ZFu2WgOCchXaQOjVkahycg4eU6xrFDwdU1+E8pwDq5
	lLxZBnxnt8GVar5l3rxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKR83-008LSS-5C; Wed, 16 Feb 2022 20:42:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKR81-008LRe-24
 for linux-rockchip@lists.infradead.org; Wed, 16 Feb 2022 20:42:22 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nKR7q-0001N5-A6; Wed, 16 Feb 2022 21:42:10 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: devicetree@vger.kernel.org, Chris Morgan <macroalpha82@gmail.com>
Cc: robh+dt@kernel.org, jon.lin@rock-chips.com,
 linux-rockchip@lists.infradead.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Correct clock-output-names for rk817
Date: Wed, 16 Feb 2022 21:42:09 +0100
Message-ID: <44462609.a43xROnmBz@diego>
In-Reply-To: <20220216165837.4721-1-macroalpha82@gmail.com>
References: <20220216165837.4721-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220216_124221_110572_90BB555C 
X-CRM114-Status: GOOD (  22.41  )
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

Hi,

Am Mittwoch, 16. Februar 2022, 17:58:37 CET schrieb Chris Morgan:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> According to the datasheet for the rk817 there is only a single output
> clock for the PMIC. I don't believe this is causing any harm though
> and testing this change doesn't appear to have any noticeable effects.

hmm, looking at the go2's schematics, I'd disagree:

- yes, the rk817 has only one clock output
- but no, it is used for the clkout_32k signal, which gets piped back into
  the SoC. As that clock dynamically appears at some unspecified point
  when the rk817 probes, the clock controller expects it to be named
  xin32k to bind into its clock-tree.

The driver (drivers/clk/clk-rk808.c) really puts that rk817-clk32k at
position 2 but I'm not sure if that simply papers over some implementation


Heiko

> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
> index ea0695b51ecd..5b23e607876e 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
> @@ -296,7 +296,7 @@ rk817: pmic@20 {
>  		reg = <0x20>;
>  		interrupt-parent = <&gpio0>;
>  		interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
> -		clock-output-names = "rk808-clkout1", "xin32k";
> +		clock-output-names = "rk808-clkout1";
>  		clock-names = "mclk";
>  		clocks = <&cru SCLK_I2S1_OUT>;
>  		pinctrl-names = "default";
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
