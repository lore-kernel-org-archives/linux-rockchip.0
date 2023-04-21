Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95D68C77B76
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Apr 2023 11:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Q5vfbMo/Xz48utYEInXAhoB/Rr+6ViOPeTyP0oUumQ=; b=pIdLdUI2l76Dzb
	YFVUs5tMITGrjxZrIs9bGregkFBmopUTGP0tC5/pkncJCTLUVu0JhhplFRoqTjrSh6/flqY2TFwKW
	jltzuSJ9zvONhAa1c+nYv1BmUGAl/sbLdOfY9+x1x1SzRmLWN///hxY7tx1Vp46rukcWEIJstPisQ
	iRaKy6VDD/HrrzVFkBF5DpGrmtM3oIYPF1SpOT029bLmuC4wrTiEjZS/10nUBcMQAjfUeK3qBbD/D
	RETwax384oUb5Tg1iYNqkgjxuLZTJuaSk+8l4sGK5Uvn+9xrIgJp32lQSsUDm5/IMMGsieYuJeApr
	sm6+HMaX88h+7mFDtp+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pppFg-00Amv8-1J;
	Fri, 21 Apr 2023 11:48:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pppFc-00Amrt-2I
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Apr 2023 11:48:30 +0000
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pppFY-0002Gu-3B; Fri, 21 Apr 2023 13:48:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject:  Re: [PATCH] arm64: dts: rockchip: radxa-e25: fix typo in
 vcc3v3-pi6c-05-regulator
Date: Fri, 21 Apr 2023 13:48:23 +0200
Message-ID: <9785919.DvuYhMxLoT@phil>
In-Reply-To: <20230420101555.2980-1-naoki@radxa.com>
References: <20230420101555.2980-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_044828_766656_4B5B436E 
X-CRM114-Status: GOOD (  14.66  )
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

Am Donnerstag, 20. April 2023, 12:15:55 CEST schrieb FUKAUMI Naoki:
> "gpios" should be "gpio"

I don't see this.

The fixed-regulator binding does specify both "gpios" and "gpio" as valid.
And the code also tries both [0].

So this change really isn't necessary.


Heiko

[0] https://elixir.bootlin.com/linux/latest/source/drivers/gpio/gpiolib.h#L86

> Fixes: 2bf2f4d9f673 ("arm64: dts: rockchip: Add Radxa CM3I E25")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> index 63c4bd873188..bde43c4a5bb1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> @@ -89,7 +89,7 @@ vcc3v3_pcie30x1: vcc3v3-pcie30x1-regulator {
>  	vcc3v3_pi6c_05: vcc3v3-pi6c-05-regulator {
>  		compatible = "regulator-fixed";
>  		enable-active-high;
> -		gpios = <&gpio0 RK_PC7 GPIO_ACTIVE_HIGH>;
> +		gpio = <&gpio0 RK_PC7 GPIO_ACTIVE_HIGH>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pcie_enable_h>;
>  		regulator-name = "vcc3v3_pcie";
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
