Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BB76CDE00B
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 04:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xQOOOQtNtQn3Rpjp83EipMNxeA3Vsun8UYr7pPhMcqI=; b=x1IFod20bnJoSs
	pFN7WKtKniAeY0gPqaYZgeFC7a5ELd12rsn2bWTtepbGAWrG+vGvhb2jlmjTuoE1HwFLSP2U9Bh0Q
	ULoTQA9EZ5/2URy2yyRBQWMqd+wCrgCRPepKbQzpbvUR31FM2pr+6Id0tuNl9OC1etYu5B+woNzZB
	+re9VXQfHNcBdpCvxARdfudw2tRQfdD57vF1f34w23zuIfPjAISJlWH5NMEd5GyL6KOVFZN1cmARp
	OGEmrEX8DpETkrIN3/cxaW1dL29yMfSPwyCKuXm4Ne/WMJjKdEJagut1HlUUjBiXUs4Y/IbDqg0R4
	inrfRSVcoB2CMuhaBdYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJlIy-0000000BXDe-3t3p;
	Fri, 14 Nov 2025 04:21:00 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJlIv-0000000BXDD-3jmr
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Nov 2025 04:20:59 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id E899140ECE;
	Fri, 14 Nov 2025 05:20:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763094054; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=7mqMVZGjRGxSNiyx8hmsml8fGRYwKvUMkxvdQwmOrmE=;
	b=KRVBEpweTP8WmX95GZlLn1IDJLjQmUiTLs3uBnT6f3CN9d3Nz5hv/IeM2G/SYCJRcSzIX6
	o9tDwOiKnwMxrziL/wYwoC5uzGUOq0/CKg91lXPupBJuIoKcfNRniAAtRj9F8tG9xLjJTO
	0qdCHDGPKzqYF9buCf2IHOnhoFj6ItOW0rFvtZiugouulI8lAxu9VIpHm0WpcRhRXoLs4J
	AtdURia3VXG9jWU065k6EZtqu9DjVi3+zjF3NEQEbkwtf/JTV1w9FvaW+KkVsdiqxaJRjN
	Ziu7q5sw8MlXk5gxCiRdJKZEy9UptswwUFdIOHL9z9sq4iWmztsFGSphqBN9Dg==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20251113124222.4691-4-naoki@radxa.com>
References: <20251113124222.4691-1-naoki@radxa.com> <20251113124222.4691-4-naoki@radxa.com>
Date: Fri, 14 Nov 2025 05:20:50 +0100
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, pgwipeout@gmail.com, didi.debian@cknow.org, jonas@kwiboo.se, ziyao@disroot.org, amadeus@jmu.edu.cn, nicolas.frattaroli@collabora.com, pbrobinson@gmail.com, wens@kernel.org, detlev.casanova@collabora.com, stephen@radxa.com, sebastian.reichel@collabora.com, liujianfeng1994@gmail.com, andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com, kuninori.morimoto.gx@renesas.com, damon.ding@rock-chips.com, kylepzak@projectinitiative.io, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
MIME-Version: 1.0
Message-ID: <7b668c0b-f685-d909-4b05-02778a688839@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v3 3/3] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Remove default-state =?utf-8?q?=3D?=
 =?utf-8?q?_=22off=22?= from LEDs for Radxa boards
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_202058_143742_A0DB14A8 
X-CRM114-Status: GOOD (  12.90  )
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

Hello Naoki,

On Thursday, November 13, 2025 13:42 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
> Currently, on Radxa boards, the power LED is turned on immediately
> after power-up, independent of software control. The heartbeat LED and
> other available LEDs are subsequently turned on by the initial
> software, such as U-Boot, to indicate software is running.
> 
> However, the device tree description for this behavior is inconsistent
> and fragmented, with definitions split between the main Linux DTS
> files and separate U-Boot files (u-boot/arch/arm/dts/*-u-boot.dtsi).

I'm sorry, but the two paragraphs above seem to be redundant and
should be deleted, because they actually don't help with describing
what this patch attempts to achieve.

> This patch addresses inconsistency by removing redundant default-state
> = "off" definitions, as this is already the default configuration.

Mentioning inconsistency here also seems redundant.

> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts | 2 --
>  arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts | 2 --
>  2 files changed, 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> index b324527561558..79d316a1d8495 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> @@ -62,7 +62,6 @@ leds {
>  
>  		led-lan {
>  			color = <LED_COLOR_ID_GREEN>;
> -			default-state = "off";
>  			function = LED_FUNCTION_LAN;
>  			gpios = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
>  			linux,default-trigger = "netdev";
> @@ -78,7 +77,6 @@ led-sys {
>  
>  		led-wan {
>  			color = <LED_COLOR_ID_GREEN>;
> -			default-state = "off";
>  			function = LED_FUNCTION_WAN;
>  			gpios = <&gpio4 RK_PC0 GPIO_ACTIVE_HIGH>;
>  			linux,default-trigger = "netdev";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts b/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
> index 854c118418eb8..f737769d4a007 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
> @@ -71,7 +71,6 @@ leds-1 {
>  
>  		led-1 {
>  			color = <LED_COLOR_ID_GREEN>;
> -			default-state = "off";
>  			function = LED_FUNCTION_LAN;
>  			linux,default-trigger = "netdev";
>  			pwms = <&pwm14 0 1000000 PWM_POLARITY_INVERTED>;
> @@ -80,7 +79,6 @@ led-1 {
>  
>  		led-2 {
>  			color = <LED_COLOR_ID_GREEN>;
> -			default-state = "off";
>  			function = LED_FUNCTION_WAN;
>  			linux,default-trigger = "netdev";
>  			pwms = <&pwm11 0 1000000 PWM_POLARITY_INVERTED>;

Removing the properties that introduce the default values is fine,
so with the remarks above addressed, please feel free to include

Reviewed-by: Dragan Simic <dsimic@manjaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
