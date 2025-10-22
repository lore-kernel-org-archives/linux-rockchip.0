Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 951B4CCD1BB
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Oct 2025 11:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TSpXikROuwKC/PhxubgguyvIrYBfJX48BcNM5A3MEow=; b=sLZEwh3eNmnecz
	PYJ8TOtiZj7ACqFFhPE4BKJ2svp7nXAzMHle8rr6z8LB9lExalTXVAYAGZ5rmooK8Iyposuow6dCM
	w8VopbU33HRneiHri+ICH/AXM1xoDNBDdyFdeOU7DZMC/oAuPAvBDrLiBIFA014iDUnuCRuqYDwxl
	LBflwP2r6yF10SZsWie5O8Us+OaHUu/fcxoTGkeaKpGhwkudm2S6ptPuaucGPt/xO7CoA1l4pROoI
	Z52Q9GdOtCfp9aSQLL1M194RBFhnqEmuyNIuZXg/PHKOV8F5Oftjg3Tqv4FUepLoLVBqtCw69Ish4
	DAwB4RIgsF20ACP+1/Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBX8i-00000002fy3-1KBG;
	Wed, 22 Oct 2025 11:36:24 +0000
Received: from mail-m1973192.qiye.163.com ([220.197.31.92])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBX8S-00000002fqz-0pFt
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Oct 2025 11:36:14 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 26cdf4383;
	Wed, 22 Oct 2025 19:36:02 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-rockchip@lists.infradead.org,
	Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 2/2] arm64: dts: rockchip: Add PCIe clkreq stuff for RK3588 EVB1
Date: Wed, 22 Oct 2025 19:35:54 +0800
Message-Id: <1761132954-177344-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1761132954-177344-1-git-send-email-shawn.lin@rock-chips.com>
References: <1761132954-177344-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9a0bb4625509cckunm6eedc7d27fce43
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0pCGlZIQ0hCQhhDQklNHU5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=LjXa+jJWjz3O9NbpU11ts+8LJwBpI29j4jVOOrDg6LI6cNFN8DH7mk5bqTlUU/4rzkpocs2PsiziFEV8kig3fLjgVjiZNNjtQztywYnfUMpPGDp98SiquFjtwV3s8kbV8/VepTKddG29M7qlIQRkgZJ1IEJv/DwZXqik0vM7x5U=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=Yujq5oDMszk1dsRbyLGPp4A3IJYDPlQoxuDFZqCmRio=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_043609_505923_D62C0574 
X-CRM114-Status: UNSURE (   9.65  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add supports-clkreq and pinmux for PCIe ASPM L1 substates.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v2: None

 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
index ff1ba5e..c9d284c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -522,6 +522,7 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie2_0_rst>, <&pcie2_0_wake>, <&pcie2_0_clkreq>, <&wifi_host_wake_irq>;
 	reset-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
+	supports-clkreq;
 	vpcie3v3-supply = <&vcc3v3_wlan>;
 	status = "okay";
 
@@ -545,7 +546,8 @@
 &pcie2x1l1 {
 	reset-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie2_1_rst>, <&rtl8111_isolate>;
+	pinctrl-0 = <&pcie2_1_rst>, <&rtl8111_isolate>, <&pcie30x1m1_1_clkreqn>;
+	supports-clkreq;
 	status = "okay";
 };
 
@@ -555,7 +557,8 @@
 
 &pcie3x4 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie3_reset>;
+	pinctrl-0 = <&pcie3_reset>, <&pcie30x4m1_clkreqn>;
+	supports-clkreq;
 	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_pcie30>;
 	status = "okay";
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
