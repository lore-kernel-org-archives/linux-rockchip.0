Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AE44C5AD4E
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Aug 2026 08:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+vJTQu2LTIbuDuF3Eill3t24BTQ4/rb3qlIWtB2csDs=; b=W3xwJLjxbKgI6l
	AWTP4F6bp3iyuNuJfItKbLpG03OCuS45TVEtN0E+Vx0totV02w4Qy+6zzArXkrPmgFc+g5caPdoTS
	xvzbtP499eVYROpm3do7FDOHE5ERn6J8E8kAeuPOebumET3bv9UUbMNYeDjOj21lGwMfM9XGbjaUv
	TIKotI/En8imPz1yU34RdpnqkqHq5j8UUdwMGIxeXalmWLKK08x+Yd14yhNH3DSFD5ttR8BTcXUsR
	ISuS0vjEnJLv4lvJRq9QXoHWVdit9oSQM2aoqeNV0lqCHltIQPZDolKNZmZIQAbkr0HNy6vQM+OWO
	0qj+MXobYcGsTowuM4Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsbz4-00000009913-2Xiu;
	Sat, 08 Aug 2026 08:00:46 +0000
Received: from mail-m49197.qiye.163.com ([45.254.49.197])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsbyy-000000098zD-4BvO;
	Sat, 08 Aug 2026 08:00:45 +0000
Received: from Vostro-3710.. (unknown [14.220.232.127])
	by smtp.qiye.163.com (Hmail) with ESMTP id 494038e86;
	Sat, 8 Aug 2026 16:00:27 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 0/2] arm64: dts: rockchip: Add Radxa E54C
Date: Sat,  8 Aug 2026 16:00:16 +0800
Message-Id: <20260808080018.1492239-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-HM-Tid: 0a9fe0633abc03a2kunm975b5a9f61259
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDHktJVk0aTExKHktDTB1JGFYeHw
	5VEwETFhoSFyQUDg9ZV1kYEgtZQVlKT1VJSUtVSUhJVUpJTFlXWRYaDxIVHRRZQVlPS0hVSktIS0
	pMS1VKS0tVS1kG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260808_010041_227801_32C704BC 
X-CRM114-Status: UNSURE (   8.13  )
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

This series requires the following commit in Linux v7.2 to make the
switch work: https://github.com/torvalds/linux/commit/9da2c8672f77

There was a conflict between eMMC and SPI Flash, so the unmounted
eMMC was disabled. The schematic can be found below:
https://dl.radxa.com/e/e54c/hw/radxa_e54c_v1.2_schematic.pdf

The following functions were tested:
- Boot from SD card using generic-rk3588 u-boot
- USB Type-C connection to RTL8153 network card
- USB Type-C connection to USB 3.0 drive
- 2x USB 2.0 and 1x USB 3.0 Type-A HOST
- RTL8367RB 4-Port Gigabit Switch
- HDMI 1080P Output
- Button and LED
- PCIe NVMe SSD

Chukun Pan (2):
  dt-bindings: arm: rockchip: Add Radxa E54C
  arm64: dts: rockchip: Add Radxa E54C

 .../devicetree/bindings/arm/rockchip.yaml     |    6 +-
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../boot/dts/rockchip/rk3582-radxa-e54c.dts   | 1182 +++++++++++++++++
 3 files changed, 1187 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3582-radxa-e54c.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
