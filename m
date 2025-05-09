Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF6BBC3ABCE
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 21:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gvrub4VqRMaiMFWU4ujyHIUlFpREVOiuEp2AkzyfH08=; b=PIC91aeO8eYPZK
	Fb1a8NLNOUxdeYjzy+kFwoL58RJv96LB+TCD42TZCzbXKvTi0yIevJOJWFBHfVHG/GLABsoPUbmrQ
	fYmrgsLSzsMlrInXung2SeemL4No6Sq8sxtyktHKioeQvHV1iQu5U3RAz1dy2h35p+f2NBJNMW82X
	Nk4bWWWLV2DZVJmK8w4FmyU2MLz0ad2qIR0MIYN2OZL8DR93Lc03w5O8dR4bp45owzrlunNzqpC47
	PF/kP7xWBKSZcFtgeQpSUHDwRk9yFR3yunjfB0Pc1N7g9zTK+mDsajPUiLVJ22qlCwQJEwrc99F/j
	3NutWRoJyDOnUjh/64Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDUxm-00000004ueu-3ESw;
	Fri, 09 May 2025 21:08:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDTth-00000004i70-2trg;
	Fri, 09 May 2025 20:00:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=KL6I1YmxNyuddUkwhXXWOAEg5l5FH054h54i4n0mk9A=; b=Pyv7+A++X2qXrdKmdackh5Cjmi
	B9Nyd3jGnhX3hYmeumXkeMOGKr4FpDEPOlbbS0ytzvkCOhlhTNJ6h1ceBAYGPeIlg7X/gwSgw7XcB
	1qIS7bVdgpYEBy3MBHIs19mt0OjsmvBNlsUJTNCCxrFYHUMr//HgecLQDDLujTqJc+kDOXmv7tqYh
	CV0EylPgXa3UGkVeLsYIPfjRtglRPjRJmv27hrcvlYT0eOGULIt76/jy6Mbx45sivLRU8p+UWUmJB
	22FYIhTxgK17ghYSGxoTR6NYRIHIguKAoY4PVdHFTiz93EonqnwUtBDxs9FhC2uM98XL5BfOgEVkL
	gOo4/EGA==;
Received: from i53875a1d.versanet.de ([83.135.90.29] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uDTtb-0004Jo-LF; Fri, 09 May 2025 22:00:35 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Yao Zi <ziyao@disroot.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 0/2] Support SD/SDIO controllers on RK3528
Date: Fri,  9 May 2025 22:00:23 +0200
Message-ID: <174682074858.2029046.4538748769888209188.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250508234829.27111-2-ziyao@disroot.org>
References: <20250508234829.27111-2-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_130041_726997_A0B81A5F 
X-CRM114-Status: GOOD (  17.74  )
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


On Thu, 08 May 2025 23:48:28 +0000, Yao Zi wrote:
> RK3528 features two SDIO controllers and one SD/MMC controller. This
> series brings the SD/MMC one up on Radxa E20C board. Both HS and SDR104
> modes are verified.
> 
> - Changed from v5
>   - Drop applied clock patches
>   - Rebase on top of linux-rockchip/for-next
>   - Link to v5: https://lore.kernel.org/all/20250506092206.46143-1-ziyao@disroot.org/
> - Changed from v4
>   - rk3528 clock driver
>     - Switch to auxiliary GRF
>     - drop rockchip_clk_register_grf_branches
>     - Rename branch_mmc_grf to branch_grf_mmc to make style consistent
>       (with branch_grf_gate)
>   - Link to v4: https://lore.kernel.org/all/20250417143647.43860-1-ziyao@disroot.org/
> - Changed from v3
>   - Drop applied binding patch of MMC controller
>   - Rebase on top of linux-rockchip/for-next
>   - Link to v3: https://lore.kernel.org/all/20250309055348.9299-1-ziyao@disroot.org/
> - Changed from v2
>   - Apply review tags
>   - Rebase on top of linux-rockchip/for-next and drop applied patches
>   - RK3528 devicetree
>     - Fix accidentally dropped status property of saradc node
>     - drop det and pwren pinctrls for SDIO{0,1} according to the
>       reference design
>     - Correct max-frequency for SDIO{0,1}
>   - rk3528-radxa-e20c devicetree
>     - Don't disable sdio for sdmmc as claimed in the hw design guide
>   - Link to v2: https://lore.kernel.org/all/20250305194217.47052-1-ziyao@disroot.org/
> - Changed from v1
>   - Apply review tags
>   - Rebase on top of linux-rockchip/for-next and saradc v2 series
>   - rk3528 clock driver:
>     - explicitly include minmax.h, replace MAX() with more robust max()
>     - readability improvements
>     - fix error checks: ERR_PTR(-ENODEV), instead of ERR_PTR(ENODEV), is
>       returned when syscon_regmap_lookup_by_compatible() fails for missing
>       such syscon
>   - RK3528 devicetree
>     - Add default pinctrl
>     - Move the per-SoC property, rockchip,default-sample-phase, into the
>       SoC devicetree
>   - rk3528-radxa-e20c devicetree
>     - Assign sdcard to mmc1
>     - Add missing regulators
>     - Apply no-sdio for the sdmmc controller
>     - Sort nodes
>   - Link to v1: https://lore.kernel.org/all/20250301104250.36295-1-ziyao@disroot.org/
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: Add SDMMC/SDIO controllers for RK3528
      commit: 894a2640422208b1d3e4c238f126220d406e5fb1
[2/2] arm64: dts: rockchip: Enable SD-card interface on Radxa E20C
      commit: a2130d9123b23d74a717f52240fa3cb92bf8113c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
