Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE0F2CA0FE8
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Aug 2024 19:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2/ru/Pi9VNY1i2EfH2S1E6shF56Tn+M5Cz7oqPq2gHw=; b=dDfGdVUUI/Zo1K
	gFENcX40teWIE4/huT2m8wfiJhQ6RfUeDVS3yhNyUAFG+Wla9Ew9Q9ndwxkdHr0Y4OooLLgAglcfo
	xI2ioxuI56maoSAaL+irTn67wlbBnGWaqpSFFSN6EkOAYYR5h3wPm5QjNoYDXGWMNJu6XgdkMGaRF
	pUrd8AdGJXS/u5b/POJzRbt3nswPgx57CXzucnPhbP5lh1pIyoSMwCXs6rwhXbbahlvDpSbDlHhHs
	N+YJq0za+sg3FC99tTDm6HEdB92I0xULvNxqjDD/mY0pRqckMJK2Hnfv9816Doq7/NoLm4NqiCbb4
	oCFck68rdN3gefoGeoeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk7Tm-00000007VUv-2LxU;
	Fri, 30 Aug 2024 19:40:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk7HK-00000007Rbg-1YAN
	for linux-rockchip@bombadil.infradead.org;
	Fri, 30 Aug 2024 19:27:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=k3/Rv0l9/1nizDIHR4fIB/wwDyXy6KWWy6aIsll9qIo=; b=UAw1bVTKAnxl+tLipK7zsAkNvE
	edq6c2auTzlWwTHAFkjwgzQGlrYzhY0a0IlFzdK2sxCWhtBhFTYblHWAvaaxxPPase5O0d22LDy/5
	CvIuLYBeHti3+ZCYhP7FhHGpM++N+Ntpo/TGKXKzvdfoSQgP3/mwFu1tex8OCmbgLtZYkqH6jwF21
	mDwf5j1SnFKBlr2mTReJackm55TOG6PbpM57KjcSWj3ozj5GZSrQp8Kwt0re28TMqEVRlg95QmloG
	nkuL2Ua/4YxryQv08GPiGNCNDvfwyZQHZU7nfxx13iQ7dat5A4iMUGYY8KLYDoEpkBo47F64hPooB
	HD6YFnRw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk7H1-0000000Bk8h-0Bjo
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Aug 2024 19:27:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1sk7Gk-00064E-0z
	for linux-rockchip@lists.infradead.org; Fri, 30 Aug 2024 21:26:50 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1sk7Gi-004Dc1-KP
	for linux-rockchip@lists.infradead.org; Fri, 30 Aug 2024 21:26:48 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 43F5D32E12B
	for <linux-rockchip@lists.infradead.org>; Fri, 30 Aug 2024 19:26:48 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 18AF132E0EF;
	Fri, 30 Aug 2024 19:26:46 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id a3fe34c3;
	Fri, 30 Aug 2024 19:26:45 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Fri, 30 Aug 2024 21:25:59 +0200
Subject: [PATCH can-next v3 02/20] arm64: dts: rockchip: add CAN-FD
 controller nodes to rk3568
MIME-Version: 1.0
Message-Id: <20240830-rockchip-canfd-v3-2-d426266453fa@pengutronix.de>
References: <20240830-rockchip-canfd-v3-0-d426266453fa@pengutronix.de>
In-Reply-To: <20240830-rockchip-canfd-v3-0-d426266453fa@pengutronix.de>
To: kernel@pengutronix.de, Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Elaine Zhang <zhangqing@rock-chips.com>, 
 David Jander <david.jander@protonic.nl>
Cc: Simon Horman <horms@kernel.org>, linux-can@vger.kernel.org, 
 netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>, 
 David Jander <david@protonic.nl>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=openpgp-sha256; l=2004; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=hsRqfgdlLKDhtXJmoP6WFcH3+AxgGwl/ZeSBxntK4ss=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBm0hzZlcMMB9MmqDH2wzfEbm7tio2J3Zd9tJqhD
 EkKfkAOYqKJATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZtIc2QAKCRAoOKI+ei28
 b3DlB/9omU/3gf7SfVCIev3i0XhU3s95dm/ZkAXX4q1HpoUSzJhjRr5x5iyDcuV+7Ec4s4vqzwk
 yK4qvRjhuCDSFoLSrGkK3BE5FH3ieW3MUf+f+MaQPwOvodW/qJSSSQoZKY0ni6gZkrhNShF34hB
 77WHBYyFo+lgpEiTA3gERb+9rFcmLx7HQj6eXHp5Pu3Er3UjWDJ6+pwJ+uidlP9sjv2rpt7rsaw
 LYa35GOcHM/nW+rLj/zHR0JKaiXGiHO39ves7PkhTo/xU2DFZsr/n6yla9CIDRXn33Qy5aZdDVB
 QEfSmzWqa5s+InWtU5fOvEXrGm4VZLJsZxzNzOz7aqP2hHhU
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_202713_296041_D03E3229 
X-CRM114-Status: GOOD (  11.02  )
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

From: David Jander <david@protonic.nl>

Add nodes to the rk3568 devicetree to support the CAN-FD controllers.

Signed-off-by: David Jander <david@protonic.nl>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm64/boot/dts/rockchip/rk3568.dtsi | 39 ++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index f1be76a54ceb..70847556627d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -213,6 +213,45 @@ gmac0_mtl_tx_setup: tx-queues-config {
 		};
 	};
 
+	can0: can@fe570000 {
+		compatible = "rockchip,rk3568v2-canfd";
+		reg = <0x0 0xfe570000 0x0 0x1000>;
+		interrupts = <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_CAN0>, <&cru PCLK_CAN0>;
+		clock-names = "baud", "pclk";
+		resets = <&cru SRST_CAN0>, <&cru SRST_P_CAN0>;
+		reset-names = "core", "apb";
+		pinctrl-names = "default";
+		pinctrl-0 = <&can0m0_pins>;
+		status = "disabled";
+	};
+
+	can1: can@fe580000 {
+		compatible = "rockchip,rk3568v2-canfd";
+		reg = <0x0 0xfe580000 0x0 0x1000>;
+		interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_CAN1>, <&cru PCLK_CAN1>;
+		clock-names = "baud", "pclk";
+		resets = <&cru SRST_CAN1>, <&cru SRST_P_CAN1>;
+		reset-names = "core", "apb";
+		pinctrl-names = "default";
+		pinctrl-0 = <&can1m0_pins>;
+		status = "disabled";
+	};
+
+	can2: can@fe590000 {
+		compatible = "rockchip,rk3568v2-canfd";
+		reg = <0x0 0xfe590000 0x0 0x1000>;
+		interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_CAN2>, <&cru PCLK_CAN2>;
+		clock-names = "baud", "pclk";
+		resets = <&cru SRST_CAN2>, <&cru SRST_P_CAN2>;
+		reset-names = "core", "apb";
+		pinctrl-names = "default";
+		pinctrl-0 = <&can2m0_pins>;
+		status = "disabled";
+	};
+
 	combphy0: phy@fe820000 {
 		compatible = "rockchip,rk3568-naneng-combphy";
 		reg = <0x0 0xfe820000 0x0 0x100>;

-- 
2.45.2



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
