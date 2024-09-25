Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F654C369A7
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Sep 2024 07:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NaR/LP8K3vcIQ5xccu2oV6frwbUNSv0tPS7uMLN3z5s=; b=aqK05AwS8/GP7e
	Rf/jxjMfuAnilkbRkO5/F5KwF6XUPEBtNyC6Wk8Pa2dUjldAq7mhDvp6j2pYRvSELCYRTlcciJ41S
	A8DH36UZDVRVfIKZUjl6hz7qXLuzv52Fp9ekJgqGixexy5HCVz3WpWpE6LKDHN0k8TMhnodE82P6J
	Jm399w46n7LVuwgGrX0X3tXewjULUAgKgbRH5NxR75ycbrdzte7frUAVbUjlJ36IbDq7P8Ns8kTH7
	k5UjjjGo6x5yj4YCBA5n8XeXHVp9cPLpDWYowICLtcp5eZo9Lh03cI9xS9XxmoONfnwXjBt9nAbzj
	SJ9Wan9s4Ay35tKq3htw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stMjW-00000004Nbw-2q6S;
	Wed, 25 Sep 2024 07:46:46 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stMTo-00000004Kxv-29Uy
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Sep 2024 07:30:34 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-5365b6bd901so7584499e87.2
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Sep 2024 00:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1727249430; x=1727854230; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vY26RNbOL3F9f/8+p4WI4feXCTMewUkKUz2YQ62h6ug=;
        b=AbHQtlJrK/I7kGiPkZApazu7uZZ0wvfLjb+Xg40sNQ/QuvmRk55wWydX/gICxSNjQa
         LDC0yb5x8TMC85q4v+nPmXiJPGHQBM9dgvZiaMmHOgcAOY14EYBoK5BkeD0Wb7N1F+Md
         eHK+snijH6JsZPVE0L8AcQUEKk+Ck/5rf3fh5k5dMlzAVfDJXjSzi0GK5KZ0xHBGTv4V
         nDM71rjfklE9sgXO2c2SqbNTRBPJGbwaPuf5dazbcMyxNxzHp8yFbETk39sLr9LHalkW
         zplhLjnvjMIxPMIh9YasPX0wLQbhdeVjX+733j0MIQtuzw/6SVLahU50AIxGFe+ML2Vt
         5iyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727249430; x=1727854230;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vY26RNbOL3F9f/8+p4WI4feXCTMewUkKUz2YQ62h6ug=;
        b=X0q0UF/iUvmtZf+eRAfBJzaNtB4Pg5reSaT7MNXGICOI/yTTNgRE9RxDqSWHPScaUq
         W5GP8naF0qnOyuzS+Lp6BNEItqV52E0gqiWvi/qZs8iSPYhObs0ich1yyK8sOmCGPnHl
         vWh8nmvGC7//enVyIK4ezsRPD3R1+OSfpAxu7DQXTaQ4+6giFS6h0L2+6fo9SxW0SgD2
         4xRntb0+/RItKKD9oBU2N579JKONNWhaf0Fu7hC3rZ2aKCgstbvmyTAJKtyl1isxQIMC
         md1XrGz9RLckezsQtN5rqiH1di9LQ+8EXZSGI46TVAzIAjQd7Rdhat1ve+8PONbqbDeg
         vlFQ==
X-Forwarded-Encrypted: i=1; AJvYcCVsBlbbOGqKUvgYp74m+YIJHBMBhvCox8gDYqkMbSMyxmeZV/NJqTx/xIjCGithiDMWAN7x3TNzF8EARqvzsA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3hzVIDBo04bDOd+BexeIvLD9+z5g6bbzNUTObYmDOP2u2FeKf
	2SYy0weoIG/smHgRPpc/yDzNG1KQvYlhMTk030BYH5vo9Mz2lkUy3Lw0lJZiets=
X-Google-Smtp-Source: AGHT+IHU5dm7r3LAh2i3BDE497vobimRWDIK6ta2lMT2081YWOISe9Wte37bCoUqfx8JxDi26jupXw==
X-Received: by 2002:a05:6512:3f07:b0:535:6ba7:7725 with SMTP id 2adb3069b0e04-5387048a6d7mr1031326e87.3.1727249430423;
        Wed, 25 Sep 2024 00:30:30 -0700 (PDT)
Received: from localhost.localdomain ([91.90.172.13])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9392f5466asm178204866b.76.2024.09.25.00.30.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Sep 2024 00:30:30 -0700 (PDT)
From: Daniel Semkowicz <dse@thaumatec.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Daniel Semkowicz <dse@thaumatec.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Farouk Bouabid <farouk.bouabid@theobroma-systems.com>,
	Iskander Amara <iskander.amara@theobroma-systems.com>,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Vahe Grigoryan <vahe.grigoryan@theobroma-systems.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: Add power button for RK3399 Puma
Date: Wed, 25 Sep 2024 09:28:52 +0200
Message-ID: <20240925072945.18757-1-dse@thaumatec.com>
X-Mailer: git-send-email 2.46.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_003032_584273_CB00A676 
X-CRM114-Status: GOOD (  14.19  )
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

There is a PWRBTN# input pin exposed on a Q7 connector. The pin
is routed to a GPIO0_A1 through a diode. Q7 specification describes
the PWRBTN# pin as a Power Button signal.
Configure the pin as KEY_POWER, so it can function as power button and
trigger device shutdown.
Add the pin definition to RK3399 Puma dts, so it can be reused
by derived platforms, but keep it disabled by default.

Enable the power button input on Haikou development board.

Signed-off-by: Daniel Semkowicz <dse@thaumatec.com>
---

 .../boot/dts/rockchip/rk3399-puma-haikou.dts  |  4 ++++
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi | 22 +++++++++++++++++++
 2 files changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
index f6f15946579e..0999026b16d0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
@@ -143,6 +143,10 @@ vddd_codec: vddd-codec {
 	};
 };
 
+&gpio_key_power {
+	status = "okay";
+};
+
 &hdmi {
 	ddc-i2c-bus = <&i2c3>;
 	status = "okay";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index 650b1ba9c192..389ffe604e74 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -3,6 +3,7 @@
  * Copyright (c) 2017 Theobroma Systems Design und Consulting GmbH
  */
 
+#include <dt-bindings/input/input.h>
 #include <dt-bindings/pwm/pwm.h>
 #include "rk3399.dtsi"
 
@@ -39,6 +40,19 @@ clkin_gmac: external-gmac-clock {
 		#clock-cells = <0>;
 	};
 
+	gpio_key_power: gpio-key-power {
+		compatible = "gpio-keys";
+		pinctrl-0 = <&pwrbtn_pin>;
+		pinctrl-names = "default";
+		status = "disabled";
+
+		button-pwrbtn-n {
+			gpios = <&gpio0 RK_PA1 GPIO_ACTIVE_LOW>;
+			label = "PWRBTN#";
+			linux,code = <KEY_POWER>;
+		};
+	};
+
 	vcc1v2_phy: vcc1v2-phy {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc1v2_phy";
@@ -475,6 +489,14 @@ &pinctrl {
 	pinctrl-names = "default";
 	pinctrl-0 = <&q7_thermal_pin &bios_disable_override_hog_pin>;
 
+	buttons {
+		pwrbtn_pin: pwrbtn-pin {
+			rockchip,pins =
+				/* PWRBTN# */
+				<0 RK_PA1 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
 	gpios {
 		bios_disable_override_hog_pin: bios-disable-override-hog-pin {
 			rockchip,pins =
-- 
2.46.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
