Return-Path: <SRS0=+8lW=CR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 140BAC43461
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2020 15:10:48 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AD2D322283
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2020 15:10:47 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="TGeT3GQP";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="0lrqHIXm"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AD2D322283
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S8tcdWtUtpT8jaaszfwLKU6/FF3DvUXSfbR8LTVPdvc=; b=TGeT3GQPYyGnr2icadXg9QXrP8
	mHu8T7/R0kBEmgFwCx8v5aTSO2eg3q7RSxXKrECHkxCS3zQIdYlyp2QctteAF+E/me4DOSV1SNclh
	yPdeSUJf+7gDvrGnl01huftfdl5XjMK342wM0UMiSg4lVMS93uOvcGAYY4oBnQKQoy7Iz+wx6Az5V
	11wHHTnI4uErPU4mpCRtlvkLSLfsFJzByJsE6DdKZtPbmzONDrlqYb7zGGj59FyxJDqxfTftM2+5P
	+MFz15FC5jMKR+/iyProf/caRNOoNSn+69xr3+6Xyf/fq2O3DHiawuPg8RCtyyltn/vq47sD52y2e
	Ow/AtznQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kFfGd-0006iA-M9; Tue, 08 Sep 2020 15:10:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFfGS-0006ei-39; Tue, 08 Sep 2020 15:10:34 +0000
Received: from localhost.localdomain (unknown [194.230.155.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BB95C23BF0;
 Tue,  8 Sep 2020 15:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599577415;
 bh=CC7L87p3n6aStqWRlNrcH5ZsoqrdQ1XiSgGvIlyXZe8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0lrqHIXm4g/8GS5r4BM/6+eSqNBWrT34cKgW9tm6doThu89L85L5egs6V4vxs1yWB
 lNmVKBN0+bt5fldqyY5R2Ty0wpOsF9EMrXZBe0EMZ58WONgZCDwDh4QhDVHH+sJdLY
 Rf+aV2D1Ss3XYkAdH9zRVN3qz/dgWrn28TByR55E=
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
Subject: [PATCH 4/8] arm64: dts: imx8mn: Correct interrupt flags in examples
Date: Tue,  8 Sep 2020 17:02:37 +0200
Message-Id: <20200908150241.5771-4-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200908150241.5771-1-krzk@kernel.org>
References: <20200908150241.5771-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200908_111032_224132_6DA9B01B 
X-CRM114-Status: GOOD (  16.75  )
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
 arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts | 2 +-
 arch/arm64/boot/dts/freescale/imx8mn-evk.dts      | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
index a1e5483dbbbe..9e12b5234692 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
@@ -55,7 +55,7 @@
 		reg = <0x4b>;
 		pinctrl-0 = <&pinctrl_pmic>;
 		interrupt-parent = <&gpio1>;
-		interrupts = <3 GPIO_ACTIVE_LOW>;
+		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
 		rohm,reset-snvs-powered;
 
 		regulators {
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-evk.dts b/arch/arm64/boot/dts/freescale/imx8mn-evk.dts
index b846526a8d8b..707d8486b4d8 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-evk.dts
@@ -7,6 +7,7 @@
 
 #include "imx8mn.dtsi"
 #include "imx8mn-evk.dtsi"
+#include <dt-bindings/interrupt-controller/irq.h>
 
 / {
 	model = "NXP i.MX8MNano EVK board";
@@ -19,7 +20,7 @@
 		reg = <0x25>;
 		pinctrl-0 = <&pinctrl_pmic>;
 		interrupt-parent = <&gpio1>;
-		interrupts = <3 GPIO_ACTIVE_LOW>;
+		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
 
 		regulators {
 			buck1: BUCK1{
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
