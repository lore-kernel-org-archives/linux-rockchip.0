Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D7E6FF495E
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Mar 2026 13:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XJm8Pdu+1/TY6dwMHImu56qiLsTpqwn8p7RbKpOHAiI=; b=cPoRpi9Au4Zl64
	MkQ5FuRD0DhFC9Gcs8D8pI1fzfkNm7TbwdSCCZE90rolUkOJ4mh7JXkDXnOyFCRSnksj0LkpVHlQN
	CKs4Kgg1+UZLmVwotOatBOcu8Ow7H7rxpGmRiue9/Sbxfjf0i2HCT8Mm+spAQxP1N9DtuJKkx7F2D
	xG+UJY8WRio1PZ9rpwoXu7eZgcYZ41jr452ns4Z4AV7WPFzE2HyaGa+VvzbfWwsLS+rKABiLrHfTA
	Xw1HUOP51houaxfxr3rafIlxST73324mPlbIWW56NwdwLlkRADD9GsfE5TKV5ySf+0c9ajkKXNFCg
	mJgN0+UkNTuIEPqPrJ7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7Csd-0000000BMtZ-2elg;
	Mon, 30 Mar 2026 13:42:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7Csa-0000000BMt1-0ZlM
	for linux-rockchip@lists.infradead.org;
	Mon, 30 Mar 2026 13:42:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:In-Reply-To:References;
	bh=yK76Q+G4cMjhrvebg2OGZ4pK6jgJ3OiAWlzfTPAmIpA=; b=OeAHswtYEbfo+YcnsnweDZ6w8F
	dQQ3a52ADziTFqa4keV6CR1P9XJAPfqu2gwrI5ENSApcD8+diHQE1vIcFtMR9MWhFO+mJwjn40dQq
	ViUBE6FdgqAl88LmaSiTp/1yr0heNIBJSFJTB+Jbu8Bi02/u5IQRD0+YA2gqP8CmWWyteTQwoasnZ
	u43/Y6oZMMoqpA6vXtnawl3p8KteD3nmJ1CovROgZTkX8dUh3o0XL+wAc9CkGQiKgMi1SaSYXCU7s
	ldnBNS0Lc4nHd1ldKv24Lz14/2Oli7g/a2c83rTayZV4tVJ/e4phs772hNith0Z6nYIHlA+Suwc1Z
	lB/zTLaw==;
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Rockchip clock changes for 7.1 #1
Date: Mon, 30 Mar 2026 15:42:00 +0200
Message-ID: <3746710.R56niFO833@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_064208_206497_7FC51EEB 
X-CRM114-Status: GOOD (  10.62  )
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

Hi Mike, Stephen,

please find below a pull-request with a Rockchip clock change for 7.1
One new clock driver and sone newly accessible existing clocks.

Please pull.

Thanks
Heiko


The following changes since commit 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f:

  Linux 7.0-rc1 (2026-02-22 13:18:59 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v7.1-rockchip-clk1

for you to fetch changes up to 41b1a6760959017c4fa1dbc7c3cc318406ab1455:

  clk: rockchip: rk3568: Add PCIe pipe clock gates (2026-03-10 09:34:27 +0100)

----------------------------------------------------------------
New clock driver for the RV1103B. For whatever reason that SoC only got
a B addition to the name, but major changes internally - likely it is
pin compatible with the non-b-variant. Other change is actually
exporting PCIe pipe-clocks that were already in the binding.

----------------------------------------------------------------
Fabio Estevam (2):
      dt-bindings: clock: rockchip: Add RV1103B CRU support
      clk: rockchip: Add clock controller for the RV1103B

Shawn Lin (1):
      clk: rockchip: rk3568: Add PCIe pipe clock gates

 .../bindings/clock/rockchip,rv1126b-cru.yaml       |   1 +
 drivers/clk/rockchip/Kconfig                       |   7 +
 drivers/clk/rockchip/Makefile                      |   1 +
 drivers/clk/rockchip/clk-rk3568.c                  |   6 +
 drivers/clk/rockchip/clk-rv1103b.c                 | 658 +++++++++++++++++++++
 drivers/clk/rockchip/clk.h                         |  49 ++
 include/dt-bindings/clock/rockchip,rv1103b-cru.h   | 220 +++++++
 7 files changed, 942 insertions(+)
 create mode 100644 drivers/clk/rockchip/clk-rv1103b.c
 create mode 100644 include/dt-bindings/clock/rockchip,rv1103b-cru.h




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
