Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D60FC43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jun 2022 16:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4CjuuFDaEuGR7KaLgNM4VPljDMIZqxeSr1u6FIhqqPQ=; b=SjBduYxRWwcZIO
	+wmKy7Ec+8948bC6/DeuG7KTUHLzoViD6K4rizLhAtVsSr0wqIrnyWsvZMmQaO06X+U6Al79M2Z71
	aqJAwM2wNpEcfyIZoW8C1q45JjzPbxqkBYMWa/sCO1D5GGbM9GU+vyhd0DnZRI6nLnMcoqYKhiP54
	EBEp2IHXBihAReyR9hk5xdtGZcg7MYNdO+629qMWjjJdKkYthfb2COJqCE6SQYH7BFEV7EMO5I6mW
	TdMUzK+cK8DlMDfKD741cv0RHv1DQupArF5cw+e5c7tpNrh2nxBmytHXkY97j7L/ViEyrGuJ0DwO4
	F0/HvBHuDViP3VBcPbGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyyIe-00EE3T-Rg; Wed, 08 Jun 2022 16:12:52 +0000
Received: from mxout2.routing.net ([2a03:2900:1:a::b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyyIB-00EDtM-Iz; Wed, 08 Jun 2022 16:12:25 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
	by mxout2.routing.net (Postfix) with ESMTP id D081B615FC;
	Wed,  8 Jun 2022 16:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1654704731;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qYmY2rTo7o5Beu+qZkDIwFeFpZXzyT2M2MGeMmcfTYw=;
	b=B3pebneiJU78nIOfVKb8WZ57cQ7wXTtysHkKZL2AS1S0YZ5owgPFErTtG4xKUKK+lnfWy+
	B/grMRDKiV6Ws7QH9KFA25oaREvWC5rdImSDcpxJU98X1Bs5FrKOdfDDiOMI7OHzSQfJXn
	NWh1wGMnDfilyRtgxXUgL3pntWqRnD0=
Received: from frank-G5.. (fttx-pool-80.245.76.43.bambit.de [80.245.76.43])
	by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 0A01910021A;
	Wed,  8 Jun 2022 16:12:11 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alessandro Zummo <a.zummo@towertech.it>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: rockchip: add RTC to BPI-R2 Pro
Date: Wed,  8 Jun 2022 18:11:49 +0200
Message-Id: <20220608161150.58919-3-linux@fw-web.de>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220608161150.58919-1-linux@fw-web.de>
References: <20220608161150.58919-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 107985d7-91f1-4c4e-83fd-ac336a1c9307
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_091223_815657_7BFE0F8B 
X-CRM114-Status: GOOD (  10.76  )
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

From: Frank Wunderlich <frank-w@public-files.de>

Add devicetree node for hym8563 rtc to Bananapi R2 Pro board.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 .../boot/dts/rockchip/rk3568-bpi-r2-pro.dts   | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index 40cf2236c0b6..7e5b3947e28f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -389,6 +389,23 @@ regulator-state-mem {
 	};
 };
 
+&i2c3 {
+	status = "okay";
+
+	hym8563: hym8563@51 {
+		compatible = "haoyu,hym8563";
+		reg = <0x51>;
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		clock-output-names = "rtcic_32kout";
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PD3 IRQ_TYPE_EDGE_FALLING>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&hym8563_int>;
+		wakeup-source;
+	};
+};
+
 &i2c5 {
 	/* pin 3 (SDA) + 4 (SCL) of header con2 */
 	status = "disabled";
@@ -411,6 +428,12 @@ green_led_pin: green-led-pin {
 		};
 	};
 
+	hym8563 {
+		hym8563_int: hym8563-int {
+			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
 		pmic_int: pmic_int {
 			rockchip,pins =
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
