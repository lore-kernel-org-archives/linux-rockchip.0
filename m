Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91B95CD4F49
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KRcXSfC6D5wyqYivKokSXKjynaod3+cBL8sgdLqM26c=; b=fuIa7nnX1cBe+b
	rtYSG8xJegJqr+tx1uMncaQl0DCcBjMy/V5BqpxPqxjglS4apKuqFJNE5c78aE5xmzoQLs/pfbWcp
	p8nK2iAwU6EPyMHmV+DTQliUl5eVxMP/SRqaANAue8WMBs1Q0iWixjeKD8Epm33l7AL1BVags7ZAw
	l4zAXTlvouCqPLTnfLR9jlhtI9tUN255OgujRwSmn03vKc7ZGacQseBt+tI7OfPj4LD9GB4jDcCCU
	4N4x4/vF6Gf3a2eDnd3+WXA8jeeIopslyAMJB29XfCGXgf7zDIWGRDVWM6mF8w2dpkOrAARIommnF
	I+OO11fhYYbpT+Kd5xJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJkz2-0000000BWFP-3yeB;
	Fri, 14 Nov 2025 04:00:24 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJkz0-0000000BWEr-09at
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Nov 2025 04:00:23 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 1222140ECE;
	Fri, 14 Nov 2025 05:00:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763092818; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=9/8XmcpVQphc5dDgFybboRJQnLNpfLDi8NoWEM3kTPY=;
	b=WspfHvZcwKEBzzIhnKt1ORupe5QziflyhEsb+/jmcm2fEieJyGHZ+o4Ymv4klPBknZcQ3w
	1Lorpd0BohQ6rZeRpHFYmwI0NUO0F1maOhbpG3B9957zlb1ur6ORWzBWuhdssf5J1Asvrg
	R6fuPbWqva8O5l30MCM/cZcnWQaRO+sieNCorCQRfoD3JzGASceDgs4x9y/Xk8BtQ3ud/i
	FhHqe7cI8EjPO4V/OfMwHWwHTOTcR7I8mNAMCafEzSVg8zvBifz5TRJQ8bCQfSRFFHr6Wm
	i1ulR0fB8KiRZrtXOJisuD31KesJ1z8UFq3QRCM+qo5kKjr2oO6HCZgwjbHYEA==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20251113124222.4691-2-naoki@radxa.com>
References: <20251113124222.4691-1-naoki@radxa.com> <20251113124222.4691-2-naoki@radxa.com>
Date: Fri, 14 Nov 2025 05:00:07 +0100
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, pgwipeout@gmail.com, didi.debian@cknow.org, jonas@kwiboo.se, ziyao@disroot.org, amadeus@jmu.edu.cn, nicolas.frattaroli@collabora.com, pbrobinson@gmail.com, wens@kernel.org, detlev.casanova@collabora.com, stephen@radxa.com, sebastian.reichel@collabora.com, liujianfeng1994@gmail.com, andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com, kuninori.morimoto.gx@renesas.com, damon.ding@rock-chips.com, kylepzak@projectinitiative.io, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
MIME-Version: 1.0
Message-ID: <b394e1a7-a53f-9303-495f-776da0ad3118@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v3 1/3] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Use default-state for power LED for Radxa boards
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_200022_328648_D0F33FE2 
X-CRM114-Status: UNSURE (   9.31  )
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
> 
> This patch addresses the inconsistency for the power LED by using
> default-state = "on" instead of linux,default-trigger = "default-on".
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts    | 1 -
>  arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts      | 1 -
>  arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts      | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts   | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts     | 2 +-
>  6 files changed, 4 insertions(+), 6 deletions(-)

[snip]

Thanks for this patch.  The introduces changes look consistent
to me, so please feel free to include

Reviewed-by: Dragan Simic <dsimic@manjaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
