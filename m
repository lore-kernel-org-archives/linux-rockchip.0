Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A529FCDE004
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 04:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=toXb1uS0ybBLrC/PzKZGDNbv8xZP1naemW75VAvuyjs=; b=cwQRGVLlXfxiPf
	I9d4Ecj8RfcCyRzts/dE3hWSTYAW8F9JIvGLupvXoJHfQm+QcFeII6iwW2O50PPawBuTrHqf1COkN
	SGCZupV4yOStlGMNfPBss/6yWc8oC482V7AxZTvJDHDAdYjgxBsq5IbiZG/aw9mr62jFyNJbY75d6
	ve7/o/U62scvB04tA+uvNyJu7ID8bupql3MqbJq7G/HyhfveIbnZMzK578WulmKwL0ncOcwXdPNVF
	FNUKbHizJ/sUsimn+jyOALerR11srKqtymSde3upGFxUdRmaHJHKFp4y4/z+C3Wj2CQlhjMl9YB9x
	RONqEpf5tr0EcBGLsxcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJl94-0000000BWgL-1I59;
	Fri, 14 Nov 2025 04:10:46 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJl90-0000000BWfY-2zej
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Nov 2025 04:10:45 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 07B2941093;
	Fri, 14 Nov 2025 05:10:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763093438; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=1FakEweQCQyM9Tjxo+3tsuswoEc076aZkD9QxAe9WpA=;
	b=F301Ejx3a5rBH3Uz09pZBNwUZ1USu+YNDyml+v+34dX6LgK2JH1RJ7IqdsaqaOKaRUqXzR
	Kv5DBiswjB2whTp/7HR7rcfGM8gK9gQ0jm/P05xxy+nBEPuM8wYB1zmWUbg/uDtri0tObI
	5qn62hg5LBl+1QWNCd2sFl0ajhOZMtA866VxtKBoz64HjDcF8mHzcWbiflp7u+0gmCRtv4
	H2J4tkC2Ef3drMo727VfnBRc/zUVMgWvTwOldeLcrsoRlp2x9OMroF2aRl2SrmjrLwizHY
	KiVq4RxLMU+H3cesnVpLfjxcVtCDZVr7HTRqFiyC8HCO7kO/h6Q0qOGkApgsGA==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20251113124222.4691-3-naoki@radxa.com>
References: <20251113124222.4691-1-naoki@radxa.com> <20251113124222.4691-3-naoki@radxa.com>
Date: Fri, 14 Nov 2025 05:10:32 +0100
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, pgwipeout@gmail.com, didi.debian@cknow.org, jonas@kwiboo.se, ziyao@disroot.org, amadeus@jmu.edu.cn, nicolas.frattaroli@collabora.com, pbrobinson@gmail.com, wens@kernel.org, detlev.casanova@collabora.com, stephen@radxa.com, sebastian.reichel@collabora.com, liujianfeng1994@gmail.com, andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com, kuninori.morimoto.gx@renesas.com, damon.ding@rock-chips.com, kylepzak@projectinitiative.io, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, "Quentin Schulz" <quentin.schulz@cherry.de>
To: "FUKAUMI Naoki" <naoki@radxa.com>
MIME-Version: 1.0
Message-ID: <7d200139-3da1-9d0d-6a30-5791e56b429b@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v3 2/3] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Turn on heartbeat LED at boot for Radxa boards
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_201043_872076_1ECB485E 
X-CRM114-Status: GOOD (  13.07  )
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

(+ Quentin)

On Thursday, November 13, 2025 13:42 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
> Currently, on Radxa boards, the power LED is turned on immediately
> after power-up, independent of software control. The heartbeat LED and
> other available LEDs are subsequently turned on by the initial
> software, such as U-Boot, to indicate software is running.
> 
> However, the device tree description for this behavior is inconsistent
> and fragmented, with definitions split between the main Linux DTS
> files and separate U-Boot files (u-boot/arch/arm/dts/*-u-boot.dtsi).
> 
> This patch addresses the description fragmentation for the heartbeat
> LED by consolidating its default-state = "on" definition from the
> U-Boot files into the main Linux DTS.
> 
> - Radxa CM3 IO board
>   https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3566-radxa-cm3-io-u-boot.dtsi#L10-12
> 
> - Radxa CM3I
>   https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3568-radxa-e25-u-boot.dtsi#L7-24
> 
> - Radxa ROCK 3A
>   https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3568-rock-3a-u-boot.dtsi#L11-13
> 
> - Radxa ROCK 3C
>   https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3566-rock-3c-u-boot.dtsi#L14-16
> 
> - Radxa ROCK 4C+
>   https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3399-rock-4c-plus-u-boot.dtsi#L11-17
> 
> - Radxa ROCK 4D
>   (New)
> 
> - Radxa ROCK 4SE
>   Radxa ROCK Pi 4A/A+/B/B+/C
>   https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi#L11-13
> 
> - Radxa ROCK 5A
>   https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3588s-rock-5a-u-boot.dtsi#L10-12
> 
> - Radxa ROCK 5B
>   https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3588-rock-5b-u-boot.dtsi#L11-13
> 
> - Radxa ROCK 5B+/5T
>   (New)
> 
> - Radxa ROCK Pi E
>   https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3328-rock-pi-e-base-u-boot.dtsi#L10-12
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts    | 1 +
>  arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 1 +
>  arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 1 +
>  arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts | 1 +
>  arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts      | 1 +
>  arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi  | 1 +
>  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts      | 1 +
>  arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts      | 1 +
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtsi     | 1 +
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts      | 1 +
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts     | 1 +
>  11 files changed, 11 insertions(+)

[snip]

I'm sorry, but I disagree with the employed approach.  As already
discussed at length in the v2 of this series, the right and more
useful approach would be to use the LED_BOOT feature in U-Boot and
to move the associated DT definitions from the U-Boot-specific DTs
to the Linux kernel's DTs.

IIUC, there are still some issues with the way U-Boot handles the
LEDs on some Radxa boards that way, [2] but the right approach would
be to get the DT changes implemented now, and resolve the issues
at the U-Boot side afterwards.  It will take a while anyway until
the kernel's DT changes reach U-Boot, so there should be plenty of
time to resolve the observed U-Boot issues.

[1] https://lore.kernel.org/linux-rockchip/20251111054112.55505-1-naoki@radxa.com/T/#u
[2] https://libera.catirclogs.org/linux-rockchip/2025-11-13#1763038074-1763038779;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
