Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BBAAC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Feb 2022 18:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9GTmNvs6M/L00zkurL5AHZSBKwcB2VzQuJx5vgwSups=; b=XMXRM6YYAkRc7L
	YEWOLTpZOxXGzH6G1QsSWQiPOAcTFkyethQzbMQ3N8A4X3FVoiWUdcYEHBQ+NdOZMFvbLzIazrl25
	56JEE8HX4HIa5jk1GrtS56rxjzyjWH/0nSbI/Js/UbLPT9kiebolEhyB2+dFAUAFaWeVe0mU81wFe
	h/M/UPEk66VNFS3XOnCzTSwsPtM6uNkjLZHDVNgRrxjAoHjh443E5qDwEALGZqryvck6ZucVXmhag
	7ZJfcdck5+N/SzRrElSdDf6e+9dSGGinKmAGsJtUhV070sfdE/vRDVEfWsCfV18osk/Jn4xGRWuSW
	htNOeUIDYfQpvEu5kg2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nO23S-008Oh4-2q; Sat, 26 Feb 2022 18:44:30 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nO218-008NDw-6X; Sat, 26 Feb 2022 18:42:08 +0000
Received: by mail-qt1-x836.google.com with SMTP id w1so5529691qtj.2;
 Sat, 26 Feb 2022 10:42:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OHIHH7LBjO7n3w0TkyTvZ+CHhZPHMYRUZ96K/VbT0E0=;
 b=aIKmXmXT0X3QGneIFAV3GhqKa4LgEhGVof8di7S4VZTO3vixTBvQ18ZxWjDRJJJn7d
 L3kouKub8Vu8dxjHqk+L4g4vIN30KNoaIxOu5RZH75NLsvfkpzNtrLzXmvXNNwnYKpGh
 nZcn8AP5Gn9bSm3UlB6HfQCWMKxmz7YrxTH6pJVewCZs4rmS5SoW/vOgbgF63siaUj1q
 NJp5hQIe9XrYcGX32A8i+uuVqc5qVyrsc0Kk4ERlPHNJb82AcdcQ0DkFxMQMUoUZycLy
 ca1MGC8AtLvQlJzYz17WoUWa/oQ/7BjiZtGxmgiH1jDDbdMKTTjSKDXpRnzRZ2Xeh2V2
 HQGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OHIHH7LBjO7n3w0TkyTvZ+CHhZPHMYRUZ96K/VbT0E0=;
 b=x16Mykh6CJGzCrMWRwKHJ/+p7yF2Q91F0DFSU0Hq1ut3hdeSqgTsljxPoq4YXN5lDJ
 zFahubWk8TW5QZcqexaz4Q8kHmQvDxEKaXHYpBGN3eePa+JvMza4m8W5gA3oRw5x7KQd
 tPC09oZqfCr6PXG6PRoBWbdN5j6O9y2Mcw57eTc4JDCRNZCMNaNCOnCI/7VMH61Ic3KJ
 Q/XijAbwFZr6CP+rq89utvrp2xHPzRV6x4wqfu5VK+oGEl5OSD3qrs+4EuU4PjqJHsiT
 U0ay7iu06g1XDU1oibae1wKz1fKkFad/LGXu0gFyfWY7EN1YoR1rBaGgYtRS3uF7gsUS
 xkig==
X-Gm-Message-State: AOAM530ayOoBwCoseIFKyXXJWF30gByfJa16euW1bdq9CM2s4SOa9zLh
 5OcbAglyE5Af01J9jDO9c6w=
X-Google-Smtp-Source: ABdhPJxlMcbNkkrusXkql9nwS+Wn/Z9sD2cs8nqKgPu+C8cCCHwwYoC2LCrMmNBJLLog7nn4qwdHmg==
X-Received: by 2002:a05:622a:1187:b0:2de:6ffc:19f8 with SMTP id
 m7-20020a05622a118700b002de6ffc19f8mr11440373qtk.453.1645900925094; 
 Sat, 26 Feb 2022 10:42:05 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 p68-20020a378d47000000b006491d2d1450sm2891983qkd.10.2022.02.26.10.42.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Feb 2022 10:42:04 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net,
 Sascha Hauer <s.hauer@pengutronix.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 11/11] arm64: dts: rockchip: add usb3 support to
 rk3568-evb1-v10
Date: Sat, 26 Feb 2022 13:41:47 -0500
Message-Id: <20220226184147.769964-12-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220226184147.769964-1-pgwipeout@gmail.com>
References: <20220226184147.769964-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220226_104206_285585_2D202139 
X-CRM114-Status: GOOD (  11.26  )
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

From: Michael Riesch <michael.riesch@wolfvision.net>

The Rockchip RK3568 EVB1 features one USB 3.0 device-only
(USB 2.0 OTG) port and one USB 3.0 host-only port.
Activate the USB 3.0 controller nodes and phy nodes in the
device tree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 .../boot/dts/rockchip/rk3568-evb1-v10.dts     | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
index a794a0ea5c70..622be8be9813 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
@@ -103,6 +103,18 @@ vcc5v0_usb_host: vcc5v0-usb-host {
 		vin-supply = <&vcc5v0_usb>;
 	};
 
+	vcc5v0_usb_otg: vcc5v0-usb-otg {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_usb_otg_en>;
+		regulator-name = "vcc5v0_usb_otg";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_usb>;
+	};
+
 	vcc3v3_lcd0_n: vcc3v3-lcd0-n {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3_lcd0_n";
@@ -136,6 +148,14 @@ regulator-state-mem {
 	};
 };
 
+&combphy0 {
+	status = "okay";
+};
+
+&combphy1 {
+	status = "okay";
+};
+
 &cpu0 {
 	cpu-supply = <&vdd_cpu>;
 };
@@ -507,6 +527,9 @@ usb {
 		vcc5v0_usb_host_en: vcc5v0_usb_host_en {
 			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
+		vcc5v0_usb_otg_en: vcc5v0_usb_otg_en {
+			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
 	};
 };
 
@@ -568,6 +591,11 @@ &usb_host0_ohci {
 	status = "okay";
 };
 
+&usb_host0_xhci {
+	extcon = <&usb2phy0>;
+	status = "okay";
+};
+
 &usb_host1_ehci {
 	status = "okay";
 };
@@ -576,6 +604,24 @@ &usb_host1_ohci {
 	status = "okay";
 };
 
+&usb_host1_xhci {
+	status = "okay";
+};
+
+&usb2phy0 {
+	status = "okay";
+};
+
+&usb2phy0_host {
+	phy-supply = <&vcc5v0_usb_host>;
+	status = "okay";
+};
+
+&usb2phy0_otg {
+	vbus-supply = <&vcc5v0_usb_otg>;
+	status = "okay";
+};
+
 &usb2phy1 {
 	status = "okay";
 };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
