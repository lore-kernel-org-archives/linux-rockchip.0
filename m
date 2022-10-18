Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0BA7C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Oct 2022 15:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Eg70INQJCt+yua5cemJeOu+uSYuzGtOxMIGb+zK3H9o=; b=zYiFVw0pBAQaTD
	P2wshK1RJbETyKBhIUSu0E8k0B0JeGDeaBvfn1b7vGBy8bUfFkEGzoHaqdDxU3X6BEM4GABMVSIRY
	Z4QK2vj2vTFB6D7iB2Kk2+YefFOXRQ8gaeEITjj7r2UnsZWBR1TmbrjiuK/FEnjnSUUODROX2cMUN
	W+LSedA811Mya/aS/uQ1Hln4hmUx/KVhrvHcU5xm/vo12H/5/cX0y2BcU6SZ4dNZ0Gp8SLoDse8Z+
	dd/y6FWqqVADUjv/6lI0BHMCZigKR6Q1RDgwIixsdvWJQboW62fyhMTGVzx3/2wIz7MeG5DNnaybc
	2KUPYjeA26L9irUbTlQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okoIp-007TOK-Uh; Tue, 18 Oct 2022 15:14:48 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okoIS-007TAq-KP; Tue, 18 Oct 2022 15:14:26 +0000
Received: from jupiter.universe (dyndsl-095-033-155-016.ewe-ip-backbone.de [95.33.155.16])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 006116602330;
	Tue, 18 Oct 2022 16:14:18 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666106059;
	bh=NkKRrDVZj8gB3i6gg8ddA0fplJuwGJ1jb3t8bIeXgSM=;
	h=From:To:Cc:Subject:Date:From;
	b=TD3fy15Os+Wmgu1v03Uk9ECOni9fECz+dj4aUEYTqo5MknXJCb0A3fqtYmhfomyBT
	 cMzc7cPdFB8Di2XFXLW0ok84Bw/HaknBsTvHHxpAkhf9mX0j0+QsQFEF8zGA/OQmx/
	 M+ew8QfbJjuHSSPgspH5LDtLFQNHDYOWMpsc5AgNVWj9qQIS9uui3dcdmXQEbtKvqm
	 PcO1eWxQ6N8Gf+GkvRnFXZe4K+ZZK4sqfGqKU7XfUWwn7oqcoccCmEDv/s9nkbPmMG
	 FAr3AZ0RHJLFYeNlELf6waC2LtWsifediEy/Apx37oSw9xFXZFXfJYAHR7evr61mNg
	 Fc8nBzFwjjJ3w==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 1FFBC4801B3; Tue, 18 Oct 2022 17:14:16 +0200 (CEST)
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
Subject: [PATCHv3 0/9] RK3588 Clock and Reset Support
Date: Tue, 18 Oct 2022 17:13:58 +0200
Message-Id: <20221018151407.63395-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221018_081424_844670_7F805345 
X-CRM114-Status: GOOD (  12.37  )
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

This has been part of a bigger patchset adding basic rk3588 support.
Since that gets more and more out of hand, I'm now sending patches
for each subsystem as individual patchset.

Changes since PATCHv2:
 * https://lore.kernel.org/all/20220930153857.299396-1-sebastian.reichel@collabora.com/
 * rebased to v6.1-rc1
 * define rk3588_rst_init() in clk.h to fix build warning
 * add input clocks to the binding
 * add some more rates from the rate table (merged downstream fix)
 * fix input of mux_700m_400m_200m_24m_p clock (merged downstream fix)

Changes since PATCHv1:
 * https://lore.kernel.org/all/20220623160329.239501-1-sebastian.reichel@collabora.com/
 * split dt-binding header addition into its own patch (requested by Heiko)
 * split dt-binding header into clock and reset one (requested by Krzysztof)
 * use reset identifier instead of register offset (requested by Krzysztof)
  * (involves adding lookup table support to rockchip CRU reset code)
 * use linear, gapless clock identifier (requested by Krzysztof)
 * reword the DT binding description

Changes since PATCHv0:
 * https://lore.kernel.org/all/20220504213251.264819-1-sebastian.reichel@collabora.com/
 * Sync'd with latest downstream changes
 * Update bindings according to Rob's comments, except for license
   (no feedback from Rockchip)

-- Sebastian

Elaine Zhang (5):
  dt-bindings: clock: add rk3588 cru bindings
  clk: rockchip: add register offset of the cores select parent
  clk: rockchip: add pll type for RK3588
  clk: rockchip: clk-cpu: add mux setting for cpu change frequency
  clk: rockchip: add clock controller for the RK3588

Sebastian Reichel (4):
  dt-bindings: clock: add rk3588 clock definitions
  dt-bindings: reset: add rk3588 reset definitions
  clk: rockchip: simplify rockchip_clk_add_lookup
  clk: rockchip: add lookup table support

 .../bindings/clock/rockchip,rk3588-cru.yaml   |   71 +
 drivers/clk/rockchip/Kconfig                  |    8 +
 drivers/clk/rockchip/Makefile                 |    1 +
 drivers/clk/rockchip/clk-cpu.c                |   69 +-
 drivers/clk/rockchip/clk-pll.c                |  218 +-
 drivers/clk/rockchip/clk-rk3588.c             | 2538 +++++++++++++++++
 drivers/clk/rockchip/clk.c                    |   14 +-
 drivers/clk/rockchip/clk.h                    |   95 +-
 drivers/clk/rockchip/rst-rk3588.c             |  857 ++++++
 drivers/clk/rockchip/softrst.c                |   34 +-
 .../dt-bindings/clock/rockchip,rk3588-cru.h   |  766 +++++
 .../dt-bindings/reset/rockchip,rk3588-cru.h   |  754 +++++
 12 files changed, 5390 insertions(+), 35 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
 create mode 100644 drivers/clk/rockchip/clk-rk3588.c
 create mode 100644 drivers/clk/rockchip/rst-rk3588.c
 create mode 100644 include/dt-bindings/clock/rockchip,rk3588-cru.h
 create mode 100644 include/dt-bindings/reset/rockchip,rk3588-cru.h

-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
