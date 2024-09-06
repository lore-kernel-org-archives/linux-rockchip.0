Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92DFFCE7AFD
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 09:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3d8b6diYxKmP4j7BZWlCH+L/QkWhO6VCl3Q7ZxJJqtE=; b=hZSkixbASA958B
	CevfdkjMo+LchLqkYIOiWaWUT4VYP2y+qrbMhBzVQ6GtWqMjW8M8lXE6UynP2dfCldc7U4h1yD2qt
	CPB7gvkCmOl+8DAjhW5sK9vmmbvF+GpYy9sKttHnPRiQEKYr5S2gRKrT0ilG6BNtTWBNPZxoT2g7X
	IPYLt+iFCnX0IQ+VFX+Pv0E+LeAQOLMJ8sSzwYPYgb9Gg7KN1odIeAlqjVnUNmHR+HOrF4w0vhYbk
	LZoBvSqiwDLC5Yk75CByW+g9G7/2L+m3+eNi9UidvynMurNQG7XyD4DB0ey4OI3oaqcOTXBJxpqIy
	70qMwGSD+Y7DVFuUT8Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smVg4-0000000Bd8x-2418;
	Fri, 06 Sep 2024 09:54:52 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smVPu-0000000BXhr-3CtX;
	Fri, 06 Sep 2024 09:38:12 +0000
Received: from bigfoot-server-storage.classfun.cn (unknown [124.72.163.35])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 2A15B78A09;
	Fri,  6 Sep 2024 17:38:09 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 2A15B78A09
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1725615490;
	bh=4iXFbTgHyY6K8dz+IW7PQ4SZIPOZ8q/AqB9y9MhNIP0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kr3p73MJl49h2aPllRV/YPwy6pXv5KGKkqdhVZdd+1776nSl5X5Tvpa7REribPuQX
	 YpoNrobXRwV3TsUoVLcL0kigvpzc9iAeFbQ87KrUmFrLC6jDf4ipJIizmJGTf+KU/2
	 KMbwaTMxEN6jTXFFheGNHlimR7FYTiod26Ky/yn4=
From: Junhao Xie <bigfoot@classfun.cn>
To: devicetree@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Pavel Machek <pavel@ucw.cz>,
	Lee Jones <lee@kernel.org>,
	Sebastian Reichel <sre@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Junhao Xie <bigfoot@classfun.cn>
Subject: [PATCH 9/9] arm64: dts: rockchip: add Photonicat PMU support for Ariaboard Photonicat
Date: Fri,  6 Sep 2024 17:36:30 +0800
Message-ID: <20240906093630.2428329-10-bigfoot@classfun.cn>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240906093630.2428329-1-bigfoot@classfun.cn>
References: <20240906093630.2428329-1-bigfoot@classfun.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_023811_099939_BA67D2D0 
X-CRM114-Status: UNSURE (   9.02  )
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

This commit adds support for Photonicat power management MCU on
Ariaboard Photonicat.

Signed-off-by: Junhao Xie <bigfoot@classfun.cn>
---
 .../boot/dts/rockchip/rk3568-photonicat.dts   | 43 +++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
index 2fe403cd61cb..597275702408 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
@@ -513,6 +513,49 @@ &uart4 {
 	dma-names = "tx", "rx";
 	status = "okay";
 	/* Onboard power management MCU */
+
+	pcat_pmu: mcu {
+		compatible = "ariaboard,photonicat-pmu";
+		current-speed = <115200>;
+		local-address = <1>;
+		remote-address = <1>;
+
+		pcat_pmu_battery: supply-battery {
+			compatible = "ariaboard,photonicat-pmu-supply";
+			label = "battery";
+			monitored-battery = <&battery>;
+			power-supplies = <&pcat_pmu_charger>;
+			type = "battery";
+		};
+
+		pcat_pmu_charger: supply-charger {
+			compatible = "ariaboard,photonicat-pmu-supply";
+			label = "charger";
+			type = "charger";
+		};
+
+		pcat_pmu_hwmon: hwmon {
+			compatible = "ariaboard,photonicat-pmu-hwmon";
+			label = "pcat_board";
+		};
+
+		pcat_pmu_leds_status: leds-status {
+			compatible = "ariaboard,photonicat-pmu-leds";
+			label = "net-status";
+		};
+
+		pcat_pmu_poweroff: poweroff {
+			compatible = "ariaboard,photonicat-pmu-poweroff";
+		};
+
+		pcat_pmu_rtc: rtc {
+			compatible = "ariaboard,photonicat-pmu-rtc";
+		};
+
+		pcat_pmu_watchdog: watchdog {
+			compatible = "ariaboard,photonicat-pmu-watchdog";
+		};
+	};
 };
 
 &usb_host0_xhci {
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
