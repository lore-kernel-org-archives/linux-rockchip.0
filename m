Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDBE3C3064D
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Jun 2024 15:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RZs+hXgRbiio4dNpDpfhirIHW7RxNyDlPQTIomXngGA=; b=b9qfCf5OxiicmE
	lZUKtvaeR0Lz18/rqJ2M95NNuE8qKwPTthDTtVE8jO/x+Ojn/ra/QZWsnomSTicTanh24hsV29c3J
	GIgx9XpOeSIo08QRJoc0s7gwlGhxyPTblw/+wfmfExjEwfQqcyfFfP5Oxg/q6S5qQ92d0KRBMoEJl
	lJ//ZyEC+hvzk1i51xsYDz4vndE36wFDDF38DuJsWqtAEj1/kBXQyl6EE5qy2PNcRZjTN53KYxVCd
	+eK5N7vKN5Ll/A6sWZIDnceJMQjlrVLdzs0mh+MGst4hO/qVplfBEHLuhkAn4ITb/ZeDOdrClxBUH
	pxBDyAJJCVAFzUpkg21g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNw31-00000000Yc6-1BMR;
	Sun, 30 Jun 2024 15:00:59 +0000
Received: from mail-m25485.xmail.ntesmail.com ([103.129.254.85])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNw2g-00000000YTE-2ACO;
	Sun, 30 Jun 2024 15:00:42 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c01:1720:3110:52ea:d52a:84f0])
	by smtp.qiye.163.com (Hmail) with ESMTPA id A78367E018A;
	Sun, 30 Jun 2024 23:00:18 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH v2 7/9] arm64: dts: rockchip: use generic Ethernet PHY reset bindings for Lunzn Fastrhino R68S
Date: Sun, 30 Jun 2024 23:00:08 +0800
Message-Id: <20240630150010.55729-8-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240630150010.55729-1-amadeus@jmu.edu.cn>
References: <20240630150010.55729-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCSBlMVkpKTRgdTB9CTRpPTVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtKQUpMSUtBSEpKS0FOSR4aQR9OSRpBQ08dS1lXWRYaDx
	IVHRRZQVlPS0hVSktJT09PS1VKS0tVS1kG
X-HM-Tid: 0a9069a9435b03a2kunma78367e018a
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OT46MAw5KDNWNxw0FzcLSDkO
	NiEKCQtVSlVKTEpCTE5CTUpCSUNJVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0pBSkxJS0FISkpLQU5JHhpBH05JGkFDTx1LWVdZCAFZQUhITkg3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240630_080038_852186_9ADCD11F 
X-CRM114-Status: UNSURE (   8.07  )
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
