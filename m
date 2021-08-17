Return-Path: <SRS0=qLnh=NI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2BF82C432BE
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 10:17:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E6FEF60F58
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 10:17:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E6FEF60F58
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aOBuOwXQHbvfm0wN1NJu+z2QkTYLp+nF44xcO3WSP4g=; b=eHPA5X+gYFNuhc
	yVhARRkWD6f6M+bO0Pa7yuobImSfoVkCOeZf+PvE3fYoDrN4Z8ry1IveCeAc6AwTFer38VHSfxbDc
	prWCil/MwiXsPjM581wnqSykG97omHOZFsQewlvDlZzPtzosabRW/qoUjEkTi8r6mwJbJPWjT/Vri
	jLTnDIjDQIoTZRVdIcgYtv6RF9RWZzdwCTbwj31qUDQN9xbfxHAP3ZP17vI5lSJIkHnEecXhCYSQ4
	BMv7Vv/0bq6QV0a2AJulUsfNWfgHHxxeB7MZA+vX0Dtyddo/J7+voEphLZgn9mvfa5u3D30psv58F
	GB6gCmK3OFEO9oqbp53w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFw9R-0024ID-OF; Tue, 17 Aug 2021 10:16:57 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFw5M-0022J8-93; Tue, 17 Aug 2021 10:12:45 +0000
Received: by mail-ej1-x644.google.com with SMTP id gr13so8458953ejb.6;
 Tue, 17 Aug 2021 03:12:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/WAfNuRfJO7LeOVVvDRI/y8LyLau5VABNm838AmnyFo=;
 b=sFILswKo5rBl8VwdDLoIIvAVcnob6dPfqeX2siC87rmtwvaCx7LtTVboU2RXnjg1ts
 hijTkqlQytVV7Uq90+qwGvPZrAlrNDcoKa/VzcwtBhm/+Paw/Z7unj27SDKrLQanlrGq
 7OeCDfx3EBYZB3dJvi+W63IHIir6GmqTgO1QoXRhcPGt72+ec2CpQaKLUjgqMIi+lnJE
 j+bh6jMz/zBK5PbX4FLPGUXP22EWibpTRbMGYgi9kKa1dBMnxmGj5ccV35Re2p65FuxQ
 yCPNM1cJcn8mLwNYS/f4KyYP1ZT+bNELlwgVaAwdBtx5leqHoLt5AXlnsXgU/mrfuMqp
 RWrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/WAfNuRfJO7LeOVVvDRI/y8LyLau5VABNm838AmnyFo=;
 b=ONuBNmy8HfgnfXXtdRNaYGsJ95663qkiVJQg2Z5fYuHBFVi2gioEjBUyKZFkquErxm
 eaS6+EJIpWIzj9+tkq1gGD/iuqKHX2OpVMiFEFyW0gQrwQN/RFWFn8wU1/WqooQ+SYbJ
 YBubn+QfaZIkzyNy8Q+jQwXwB1fADFgTzpC1sMkZIArd6QrTYo5rYWJnZtWLw2+flFVO
 xYT+tGUNsBcJmNiMgfcMxk0RD4qQgbh2gASAXRPEVHB9JUGIqxL8cnyy99cwO1qIwr7K
 NS1lvqoMyngIJ4OBrDvUM08eNaRl7aBU6AH+uvzru8NrK1ECIgTGLRgiMxlj2lK/Dym9
 ufrw==
X-Gm-Message-State: AOAM532wLNgb1KqfuISyUCl+uiUQlS+EtHMcBrl/0WLTP87XJTnfqaRY
 qOL5LHodtEOK+VI3Xqzh5TA=
X-Google-Smtp-Source: ABdhPJz/ptHl1gRntKfY8he/WLyUVFrDG6r1VcZrRTjoEkImPkiQEAGArE18Td5ZEvY1tX4N9i/utA==
X-Received: by 2002:a17:906:6815:: with SMTP id
 k21mr3131060ejr.371.1629195161808; 
 Tue, 17 Aug 2021 03:12:41 -0700 (PDT)
Received: from localhost.localdomain ([185.213.155.232])
 by smtp.gmail.com with ESMTPSA id m6sm822920edq.22.2021.08.17.03.12.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Aug 2021 03:12:41 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] arm64: dts: rockchip: add analog audio on Quartz64
Date: Tue, 17 Aug 2021 12:11:19 +0200
Message-Id: <20210817101119.423853-5-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210817101119.423853-1-frattaroli.nicolas@gmail.com>
References: <20210817101119.423853-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_031244_373784_5F1FAD71 
X-CRM114-Status: GOOD (  15.45  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On the Quartz64 Model A, the I2S1 TDM controller is connected
to the rk817 codec in I2S mode. Enabling it and adding the
necessary simple-sound-card and codec nodes allows for analog
audio output on the PINE64 Quartz64 Model A SBC.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 36 ++++++++++++++++++-
 1 file changed, 35 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index b239f314b38a..8da4d1f600c3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -4,6 +4,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/sound/rockchip,i2s-tdm.h>
 #include "rk3566.dtsi"
 
 / {
@@ -50,6 +51,20 @@ led-diy {
 		};
 	};
 
+	rk817-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,name = "Analog RK817";
+		simple-audio-card,mclk-fs = <256>;
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s1_8ch>;
+		};
+		simple-audio-card,codec {
+			sound-dai = <&rk817>;
+		};
+	};
+
 	vcc12v_dcin: vcc12v_dcin {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
@@ -174,8 +189,13 @@ rk817: pmic@20 {
 		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
 		clock-output-names = "rk808-clkout1", "rk808-clkout2";
 
+		#sound-dai-cells = <0>;
+		clock-names = "mclk";
+		clocks = <&cru I2S1_MCLKOUT_TX>;
+		assigned-clocks = <&cru I2S1_MCLKOUT_TX>;
+		assigned-clock-parents = <&cru CLK_I2S1_8CH_TX>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_int_l>;
+		pinctrl-0 = <&pmic_int_l>, <&i2s1m0_mclk>;
 		rockchip,system-power-controller;
 		wakeup-source;
 		#clock-cells = <1>;
@@ -364,9 +384,23 @@ regulator-state-mem {
 				};
 			};
 		};
+
+		rk817_codec: codec {
+		};
+
 	};
 };
 
+&i2s1_8ch {
+	status = "okay";
+	rockchip,trcm-sync = <RK_TRCM_TX>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2s1m0_sclktx
+		     &i2s1m0_lrcktx
+		     &i2s1m0_sdi0
+		     &i2s1m0_sdo0>;
+};
+
 &mdio1 {
 	rgmii_phy1: ethernet-phy@0 {
 		compatible = "ethernet-phy-ieee802.3-c22";
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
