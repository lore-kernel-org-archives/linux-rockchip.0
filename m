Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A2FAC43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jul 2022 03:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CceK62sJV+kr12Xtkr3drmmhgWnBcVUxrGWbgLf9p10=; b=kFmyg535Vj41mi
	QPPXFlDECrj8gMSCt0L/fUionKV73mSOMBUnwQkrXDo8TPb/YSE6B8RUdQl7DrMsPGwXqZ+Ustyr2
	d15P8SvBtrxbAuOEjzqTfp+5OJWllvbvF9l8oFaP2RkTI2JdvfAb09N76MmZT14SzzaTeCz9ttuMG
	udvP9aYp8r1xPmXwYpKtNSIcVstaQ4uxpK5qdirT4tZG1GcmqvDsTPtPa2lUtU4tlwvSfuC2CHdr3
	QXP2TYvwaLwXBWz7V1v1X82cZG80IBTwgqo4fRj5EfdCK9rOiKTIDI6sw7M1RkvNeVv4X3vtlmGyG
	R88xPZjSh/UrJBNhsf+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDHUz-00AZIZ-28; Mon, 18 Jul 2022 03:32:45 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDHUo-00AZ8s-G3; Mon, 18 Jul 2022 03:32:35 +0000
Received: by mail-ed1-x52f.google.com with SMTP id m13so3399216edc.5;
        Sun, 17 Jul 2022 20:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7vU2EaXziKtqA6IF4Ixdqyip9HawpsDk92gp0K8d4qg=;
        b=EzgVqeyAcGyjTaL9iKSBmbh1jgOQftICXQMK/plVSPG1Jc+/W59+11U+Ji006d9gBA
         cK7wUaxD16Tzp6yVXclMnkgqCIjjp9o4kAcOe7Iq8FsQN58NFpgdKxPVdiuryEPtEycx
         Dm6UsXetNVyGZ8/MRK3Va9/anbTbu5bL3OVqQ8UdkrlvfyATBAEIvnmmZldBDMgfFgdP
         NA0OrTSjM0DpidP5a/r1PtAAp917lu8GdkMlVCOkYURvt0yx5hDkK6gBfMCjEqNIz8/m
         rKoVMEXU7tAFqfsyUj1kSBaMyDVmMm5nVI6Awc0vcpPz40j9YWIdjVQruLVLLBjrkW71
         /iUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7vU2EaXziKtqA6IF4Ixdqyip9HawpsDk92gp0K8d4qg=;
        b=BZ2DX3zCJfuuodoBDwiXKjovKD7p5zI3O6NS98VFx6LW728y93dun5miZ0ebTGyvVL
         LacJ6ejk5sQGrnB+rgoeZ3NzNBBLhNuljtSn3ZbPNiLlQs5NR9nqzaKgTaNJqMhWFK2P
         Rt73GbXySKtfiHCg5g5vMDBesC8VHH2+TWQ2TbXUtzr8AXAKIehMIP/02v7asWCGb6tj
         VoTFbc5Q4mxTf7VAHLQzVqDaPNS+vQlWJV/2QYkbRo4K86GBBHx5JGfidCRMWmKSg9Wg
         L37bCm6F8Vx5sBuoulQxt86jm2EI7KeWBQwB7Og9QOiCM2kK+YR+wyjQmQGUuQfulu3c
         BYCg==
X-Gm-Message-State: AJIora/SI4aje5yvndbPgzCWVsvx3Mhw/mOAEJNSgJ4jcEEJaQb4P5Za
	CfiZwG1y75DikfjmpQHTHGs=
X-Google-Smtp-Source: AGRyM1tl/Y2QD1vN32cF7rhxUR2CaQ2xN/3eHkgE3g0LGVY2m+PPX562g3dY1rNLc5CvkNi0RVavIg==
X-Received: by 2002:aa7:dd4b:0:b0:43a:d508:7cb9 with SMTP id o11-20020aa7dd4b000000b0043ad5087cb9mr35087886edw.218.1658115151793;
        Sun, 17 Jul 2022 20:32:31 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id z20-20020a170906715400b0070f7d1c5a18sm4972287ejj.55.2022.07.17.20.32.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Jul 2022 20:32:31 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Add PCIe 2 nodes to quartz64-b
Date: Mon, 18 Jul 2022 05:31:45 +0200
Message-Id: <20220718033145.792657-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220717_203234_561054_79B96F6A 
X-CRM114-Status: GOOD (  11.49  )
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

This adds the regulator node to the quartz64-b device tree,
and enables the PCIe 2 controller and combphy for it.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 .../boot/dts/rockchip/rk3566-quartz64-b.dts   | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
index 528bb4e8ac77..8e9cf3ac1c39 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
@@ -54,6 +54,18 @@ sdio_pwrseq: sdio-pwrseq {
 		power-off-delay-us = <5000000>;
 	};
 
+	vcc3v3_pcie_p: vcc3v3-pcie-p-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie_enable_h>;
+		regulator-name = "vcc3v3_pcie_p";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_3v3>;
+	};
+
 	vcc5v0_in: vcc5v0-in-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_in";
@@ -113,6 +125,10 @@ &combphy1 {
 	status = "okay";
 };
 
+&combphy2 {
+	status = "okay";
+};
+
 &cpu0 {
 	cpu-supply = <&vdd_cpu>;
 };
@@ -427,6 +443,14 @@ rgmii_phy1: ethernet-phy@1 {
 	};
 };
 
+&pcie2x1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_reset_h>;
+	reset-gpios = <&gpio1 RK_PB2 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie_p>;
+	status = "okay";
+};
+
 &pinctrl {
 	bt {
 		bt_enable_h: bt-enable-h {
@@ -448,6 +472,16 @@ user_led_enable_h: user-led-enable-h {
 		};
 	};
 
+	pcie {
+		pcie_enable_h: pcie-enable-h {
+			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie_reset_h: pcie-reset-h {
+			rockchip,pins = <1 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
 		pmic_int: pmic_int {
 			rockchip,pins =
-- 
2.37.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
