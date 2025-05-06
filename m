Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D86B2C3ABAC
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 May 2025 05:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R0LP2WQNHcWBLMp00YGPhFNKT39k1WhW0rqtwC4kPIk=; b=JrBMsF2PrJprOW
	TkeG00wGcjg8lf598Q3hX7mpUopqGGgMUsSId20iRdgqUjttgKtJRTUSF7zfBifapu12ejlqPeYfJ
	dRamokVbhKT/9VIyPjcNnPH0XBS3IAgDPUX6+QXTiJwnKyIs1FNaIpynczzKDtiBwX2LRc/bZdFMu
	zqm4hFuhEfVqwZMwrrra/aQQTLPDKdWncqJdLX3Wn78vESDA/nmfpXK+hjQdr7VkybagJ8HIp/iDO
	aGJGUN+aGUsiE9/7Wtm9FHxzU9AUAMx1XLhCO3LJYWdtk9PVp6OCUGkA83d4L47Riu1Jt/RnJdesW
	/HZV8U67IAIPDhYMsOXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCAz4-0000000ATh0-2P1f;
	Tue, 06 May 2025 05:36:50 +0000
Received: from mail-m254111.xmail.ntesmail.com ([103.129.254.111])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uC8Ut-00000009s9r-2JvO;
	Tue, 06 May 2025 02:57:33 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 140c6eae0;
	Tue, 6 May 2025 10:57:19 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v5 0/6] rockchip: Add rk3562 SoC and evb support
Date: Tue,  6 May 2025 10:57:09 +0800
Message-Id: <20250506025715.33595-1-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxoZSFYYGhlPGktMSB1DThpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
X-HM-Tid: 0a96a386c1a103afkunm140c6eae0
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NxQ6Fio4SjJJShEtMjxMMDIe
	KS4KCjBVSlVKTE9NTktLSU9KQkpLVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFIQkNKNwY+
DKIM-Signature: a=rsa-sha256;
	b=JXt3rZTMDb7HXMD+niuonbqjJO5oAH8E9/BS/AneQJR5fV0DyZvEkJj5FvNTpH8YpOqSHRatefzpH/oVzeTuTrmZ0GwEM28dHv5+b0Q8SjBCu8Di4pHtPVYu7GhLUfP1HIYTumDe32xV7t4WYRL8JK79ZaoLr28DDGYcKGofxXY=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=3dqzEK6o7cHu5/0LtgezIfFhqUApVg/7ee7umICA/ho=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_195731_791980_2E0ED6AA 
X-CRM114-Status: GOOD (  13.73  )
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
Cc: Quentin Schulz <quentin.schulz@cherry.de>, Kever Yang <kever.yang@rock-chips.com>, Finley Xiao <finley.xiao@rock-chips.com>, Shresth Prasad <shresthprasad7@gmail.com>, Jamie Iles <jamie@jamieiles.com>, Dragan Simic <dsimic@manjaro.org>, Yao Zi <ziyao@disroot.org>, Rob Herring <robh@kernel.org>, Detlev Casanova <detlev.casanova@collabora.com>, Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>, linux-rockchip@lists.infradead.org, Jimmy Hon <honyuenkwun@gmail.com>, Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, linux-watchdog@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>, Frank Wang <frank.wang@rock-chips.com>, Elaine Zhang <zhangqing@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>, Wim Van Sebroeck <wim@linux-watchdog.org>, linux-arm-kernel@lists.infradead.org, Junhao Xie <bigfoot@classfun.cn>, linux-kernel@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>, Diederik de Haas <didi.debian@cknow.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


Patch series V5 remove [v4 1/7] which had taken by Manivannan, and move
scmi-shmem from soc node to reserved memory.

Patch series V4 remove patches already landed, and remove dts nodes for
modules still under review.

This patch set adds rk3562 SoC and its evb support.

I have split out patches need driver change for different subsystem.
And all the modules with dt-binding document update in this patch set
do not need any driver change. I put them together to make it clear we
have a new SoC and board to use the new compatible. Please pick up the
patch for your subsystem, or please let me know if the patch has to
send separate.

Test with USB, PCIe, EMMC, SD Card.

This patch set is base on the patch set for rk3576 evb1 support.

V3:
https://lore.kernel.org/linux-rockchip/20250227111913.2344207-1-kever.yang@rock-chips.com/
V2:
https://lore.kernel.org/linux-rockchip/b4df8a73-58a2-4765-a9e4-3513cb2bc720@rock-chips.com/T/


Changes in v5:
- Collect review tag
- Update scmi-shmem from soc to reserved memory

Changes in v4:
- Collect ack tag
- Collect ack tag
- Collect ack tag
- remove gmac and otp nodes
- remove gmac nodes

Changes in v3:
- Collect reveiw tag
- Collect the Acked-by tag
- remove i2c/serial/spi alias
- add soc node

Changes in v2:
- Update in sort order
- remove grf in cru
- Update some properties order

Finley Xiao (2):
  arm64: dts: rockchip: add core dtsi for RK3562 Soc
  arm64: dts: rockchip: Add RK3562 evb2 devicetree

Kever Yang (4):
  dt-bindings: watchdog: Add rk3562 compatible
  dt-bindings: rockchip: pmu: Add rk3562 compatible
  dt-bindings: soc: rockchip: Add rk3562 syscon compatibles
  dt-bindings: arm: rockchip: Add rk3562 evb2 board

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 .../devicetree/bindings/arm/rockchip/pmu.yaml |    2 +
 .../devicetree/bindings/soc/rockchip/grf.yaml |    7 +
 .../bindings/watchdog/snps,dw-wdt.yaml        |    1 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../boot/dts/rockchip/rk3562-evb2-v10.dts     |  488 ++++
 .../boot/dts/rockchip/rk3562-pinctrl.dtsi     | 2352 +++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3562.dtsi      | 1270 +++++++++
 8 files changed, 4126 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3562-evb2-v10.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3562-pinctrl.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3562.dtsi

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
