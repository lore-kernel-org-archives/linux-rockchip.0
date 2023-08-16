Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D18A5C27C52
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Aug 2023 22:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m7uaX4iwIknPs76lvD499XWrGlpXY1BZ3vVHe9Pp36E=; b=oPdfXEHxqfW4Oe
	OolprkG/pYL2srK8PfDuOiAPbZ+yjoGGpmR2od38bWK1cH/6/ZjzJvnoZXw2qIq6l1LViDPq30j2L
	NRFenCRTEYmXs+5FMJllf8zD2rpJVZXYaH1fragoBSGRy3L2+Sa5EVbETpWkOnQp9LZFvMMViN6K6
	XGmacGnA4YIeIJ7LVun6jtMggCTfc5pykv2BQbdiY+O+5jCk7BMHfQb0eB1HV+IRIP1I1FqZaWuMY
	TR1pajbTf1/QWx+fCE4w666HbmSkjn7PbYnNZNwj+vsLZC/IePch3cPUyLk5ENFjr8wget3eOBLA9
	MYYPhOaCXByzTXAAhWcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWOc1-0054g2-0i;
	Wed, 16 Aug 2023 22:03:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWOby-0054fJ-2m;
	Wed, 16 Aug 2023 22:03:32 +0000
Received: from i53875bbf.versanet.de ([83.135.91.191] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qWObx-0007bH-Js; Thu, 17 Aug 2023 00:03:29 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts32 changes for 6.6 #1
Date: Thu, 17 Aug 2023 00:03:28 +0200
Message-ID: <6299163.hdfAi7Kttb@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_150330_896518_1EF612A2 
X-CRM114-Status: GOOD (  10.26  )
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

The following changes since commit 06c2afb862f9da8dc5efa4b6076a0e48c3fbaaa5:

  Linux 6.5-rc1 (2023-07-09 13:53:13 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.6-rockchip-dts32-1

for you to fetch changes up to 1bf0dcb1e2a987a9281ae91f94e10c0de52c4952:

  ARM: dts: rockchip: Add rv1126 VOP_LITE support (2023-08-12 14:59:15 +0200)

----------------------------------------------------------------
Basic graphics support for rv1126, some more new peripherals for it as well
and some improvements for the edgeble-neu2 board based on this soc.

----------------------------------------------------------------
Jagan Teki (8):
      ARM: dts: rockchip: Add SFC node to rv1126
      ARM: dts: rockchip: Add rv1126 FSPI pins
      ARM: dts: rockchip: Add rv1126 uart5m2_xfer pins
      ARM: dts: rockchip: Drop EMMC_RSTN for edgeble-neu2
      ARM: dts: rockchip: Add 3V3_SYS regulator for edgeble-neu2
      ARM: dts: rockchip: Add 12V main supply for edgeble-neu2
      ARM: dts: rockchip: Add rv1126 PD_VO entry
      ARM: dts: rockchip: Add rv1126 VOP_LITE support

Stephen Chen (1):
      ARM: dts: rockchip: Enable SFC for edgeble-neu2

 .../boot/dts/rockchip/rv1126-edgeble-neu2-io.dts   | 29 +++++++
 .../arm/boot/dts/rockchip/rv1126-edgeble-neu2.dtsi | 27 ++++---
 arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi     | 26 ++++++
 arch/arm/boot/dts/rockchip/rv1126.dtsi             | 93 ++++++++++++++++++++++
 4 files changed, 165 insertions(+), 10 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
