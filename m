Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D7160A3833
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 17:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=i1CRIIwA;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Gcmi0pt+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=albekTk/WhHv3pH0sA1Y9i6LOsQIOVL03JbKdXU5+3Q=; b=i1CRIIwA0pVMXeiHlxitQ5T+v6
	+lTa9pO+Iq42kvcOeqnHOty3fywbZU9LGikwsNHiSoh3plcaAQII0gNIvRO6pTH/bgri4znfjHDPU
	MSDOnahWJDW5sA7IRZoVbFBKejn08MZTWSL76RATsOHz1syGjCHHXvT5Dr1bCApfhKVwsCHfHSSMf
	WnPFwdc/djD91A5p66PnuGCWjCQAE9WRzu4yfBf7tD+nDLhjBGEtE5KFKQCZwOw61TNIz7GGiUfTJ
	sMbbl4BIhSastKnPjdEh/OLayYECLiIn3VwGZCE0Ui6P6t8VDxFNkHHFteJii8bYN9sPmKoOxm1py
	r917TS0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNw60-0000000HVUH-21xS;
	Mon, 02 Nov 2026 17:45:24 +0000
Received: from mail-dy2-x00.google.com ([2607:f8b0:4864:36::])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNw5w-0000000HVQX-44cK
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Nov 2026 17:45:22 +0000
Received: by mail-dy2-x00.google.com with SMTP id 5a478bee46e88-327b1d5824fso3084473eec.1
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2026 09:45:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793641520; x=1794246320; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=druvbJvBN6ko55G4pQr8mGOqphalakbTk9dYFbwjgLM=;
        b=Gcmi0pt+zASLznEzjfy24y8qcpXJIZZLtlprXzDzhaSXYFG2gM6xilcn+CpkNwUuZp
         MGpLSBQqv+3Kbb5wYBFQKkdUT2U5LdyqXQ7n/VdoTX5FKNmSCS8fp54pZaaS0XjRv/ud
         7ERfpXALlAo/iPWfx+g6srMCu0DOAifk9HcL0obynMc6QekGnU7pk1OjOgusqpr1Kco4
         GDXbkINsDcjKvItxi6n4ZhnJXF4w4t4JEeasBLoNWskxqQUsWTgkz5HkCfluCswjlkjm
         fzUXHggAkc4MZ3GH0R3bM06iPvsTIJWRPvN3nF5Jjvw4xKQlClGVSqZ6gRVSfsZwDFMT
         Y0gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793641520; x=1794246320;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=druvbJvBN6ko55G4pQr8mGOqphalakbTk9dYFbwjgLM=;
        b=yl8A/CSDzQxj5Tmi3FCXXToSXCIHkB7WkGtyB38mOWB8cPxV/VzEaDdXtsVKJ+93KZ
         fdLCd08sMIaAbtP4iMXAVr6JriWM5xxAw4n/asK1all+35BZEn2AvHRbK4FB8TYyD9Sm
         HQUCik3FIasgWb18U/XPzqTM2/Lf8lbz3hYIWbR8CERgjmIZ58CK9m3eVjAknzd0b4fY
         P72IPkJcolRKMtvL8pQyjqXnmouAdsnrrTAa4pDlr1Ekd0bQBIiAK2fPI895iBB1m92X
         7KKiKg+s1SY7saYObsd8zvM7nW+yk+0kzOXK2NaN0E6eOBm2BnA7J6b0e01RLXqrlqSN
         1Yxg==
X-Forwarded-Encrypted: i=1; AKwUvBydYE6CHZwo47SLHenJQfWntmlmScxYcPL5q0QIRvtuIBacI3g9xWnfMniWBNyD1WOsIg57n9Wmz/LDgfUpGg==@lists.infradead.org
X-Gm-Message-State: AFq9FYJlx/8bOqh8HCjMK++dD13/lWzmp3tFWXwnmA8ZFFSHOMN5gOsn
	9UP97O8wBVGfQhkDtnjy555Wz7KI7bKEctsJdAQJ2/1pFDynxk9+93KA
X-Gm-Gg: AYBFou0zC5SQuH+rgeL6nZ2+0VGr0sukgg2/cikAtTciek1K/pfGWSCLQ0beUFFonSP
	Cm839V/vRB+MOKLYaMoVL05Nm89pI7HObYkQg3N6xDPyS/jXg08bJTwVx0sLtQGL7BmwUh+Aqro
	MY1HNikH+iN4YMp2vZtBCveJM9BaaUcBvarZ/s7hKCXwyzkPASOGoVQ0eMk9TYKZGPzbSVmz423
	pzbb94dSCCyOIpa0ux/3IZ6FT7dGc8kRfulPSipNHP7ooZ1vPZS5QVFKN0szk6Sf41NvkWWVpAO
	5zL5mgkqMHax5nJbHcfVRiBWQNdfkDuOclTNviCCCW4DqSIqVlC3xIGhd7Snaw50VsPndvh/PWf
	QiUGojGtBmXozzEMydGLSLapgEYJESEoLbI0Z69oM+LNiLu8evYLGDM6N0qSrb5NDje3TlaI4k8
	aA2vXwtf8FZD+1Ve9zOXayzkMhvl+rxw7pHaAFFJGQmIiCZsG30EZCV2WmOdkhcqty+SU0KR1lw
	6cDeOCaN4FO4wUYYqnuuZ+KfMKS3uThSV63ECwKFKMsVgwD/qBRUs8N07dMbaIIMHXMLO8QN9en
	iFZyOftMk13f6HndjEQqUp4XB3w=
X-Received: by 2002:a05:693c:6316:b0:36a:7bb7:4609 with SMTP id 5a478bee46e88-36a7bb74690mr123492eec.34.1793641520162;
        Mon, 02 Nov 2026 09:45:20 -0800 (PST)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a42935b4asm53290803eec.16.2026.11.02.09.45.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 09:45:19 -0800 (PST)
From: Coia Prant <coiaprant@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Frank Wunderlich <frank-w@public-files.de>,
	Peter Geis <pgwipeout@gmail.com>,
	Junhao Xie <bigfoot@classfun.cn>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>,
	stable@vger.kernel.org
Subject: [PATCH v3 5/6] arm64: dts: rockchip: fix USB OTG power on Photonicat in battery mode
Date: Tue,  3 Nov 2026 01:44:49 +0800
Message-ID: <20261102174450.3000397-6-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261102174450.3000397-1-coiaprant@gmail.com>
References: <20261102174450.3000397-1-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_094521_009697_A85FA174 
X-CRM114-Status: GOOD (  16.10  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-18.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

When the Ariaboard Photonicat runs on battery, the USB port has no power
output and attached devices are not detected. With the external supply
connected, the same port works fine.

Per the schematic, the 5V_OUT rail that feeds the USB load switch (U12,
enabled by USB_HOST_PWREN_H) is the OR-ed combination of two sources:
- VCCIN_5V (external DC input), OR-ed via D16.
- 5V_BOOST from the VBAT boost converter (U16, enabled by BOOST_EN /
  GPIO4_D2), OR-ed via D5002.

The 5V_OUT rail has no enable pin of its own. Since the regulator
framework can only model a single power supply dependency per
fixed-regulator, add a regulator_5v_boost node for the VBAT boost
converter, and a regulator_5v_out node to represent the OR-ed 5V_OUT
rail. Bind the vin-supply of regulator_5v_out to regulator_5v_boost to
ensure VBAT is boosted when the system runs on battery. When VCCIN_5V
is present, D16 takes over.

The USB load switch (vcc5v0_usb30_otg0) is then supplied by
regulator_5v_out. This restores USB host functionality on battery
power, matching the vendor firmware behaviour.

Link: https://github.com/immortalwrt/immortalwrt/issues/1534
Link: https://github.com/photonicat/photonicat-hardware/blob/main/Photonicat_rk3568_sch_20221116.pdf (Page 15,18)
Fixes: ba124e06ce7b ("arm64: dts: rockchip: add dts for Ariaboard Photonicat RK3568")
Cc: stable@vger.kernel.org
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../boot/dts/rockchip/rk3568-photonicat.dts   | 49 ++++++++++++++++++-
 1 file changed, 48 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
index 7e0a2ab829209..290e3ee97c709 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
@@ -59,6 +59,47 @@ hdmi_con_in: endpoint {
 		};
 	};
 
+	regulator_5v_boost: regulator-5v-boost {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&boost_en>;
+		regulator-name = "5v_boost";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vbat>;
+	};
+
+	/*
+	 * 5V_OUT is the OR-ed combination of the VBAT boost (via D5002)
+	 * and VCCIN_5V (via D16).
+	 * It has no enable pin of its own.
+	 * Model it as a fixed regulator depending on the boost converter,
+	 * so that VBAT is boosted when running on battery.
+	 *
+	 * 5V_OUT supplies:
+	 * - VCC5V0_USB30_OTG0 (USB VBUS via U12 load switch)
+	 * - VCC5V_HDMI (HDMI 5V via D5000)
+	 * - J53 expansion header (Pin 1)
+	 */
+	regulator_5v_out: regulator-5v-out {
+		compatible = "regulator-fixed";
+		regulator-name = "5v_out";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&regulator_5v_boost>;
+	};
+
+	vbat: regulator-vbat {
+		compatible = "regulator-fixed";
+		regulator-name = "vbat";
+		regulator-min-microvolt = <3700000>;
+		regulator-max-microvolt = <3700000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
 	vcc_1v8: regulator-vcc-1v8 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_1v8";
@@ -148,7 +189,7 @@ vcc5v0_usb30_otg0: regulator-vcc5v0-usb30-otg0 {
 		regulator-name = "vcc5v0_usb30_otg0";
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
-		vin-supply = <&vccin_5v>;
+		vin-supply = <&regulator_5v_out>;
 	};
 
 	vccin_5v: regulator-vccin-5v {
@@ -446,6 +487,12 @@ pcie_pwren_h: pcie-pwren-h {
 		};
 	};
 
+	power {
+		boost_en: boost-en {
+			rockchip,pins = <4 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	sdmmc0 {
 		sdmmc0_pwren: sdmmc0-pwren {
 			rockchip,pins = <0 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
