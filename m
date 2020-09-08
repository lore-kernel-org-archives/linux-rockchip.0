Return-Path: <SRS0=+8lW=CR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD2C7C43461
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2020 15:05:46 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7D83E23EB0
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2020 15:05:46 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="mci4d6Q3";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="ILL7toj8";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="f83qnPfc"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7D83E23EB0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i0ZRYr1frUZnmcJP+oIyw7SHTZ4dXv1ecUQAvuR6OVw=; b=mci4d6Q3+QVsHRt79guWpOouxi
	ryOCldN7KF3Gb64Yq2ffHEk0rGuUAnl/C1rI/NnSzM9Ntg5EWuApx9VpF7MjmZTT2Nqo6OxcPrp03
	3r8RKLuaeqs5GbjAMebfzlE/sfyOY+xCbupwYPoQU6JAyClAwx5zJCWbZ1o4JeHLRHdWQEYhoMlLF
	p2M/C7pOs7DYEpLuApNf64tH0Fj5FNRufcqsOig7UDU1gwUZywJ3GiuTCu/3KWXZB/HxuWaNkCbTp
	kOl/ZG3ccQvr1iFEjJWIWOnsQPLzWOfkiiCgDxyXqlTpZXYSe/8K/IT0yVWhPuH7LhO6IFEsmzN/K
	Yx1jFjMQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kFfAh-0005bm-En; Tue, 08 Sep 2020 15:04:35 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFfAd-0005bR-OW; Tue, 08 Sep 2020 15:04:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=XLDjZBmYLhC4viEnD7Am+bZm2y3VXkiXFzAE2uaqFqs=; b=ILL7toj8VcLcr0Lx2b0wjCFPCB
 5Jv8SUWi6LMQLmn5wNls84hWMywPZyPv8QOnTRSmI1wwYP4jnbfv9G1nYOnUIJOqvt23SoD+EWlmS
 d3DWwiFe+RzfhruSYn4VDbyWJm/FIWAjO+40CbWpiMYHO4lVf9EWSI54EEw4rYeLwPEgek9feRlYJ
 ccO+0jY7Nhy8GcTyaRx3EYI5F/CTeKWt7pjBPk79Tk8KbptMCTSTPMTk7UKJnWzZK784tUqMw+osn
 I2U5N5kvhnswI+wSajxHLiNJRWGrpo7BtDcE55Md+QboWYuW2PJkSkRENCCFIC/4lGxoNZJ1Qu7bR
 wto+thLA==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFfAQ-0003Zg-57; Tue, 08 Sep 2020 15:04:29 +0000
Received: from localhost.localdomain (unknown [194.230.155.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 685AD23C2F;
 Tue,  8 Sep 2020 15:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599577419;
 bh=vz/rJ82lQGFmeFstvC9WgMiNuCiMsme+wQgrAQY1Ok0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=f83qnPfcbf2pWlWdEcVcmx6CZMFj90HQ1l+Hf2E1oKZvkzJjMGNSAFzhelsuw+UDN
 lAaZerPbUxMmyAhJ1V4B5nhswe+6q96BWrGXQEh7hFtACQ67yCIirUZECc9WnV7jL2
 m3y3kFPwAeZFwowJpLMjvBdBOHODdsCQCWw8n074=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>, Michal Simek <michal.simek@xilinx.com>,
 Adam Ford <aford173@gmail.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Robin Gong <yibin.gong@nxp.com>,
 Alifer Moraes <alifer.wsdm@gmail.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "Angus Ainslie (Purism)" <angus@akkea.ca>,
 Vitor Massaru Iha <vitor@massaru.org>,
 Kever Yang <kever.yang@rock-chips.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [PATCH 5/8] arm64: dts: imx8mq: Correct interrupt flags in examples
Date: Tue,  8 Sep 2020 17:02:38 +0200
Message-Id: <20200908150241.5771-5-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200908150241.5771-1-krzk@kernel.org>
References: <20200908150241.5771-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200908_160418_850916_C3B86EA0 
X-CRM114-Status: GOOD (  15.70  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

GPIO_ACTIVE_x flags are not correct in the context of interrupt flags.
These are simple defines so they could be used in DTS but they will not
have the same meaning:
1. GPIO_ACTIVE_HIGH = 0 = IRQ_TYPE_NONE
2. GPIO_ACTIVE_LOW  = 1 = IRQ_TYPE_EDGE_RISING

Correct the interrupt flags, assuming the author of the code wanted some
logical behavior behind the name "ACTIVE_xxx", this is:
  ACTIVE_LOW  => IRQ_TYPE_LEVEL_LOW

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Not tested on HW.
---
 arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts | 5 +++--
 arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi       | 3 ++-
 arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts       | 3 ++-
 arch/arm64/boot/dts/freescale/imx8mq-pico-pi.dts        | 3 ++-
 4 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
index a80e53428c2f..7f728dea32ca 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
@@ -6,6 +6,7 @@
 /dts-v1/;
 
 #include "dt-bindings/input/input.h"
+#include <dt-bindings/interrupt-controller/irq.h>
 #include "dt-bindings/pwm/pwm.h"
 #include "dt-bindings/usb/pd.h"
 #include "imx8mq.dtsi"
@@ -60,7 +61,7 @@
 			label = "WWAN_WAKE";
 			gpios = <&gpio3 8 GPIO_ACTIVE_LOW>;
 			interrupt-parent = <&gpio3>;
-			interrupts = <8 GPIO_ACTIVE_LOW>;
+			interrupts = <8 IRQ_TYPE_LEVEL_LOW>;
 			wakeup-source;
 			linux,code = <KEY_PHONE>;
 		};
@@ -288,7 +289,7 @@
 		#clock-cells = <0>;
 		clock-output-names = "pmic_clk";
 		interrupt-parent = <&gpio1>;
-		interrupts = <3 GPIO_ACTIVE_LOW>;
+		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
 		interrupt-names = "irq";
 		rohm,reset-snvs-powered;
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi
index c3e290703fe8..3c389c7ffb2c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi
@@ -6,6 +6,7 @@
 /dts-v1/;
 
 #include "dt-bindings/input/input.h"
+#include <dt-bindings/interrupt-controller/irq.h>
 #include "dt-bindings/pwm/pwm.h"
 #include "dt-bindings/usb/pd.h"
 #include "imx8mq.dtsi"
@@ -639,7 +640,7 @@
 		clock-names = "osc";
 		clock-output-names = "pmic_clk";
 		interrupt-parent = <&gpio1>;
-		interrupts = <7 GPIO_ACTIVE_LOW>;
+		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
 		interrupt-names = "irq";
 		rohm,reset-snvs-powered;
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts b/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts
index 3f541ddf0768..05fcea2fb402 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts
@@ -6,6 +6,7 @@
 /dts-v1/;
 
 #include "imx8mq.dtsi"
+#include <dt-bindings/interrupt-controller/irq.h>
 
 / {
 	model = "Google i.MX8MQ Phanbell";
@@ -125,7 +126,7 @@
 		clocks = <&pmic_osc>;
 		clock-output-names = "pmic_clk";
 		interrupt-parent = <&gpio1>;
-		interrupts = <3 GPIO_ACTIVE_LOW>;
+		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
 
 		regulators {
 			buck1: BUCK1 {
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-pico-pi.dts b/arch/arm64/boot/dts/freescale/imx8mq-pico-pi.dts
index 59da96b7143f..84c3a143d87b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-pico-pi.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-pico-pi.dts
@@ -9,6 +9,7 @@
 /dts-v1/;
 
 #include "imx8mq.dtsi"
+#include <dt-bindings/interrupt-controller/irq.h>
 
 / {
 	model = "TechNexion PICO-PI-8M";
@@ -70,7 +71,7 @@
 		clock-names = "osc";
 		clock-output-names = "pmic_clk";
 		interrupt-parent = <&gpio1>;
-		interrupts = <3 GPIO_ACTIVE_LOW>;
+		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
 		interrupt-names = "irq";
 
 		regulators {
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
