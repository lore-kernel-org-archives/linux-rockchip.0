Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6278C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Sep 2022 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PRYgCgyiF3Ss1cVUX2XFsqRLZi4yF+GKW8hA/VBfBuU=; b=cYRGnLYSZZSh8k
	+93kVsEkQ9sqepy9rYXcxqqSuN5MNQp+giLlDUyKfsWMUarcxD9xW5XqX93XzdAB81HK5JHTy2xnZ
	VBoQY7bp3YHMn1Dm0GTU6gU+uGTt/fJ3JVWPzFr1tHhaLPAzDPyvxaCnVTwnLSzTUuVtil+SgF/Ry
	hmOyGb5H09r1bkWlsXMzTkrXmlowfxwzuz5U9Se366VPpY9gp5OtQVVwv4VZ4UU35msaQcqPT3FXf
	SLpJ7WrbEllRg3soy4u8SIZfKcOsX47C0jfWPZldJyRQVXqMXBFfoov8k+ARUG8t+tbBu3Uty0yPz
	Fo/+PgypkhR1FPdMenBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeI8c-00AIiB-FR; Fri, 30 Sep 2022 15:41:18 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeI6V-00AHUm-9W; Fri, 30 Sep 2022 15:39:11 +0000
Received: from jupiter.universe (dyndsl-091-096-057-200.ewe-ip-backbone.de [91.96.57.200])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8750766022E9;
	Fri, 30 Sep 2022 16:39:01 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1664552341;
	bh=xIwabsaIowPHOkc7UXM9S9J+Zyzi42pHGnL8JPyUxHs=;
	h=From:To:Cc:Subject:Date:From;
	b=EFVHbz6pCL+JkEKmkwqaQmKhxpyq5uJnGVEy2bqGyvc7grGcjCMrxxGzj3nyVd8p3
	 r4nUNEUcUhgcFwTvp4moJg7a2+eC5DP764oUYeQRHWjfE5EBxotgFA1XFc9z3wPO4I
	 gWX3iNyMVTxUQ1LnY0EbCKATDvmLQPt8eUxMnQEfVrMJdYV185s/w0t35SqDXDbAh4
	 aY6JukMCCU3e8iOyD2gg8ctIm1D3qxXvq7i91ezW7+PENme0WbYAvVDwhBktwazHwe
	 RPcWnA50koWR/lYqYRnL0BYU88HoVB1sUX2NsD/P/t4CjZkhv9GPco/vaKFjGkZXbW
	 wCs4iF0xkIsQA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id F41D4480140; Fri, 30 Sep 2022 17:38:58 +0200 (CEST)
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
Subject: [PATCHv2 0/9] RK3588 Clock and Reset Support
Date: Fri, 30 Sep 2022 17:38:48 +0200
Message-Id: <20220930153857.299396-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_083907_539364_71BBE2E7 
X-CRM114-Status: GOOD (  11.36  )
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

 .../bindings/clock/rockchip,rk3588-cru.yaml   |   58 +
 drivers/clk/rockchip/Kconfig                  |    8 +
 drivers/clk/rockchip/Makefile                 |    1 +
 drivers/clk/rockchip/clk-cpu.c                |   69 +-
 drivers/clk/rockchip/clk-pll.c                |  218 +-
 drivers/clk/rockchip/clk-rk3588.c             | 2531 +++++++++++++++++
 drivers/clk/rockchip/clk.c                    |   14 +-
 drivers/clk/rockchip/clk.h                    |   88 +-
 drivers/clk/rockchip/rst-rk3588.c             |  857 ++++++
 drivers/clk/rockchip/softrst.c                |   34 +-
 .../dt-bindings/clock/rockchip,rk3588-cru.h   |  766 +++++
 .../dt-bindings/reset/rockchip,rk3588-cru.h   |  754 +++++
 12 files changed, 5364 insertions(+), 34 deletions(-)
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
