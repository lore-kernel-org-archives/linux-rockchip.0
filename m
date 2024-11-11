Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F23AD12D61
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Nov 2024 15:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9dgVzUhk4wr/r6J7QYU0MzXC/RCHl0zFwBq4PwTIEHc=; b=tVtcYkAJFQbeiu
	syBhcSc7hg7Ra7PdIcEq/x6ZIvRvIHiCm8SF4CY/c1hgmQ1N9lQUsMQffkHkOgG+nazbLMj/N4Z3H
	5gt/Syo6rAXDCKluhcJGun/NltV/Vz6YAvlRt66CmBSGxa5dz+b5X1tS+Qb++upaaZk0GM+R9YTP6
	XPvtfj52wZ1BZC/3iHpCoycIezSPPDJgIuWyW5M/gioJw//dKBQojBh4ul3qQAkPAxXIBXi5wl0Bi
	GAqcnqKBMT7g+GaGd+cRd1vL4n3bikrN7uG+FYEGZlHwHunYmlHhESA2TONoY2G/fIzNObi+MB9Hn
	KZmNZNeLWMjIFGOyj6Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAWUo-00000000U5i-3H2m;
	Mon, 11 Nov 2024 15:38:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAWSQ-00000000Tk7-0Fmf;
	Mon, 11 Nov 2024 15:36:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ThWAXfGZS8HRrfIBYylsECXjcz2HP0PFLUiUEr86/kU=; b=lfUaCdun7Jn+qrDVRuO9GYPRE7
	RZw/7pOE8YFH6MAXO5Zvz3J4VxDRlrHK0FU1FnqDreZBPkcbclGI8Ag4koUxblW22uwYpLvzJTgkz
	cjehLAKaIJI3JVugjsRShDYTFgMg5je1YWewN8JUwHe1eTfrcMiftl8DbtCMd3OqAWmoHSdsCfSo+
	Sl3D7+1HvuSZEtzDvem31wTXyFffyFmsOK/brqP5hCqbZshVpZiirVrxCHSX1DwxiNObiCx7/4jOd
	HRV34Tm8hRr7tkH4oacriPFRDQ9/EkPpj1Yg1cFYHfAvlnjgWyxdQ0thz6GeuYQVuitKPagOZtppx
	KLXORPnw==;
Received: from i53875b28.versanet.de ([83.135.91.40] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tAWSO-00046s-Mt; Mon, 11 Nov 2024 16:36:00 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [GIT PULL] Rockchip dts32 changes for 6.13 #1 - please ignore
Date: Mon, 11 Nov 2024 16:36:00 +0100
Message-ID: <3580458.V25eIC5XRa@diego>
In-Reply-To: <6740039.4vTCxPXJkl@diego>
References: <6740039.4vTCxPXJkl@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241111_073602_141451_3FC58CEA 
X-CRM114-Status: GOOD (  16.34  )
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

I messed up the subject, this was supposed to be #2

New one coming up in a minute.


Heiko

Am Montag, 11. November 2024, 16:35:03 CET schrieb Heiko Stuebner:
> The following changes since commit bdb2696ac5786ed3f43520e700347fe2152ea199:
> 
>   ARM: dts: rockchip: Add Relfor Saib board (2024-10-14 11:35:50 +0200)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.13-rockchip-dts32-2
> 
> for you to fetch changes up to 2c3944d952ec4d3428a8d3163be2263579d1939a:
> 
>   ARM: dts: rockchip: adapt regulator nodenames to preferred form (2024-11-09 18:43:23 +0100)
> 
> ----------------------------------------------------------------
> Fixed-regulator nowadays has preferred node-naming scheme set in the
> binding. This gets all boards on the same state for Rockchip arm32-dts.
> 
> ----------------------------------------------------------------
> Johan Jonker (1):
>       ARM: dts: rockchip: adapt regulator nodenames to preferred form
> 
>  arch/arm/boot/dts/rockchip/rk3036-kylin.dts        |  2 +-
>  arch/arm/boot/dts/rockchip/rk3066a-bqcurie2.dts    |  4 ++--
>  arch/arm/boot/dts/rockchip/rk3066a-marsboard.dts   |  6 ++---
>  arch/arm/boot/dts/rockchip/rk3066a-mk808.dts       | 12 +++++-----
>  arch/arm/boot/dts/rockchip/rk3066a-rayeager.dts    | 16 ++++++-------
>  arch/arm/boot/dts/rockchip/rk3128-evb.dts          |  4 ++--
>  arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts     | 28 +++++++++++-----------
>  arch/arm/boot/dts/rockchip/rk3188-bqedison2qc.dts  | 14 +++++------
>  arch/arm/boot/dts/rockchip/rk3188-px3-evb.dts      |  2 +-
>  arch/arm/boot/dts/rockchip/rk3188-radxarock.dts    |  8 +++----
>  arch/arm/boot/dts/rockchip/rk3228-evb.dts          |  2 +-
>  arch/arm/boot/dts/rockchip/rk3229-evb.dts          | 16 ++++++-------
>  arch/arm/boot/dts/rockchip/rk3229-xms6.dts         | 16 ++++++-------
>  arch/arm/boot/dts/rockchip/rk3288-evb-act8846.dts  |  4 ++--
>  arch/arm/boot/dts/rockchip/rk3288-evb.dtsi         |  8 +++----
>  .../dts/rockchip/rk3288-firefly-reload-core.dtsi   |  2 +-
>  .../boot/dts/rockchip/rk3288-firefly-reload.dts    | 18 +++++++-------
>  arch/arm/boot/dts/rockchip/rk3288-firefly.dtsi     | 16 ++++++-------
>  arch/arm/boot/dts/rockchip/rk3288-miqi.dts         |  8 +++----
>  arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts  |  6 ++---
>  arch/arm/boot/dts/rockchip/rk3288-phycore-som.dtsi |  6 ++---
>  arch/arm/boot/dts/rockchip/rk3288-popmetal.dts     | 10 ++++----
>  arch/arm/boot/dts/rockchip/rk3288-r89.dts          |  8 +++----
>  arch/arm/boot/dts/rockchip/rk3288-rock2-som.dtsi   |  4 ++--
>  arch/arm/boot/dts/rockchip/rk3288-rock2-square.dts |  6 ++---
>  arch/arm/boot/dts/rockchip/rk3288-tinker.dtsi      |  4 ++--
>  arch/arm/boot/dts/rockchip/rk3288-veyron-brain.dts |  6 ++---
>  .../dts/rockchip/rk3288-veyron-chromebook.dtsi     | 10 ++++----
>  arch/arm/boot/dts/rockchip/rk3288-veyron-edp.dtsi  |  4 ++--
>  .../arm/boot/dts/rockchip/rk3288-veyron-fievel.dts | 10 ++++----
>  .../arm/boot/dts/rockchip/rk3288-veyron-mickey.dts |  4 ++--
>  arch/arm/boot/dts/rockchip/rk3288-veyron-pinky.dts |  4 ++--
>  arch/arm/boot/dts/rockchip/rk3288-veyron.dtsi      |  8 +++----
>  arch/arm/boot/dts/rockchip/rk3288-vmarc-som.dtsi   |  2 +-
>  arch/arm/boot/dts/rockchip/rk3288-vyasa.dts        | 18 +++++++-------
>  .../rockchip/rockchip-radxa-dalang-carrier.dtsi    |  8 +++----
>  arch/arm/boot/dts/rockchip/rv1108-elgin-r1.dts     |  2 +-
>  arch/arm/boot/dts/rockchip/rv1108-evb.dts          |  2 +-
>  .../boot/dts/rockchip/rv1126-edgeble-neu2-io.dts   |  6 ++---
>  .../arm/boot/dts/rockchip/rv1126-edgeble-neu2.dtsi |  2 +-
>  40 files changed, 158 insertions(+), 158 deletions(-)
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
