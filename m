Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 797E0E7717F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 12:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=st0jo+9GpxBwy2pwma9TgpLAlvv0tsR43P19jRtKAmY=; b=yR1R+syHr4EP203LE0QHNwRZVJ
	L866/M8hn6mmQH7xI4V7mPS9qQyzrYDxOsSa/jLc7+UPgYZDhTEoAttFTIIE7Mikp0Fxa8KIo6ld/
	Ml0hPq2mb27D4yzcKhQkVfMI08L0kWW/swUPIpl5O4BxNARgcy9A77s2p5DL02QON3ubjpMKLHZoc
	RfXfBPdnL1AGXn6OhGRPhD14lxEbG+u7cL9P86BEF6Hq8rKcFI/Np8i99rFIZpayWQDnBZRCS8PkM
	xDTDr02vIs0fnh0Y9oc9nqlNUbWedfwwoLMk83g62vOwoOlhHggF4a9l5+dAQyM6/UkbFEEOlTtdh
	zmxgv/9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNARd-00000009zs2-3Z3k;
	Mon, 16 Dec 2024 12:43:29 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNARb-00000009zrS-2ElL
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Dec 2024 12:43:28 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1734353003;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xKXXz6P4+BYl3ua8DphqPWqvACQosGl10JmiUMXqOcc=;
	b=ktAwb+s6gY0nQV/J6MM1lpTdJvZPKnVbAeAbCcWKbbwITGDK1TAirNjlcen5SbWsoIa2bJ
	QqRQlIGutA+HdSpJ77f7m3rm34DiIxh4W1x/UY2HBgGSKvUip86ztNX61am4teYETXADUQ
	fe1vno/BCPlGBKEWqTxi7bIcS4gamsi+GydGMC+AZqqtGZPCI0cckmEvG0XCHh81zSkF52
	R7UTYhoJ01QxAYsr2dr8a8ucOzu86z+YPno+n7rnrhgcjWXGMiK6hctm5qjVwrbBMg56gU
	uzZlln7LoGLkGnF6sLZcW38V0+kv9mBJAdNI4p9OJcup7tpTTdw6cnUT/toTCQ==
Date: Mon, 16 Dec 2024 13:43:22 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 02/12] arm64: dts: rockchip: Change node name for
 pwm-fan for Radxa ROCK 5C
In-Reply-To: <20241216113052.15696-3-naoki@radxa.com>
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-3-naoki@radxa.com>
Message-ID: <629ae206a3a463da7839fa4ee438f381@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_044327_738140_DCF997B6 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
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

On 2024-12-16 12:30, FUKAUMI Naoki wrote:
> Use more common name "pwm-fan" for pwm-fan node. No functinal change.
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

Looking good to me, as a preparatory patch.  Please, feel free
to include:

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
> Changes in v5
> - Reword commit message
> Changes in v4
> - new
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> index 23e9b447b6f0..630f026d856c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> @@ -68,7 +68,7 @@ led-1 {
>  		};
>  	};
> 
> -	fan {
> +	pwm-fan {
>  		compatible = "pwm-fan";
>  		#cooling-cells = <2>;
>  		cooling-levels = <0 64 128 192 255>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
