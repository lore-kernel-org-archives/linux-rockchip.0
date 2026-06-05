Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60B71CD6E79
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jun 2026 02:23:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mi56idSot1Nw90d+9Ah5TqESRmdudGXs7aN4FCGc70Q=; b=hZm/5Xsyy5/RY1
	8d/KY3YPbZWyiGJRy3Ik1gcuf5n7eUnAoWgjOwSrjXl5KqwLlatwy9xY8W5xEaqUSBk0kxSYTbWr7
	gzd3fUz2bBjw4W2jurcB7oQHG+zyBgUf9J1b627l028dxS2Trha9RfmsnyiDAPTxkAlQgjX6hVpXe
	KMMLkPQAfgMad4G4lR5vwqBWMflNPJNnRnw28BqCp2afnl77Bct7Wc5WQjcVw0vn5Aaj/wZK/O3Qt
	XolJPL1NDr0QN3f++AriTMG/JJdbSzVL28bb15nSPSt8bWWNwRor3DxLN3OT7yV3wQfKeFANbPgwL
	yqeJcZe5hThMD9ZBOM+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVKDT-0000000HZsG-3bHy;
	Fri, 05 Jun 2026 02:23:23 +0000
Received: from mail-m81249.xmail.ntesmail.com ([156.224.81.249])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVKDR-0000000HZqy-3sHa;
	Fri, 05 Jun 2026 02:23:23 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 412944cf6;
	Fri, 5 Jun 2026 10:23:17 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Subject: [PATCH v11 1/3] arm64: dts: rockchip: Add missing hclk for RK3588 eDP0
Date: Fri,  5 Jun 2026 10:23:03 +0800
Message-Id: <20260605022305.3058853-2-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260605022305.3058853-1-damon.ding@rock-chips.com>
References: <20260605022305.3058853-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Tid: 0a9e95978d0903a8kunm9494c84840193
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDHkIdVh9OSEpJQxhIQkJPSVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=QYKOiP6ZasLVNsXmFr/7vyfa29LiL9q0ymF6nJJSdx7ggl33Hoed08z4oa4WzkP5rHLz+lWNqjCwr49Cp1w1XEt0jxLStlNlNWB0kCrqLxgOAmshee9uznUnAVPp2O6kVoJ827QFdYhut8Wo6A9X9JDbUahicxAXA6CJ+RjDWVY=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=cQJ/4r16q/9Bq/DzJvmBXTuihGNdr3jzwWB+vDNpPpo=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_192322_233704_D2B4D9B5 
X-CRM114-Status: UNSURE (   9.75  )
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
Cc: detlev.casanova@collabora.com, devicetree@vger.kernel.org, sebastian.reichel@collabora.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, alchark@gmail.com, michael.riesch@collabora.com, andy.yan@rock-chips.com, nicolas.frattaroli@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add the required HCLK_VO1 bus clock to RK3588 eDP0 node with
corresponding clock-name "hclk". This clock is necessary for the
eDP controller to access video output GRF and work properly.

Previously the clock was enabled implicitly via GRF phandle
reference. Add it explicitly now to align with updated binding.

Fixes: dc79d3d5e7c7 ("arm64: dts: rockchip: Add eDP0 node for RK3588")
Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

---

Changes in v4:
- Modify the commit msg.
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index 4fb8888c281c..24a5ccbac08c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -1712,8 +1712,8 @@ hdmi0_out: port@1 {
 	edp0: edp@fdec0000 {
 		compatible = "rockchip,rk3588-edp";
 		reg = <0x0 0xfdec0000 0x0 0x1000>;
-		clocks = <&cru CLK_EDP0_24M>, <&cru PCLK_EDP0>;
-		clock-names = "dp", "pclk";
+		clocks = <&cru CLK_EDP0_24M>, <&cru PCLK_EDP0>, <&cru HCLK_VO1>;
+		clock-names = "dp", "pclk", "hclk";
 		interrupts = <GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH 0>;
 		phys = <&hdptxphy0>;
 		phy-names = "dp";
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
