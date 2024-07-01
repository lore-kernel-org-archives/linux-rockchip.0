Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86578C2BD09
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jul 2024 14:31:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RZs+hXgRbiio4dNpDpfhirIHW7RxNyDlPQTIomXngGA=; b=3pgsk8WdGnEXwu
	+mVlDjnzKrlXoAgF6HRbiqL3Beq+aCwPEzrg8rX77AP/MgisMSNOtTSI5jiLjYG3U0/znIctOBsW6
	6PGm7P/hZA0K+xsFGq6IzzxfoSsWLByCz344n7qfbqnn65OIHAKOV1C4Kcaacwhg+zZyUHlkKUt2J
	+CBm2nGsppQS4o7XewoqJOg/WRubnvm2CLf84pIIf7af6Po2UXt6Hdk2onQXZUI6973dur5KVu+py
	bTyThMo7kddkLPPlavksoFi8wugXa2ci71nLtQsorl7rILp/4GLLlD95Mi1yHOLL5PMEEQ3UU1Tjv
	FNZLV6RIXRH9rp0BYJJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOI3j-00000003ju3-2iem;
	Mon, 01 Jul 2024 14:31:11 +0000
Received: from mail-m155101.qiye.163.com ([101.71.155.101])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOI3X-00000003jqj-33QJ;
	Mon, 01 Jul 2024 14:31:01 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c00:7a80:98d3:5fc8:a2a:615f])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 9C9757E0193;
	Mon,  1 Jul 2024 22:30:35 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: amadeus@jmu.edu.cn
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org
Subject: [PATCH v2 7/9] arm64: dts: rockchip: use generic Ethernet PHY reset bindings for Lunzn Fastrhino R68S
Date: Mon,  1 Jul 2024 22:30:28 +0800
Message-Id: <20240701143028.1203997-4-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240701143028.1203997-1-amadeus@jmu.edu.cn>
References: <20240630150010.55729-1-amadeus@jmu.edu.cn>
 <20240701143028.1203997-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDQkMYVh4eGB1CGhhPQkpMSlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtLQUwaQ0tBQkMfSEFOHRhDQRpJGkFNSk4dWVdZFhoPEh
	UdFFlBWU9LSFVKS0lPT09LVUpLS1VLWQY+
X-HM-Tid: 0a906eb46a4703a2kunm9c9757e0193
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PzY6CTo5OjNRFRcwM00hT0gY
	PUkaFB5VSlVKTEpCQ09PSUhNSkxIVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0tBTBpDS0FCQx9IQU4dGENBGkkaQU1KTh1ZV1kIAVlBSElCSDcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_073100_014620_ECDFE3A4 
X-CRM114-Status: UNSURE (   7.83  )
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

Replace the deprecated snps,reset-xxx bindings to the generic Ethernet
PHY reset GPIO bindings. Also updates the delays based on the vendor
recommendations.

Fixes: b9f8ca655d80 ("arm64: dts: rockchip: Add Lunzn Fastrhino R68S")
Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 .../boot/dts/rockchip/rk3568-fastrhino-r68s.dts    | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r68s.dts b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r68s.dts
index ce2a5e1ccefc..02d966d218fd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r68s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r68s.dts
@@ -39,10 +39,6 @@ &gmac0_tx_bus2
 		     &gmac0_rx_bus2
 		     &gmac0_rgmii_clk
 		     &gmac0_rgmii_bus>;
-	snps,reset-gpio = <&gpio1 RK_PB0 GPIO_ACTIVE_LOW>;
-	snps,reset-active-low;
-	/* Reset time is 15ms, 50ms for rtl8211f */
-	snps,reset-delays-us = <0 15000 50000>;
 	tx_delay = <0x3c>;
 	rx_delay = <0x2f>;
 	status = "okay";
@@ -61,10 +57,6 @@ &gmac1m1_tx_bus2
 		     &gmac1m1_rx_bus2
 		     &gmac1m1_rgmii_clk
 		     &gmac1m1_rgmii_bus>;
-	snps,reset-gpio = <&gpio1 RK_PB1 GPIO_ACTIVE_LOW>;
-	snps,reset-active-low;
-	/* Reset time is 15ms, 50ms for rtl8211f */
-	snps,reset-delays-us = <0 15000 50000>;
 	tx_delay = <0x4f>;
 	rx_delay = <0x26>;
 	status = "okay";
@@ -76,6 +68,9 @@ rgmii_phy0: ethernet-phy@1 {
 		reg = <0x1>;
 		pinctrl-0 = <&eth_phy0_reset_pin>;
 		pinctrl-names = "default";
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio1 RK_PB0 GPIO_ACTIVE_LOW>;
 	};
 };
 
@@ -85,6 +80,9 @@ rgmii_phy1: ethernet-phy@1 {
 		reg = <0x1>;
 		pinctrl-0 = <&eth_phy1_reset_pin>;
 		pinctrl-names = "default";
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio1 RK_PB1 GPIO_ACTIVE_LOW>;
 	};
 };
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
