Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35D26E7718B
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Dec 2024 10:34:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WBF/Hhl3aTA/DED2CnpG/Z4lGlXvuScKqSYriF74nXQ=; b=LRN6HhPANXrcj/eon5fHlsFmn+
	5OKpGs00wVzVW6elA8PAQ5I5Q1FpebcpTcif8oFpyypEl63MBtPnht6DDs5FcN1dvaXARFk4XKOWT
	8x3tUoBCdus8z2SNkPeYyAy4X0+M2/mjsEsGD0T+0TKtNg0TrBMduQpT3w1jQbz7bfiLFjlotAYtn
	0j8Ops69SIp56LqBNuSqEaZA0/TWFf7FhJ4eG62XM40zqkXsOwjbVOTy8ThJvRCarSYoSXG3yKovW
	8DitExbCz+18mqxvUmbNW0XTysCUcOuhC0d5pveWOL6FNHQvnAtZfgqS3QoJATFviHGPXeJGIHK4D
	/k493p/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tPflA-00000009ncy-1Lc6;
	Mon, 23 Dec 2024 10:34:00 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tPfl8-00000009ncY-0YMs
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Dec 2024 10:33:59 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1734950036;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+uDqEKfZmjRtcwf9AXrkiBbUT1Vkgc3fKlMIoDQ7vkw=;
	b=c2VpAnRbRY22cr9v8qkdIJ+xMW0Gvvutt4eXuOrsvWZz/YeT1mk1KgyAIH7wPOMPMeT9KT
	GSSKOFOu2HZhv2LKXsNbGB4rKt2b1JTE4YqmC6LCw+NJFE+sYtog5uL/Fk6TWczpxfcwLD
	Si1PMr/jsbGz3eCUKEUaOsO8ajB7RkgenpztFkCK9SNOtyewaQlvtfr/mVhz1+gOCREokA
	p1YSA2/bOkAPqNEFzKpWXOxgaH1QbLoQBzAbnrymakhMcd61pn7RC+sbVRWG9M27tqfxic
	L/E4nYEyd05g6+ZAqSHQUfyG358QJPKZzzqTg3fMOwLcT/uwcOBM7sR3KSQCMg==
Date: Mon, 23 Dec 2024 11:33:56 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v6 2/7] arm64: dts: rockchip: Use a longer PWM period for
 the fan on Radxa ROCK 5C
In-Reply-To: <20241223013926.1134-3-naoki@radxa.com>
References: <20241223013926.1134-1-naoki@radxa.com>
 <20241223013926.1134-3-naoki@radxa.com>
Message-ID: <b474fcce9df1ec4474237959fddcd84e@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241223_023358_349356_73E17558 
X-CRM114-Status: GOOD (  13.53  )
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

On 2024-12-23 02:39, FUKAUMI Naoki wrote:
> The fan on Radxa ROCK 5C is driven via an AO3416 MOSFET, which has a
> total switch-on time of 0,6us and a total switch-off time of 6us [1],
> meaning that the current PWM period of just 10us is too short for
> fine-grained fan speed control. Increase the PWM period to 60us, so
> that the switch-on and switch-off time of the MOSFET fall within a
> more reasonable ~10% of the full period, thus making lower PWM duty
> cycles meaningful.
> 
> [1] https://www.aosmd.com/pdfs/datasheet/AO3416.pdf
> 
> Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

As a note, it seems that you forgot to include my Reviewed-by tag
for this patch in the v6. [*]

[*] 
https://lore.kernel.org/linux-rockchip/616cd7b81d5469de7bd5a84d2d23387f@manjaro.org/

> ---
> Changes in v6:
> - none
> Changes in v5:
> - Reword commit message (Alexey Charkov)
> Changes in v4:
> - none
> Changes in v3:
> - none
> Changes in v2:
> - Reword commit message
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> index 23e9b447b6f0..910ec67bd4eb 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> @@ -73,7 +73,7 @@ fan {
>  		#cooling-cells = <2>;
>  		cooling-levels = <0 64 128 192 255>;
>  		fan-supply = <&vcc_5v0>;
> -		pwms = <&pwm3 0 10000 0>;
> +		pwms = <&pwm3 0 60000 0>;
>  	};
> 
>  	pcie2x1l2_3v3: regulator-pcie2x1l2-3v3 {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
