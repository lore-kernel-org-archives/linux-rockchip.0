Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37961EEB56D
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jan 2026 08:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TOSBinEfSC7PaJBvaFtMQKPaW7lFQr3UYQvzsA8fdng=; b=ZpU77w4dy4bdrC
	i4FRxL3ve7/+JOtlk5gUaK26LUc3GYm0LXJosZWFE6X2acgo8iYFOeFQDq7NEq/5VfTxjUeNAfXVx
	K/LHJ1gahVRbadaULl+AfmMTPOWiqUT162bZDXGlq5RwZrRIqlvwa11amYIrL4pUdpCDi+SNw/Wq1
	6vr0Jj0I43/AGNbR5O55jp7Z8oRzr5Yud6JPZSerZXmf2CHi+Ezx97rHAirrnpkkkA7z1tdxlVlSn
	F0qv2HiDN/MYF6VOlwzAdxT90+B+VOzNgsKlIxo1daVnXfazqxlWXyKTRjg0N4lFUT4bbPK1Y2+dR
	5RNKecg1yXf0ZHegR/3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbE8g-00000006hl1-0N70;
	Thu, 01 Jan 2026 08:34:34 +0000
Received: from mail-pl1-f169.google.com ([209.85.214.169])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbE8d-00000006hk3-22uA
	for linux-rockchip@lists.infradead.org;
	Thu, 01 Jan 2026 08:34:33 +0000
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2a0c09bb78cso81190615ad.0
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Jan 2026 00:34:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767256470; x=1767861270;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SfTOA/uhjIWDRFqoiON2tAx3e2cujwx/eei4rDUEnkk=;
        b=A+3IiU56qjqjMv8tPThIpWC+X/NPqETal4I541DdftbO1b2nzV4yuExZMSf3C8RLua
         F1rviUWh5JkN0x27bvogZZpA7idJR3lA2LEjynm5eHSL2l1amIqlfJtNsn3F+a1lTvwb
         DS+V/Dl1E5qdJeBy0armmJEPsS11iAVIGIZH8sHE/vK0aaTx9mJkoVQ/a0P6NT17O1gn
         jBpvlPGr7Fc4gkyBPlmqHyUPSovtW34tUrV2Olvzvnj25DJVrrjGoR7rkCb9e5oUOQCN
         SYl7VLBFV4wCKpdTxNC01xS39xMZN0iPgjCm4fQdGKxwBfQOT/p/tcJjY8IYTz18y69t
         0wGw==
X-Forwarded-Encrypted: i=1; AJvYcCX5mA0xGxUs5vXGkJR3bPMy/sxu+Ua+umUgMOWtLDkgy0xYhXpyK9JytaGJFxIUaA3I42Lp50cmcucHLCdmjA==@lists.infradead.org
X-Gm-Message-State: AOJu0YypInAmBX6jAXPte3NMjHjbFU+OzWJgXyydj9eBjLYZ4H8tqMms
	mPrh/E1W1dwyxJvpWlHJulRN03Znhdakm0XtXplDzeVEPfJLnSigDkG3
X-Gm-Gg: AY/fxX6EmDXziXaFIfLCKVdWMXz5OeKc91beC/C16W/kZDpEfyGcMHNvDgfafSm7EaY
	krskeXwbvUI6gKyn/rWEkFH1daSQlDi2OCQsVuSN6UZyvvuHG4eMiFcA1KKjRVfulUFJ5q/evSV
	MjfwuwePVafSw4/O4X3OtEwx344AbHoE2ehsRha59GmmCJPUWLcVpGRst0yhLeQamBl9r1TvDRH
	6hgHDO5b6YlTlb53PHXiiSZZZLlHEM73uv8YeQEfgblTsxtWy4LRGOMzMz5kyGv5or9UckCvHs1
	Si8L2mAhQHH4ynqQuFl6DYR7ZZJ+dgRu69G4WxJ/5KgBbNIUiTykoFMzeM3Y9wuUKUsMsdkmtyn
	FX77DEQ+N6RYI0euGu8CoNwUdkTkI9BJy2qVSXxjc3ZcKiH5T4Ot4EqJGQLXeSvSCyowgOPA9LR
	y/ko8lXF9A7eAl1c43UK18
X-Google-Smtp-Source: AGHT+IEchdp5OT0VlEVis0i716ONVjQcLibPiNquq6bswalRb8A3Uv01Yc504XF0MP2wYvwY1MVYHQ==
X-Received: by 2002:a17:902:f688:b0:295:55f:8ebb with SMTP id d9443c01a7336-2a2f0d40403mr265291645ad.21.1767256469592;
        Thu, 01 Jan 2026 00:34:29 -0800 (PST)
Received: from localhost.localdomain ([195.245.219.241])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d6ec6bsm339904295ad.87.2026.01.01.00.34.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jan 2026 00:34:28 -0800 (PST)
From: Ke Sun <sunke@kylinos.cn>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Alvin Sun <sk.alvin.x@gmail.com>,
	Ke Sun <sunke@kylinos.cn>
Subject: [PATCH v1] arm64: dts: rockchip: Add USB Type-C support for Radxa ZERO 3W
Date: Thu,  1 Jan 2026 16:34:15 +0800
Message-ID: <20260101083415.1327341-1-sunke@kylinos.cn>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260101_003431_531464_AAD14B61 
X-CRM114-Status: UNSURE (   9.38  )
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

Add vbus_typec regulator and fusb302 Type-C controller configuration
for Radxa ZERO 3W board.

Link: https://dl.radxa.com/zero3/docs/hw/3w/radxa_zero_3w_v1110_schematic.pdf
Signed-off-by: Ke Sun <sunke@kylinos.cn>
---
 .../dts/rockchip/rk3566-radxa-zero-3.dtsi     | 10 +++++++++
 .../dts/rockchip/rk3566-radxa-zero-3w.dts     | 22 +++++++++++++++++++
 2 files changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
index 1ee5d96a46a1b..79448016ab490 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
@@ -35,6 +35,16 @@ led-green {
 		};
 	};
 
+	vbus_typec: vbus-typec-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vbus_typec";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc_sys>;
+	};
+
 	vcc_1v8: regulator-1v8-vcc {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_1v8";
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
index f92475c59deb4..54f20856bcfc6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
@@ -50,6 +50,12 @@ wifi_wake_host_h: wifi-wake-host-h {
 			rockchip,pins = <0 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	usb-typec {
+		usbc0_int: usbc0-int {
+			rockchip,pins = <3 RK_PC7 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
 };
 
 &sdhci {
@@ -90,3 +96,19 @@ &uart1 {
 	uart-has-rtscts;
 	status = "okay";
 };
+
+&i2c3 {
+	status = "okay";
+	pinctrl-0 = <&i2c3m1_xfer>;
+
+	usbc0: fusb302@22 {
+		compatible = "fcs,fusb302";
+		reg = <0x22>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <RK_PC7 IRQ_TYPE_LEVEL_LOW>;
+		sel-gpios= <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usbc0_int>;
+		vbus-supply = <&vbus_typec>;
+	};
+};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
