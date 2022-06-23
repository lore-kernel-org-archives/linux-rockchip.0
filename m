Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5A38C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 16:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tZ6p25C55s2v5eD+QmXizml6qNd7FShpu2i9bugcPCQ=; b=KS6ji1rPz0LUA8
	21u5q+dpCwHAyid8nVy8vZucxBZOnhCBN7JiVRV4FCKiUjmXBLwV+/GnT1mb+VtkWizVdID2TigSU
	+SSHXoce3VCHWpPq0u4fnSntIFpEJRYxoABbRajpH75/hZtjrul7iZcBk/LLLk5cOAwFoSSQe5ad1
	w6Kz9956I/ZcDXl4/Y6vtvJmcjhZLE3VA8AZliCbPRrsZlo9VtziswrKGqIGo2VTXV0yifGl9xvHW
	WJ+YELZv11t/R1CxZgbUVbLy4OdiF+FHL+t6ioG5oa52ZUCQTON8WW0ZGDzWcC/MmYlBKmlB3QNSd
	vUXH3s7p6tScWCfdV8rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4PK1-00FngJ-8A; Thu, 23 Jun 2022 16:04:45 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4PJg-00Fnc8-0v; Thu, 23 Jun 2022 16:04:27 +0000
Received: from jupiter.universe (unknown [95.33.159.255])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4852766017DF;
	Thu, 23 Jun 2022 17:04:20 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1656000260;
	bh=zjDrFX45JCbBeibf/cBhGS7s1nuAsOUhgqAPOq3rbRg=;
	h=From:To:Cc:Subject:Date:From;
	b=TsVNhEoI98MAUIQkJPaWhfmD0sdrYQpC9cvsXv9JHQ2bszl61qUYPSFzqLaCIzbKl
	 DnKHf1MNcqrXJxPp6tNjpiTpYWloHzYVKMppk77y7yvlzugkg+EXFmQXs2K8cKvyaE
	 h6JyEzZ0qpeNhAhlGSphPZD9S3QL2o//zwnMhUChwjZhVAH7+SKty8lPjM/SrZL+gS
	 mh2A9vLHm6fhZ0cESUWBLOUNOarnznhZF4Ek71lKIMGVhyWj3jWKFaXtUyYaCoWp7w
	 By6hvtCCzmlYAupqHtZtiqUYHO7j8rYvKvJ6/iXDcflnBqg68C0fbHaw6GTC/lIQ0F
	 D68Sy+350fvng==
Received: by jupiter.universe (Postfix, from userid 1000)
	id C0904480122; Thu, 23 Jun 2022 18:04:17 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 0/5] RK3588 Clock and Reset Support
Date: Thu, 23 Jun 2022 18:03:24 +0200
Message-Id: <20220623160329.239501-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_090425_164823_22F12676 
X-CRM114-Status: GOOD (  10.54  )
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

RK3588 Clock and Reset Support

This has been part of a bigger patchset adding basic rk3588 support.
Since that gets more and more out of hand, I'm now sending patches
for each subsystem as individual patchset. Previou patchet:

https://lore.kernel.org/all/20220504213251.264819-1-sebastian.reichel@collabora.com/

Changes:
 * Sync'd against latest downstream changes
 * Update bindings according to Rob's comments, except for license
   (no feedback from Rockchip)

-- Sebastian

Elaine Zhang (5):
  dt-binding: clock: Document rockchip,rk3588-cru bindings
  clk: rockchip: add register offset of the cores select parent
  clk: rockchip: add pll type for RK3588
  clk: rockchip: clk-cpu: add mux setting for cpu change frequency
  clk: rockchip: Add clock controller for the RK3588

 .../bindings/clock/rockchip,rk3588-cru.yaml   |   59 +
 drivers/clk/rockchip/Kconfig                  |    8 +
 drivers/clk/rockchip/Makefile                 |    1 +
 drivers/clk/rockchip/clk-cpu.c                |   69 +-
 drivers/clk/rockchip/clk-pll.c                |  218 +-
 drivers/clk/rockchip/clk-rk3588.c             | 2530 +++++++++++++++++
 drivers/clk/rockchip/clk.h                    |   65 +
 include/dt-bindings/clock/rk3588-cru.h        | 1516 ++++++++++
 8 files changed, 4457 insertions(+), 9 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
 create mode 100644 drivers/clk/rockchip/clk-rk3588.c
 create mode 100644 include/dt-bindings/clock/rk3588-cru.h

-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
