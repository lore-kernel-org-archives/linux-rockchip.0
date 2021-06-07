Return-Path: <SRS0=vLt7=LB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA7C1C47082
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 12:59:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7941460C41
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 12:59:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7941460C41
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cJd2e+crgbAsKtaQrpIS0ZmJLOlfmFX6thXDWLR9bqE=; b=DT1hmu09bSqW7N
	uNQwEf/t3Ft5nwZfRS+MBJL76fzko3BKfgA0oco/TSPqsR+cq01bgsFGtO/AvGnoxymQqX8H3doAQ
	rjb5qw1fZ6kxk/grxTVOJpbBZzHy+u6fl/QXLQAOElbuTFOuqoglfNjLg2KySIsTOLsBnL3PEG7D2
	My7eQJ2dXz7V44raxOh7Dwj9XAltOSucrZ5PPrV/4HvDlLzNiBIsznGw2QU0BveGIQ3edJSeJoGQk
	KYvJUFxaddUOazVEn3AYl1WbH42ydqTAfLB4AfmkPnUhqvgo509XPlWjaQ4I0nU33zlOH3fWvkL+Z
	bCHh2YOwRuINDhKlbV5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqEqT-003eRE-H9; Mon, 07 Jun 2021 12:59:09 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqEcY-003Zo5-F1; Mon, 07 Jun 2021 12:44:53 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id 668ACC8568;
 Mon,  7 Jun 2021 20:44:43 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P32529T140357062862592S1623069879715065_; 
 Mon, 07 Jun 2021 20:44:44 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <94ee27cdbba9c85c87fed9d18aec789d>
X-RL-SENDER: jon.lin@rock-chips.com
X-SENDER: jon.lin@rock-chips.com
X-LOGIN-NAME: jon.lin@rock-chips.com
X-FST-TO: linux-spi@vger.kernel.org
X-RCPT-COUNT: 17
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jon Lin <jon.lin@rock-chips.com>
To: linux-spi@vger.kernel.org
Cc: jon.lin@rock-chips.com, broonie@kernel.org, robh+dt@kernel.org,
 heiko@sntech.de, jbx6244@gmail.com, hjc@rock-chips.com,
 yifeng.zhao@rock-chips.com, sugar.zhang@rock-chips.com,
 linux-rockchip@lists.infradead.org, linux-mtd@lists.infradead.org,
 p.yadav@ti.com, macroalpha82@gmail.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v5 7/8] arm64: dts: rockchip: Add SFC to RK3308
Date: Mon,  7 Jun 2021 20:44:36 +0800
Message-Id: <20210607124437.4143-3-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210607124437.4143-1-jon.lin@rock-chips.com>
References: <20210607124303.22393-1-jon.lin@rock-chips.com>
 <20210607124437.4143-1-jon.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_054446_751266_7749E28F 
X-CRM114-Status: GOOD (  10.63  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

From: Chris Morgan <macromorgan@hotmail.com>

Add a devicetree entry for the Rockchip SFC for the RK3308 SOC.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
---

Changes in v5: None
Changes in v4: None
Changes in v3: None
Changes in v2: None
Changes in v1: None

 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 37 ++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index 0c5fa9801e6f..2d922b1d51d5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -637,6 +637,17 @@
 		status = "disabled";
 	};
 
+	sfc: spi@ff4c0000 {
+		compatible = "rockchip,rk3308-sfc", "rockchip,rk3036-sfc";
+		reg = <0x0 0xff4c0000 0x0 0x4000>;
+		interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_SFC>, <&cru SCLK_SFC>;
+		clock-names = "ahb", "sfc";
+		pinctrl-0 = <&sfc_clk &sfc_cs0 &sfc_bus4>;
+		pinctrl-names = "default";
+		status = "disabled";
+	};
+
 	cru: clock-controller@ff500000 {
 		compatible = "rockchip,rk3308-cru";
 		reg = <0x0 0xff500000 0x0 0x1000>;
@@ -910,6 +921,32 @@
 			};
 		};
 
+		serial_flash {
+			sfc_bus4: sfc-bus4 {
+				rockchip,pins =
+					<3 RK_PA0 3 &pcfg_pull_none>,
+					<3 RK_PA1 3 &pcfg_pull_none>,
+					<3 RK_PA2 3 &pcfg_pull_none>,
+					<3 RK_PA3 3 &pcfg_pull_none>;
+			};
+
+			sfc_bus2: sfc-bus2 {
+				rockchip,pins =
+					<3 RK_PA0 3 &pcfg_pull_none>,
+					<3 RK_PA1 3 &pcfg_pull_none>;
+			};
+
+			sfc_cs0: sfc-cs0 {
+				rockchip,pins =
+					<3 RK_PA4 3 &pcfg_pull_none>;
+			};
+
+			sfc_clk: sfc-clk {
+				rockchip,pins =
+					<3 RK_PA5 3 &pcfg_pull_none>;
+			};
+		};
+
 		gmac {
 			rmii_pins: rmii-pins {
 				rockchip,pins =
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
