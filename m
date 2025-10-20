Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24EB5CCD1A2
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 02:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sdWfZdxojUDP2wv7Vr9HvjCmC5TI20gHNTdqgbl8/TE=; b=uFtZiKo8VmGzzJ
	THZB2+KT7Gip0rOndIHUdUZzw+1U/AMFqWmaQThFy94UfeIJSnRWvA/2jr2o+9eYY6uhzi9Mnpimy
	CHKLG+qgPNAp619TIcO9RDubB7PNM6/qdW/CH9Rjx8f/Q2W5mUkx35nTE4F7Lj+vjucsdCkY+NX7s
	jYoatafj6FqHcXUe9fMWJSkqSpzpukiAxGix4vmoYCqT69Ij9VSw/FetI0Juabvdb+Y1qsCSYgu2B
	ETV6mZftkcx0yjtB9cs6mABZBl6YsVNf3U4a8cMZthT6U26dOeR4jHeAo1fj6vmLMf93LIvoLpDru
	jULlB/OhX2mNMU2bRgog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAfmG-0000000BiFT-2Aha;
	Mon, 20 Oct 2025 02:37:40 +0000
Received: from mail-m19731104.qiye.163.com ([220.197.31.104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAfmC-0000000BiCX-0xIi;
	Mon, 20 Oct 2025 02:37:38 +0000
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2671210bc;
	Mon, 20 Oct 2025 10:37:25 +0800 (GMT+08:00)
From: Elaine Zhang <zhangqing@rock-chips.com>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	sugar.zhang@rock-chips.com,
	zhangqing@rock-chips.com,
	heiko@sntech.de,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	huangtao@rock-chips.com
Subject: [PATCH v3 0/5] clk: rockchip: Add clock controller for the RV1126B
Date: Mon, 20 Oct 2025 10:37:19 +0800
Message-Id: <20251020023724.2723372-1-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-HM-Tid: 0a99ff7a8cb103a3kunmd1f16c94462dc5
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxoZGlZKS0xLTkxDGh1DGh5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=TKGo/QkddhgNBXTwlutS7NP1EbZ7XzdTp4gvjG9vJvfqd4i2IkSuf0y0Tt6hqb5mO5c8nhOecy7C2QT+z31YRBd0iwovDhx6XakVqMNvVvsetpFiWof673knmnCXf8i3xYXNqRd25tqZKlwyKuL+KqZvUXYVZeY9iRuEs/8GLaE=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=PjqZXH9uFEbMHArhCKOVb78d5eHbZSbpkA9ze+YvwBE=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251019_193736_704891_0C17C38D 
X-CRM114-Status: UNSURE (   8.01  )
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

Add yaml and dt-bindings for the RV1126B.

Change in V3:
[PATCH v3 1/5]: No change
[PATCH v3 2/5]: Fix define error
[PATCH v3 3/5]: update driver,fix errir
[PATCH v3 4/5]: fix error
[PATCH v3 5/5]: No change

Change in V2:
[PATCH v2 1/5]: update commit message, rename v2 to multi_pll
[PATCH v2 2/5]: Modify DT binding headers license
[PATCH v2 3/5]: update driver
[PATCH v2 4/5]: fix error
[PATCH v2 5/5]: update commit message

Elaine Zhang (5):
  clk: rockchip: Implement rockchip_clk_register_armclk_multi_pll()
  dt-bindings: clock, reset: Add support for rv1126b
  clk: rockchip: Add clock controller for the RV1126B
  dt-bindings: clock: Add support for rockchip pvtpll
  clk: rockchip: add support for pvtpll clk

 .../bindings/clock/rockchip,clk-pvtpll.yaml   |  100 ++
 .../bindings/clock/rockchip,rv1126b-cru.yaml  |   52 +
 drivers/clk/rockchip/Kconfig                  |    7 +
 drivers/clk/rockchip/Makefile                 |    1 +
 drivers/clk/rockchip/clk-cpu.c                |  165 +++
 drivers/clk/rockchip/clk-pvtpll.c             |  925 ++++++++++++++
 drivers/clk/rockchip/clk-rv1126b.c            | 1105 +++++++++++++++++
 drivers/clk/rockchip/clk.c                    |   24 +
 drivers/clk/rockchip/clk.h                    |   83 ++
 drivers/clk/rockchip/rst-rv1126b.c            |  444 +++++++
 .../dt-bindings/clock/rockchip,rv1126b-cru.h  |  392 ++++++
 .../dt-bindings/reset/rockchip,rv1126b-cru.h  |  405 ++++++
 12 files changed, 3703 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,clk-pvtpll.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1126b-cru.yaml
 create mode 100644 drivers/clk/rockchip/clk-pvtpll.c
 create mode 100644 drivers/clk/rockchip/clk-rv1126b.c
 create mode 100644 drivers/clk/rockchip/rst-rv1126b.c
 create mode 100644 include/dt-bindings/clock/rockchip,rv1126b-cru.h
 create mode 100644 include/dt-bindings/reset/rockchip,rv1126b-cru.h


base-commit: 9893549e592ad22d0a18de97acfb30204109290a
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
