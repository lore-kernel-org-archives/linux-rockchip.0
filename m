Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 692A0E7716B
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Dec 2024 05:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9XWJ3RFjBQ2tst0mI0waNN8zUmPWp0tKEt6hjYlByaY=; b=qwsEZ0Uv7Pxkb2DGVivZUG/xG2
	KKexLvIFD8sVpOo/y3C4kk7CatMx9G0VFqbfAD+eYKKS59mp2GV9WK+NGsGYb8A4lWirhqVSvM59j
	gwDjgK83HO7gWwPk9HG4KuJ6UP7KkBDQKr+9hT8SXwRxmfid17V/uIplftvytOt91XDFRPZo4CSus
	0/a+uA0WdX7OHrxeIIVHlUus2PS4ekEj3wONAHSkBbZYrRRMLw0aeWFIc2IiIcw8l9b4cMXAiv03Q
	uL6P8zOziszH0zkTtqWVgN+J2tZxsAVewaCS4ZPIGdyFyRzqHH1dSU5xJenY1BzyymstEZv99y2Xy
	I0D408Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIi0r-0000000BX2O-1RsZ;
	Wed, 04 Dec 2024 05:33:25 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIi0o-0000000BX1x-19C5
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Dec 2024 05:33:23 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733290400;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=P2g3bhmmojUvsrqFJkcem25HX+I+3zq50u2ZMd5NGWU=;
	b=eZPw8q+iyJOMj0BeNww5BAamEly+HdsRywK6ycDI/zdBYiMPKui26NlGnWSmv1KEER13m6
	qhdUV9/bwdDmqUHcGNYga2qRQvYHXLxoqlgeqUzXJSLPprA75eofoN3P18O4Tro/rHlOoU
	twSr4XcyBT1Upo7jQqm02PiBFFMqrbvYS0HufVfu41elmlTYOu7RG10x1PDMeEFgmzmSL7
	e4+2RUy6yCAGFIqSXvtrlc5AjzFFGI55QR4YRww6CEJmSeI3LGH8/Q9dkuYe54kYGacMZB
	1v7u5FR12lYaHUJjdvNxOeTSzp5CRy6h07d5nlqr3AmBshS25ApfxVUjvAQ9jw==
Date: Wed, 04 Dec 2024 06:33:19 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: fix cooling-levels in pwm-fan
 for Radxa ROCK 5A/5C
In-Reply-To: <20241204045447.1036-2-naoki@radxa.com>
References: <20241204045447.1036-1-naoki@radxa.com>
 <20241204045447.1036-2-naoki@radxa.com>
Message-ID: <ed28e18be8db8274abffbcf840ce0550@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_213322_458525_9253482A 
X-CRM114-Status: GOOD (  11.38  )
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

Hello Fukaumi,

On 2024-12-04 05:54, FUKAUMI Naoki wrote:
> fan behavior is better than current configuration.

Could you, please, describe better what makes this configuration
better, which fan make and model are you using, etc.?

> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> this patch depends on [1] which depends on [2].
> 
> [1] 
> https://patchwork.kernel.org/project/linux-rockchip/cover/20241128121929.62646-1-naoki@radxa.com/
> [2] 
> https://patchwork.kernel.org/project/linux-rockchip/patch/20241119095113.78151-1-naoki@radxa.com/
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> index a1cac40d439e..472b41f0d47f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> @@ -36,7 +36,7 @@ analog-sound {
>  	fan: fan {
>  		compatible = "pwm-fan";
>  		#cooling-cells = <2>;
> -		cooling-levels = <0 64 128 192 255>;
> +		cooling-levels = <0 120 150 180 210 240 255>;
>  		fan-supply = <&vcc_5v0>;
>  		pwms = <&pwm3 0 60000 0>;
>  	};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
