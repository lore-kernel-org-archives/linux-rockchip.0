Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35B37C5DF82
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Aug 2026 10:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ckVtPyrQej7Zba3AT4vC0NH4ZAEZoSlAQ0EKA/gsadg=; b=Zjq1T+bTgiDWHJ
	DovoBAtje2JFgwFhLFbvN6ngYmGfCt5n+JJlKBQYpSp4XrVvEnBOITyKj09Rd7QSz1zPinoUtyjKg
	U7OpXOLU6AtR+q/bG8WgezE1A97Q9XT4IAA++ZBKTF0+oxeD/mij7t2uf3ZeQi5p+frOIz8a5F37N
	tkpCsh3544GaFrpI4FCHa1hTZTQM5h87+MZX7S+CVhkNWXCl0vAygRPHU4tO1HWfLVEYvaRRSrgEb
	vXYLJartwLajFgM1CqwN7WeeLQS8NwXH9XqiXXJddtm6AfuF7WF75zHv3WUq9KGgYX9cqmLa6foyC
	jwYilvNwxPPQ1fIEYkBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwzZl-0000000BJZk-0VwC;
	Thu, 20 Aug 2026 10:00:45 +0000
Received: from [101.71.155.101] (helo=mail-m155101.qiye.163.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwzZg-0000000BJXS-1eMK;
	Thu, 20 Aug 2026 10:00:43 +0000
Received: from Vostro-3710.. (unknown [14.220.232.127])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4ab3c2730;
	Thu, 20 Aug 2026 18:00:30 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/2] arm64: dts: rockchip: Add Radxa E54C
Date: Thu, 20 Aug 2026 18:00:18 +0800
Message-Id: <20260820100020.3370385-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-HM-Tid: 0aa01e9d73d203a2kunm5b0a804aa4754
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDGkJOVkxMSEgfTktDH0xPGlYeHw
	5VEwETFhoSFyQUDg9ZV1kYEgtZQVlKT1VJSUtVSUhJVUpJTFlXWRYaDxIVHRRZQVlPS0hVSktIS0
	pMS1VKS0tVS1kG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_030040_635664_1BB36E0D 
X-CRM114-Status: UNSURE (   9.07  )
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

Changes in v2:
  Collect Reviewed-by
  Fix adc button voltage
  Add domain-supply to NPU
  Update phy-mode for switch

Chukun Pan (2):
  dt-bindings: arm: rockchip: Add Radxa E54C
  arm64: dts: rockchip: Add Radxa E54C

 .../devicetree/bindings/arm/rockchip.yaml     |    6 +-
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../boot/dts/rockchip/rk3582-radxa-e54c.dts   | 1184 +++++++++++++++++
 3 files changed, 1189 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3582-radxa-e54c.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
