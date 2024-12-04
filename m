Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96CE9E77171
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Dec 2024 04:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TAiESzkvdOC/f4zzwNAhjIXkGy4dqW72q1lw8gPxSqU=; b=ChLcqjWPSxnFUk
	WkTHKLzEubFTv5pkIxSZgWbsELobZQOGCelKDnxSqJX+UZsXnxbQjaYUU2iqJbtmTeXmBNlYVO/vT
	aL5eHWcZkUSxfBWBV9fCtljWaobjEv0KtPskByBP9HlbBXD3wCIIilaUMaTt2X3la1bc9SmohoeRq
	UZXurtw4Cyjtd37Rf0jx8FeB2HPzXA5KSG4NelpGmMlsigCL9ll2HIZpTVkXQmXEz6LeoBJEVO80t
	VtSGWAZ5mz91FO8YB60Zr2lMYajGSyKMzby/fgGzsDLhPsff4KdBxbhmxs4k6LEzCQjaajzATTP32
	zsDGm0MXmFgWQ3DO68EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIhPu-0000000BU6u-1U7s;
	Wed, 04 Dec 2024 04:55:14 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIhPr-0000000BU67-0GPq
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Dec 2024 04:55:13 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4B44sq0l009553;
	Wed, 4 Dec 2024 13:54:53 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: add package_thermal for Radxa ROCK 5A/5C
Date: Wed,  4 Dec 2024 04:54:46 +0000
Message-ID: <20241204045447.1036-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_205511_327007_0201A40B 
X-CRM114-Status: UNSURE (   8.90  )
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

add and enable package temperature based active cooling.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
this patch depends on [1] which depends on [2].

[1] https://patchwork.kernel.org/project/linux-rockchip/cover/20241128121929.62646-1-naoki@radxa.com/
[2] https://patchwork.kernel.org/project/linux-rockchip/patch/20241119095113.78151-1-naoki@radxa.com/
---
 .../boot/dts/rockchip/rk3588s-rock-5.dtsi     | 32 ++++++++++++++++++-
 1 file changed, 31 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
index a8f40f43c838..a1cac40d439e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
@@ -33,7 +33,7 @@ analog-sound {
 			  "Headphone", "Headphones";
 	};
 
-	fan {
+	fan: fan {
 		compatible = "pwm-fan";
 		#cooling-cells = <2>;
 		cooling-levels = <0 64 128 192 255>;
@@ -379,6 +379,36 @@ rgmii_phy1: ethernet-phy@1 {
 	};
 };
 
+&package_thermal {
+	polling-delay = <1000>;
+
+	trips {
+		package_fan0: package-fan0 {
+			hysteresis = <2000>;
+			temperature = <55000>;
+			type = "active";
+		};
+
+		package_fan1: package-fan1 {
+			hysteresis = <2000>;
+			temperature = <65000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map0 {
+			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
+			trip = <&package_fan0>;
+		};
+
+		map1 {
+			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
+			trip = <&package_fan1>;
+		};
+	};
+};
+
 &pcie2x1l2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie20x1_2_perstn_m0>,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
