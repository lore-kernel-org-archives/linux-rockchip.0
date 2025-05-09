Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DBB9C3ABBC
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 11:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uGD03a4fZjOD58hUvNXftC8LMW+iGBs6opyHymJoaUk=; b=tKDUdm82SuTtrx
	X+eqQrj1nS/HxtUyd6ApzcEhk42BzgFN75MAU+i+9qAcC02HqvDvsKmZte3MusmcF53dexuAX/Tf/
	f5cVIcx+V+oASl34GPVGQGHHQYsudyTYVixgmhdYiz6HeJwh4v4dUMb0+OGLxVOhB2i6rBY2kyEIW
	oYDH3/46yOzgaid2bCluRnhVu6hSVaO7fWi5yP5lX21ovOH27qWyS0avIl9t0epJnw2qkcXX9gOHb
	LDE5fCFmemi/4RclR//BK4AzZnIUgBviXGVb4R7Dq9PQxrhCrgAVFHwDj7OGTEnccVibI/EzQOU5Y
	nK1W0bia5U06+GxgS0Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDLod-00000003QJB-1hj0;
	Fri, 09 May 2025 11:22:55 +0000
Received: from mail-m32116.qiye.163.com ([220.197.32.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDKsw-00000003G5K-0JlP;
	Fri, 09 May 2025 10:23:19 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1483147cb;
	Fri, 9 May 2025 18:23:11 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v7 0/5] rockchip: Add rk3562 SoC and evb support
Date: Fri,  9 May 2025 18:23:03 +0800
Message-Id: <20250509102308.761424-1-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0weTVYZQxoeTxlNTkkeHRpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a96b492097d03afkunm1483147cb
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MDo6NBw4CDICQgEuFUkPMCIY
	TUswCz9VSlVKTE9NTENNSkJITEpJVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFPS0lONwY+
DKIM-Signature: a=rsa-sha256;
	b=WWJjVbXvavx4WZJgAvQ5PpWXYuytRa7c0y0UK+ZLln61JYfXa0iW95dVokF9XBlciZ93nmGVICTykpOzRkm2WxXSYTf9C3GccZEzr/E0rvsgito3By9+4vVkR/QV9zdWRQeZ/vtuW7Egj713TTewUg0yDHj6TRU9pvxcm2SQXsY=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=hNsCUG7hJCtfNGZx6jKpw5OFKEQ5Blj2M3hqO1EINGw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_032318_565747_3E7F2870 
X-CRM114-Status: GOOD (  14.32  )
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
Cc: Quentin Schulz <quentin.schulz@cherry.de>, Kever Yang <kever.yang@rock-chips.com>, Chukun Pan <amadeus@jmu.edu.cn>, Finley Xiao <finley.xiao@rock-chips.com>, Shresth Prasad <shresthprasad7@gmail.com>, Dragan Simic <dsimic@manjaro.org>, Rob Herring <robh@kernel.org>, Detlev Casanova <detlev.casanova@collabora.com>, Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>, linux-rockchip@lists.infradead.org, Jimmy Hon <honyuenkwun@gmail.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Yao Zi <ziyao@disroot.org>, Jonas Karlman <jonas@kwiboo.se>, Frank Wang <frank.wang@rock-chips.com>, Elaine Zhang <zhangqing@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org, Junhao Xie <bigfoot@classfun.cn>, linux-kernel@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>, Diederik de Haas <didi.debian@cknow.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


Patch series v6 remove USB and watchdog nodes, for relate patches not
land recently although they have got review tag. Let's make the main dts
get land first and then add relate dts node back when the driver patches
get land.

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

V3:
https://lore.kernel.org/linux-rockchip/20250227111913.2344207-1-kever.yang@rock-chips.com/
V2:
https://lore.kernel.org/linux-rockchip/b4df8a73-58a2-4765-a9e4-3513cb2bc720@rock-chips.com/T/


Changes in v7:
- update regulator names, and re-order some properties in dts node.

Changes in v6:
- Remove USB and watchdog nodes
- Remove USB relate nodes

Changes in v5:
- Update scmi-shmem from soc to reserved memory

Changes in v4:
- Collect ack tag
- Collect ack tag
- remove gmac and otp nodes
- remove gmac nodes

Changes in v3:
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

Kever Yang (3):
  dt-bindings: rockchip: pmu: Add rk3562 compatible
  dt-bindings: soc: rockchip: Add rk3562 syscon compatibles
  dt-bindings: arm: rockchip: Add rk3562 evb2 board

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 .../devicetree/bindings/arm/rockchip/pmu.yaml |    2 +
 .../devicetree/bindings/soc/rockchip/grf.yaml |    7 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../boot/dts/rockchip/rk3562-evb2-v10.dts     |  456 ++++
 .../boot/dts/rockchip/rk3562-pinctrl.dtsi     | 2352 +++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3562.dtsi      | 1187 +++++++++
 7 files changed, 4010 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3562-evb2-v10.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3562-pinctrl.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3562.dtsi

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
