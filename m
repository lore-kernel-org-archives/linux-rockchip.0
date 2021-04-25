Return-Path: <SRS0=ZyAL=JW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A17BC433ED
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Apr 2021 09:45:36 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AB925611BD
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Apr 2021 09:45:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AB925611BD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rF0DMyKlcRY5eC6N8HEesbTnq3FoHxsIq2MaqP6I5OQ=; b=W1KT106hXe03MF8pJ1Eo1cSqaG
	W7BxVd54N+snqqYbl+LPnoiTRd2eg5niZSGGPRZAP8dRfnPxPlMt4LmzfZRbdLD4LTKW7HWYar4dr
	CML1LOmFEUqP1O0bHpGazzwRAjSvm81IP1rfHh86gN/atK/AxB/pR6miYXxE79SNHoB8vmggRP6fV
	hYavDpfVt2s1x38oGDJDfCmpSMEM46vnWVDSpyJ9anOXUnvX3OGx8hrryUaeUps/WmhXSjnN9ViJe
	ZtiJXImmxslpu7NMCr78QG+X1+P7/jUlWDMALMgHuTFKtiaNSgIRDBq92tj2xBR+y8nOhsb2dNbbv
	rirvIOnw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1labKU-005OjO-1w; Sun, 25 Apr 2021 09:45:30 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1labK5-005OaJ-Rb; Sun, 25 Apr 2021 09:45:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=J0PF4kzKA9vfqfAMIjHucmNbw8kQva/rNG4bet2B5XA=; b=GtEqSIAJHyHjZ4BbDyjkT8BiGj
 xZ6Wf5iM7sg14lE03CaJz5/lbGzNcnULxelvhu/WMefKZJUkfuOZSfTlH4GajBe/JTkD7slUt0rBp
 XZuGOZvgons9EibdioHEZX8pb3ZFIlg2/4qlQNKtQ2fhN6+yXWDZFREuivTvJkcX6z2UD/ORI1vKh
 NtLb9chMqls/W+9ljE/J8SFAg9mh0pT2WRgcFEzKxxQ0SZMZvae9jIlcQbGvWMruiaf60iR2NU5xi
 DsTv9blAoB1KR9zQGqE38Z5aw0BjF1eSDj2u76UfHW678iAr3wPKAuAVCi4TYhabXwSQmPnJRdM6D
 5TM6999g==;
Received: from lucky1.263xmail.com ([211.157.147.133])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1labK3-00FO2R-0R; Sun, 25 Apr 2021 09:45:04 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id E1636CD535;
 Sun, 25 Apr 2021 17:44:59 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P2750T140649399834368S1619343897431850_; 
 Sun, 25 Apr 2021 17:44:59 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <aff17ef80e566a6ddba2eeafe0498e34>
X-RL-SENDER: cl@rock-chips.com
X-SENDER: cl@rock-chips.com
X-LOGIN-NAME: cl@rock-chips.com
X-FST-TO: heiko@sntech.de
X-RCPT-COUNT: 29
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: <cl@rock-chips.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, jagan@amarulasolutions.com, wens@csie.org,
 uwe@kleine-koenig.org, mail@david-bauer.net, jbx6244@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, jensenhuang@friendlyarm.com,
 michael@amarulasolutions.com, cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-serial@vger.kernel.org,
 linux-i2c@vger.kernel.org, jay.xu@rock-chips.com, shawn.lin@rock-chips.com,
 david.wu@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com,
 cl@rock-chips.com, wim@linux-watchdog.org, linux@roeck-us.net,
 jamie@jamieiles.com, linux-watchdog@vger.kernel.org
Subject: [PATCH v2 7/7] arm64: dts: rockchip: add basic dts for RK3568 EVB
Date: Sun, 25 Apr 2021 17:44:55 +0800
Message-Id: <20210425094455.25949-1-cl@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210425094216.25724-1-cl@rock-chips.com>
References: <20210425094216.25724-1-cl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210425_024503_392700_FE1E406D 
X-CRM114-Status: GOOD (  14.55  )
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

From: Liang Chen <cl@rock-chips.com>

This patch add rk3568-evb1-v10.dts for RK3568 evaluation board.
add uart/emmc/i2c/rk809 node for basic function.

Signed-off-by: Liang Chen <cl@rock-chips.com>
---
 .../devicetree/bindings/arm/rockchip.yaml     |  5 ++
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../boot/dts/rockchip/rk3568-evb1-v10.dts     | 80 +++++++++++++++++++
 3 files changed, 86 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 4a6f772c1043..95ab9714af44 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -565,6 +565,11 @@ properties:
           - const: rockchip,rk3399-evb
           - const: rockchip,rk3399
 
+      - description: Rockchip RK3568 Evaluation board
+        items:
+          - const: rockchip,rk3568-evb1-v10
+          - const: rockchip,rk3568
+
       - description: Rockchip RK3399 Sapphire standalone
         items:
           - const: rockchip,rk3399-sapphire
diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index c3e00c0e2db7..7fdb41de01ec 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -51,3 +51,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
new file mode 100644
index 000000000000..33a97ce03c84
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
@@ -0,0 +1,80 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
+ *
+ */
+
+/dts-v1/;
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3568.dtsi"
+
+/ {
+	model = "Rockchip RK3568 EVB1 DDR4 V10 Board";
+	compatible = "rockchip,rk3568-evb1-v10", "rockchip,rk3568";
+
+	chosen: chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	dc_12v: dc-12v {
+		compatible = "regulator-fixed";
+		regulator-name = "dc_12v";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
+
+	vcc3v3_sys: vcc3v3-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&dc_12v>;
+	};
+
+	vcc5v0_sys: vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&dc_12v>;
+	};
+
+	vcc3v3_lcd0_n: vcc3v3-lcd0-n {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_lcd0_n";
+		regulator-boot-on;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	vcc3v3_lcd1_n: vcc3v3-lcd1-n {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_lcd1_n";
+		regulator-boot-on;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+};
+
+&sdhci {
+	bus-width = <8>;
+	max-frequency = <200000000>;
+	non-removable;
+	rockchip,txclk-tapnum = <0x8>;
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
