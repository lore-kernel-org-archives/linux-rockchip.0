Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EFA8CCFA18
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 05:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O5vfQXG6QvAmjkvwaU9n+7XvwmVKwNXNwq7RMOHNmto=; b=Nl+ITKFZPXx29I
	TmeL3DNUq4HLWW5Qw/YHfU8pERg001BNhNyzEjNgLexr/iUh+F7EUEB7aXF6apj1DNXT37kzTHXS1
	9vjiQnts7hXlpByLtqXyYPA+YAsKqieIZK0l2x4oFmrcNT9+5p98hZpALLn2JoUQNHcqe2IVE+HEK
	OPsfTlim9OACO7eQZaqiIgBTq+zOo8AYAZDnMtbbaqBX90Ulyd/bNReCCYHUmEf/+9+AA1isIIoio
	glh8J19+K01IUIcs92Nz0zYKsI2xX8TBRH4ccCWEEjrQrOCuP1Wp/SG1JtUS6Tu5PRY6RVEsJRsSn
	YiN7YQ6uunftTaQinPIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIh5T-00000006ZTq-1e5a;
	Tue, 11 Nov 2025 05:38:39 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIh5Q-00000006ZTN-3UZv
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Nov 2025 05:38:38 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id B476B41031;
	Tue, 11 Nov 2025 06:38:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762839514; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Sh+zGugTaQu4fEYhd2YCRoL/l8/rF3Awiro9HJ/Zy+c=;
	b=nEwfy34XKA3FaJEwXylFCoQBSevIQri0SnmMaem9tsKxSEIB5g2NVdX63BRhkOlYA964xZ
	LKMQX71BSBlxsoxiAGfWKD9T0w/y5xJvipwYzUEmmCw/TStB6NYO1YAr44aL9kkhppsfQR
	jtgRDagAy/3GvaJ7Rkip1lOw+NgVdO5TSjhyr0foLTz4MyytOZGK/NDzD4EjkPTIYLk0do
	Z13lMFNhRU76Zi2jBhwPqkWsbJyKmmoAw5lMFfXQTRUpaz5I93RFm19yH8tQIXlKQOSf8H
	Eq9cU1rbVuXfvPUssEN3e33azVMNQPF0R268mFVRXY9S9VsiptaA7ZhHug/Ptg==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20251111050924.54880-5-naoki@radxa.com>
References: <20251111050924.54880-1-naoki@radxa.com> <20251111050924.54880-5-naoki@radxa.com>
Date: Tue, 11 Nov 2025 06:38:32 +0100
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jbx6244@gmail.com, pbrobinson@gmail.com, damon.ding@rock-chips.com, sebastian.reichel@collabora.com, kylepzak@projectinitiative.io, alchark@gmail.com, amadeus@jmu.edu.cn, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
MIME-Version: 1.0
Message-ID: <4babaf00-19f5-1d0d-6359-7f98897ef18e@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 4/4] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Make eeprom read-only for Radxa ROCK 3C/5A/5C
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_213837_066976_713F500F 
X-CRM114-Status: GOOD (  11.69  )
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

Thanks for this patch.  Please, see one remark below.

On Tuesday, November 11, 2025 06:09 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
> Make the BL24C16 EEPROM chips found on Radxa ROCK 3C, 5A and 5C SBCs
> read-only, because they contain factory-programmed data that isn't
> supposed to be modified by the end users.
> 
> Fixes: ee219017ddb50 ("arm64: dts: rockchip: Add Radxa ROCK 3C")
> Fixes: 89c880808cff8 ("arm64: dts: rockchip: add I2C EEPROM to rock-5a")
> Fixes: 3ddf5cdb77e6e ("arm64: dts: rockchip: add Radxa ROCK 5C")
> Link: https://dl.radxa.com/rock3/docs/hw/3c/v1400/radxa_rock_3c_v1400_schematic.pdf p.13
> Link: https://dl.radxa.com/rock5/5a/docs/hw/radxa_rock5a_V1.1_sch.pdf p.19
> Link: https://dl.radxa.com/rock5/5c/docs/hw/v1100/radxa_rock_5c_schematic_v1100.pdf p.18
> Link: https://github.com/radxa/u-boot/blob/next-dev-v2024.10/drivers/misc/radxa-i2c-eeprom.c

The same suggestion about using explicitly placed references, from
the patch 1/4 in this series, applies here as well.

> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts  | 1 +
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 1 +
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 1 +
>  3 files changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
> index 80ac40555e023..fa28b32f69108 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
> @@ -466,6 +466,7 @@ eeprom: eeprom@50 {
>  		compatible = "belling,bl24c16a", "atmel,24c16";
>  		reg = <0x50>;
>  		pagesize = <16>;
> +		read-only;
>  		vcc-supply = <&vcca1v8_pmu>;
>  	};
>  };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> index 041a0fff22ccb..d844a842d4cce 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> @@ -233,6 +233,7 @@ eeprom: eeprom@50 {
>  		compatible = "belling,bl24c16a", "atmel,24c16";
>  		reg = <0x50>;
>  		pagesize = <16>;
> +		read-only;
>  		vcc-supply = <&vcc_3v3_pmu>;
>  	};
>  };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> index dd7317bab6135..665eecce063a8 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> @@ -325,6 +325,7 @@ eeprom@50 {
>  		compatible = "belling,bl24c16a", "atmel,24c16";
>  		reg = <0x50>;
>  		pagesize = <16>;
> +		read-only;
>  		vcc-supply = <&vcc_3v3_pmu>;
>  	};
>  };


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
