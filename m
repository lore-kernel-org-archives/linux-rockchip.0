Return-Path: <SRS0=Ln7Z=LW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16525C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jun 2021 11:31:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D49B361C6C
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jun 2021 11:31:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D49B361C6C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O5SSehI/ax4Ye9FaSyskp7VE1x5BXbSpc+y5N40Bbeg=; b=4BzCrlykUn9Dtl
	1olyLMXI/d5W762c5Qxskgr5pKD4R2nnD1Sil9beJvgZnXj+R+gIq/xvjMsFkwagCG3dIWI1alFQV
	NCpj3pnOnV/9Gk7LmG+ZjLB2/PrCmIpt+mdDLExqUeuKwL6eL6agQqu96h+k0MMCcYgLrzr4CZ1MP
	pQCoeAjD52L7Vak0WJe/JY8JdwXs0TlMeJhOlWuVNt+lgEwwhDP3eitiB/9UT9aRxGi6Qihw/xZ/U
	aEbuSCDMUQaf0PvyDSxzYRQIuZNgV2THpUdLexHbdEQ5MI4ywFokkRzb4tNT8GpEk5OqLF/I4teo/
	HWVJWkGI+cCvBPBERKZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxpTh-007l6c-UP; Mon, 28 Jun 2021 11:31:01 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxpTV-007l54-AW; Mon, 28 Jun 2021 11:30:50 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 6B3381F42102
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: jack@radxa.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: [PATCH] arm64: dts: rockchip: add rock-pi-4 analog audio
Date: Mon, 28 Jun 2021 14:30:33 +0300
Message-Id: <20210628113033.9145-1-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_043049_536879_B374ECC7 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
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

This adds the necessary pinctrl and nodes to enable the
analog audio on rk3399 rock-pi-4 SBCs using the es8316
codec and the audio-graph-card driver.

Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 .../boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index b28888ea9262..77781d9150ac 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -128,6 +128,12 @@ vdd_log: vdd-log {
 		regulator-max-microvolt = <1400000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
+
+	sound {
+		compatible = "audio-graph-card";
+		label = "rockchip,rk3399";
+		dais = <&i2s0_p0>;
+	};
 };
 
 &cpu_l0 {
@@ -422,6 +428,24 @@ &i2c1 {
 	i2c-scl-rising-time-ns = <300>;
 	i2c-scl-falling-time-ns = <15>;
 	status = "okay";
+
+	es8316: codec@11 {
+		compatible = "everest,es8316";
+		reg = <0x11>;
+		clocks = <&cru SCLK_I2S_8CH_OUT>;
+		clock-names = "mclk";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hp_det_pin>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <RK_PA0 IRQ_TYPE_LEVEL_HIGH>;
+		#sound-dai-cells = <0>;
+
+		port {
+			es8316_p0_0: endpoint {
+				remote-endpoint = <&i2s0_p0_0>;
+			};
+		};
+	};
 };
 
 &i2c3 {
@@ -441,6 +465,14 @@ &i2s0 {
 	rockchip,capture-channels = <2>;
 	rockchip,playback-channels = <2>;
 	status = "okay";
+
+	i2s0_p0: port {
+		i2s0_p0_0: endpoint {
+			dai-format = "i2s";
+			mclk-fs = <256>;
+			remote-endpoint = <&es8316_p0_0>;
+		};
+	};
 };
 
 &i2s1 {
@@ -556,6 +588,12 @@ wifi_host_wake_l: wifi-host-wake-l {
 			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	es8316 {
+		hp_det_pin: hp-det-pin {
+			rockchip,pins = <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
 };
 
 &pwm2 {
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
