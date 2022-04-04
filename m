Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D411C43217
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Apr 2022 21:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wSM3riIj+DrMcyn5up/DihuaDv2/UqUekN6qPFLmgOI=; b=BDDiVQUMa0VI46
	RV06VXcGc7WwNg4YCMv5MnQ/dLXTjWX4RtehvV/KdYYxF5homNgwBZdqutNJxpDCWrL46gsPp5BQt
	Qyrr2Bd55Zm91N/LEQ3LKxU76p3Ay8s6O/52OEMnLEFM6V0NNReKKBVmi7n7hw9LAT3EaaV+oxoWY
	4vnuPmhVn141EIvPYjQeuGuoCA3cx/VAekKobNFst83Nm9Qw73j+8eU1r/GOaUD1PSuddek8E4pT1
	C5cfLqo4FfbdFfw1mPeJKg/P8azMYryIFvQdq/KUutJKmdQUB3sJbHwq16hteUEJa35zwfyIpUClD
	xt1WSGI35HhHaau0a2lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbUiD-00GVd4-S4; Mon, 04 Apr 2022 21:58:13 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbUiA-00GVbl-MH
 for linux-rockchip@lists.infradead.org; Mon, 04 Apr 2022 21:58:12 +0000
Received: by mail-oi1-x22c.google.com with SMTP id e189so11476822oia.8
 for <linux-rockchip@lists.infradead.org>; Mon, 04 Apr 2022 14:58:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=G8/ao70Lm7W7LQJ7XYuDco3ISGwUQ9Ikm03scRmzvCk=;
 b=QzKxHUfbXFnJ0u75nM7iGWvmbp24E+K30nc4qIlK7BpuWtE13E9O9btBlxzPyKx5eB
 xZi8uK0oi3i1UAYpZF/oo//B/iNz5bl6mXsptokTZi4+W5boVL0BRiVGU2ak6EXmZpq+
 9mt7mUiSqZ4c69pUFmupJhsOZOlHeiSUV7LMe2Ean3773YnrgBpIOkboKUY9eExJIlt5
 4WzehvMs20sJDpKGe8SyGCPHT/NV6XM2nMxFNC2Kom2TlRozTJTVDuy92eFmVuStCAld
 i19WsGv1f70cUeT383GkTOGfaH3IQ8T0lEDSkJ6zn1S0KgRX4j/EDlDoujopjUI5fJOp
 O+hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=G8/ao70Lm7W7LQJ7XYuDco3ISGwUQ9Ikm03scRmzvCk=;
 b=rinj3DazchecQeQU1XLSmMTdgPjYuM+UIqyZqLDgW1qXNC/OQUCOx8BdbRzjbJXKeb
 rBqg0CcZr2tTPg0wA0AddNA5R7mVnBVHRVODqLFzJSjAAKGxCE5lnc8XqyHqsPMFYZit
 ruQ3DtRPV4CyBIeJs0AJjpN8WoX8DbuS/NGCkad7kLW/TOZqoa9YCQhiMbOgBmH5YxOP
 ZVQBCCJhIYYCdda4IjHlSkpD20ZbcJiWqRGwJ4dR9dU6MnwNYHTbSmKboh7jcVF6W7iI
 8t8wKuek+MqPKzWHzLiOytN8E0Cq7t8gfIBvvoAhTQ/xXQ2TDul4XBveA+NOIZ8OUemY
 IS5Q==
X-Gm-Message-State: AOAM5318xTicchJpf0+0Myxz19pY3ODJ8ENcoqyNreBAWGPLzJPUpbOm
 vSYeL+0NPXBtbaMbmPcgjcw=
X-Google-Smtp-Source: ABdhPJxanMGtgrGVKdFhPJHAnQqqAFkMAGoD8rY/iWqoDaLegSP2H0jSXeIxrTGPvXEcKMpGtDZx3A==
X-Received: by 2002:a05:6808:1b28:b0:2da:51e0:d10a with SMTP id
 bx40-20020a0568081b2800b002da51e0d10amr173327oib.186.1649109489428; 
 Mon, 04 Apr 2022 14:58:09 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35]) by smtp.gmail.com with ESMTPSA id
 r3-20020aca4403000000b002ecf4d70c83sm4646402oia.27.2022.04.04.14.58.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Apr 2022 14:58:08 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 zhangqing@rock-chips.com, zyw@rock-chips.com, jon.lin@rock-chips.com,
 maccraft123mc@gmail.com, sre@kernel.org, heiko@sntech.de,
 krzk+dt@kernel.org, robh+dt@kernel.org, lee.jones@linaro.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 4/4 v5] arm64: dts: rockchip: add rk817 chg to Odroid Go
 Advance
Date: Mon,  4 Apr 2022 16:57:54 -0500
Message-Id: <20220404215754.30126-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220404215754.30126-1-macroalpha82@gmail.com>
References: <20220404215754.30126-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220404_145810_770336_8AF6AC0C 
X-CRM114-Status: GOOD (  10.91  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add the new rk817 charger driver to the Odroid Go Advance. Create a
monitored battery node as well for the charger to use. All values
from monitored battery are gathered from the BSP kernel for the
Odroid Go Advance provided by HardKernel.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 .../boot/dts/rockchip/rk3326-odroid-go2.dts   | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
index ea0695b51ecd..4ccdb6dffa88 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -52,6 +52,25 @@ backlight: backlight {
 		pwms = <&pwm1 0 25000 0>;
 	};
 
+	battery_cell: battery-cell {
+		compatible = "simple-battery";
+		charge-full-design-microamp-hours = <3000000>;
+		charge-term-current-microamp = <300000>;
+		constant-charge-current-max-microamp = <2000000>;
+		constant-charge-voltage-max-microvolt = <4200000>;
+		factory-internal-resistance-micro-ohms = <180000>;
+		voltage-max-design-microvolt = <4100000>;
+		voltage-min-design-microvolt = <3500000>;
+
+		ocv-capacity-celsius = <20>;
+		ocv-capacity-table-0 =	<4046950 100>, <4001920 95>, <3967900 90>, <3919950 85>,
+					<3888450 80>, <3861850 75>, <3831540 70>, <3799130 65>,
+					<3768190 60>, <3745650 55>, <3726610 50>, <3711630 45>,
+					<3696720 40>, <3685660 35>, <3674950 30>, <3663050 25>,
+					<3649470 20>, <3635260 15>, <3616920 10>, <3592440 5>,
+					<3574170 0>;
+	};
+
 	gpio-keys {
 		compatible = "gpio-keys";
 		pinctrl-names = "default";
@@ -472,6 +491,13 @@ usb_midu: BOOST {
 			};
 		};
 
+		rk817_battery: battery {
+			monitored-battery = <&battery_cell>;
+			rockchip,resistor-sense-micro-ohms = <10000>;
+			rockchip,sleep-enter-current-microamp = <300000>;
+			rockchip,sleep-filter-current-microamp = <100000>;
+		};
+
 		rk817_codec: codec {
 			rockchip,mic-in-differential;
 		};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
