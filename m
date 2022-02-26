Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9918BC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Feb 2022 18:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9KxCqUP8KHtnT5cH1LouzM0lxrfHva+JudWjCieg+KU=; b=QG+a7ON/rEPOta
	6HqCwhTnViSHEwaZHDVnT9uvwpra4LMqUAw2bzaaypYm1p+3ma2dyWsyU149y7AbUqFziS66Dq9A4
	OwX7BGR8WedNDiCwl83vKYe/93NdJF+BYuuVbmk5SrqqqcP3Ah5vWrUtd9PvzAqr1xzAsNrLCGIBN
	KKdtIwXZooHd/7Ts+cJw245EXp5v0vkC2H938aM2eCa3+mIWdhSSxPhiA1QVPlFepu7HwBQgHlga5
	yZ4MhS2tnma3vnjZTMVYpJUkM0ovyv7RY8P1rby2X2XP4UmCu7hRZnCO6Pc5CRnA3hRlDrx24UyLM
	pvcuDc5+wRCwAaiaI1Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nO233-008ORm-Aa; Sat, 26 Feb 2022 18:44:05 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nO216-008ND8-Vx; Sat, 26 Feb 2022 18:42:06 +0000
Received: by mail-qt1-x830.google.com with SMTP id q10so5517367qtw.4;
 Sat, 26 Feb 2022 10:42:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BiTCbZuuiqDpXPtBKnm7lrk6/Udlslh2uUBYoU46tJs=;
 b=WSasS5o84NKASXBrTz0GFTfqczipyA8RJUMD45mwAouCwMjDQkCS6t2pjJXhrxmBSn
 PLWHcJxPouyMNX4nMIk/TruxYzycYsolbsI41ian13T7ZeVAhGsvzGkBjaqi93DMWQH6
 d0f9ob6wx6JFKGZF43OqG1jGcugSsQv70jm6MWJ2l3+OFUcr8oIMGE44LPvRDx2FqgaS
 KSkxnrGGKt+ZGAU2I0jKe3mtRVsbmb0DzA4zZAnxUKbqMXNYYZT/yOtsuCTQaXvqcHVx
 qoPHy4kLtLdfL80nNm3LwsRil7ys1clVLJOn/dSAa+MJ34BaBSqFncf/Y4E648M4QZyf
 xnog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BiTCbZuuiqDpXPtBKnm7lrk6/Udlslh2uUBYoU46tJs=;
 b=1/VaTDA7NXx2b18NzqBy3hHhrokluEwSAhu06jbxV4ejxL7tPsAY+FJ/yjQdSnJOld
 +54PCW44iMtvW0WN6YQI04MIL+q341yov3nkddcRCK9jxBwEjVTSK+nLo/2HYJ34jVX1
 uMD4MKHEvXJctjxBRz0fH8uT1aTZYsav4FXlFL9RXx7URGNnBfJl7ZdAso1pwppNGRsl
 sLBHZuzX5cUYlXo1a0pqacIQKfuQvQmTTi0fBf1Jcu1oggAn6wmty8VhJ4DYqw1TZH86
 lHtRr0ZMjeTQ+3iWcRVS0Qje88M/A+i5VeGymN49XQq3CHHeJ7RCeeugBMpoOhTdcs3Z
 n8Yg==
X-Gm-Message-State: AOAM531WOwbfWYxHE22KssWk9PF9m/q6/iMYrHhlsLUYfOujg8g7Pnyd
 K3o4w6Ze2ncwlxOj5YVAATc=
X-Google-Smtp-Source: ABdhPJzVSDaykusaRDWHVDOOn6aVrgM0ZbT4aX2SWabl7igqk3VkLmqcFRsjfPFR6LEHbTRRh6el7Q==
X-Received: by 2002:ac8:58c1:0:b0:2de:4700:122c with SMTP id
 u1-20020ac858c1000000b002de4700122cmr11185108qta.100.1645900924148; 
 Sat, 26 Feb 2022 10:42:04 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 p68-20020a378d47000000b006491d2d1450sm2891983qkd.10.2022.02.26.10.42.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Feb 2022 10:42:04 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net,
 Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 10/11] arm64: dts: rockchip: enable dwc3 on quartz64-a
Date: Sat, 26 Feb 2022 13:41:46 -0500
Message-Id: <20220226184147.769964-11-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220226184147.769964-1-pgwipeout@gmail.com>
References: <20220226184147.769964-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220226_104205_069727_789779B7 
X-CRM114-Status: GOOD (  11.70  )
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

The quartz64 model a has support for both the dwc3 otg port and the dwc3
host port. Add the otg power supply and dwc3 nodes to the device tree to
enable support for these.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index dd7f4b9b686b..141a433429b5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -151,6 +151,16 @@ vcc5v0_usb20_host: vcc5v0_usb20_host {
 		vin-supply = <&vcc5v0_usb>;
 	};
 
+	vcc5v0_usb20_otg: vcc5v0_usb20_otg {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
+		regulator-name = "vcc5v0_usb20_otg";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&dcdc_boost>;
+	};
+
 	vcc3v3_sd: vcc3v3_sd {
 		compatible = "regulator-fixed";
 		enable-active-low;
@@ -187,6 +197,10 @@ vcc_wl: vcc_wl {
 	};
 };
 
+&combphy1 {
+	status = "okay";
+};
+
 &cpu0 {
 	cpu-supply = <&vdd_cpu>;
 };
@@ -672,6 +686,29 @@ &usb_host1_ohci {
 	status = "okay";
 };
 
+&usb_host0_xhci {
+	status = "okay";
+};
+
+/* usb3 controller is muxed with sata1 */
+&usb_host1_xhci {
+	status = "okay";
+};
+
+&usb2phy0 {
+	status = "okay";
+};
+
+&usb2phy0_host {
+	phy-supply = <&vcc5v0_usb20_host>;
+	status = "okay";
+};
+
+&usb2phy0_otg {
+	phy-supply = <&vcc5v0_usb20_otg>;
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
