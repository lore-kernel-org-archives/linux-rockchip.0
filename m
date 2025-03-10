Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C90BC28B28
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Mar 2025 00:16:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SS//T5rLemdUCKWsroaPT6zCeaDTQnfOib1+5zMZscE=; b=tAAA3VFfjOzXF9
	4nnDxqVH5cax1rzctMITcpBy3f6XaTuUee2MAB8xtL59J7JrWKXGFJqtvqpHiDvwuh5I0TSRUGlQz
	WvZxU7ROc2opabBWvuYEVJzC8i0k1eiiFPJiEUI0bx7bJeKUkE4RleTLyDOFFP9l4/ULv56Dd8WW4
	UAdq9eP8h1ChpsLSwn9LjzNgoUmM5g9Wt9KKQVaC5BMECn8vhJ+gQ+nvLyVhjzD3NjGmpaje83qnq
	1/0FSLhzciHP9rvlcbWzCowiskQGYVQCPVSnqhCnVGq8hreKl7QeCCAXTIEKqhLHiDUuqfAJFqZW2
	L3ZchwmzDeERQP/41m1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trQoo-00000001K5Q-17fu;
	Mon, 10 Mar 2025 00:16:30 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trQlc-00000001Jhs-47wK
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Mar 2025 00:13:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1741565591; bh=zOLH/juLTXvxgHLu54B/ak9W7ilP6o7Nh3Sn02QT/08=;
 b=F7yxa6K066HAtxtjrLM9eJ/XKqvl/rbySkZhxQ8N5K6OOb2W4UNSeY5k8MEy1syKzwHNJ4mFJ
 Ud/+zjQe/UQVUi9so+qcGDs8REdAienfv1RHM/NndCeXFMczWIhV9jGsp4U60f2lr671MgKwv0r
 w99pn9RZx5fZkcuZWmjLQ1tjUQ57I1RYoqEOkB7Zab2lMGS0alm7hZ2q/WLNCPcJgDnT1SwytVc
 lz1x4QaU0gpbfLZrbGkfAfRrzw0rTTIfrAqoE2vSZnJP5wn/862VPpH/jIyEOoOpSOetujXuaME
 31GckNeJtGytJX8HrDRqg2j5l0Hjg6YycVlclrikal8Q==
X-Forward-Email-ID: 67ce2e96f812de2512d1f57c
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 2/2] arm64: dts: rockchip: Enable Ethernet controller on Radxa E20C
Date: Mon, 10 Mar 2025 00:12:51 +0000
Message-ID: <20250310001254.1516138-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250310001254.1516138-1-jonas@kwiboo.se>
References: <20250310001254.1516138-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_171313_117902_AE0ED8DD 
X-CRM114-Status: UNSURE (   9.81  )
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

The Radxa E20C has two GbE ports, LAN and WAN. The LAN port is provided
using a GMAC controller and a YT8531C PHY and the WAN port is provided
by an RTL8111H PCIe Ethernet controller.

Enable support for the LAN port on Radxa E20C.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
Changes in v2:
- Rebase on top of the "Support I2C controllers in RK3528" series [1]

[1] https://lore.kernel.org/r/20250309070603.35254-1-ziyao@disroot.org
---
 .../boot/dts/rockchip/rk3528-radxa-e20c.dts   | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
index 790cd18f29cb..f4984e036f38 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
@@ -16,6 +16,7 @@ / {
 	compatible = "radxa,e20c", "rockchip,rk3528";
 
 	aliases {
+		ethernet0 = &gmac1;
 		mmc0 = &sdhci;
 		mmc1 = &sdmmc;
 	};
@@ -123,6 +124,17 @@ vccio_sd: regulator-vccio-sd {
 	};
 };
 
+&gmac1 {
+	clock_in_out = "output";
+	phy-handle = <&rgmii_phy>;
+	phy-mode = "rgmii-id";
+	phy-supply = <&vcc_3v3>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&rgmii_miim>, <&rgmii_tx_bus2>, <&rgmii_rx_bus2>,
+		    <&rgmii_rgmii_clk>, <&rgmii_rgmii_bus>;
+	status = "okay";
+};
+
 &i2c1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c1m0_xfer>;
@@ -136,7 +148,25 @@ eeprom@50 {
 	};
 };
 
+&mdio1 {
+	rgmii_phy: ethernet-phy@1 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&gmac1_rstn_l>;
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_LOW>;
+	};
+};
+
 &pinctrl {
+	ethernet {
+		gmac1_rstn_l: gmac1-rstn-l {
+			rockchip,pins = <4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	gpio-keys {
 		user_key: user-key {
 			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_up>;
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
