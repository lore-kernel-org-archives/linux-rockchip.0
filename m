Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56ACECCFA18
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 06:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AZHCV0PoZMwdkpQZ1kK6KFCdBePE30ue8o5UuNPbv58=; b=IuCnbD9rDoquSU
	pIS8d7EIZUyAVOw555G4CnBKXxhwyHVnLpW521uQODg2ZVr2/cABjuc+CuN/rsNQXN5cPPTSN2NCF
	OAOFyQRVmXvlkGOYOaRVi61SzOcOok/ylS22eL+0fJiCG9pFmSGKvpo4oVpYmQYxqC6nnry4HFQhV
	hWdiqGjskUQ89XjmM/yL4RoaZchrQh+IfMOJIyJr/yy5l3ykoKsRZRBBCaETXxfAAt1c2OPIRBQ04
	YJaoLQGHNT0DhVO181fwkmZDAhOcwHSxKd6F29hZ+KD7Vu3VxpHZK1L7aTgZe0y4Ue1I5Z3DsAEVH
	11299pSrVlSAQ/i456uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIhUl-00000006amD-1S90;
	Tue, 11 Nov 2025 06:04:47 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIhUh-00000006alb-1ruj
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Nov 2025 06:04:45 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 5B3BE40EC0;
	Tue, 11 Nov 2025 07:04:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762841079; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=tFnWnYNonntnPyhOj8VV3+YkmvkZgjwIN8ZPTLl1dsw=;
	b=gi2vh2zMks4g7JyO64IYCVBSn6oOhYDKqLDX/qUGie4S0xnBHA96bS6SYn8dIRuNz12SUY
	ZVjYUiO657B+cY3NWhd7qXD3tcX84KCJ1iK6zpHn5iB//lA+2/MLCls8pe5zq2WEWk31Zj
	B06alFTRveR3g1hZr+MEQKewNhoQqEhPWo8tZZQQykq7DP0LrvDvl1RDvBrrsYF6TJMdhZ
	9QKBKzIvoMCvvYH37ndJTND4/bvolrgZNoK/10XiayFHQogBBnvmNRkf+iuMqEoocu8+0x
	W9KTJg1UcxkEZV6xpuiNc9qyqVqBDcJPKjUMduKBSmcf0GHKo15vmVwUjTOfqw==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20251111054112.55505-1-naoki@radxa.com>
References: <20251111054112.55505-1-naoki@radxa.com>
Date: Tue, 11 Nov 2025 07:04:33 +0100
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jbx6244@gmail.com, pgwipeout@gmail.com, didi.debian@cknow.org, jonas@kwiboo.se, ziyao@disroot.org, amadeus@jmu.edu.cn, nicolas.frattaroli@collabora.com, pbrobinson@gmail.com, wens@kernel.org, detlev.casanova@collabora.com, stephen@radxa.com, sebastian.reichel@collabora.com, liujianfeng1994@gmail.com, andy.yan@rock-chips.com, damon.ding@rock-chips.com, kylepzak@projectinitiative.io, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
MIME-Version: 1.0
Message-ID: <959ed84f-f1bc-4606-4272-dcd7d853e86a@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v2] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Turn all LEDs on at boot for Radxa boards
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_220443_918512_DC71171C 
X-CRM114-Status: GOOD (  15.76  )
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

Thanks for the v2.  Please, see a couple of remarks below.

On Tuesday, November 11, 2025 06:41 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
> Radxa's boards turn all LEDs on at boot(loader), but some boards don't

s/Radxa's/Radxa/ -- because those are boards made by Radxa, not some
boards belonging to Radxa;  if it were specifically about the board
designs, the possessive form would be fine, for example

> have `default-state` property in Linux kernel tree but have it in
> U-Boot tree instead[1].
> 
> This patch adds `default-state = "on"` for (almost) all LEDs (with a
> few exceptions which should be "off" such as RGB LEDs on E25 and LAN/
> WAN LEDs on E20C/E52C).
> 
> Also, remove following redundant properties:
>  linux,default-trigger = "default-on"; // use default-state = "on"
>  default-state = "off"; // default is "off"
> 
> [1]
>  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3328-rock-pi-e-base-u-boot.dtsi#L10-12
>  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3399-rock-4c-plus-u-boot.dtsi#L11-17
>  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi#L11-13
>  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3566-radxa-cm3-io-u-boot.dtsi#L10-12
>  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3566-rock-3c-u-boot.dtsi#L14-16
>  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3568-radxa-e25-u-boot.dtsi#L7-24
>  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3568-rock-3a-u-boot.dtsi#L11-13
>  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3588-rock-5b-u-boot.dtsi#L11-13
>  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3588s-rock-5a-u-boot.dtsi#L10-12

Hmm, this particularly complex reference presents us with a somewhat
interesting literary challenge. :)  There should be only one URL per
reference, so one way to resolve this would be to reword the opening
paragraph like this:

  Radxa boards are intended to turn all their LEDs on at boot time,
  as part of the intended visual feedback to the end users, but some
  boards don't have the associated "default-state" LED properties
  defined in the Linux kernel, yet they have them defined in U-Boot.
  This includes ROCK Pi E, [1] ROCK 4C+, [2] ROCK Pi 4, [3] CM3, [4]
  ROCK 3C, [5] E25, [6] ROCK 3A, [7] ROCK 5B, [8] and ROCK 5A. [9]

  [1] https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3328-rock-pi-e-base-u-boot.dtsi#L10-12
  [2] https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3399-rock-4c-plus-u-boot.dtsi#L11-17
  [3] https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi#L11-13
  [4] https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3566-radxa-cm3-io-u-boot.dtsi#L10-12
  [5] https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3566-rock-3c-u-boot.dtsi#L14-16
  [6] https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3568-radxa-e25-u-boot.dtsi#L7-24
  [7] https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3568-rock-3a-u-boot.dtsi#L11-13
  [8] https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3588-rock-5b-u-boot.dtsi#L11-13
  [9] https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3588s-rock-5a-u-boot.dtsi#L10-12

Of course, it would also make sense to order the list of boards and
the associated references alphabetically, which would make the list
more readable and is left as an exercise. :)

> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v2:
> - Add more URLs for reference
> - Reword commit message
> ---
>  arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts    | 1 -
>  arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts    | 1 +
>  arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 3 ++-
>  arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 1 +
>  arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts   | 2 --
>  arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts      | 1 -
>  arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts | 1 +
>  arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts      | 1 +
>  arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi  | 1 +
>  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts      | 1 +
>  arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts      | 3 ++-
>  arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts   | 2 --
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts   | 3 ++-
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtsi     | 1 +
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts      | 1 +
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts     | 3 ++-
>  16 files changed, 16 insertions(+), 10 deletions(-)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
