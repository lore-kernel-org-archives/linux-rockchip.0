Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02357CED614
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Oct 2024 07:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AR4YbgxSsxt10aIJWAVDnN4QV6uxel/Zotxb46SGj/U=; b=h/I06wL+SveQN2FPKHF5sQ5ytx
	bGoDMP0KBqCHIdVRpd1tXP5BZPA5Fg66I1yZO3CR/nQGfVcG0vLaEcIT3tAT6b9ieAUHaoOu69p4B
	8qkPpRti7Zx59pdn0PKFexCk9VjFj4HC6xNz6Y1Uo4UEvnk2YpSPwuwgP3w3/j04CsXZLZpsimBqS
	+r104HOq+3NuTUg0+lAvh7Qq223CahGbaiigDdz2bz4IN6p4UUzx6tzoJjGnp6QyU9n7NVjAEXJPd
	hs8eVDPZ0dIcK0BmENdegD8Me9qvB9GXP0MGhTxWXTQjBIzWqsWbsA7O3VzF1JK6xJxepc7j/w4v7
	nMC9qU4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syR6x-00000008EEZ-1xR7;
	Wed, 09 Oct 2024 07:27:55 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syR5c-00000008E2k-1NxM;
	Wed, 09 Oct 2024 07:26:33 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728458790;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=g8NBbsg2U9zV9iA6cedWwT4mdfKXU/bO9gUUqrFHKwY=;
	b=pM6Vk7nIhBNLKE5YXjc2goR2zfXNKwIDhEYuevFlhZI94mXb4gvR+8DiqOgVbe6lJOccAc
	c2eXzcDVuiFqMuT0vK9UzqcIl3UFSQqFkRSOxe4O0fffzzg/G4XMsBrOvmI2KnbSIVrIce
	ys4eMWtaWE6DHNPF6cThzw+KNUE3qto1BIOIcB0F3TDGHst9Wb40e5mRN1DalsM5QJN/tH
	Tfz6O+dUwitIycmBtTbHC4QVQrdTcNjdnPWEGdTGCJPCOuuG+a9ztJpGQS7PzjABgUG9Gz
	V21Qy0Jkr9I6EbVQe7r7dfBr2ryjm2cMk7gSVriSWr6M7NsrMQ0KkLEGKpCTnA==
Date: Wed, 09 Oct 2024 09:26:30 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Michael
 Riesch <michael.riesch@wolfvision.net>, Muhammed Efe Cetin <efectn@6tel.net>
Subject: Re: [PATCH v2 09/14] arm64: dts: rockchip: Remove 'enable-active-low'
 from two boards
In-Reply-To: <20241008203940.2573684-10-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-10-heiko@sntech.de>
Message-ID: <0621088b23e24ddec4076267bdfa1a39@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_002632_689296_0342B79A 
X-CRM114-Status: GOOD (  14.71  )
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

On 2024-10-08 22:39, Heiko Stuebner wrote:
> The 'enable-active-low' property is not a valid, because it is the

s/is not a valid/is not valid/

> default behaviour of the fixed regulator.
> 
> Only 'enable-active-high' is valid, and when this property is absent
> the fixed regulator will act as active low by default.
> 
> Both the rk3588-orange-pi-5 and the Wolfvision pf5 io expander overlay
> smuggled those enable-active-low properties in, so remove them to
> make dtbscheck happier.
> 
> Fixes: 28799a7734a0 ("arm64: dts: rockchip: add wolfvision pf5 io
> expander board")
> Cc: Michael Riesch <michael.riesch@wolfvision.net>
> Fixes: b6bc755d806e ("arm64: dts: rockchip: Add Orange Pi 5")
> Cc: Muhammed Efe Cetin <efectn@6tel.net>
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Looking good to me, thanks for the patch.  According to the bindings
in Documentation/devicetree/bindings/regulator/fixed-regulator.yaml,
only "enable-active-high" is supported.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  .../boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso     | 1 -
>  arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts              | 1 -
>  2 files changed, 2 deletions(-)
> 
> diff --git
> a/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso
> b/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso
> index ebcaeafc3800..fa61633aea15 100644
> --- 
> a/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso
> +++ 
> b/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso
> @@ -49,7 +49,6 @@ vcc1v8_eth: vcc1v8-eth-regulator {
> 
>  	vcc3v3_eth: vcc3v3-eth-regulator {
>  		compatible = "regulator-fixed";
> -		enable-active-low;
>  		gpio = <&gpio0 RK_PC0 GPIO_ACTIVE_LOW>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&vcc3v3_eth_enn>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
> b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
> index feea6b20a6bf..6b77be643249 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
> @@ -71,7 +71,6 @@ vcc5v0_sys: vcc5v0-sys-regulator {
> 
>  	vcc_3v3_sd_s0: vcc-3v3-sd-s0-regulator {
>  		compatible = "regulator-fixed";
> -		enable-active-low;
>  		gpios = <&gpio4 RK_PB5 GPIO_ACTIVE_LOW>;
>  		regulator-name = "vcc_3v3_sd_s0";
>  		regulator-boot-on;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
