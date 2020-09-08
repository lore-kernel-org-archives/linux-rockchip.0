Return-Path: <SRS0=+8lW=CR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4416C433E2
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2020 15:10:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 753C5224DE
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2020 15:10:50 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="xpPXgsF5";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="b9lcnyM5"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 753C5224DE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HlGFf6C1gDqrZpA7U9up2pmvx3M4Vl9XXjdz02FEy/c=; b=xpPXgsF5qmh+50TKTAYv9CscUN
	P451zJeB130s2ufmhQK1LRqncjBtf62jQIzfeEA6Vt2OEMM0q0DTLUukFxB9pHWV7OrWMA9IEB02W
	C7hAh0RxaIe0NHuTTJrti/QM9l89cXrK2IpKm9jM3oGkd3g7Wd+O+TErUehVI9lPnUrBgEZv07kA/
	9leKWkyqGe0hZn1gIa4OOjmM4cILVwNPRuXmkOOBopyLTIV0Y216dUwtt9Dhg0M+VoYqJ4i5MwUKf
	A/F6Emx9rBRoZQxfXcniFhIsbnvAjO90L/7MKvd8790sXxAEyvNz28cG3CvSMvqSTUwhfg6g55YtD
	Zznp9XKg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kFfGf-0006iu-Se; Tue, 08 Sep 2020 15:10:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFfGS-0006ej-39; Tue, 08 Sep 2020 15:10:34 +0000
Received: from localhost.localdomain (unknown [194.230.155.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 79B4C23BCB;
 Tue,  8 Sep 2020 15:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599577408;
 bh=9cGXF9Fk6znkJkyV+iG7yCQKESCYuPnVIiLeDN/ljmU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=b9lcnyM56dzOhaimYePf+ldrd+LHVkjEdSsthK76VoETI4VdbnzILvXgSutduMP4b
 pw5Y67zLDmQ5lMMVjxYca78nNTdrxw2J/2HSMVG29n6h8jL+Ujh1vA5KRwoK00cJPQ
 cS03pRejgmbye9lXjiwVMUnO9k6zHcAjupjsXUvs=
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
Subject: [PATCH 3/8] arm64: dts: imx8mm: Correct interrupt flags in examples
Date: Tue,  8 Sep 2020 17:02:36 +0200
Message-Id: <20200908150241.5771-3-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200908150241.5771-1-krzk@kernel.org>
References: <20200908150241.5771-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200908_111032_321353_1B3F14CA 
X-CRM114-Status: GOOD (  15.09  )
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
  ACTIVE_HIGH => IRQ_TYPE_LEVEL_HIGH

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi      | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-evk.dts              | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi         | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi
index 620a124dfb5f..fdce665d7ac4 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi
@@ -74,7 +74,7 @@
 		reg = <0x4b>;
 		pinctrl-0 = <&pinctrl_pmic>;
 		interrupt-parent = <&gpio1>;
-		interrupts = <3 GPIO_ACTIVE_LOW>;
+		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
 		rohm,reset-snvs-powered;
 
 		regulators {
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
index 38134d201eef..609d73e19fee 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
@@ -166,7 +166,7 @@
 		reg = <0x4b>;
 		pinctrl-0 = <&pinctrl_pmic>;
 		interrupt-parent = <&gpio1>;
-		interrupts = <3 GPIO_ACTIVE_LOW>;
+		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
 		rohm,reset-snvs-powered;
 
 		regulators {
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
index 0bca737964d5..b84d94e10c26 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
@@ -133,7 +133,7 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_captouch>;
 		interrupt-parent = <&gpio5>;
-		interrupts = <4 GPIO_ACTIVE_HIGH>;
+		interrupts = <4 IRQ_TYPE_LEVEL_HIGH>;
 
 		touchscreen-size-x = <800>;
 		touchscreen-size-y = <480>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
index c371cb34b3f7..49743d2f60c1 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
@@ -137,7 +137,7 @@
 		reg = <0x4b>;
 		pinctrl-0 = <&pinctrl_pmic>;
 		interrupt-parent = <&gpio2>;
-		interrupts = <8 GPIO_ACTIVE_LOW>;
+		interrupts = <8 IRQ_TYPE_LEVEL_LOW>;
 		rohm,reset-snvs-powered;
 
 		regulators {
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
