Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34261CCF9E5
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Oct 2025 19:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PUS1n4HDrmN965TbGTfVEdLkLsuJXjHDGCuXglD2HwY=; b=DufmEH+XW2B4uf
	G5SCiU59EYoxp2CvQQVAU8ng/nKkdhZtSdzn01qGjzBCICf0w7uBO7xwnPX4J7jowgcpQ71usziKa
	YUbsCB9JxZmv7GK1Ez30CFoJ/q6pAQ8HOh6DJfyBsuUCgcCRl3Eta3rHUj/Zt8J+baNoYIghMfQ3j
	lCoKIYl3n13NV6cYuH2uP2OXaDoElKQ8r6o1R2N/Am6/B0P9D6uj2d8smoKgvzXZkF1YpGtgykV8w
	9R/khx89vNJo0m0wBVXDuDgOHK3FG0roGq+t/XPW+9ZjhYoLNqx/yjcLasCSmPGVUJI5a5+UfRX79
	2fBMFRzceNFJrGQboNUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vD6jk-0000000CgJw-2iLE;
	Sun, 26 Oct 2025 19:49:08 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vD6jh-0000000CgJC-46j5
	for linux-rockchip@lists.infradead.org;
	Sun, 26 Oct 2025 19:49:07 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-475dd559a83so7179965e9.1
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Oct 2025 12:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761508144; x=1762112944; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dGAlA6xEEpg5Sg3NpocSMWJ7GFQOTpi3dlaTTRDDDLM=;
        b=QwNGaCeRn3+r7WM996ZO7ZdBC+4EoPKzdmlwdedhM6QUiezlcV/1+1b5qs/XsjE0Gu
         fmkWDdQpUXSnufLWF/v4ytz7VuTFW9bZmWnIII+c0JageqUfxVrMcIRpWP9joqTm6ZY8
         UkrRt4UgUyKDjxz9u6IXfLy/mH3W4rx8wKAkOiQwiTWQHmVcsXQfmoMVCfDnGYVWLQHd
         hs65E9a1Lw/eYSIqGqyL57bdYt1AjAYO7lQwctYjVQq4Br04Xu/WtNUS4I4s6d//E9/u
         YDK2PWiH6bTUUzooDfQLSer9Jr9dnniDPtHJfqz8Aoxdl2HbmAMKtw/gfbpajbb4PiMA
         Z9YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761508144; x=1762112944;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dGAlA6xEEpg5Sg3NpocSMWJ7GFQOTpi3dlaTTRDDDLM=;
        b=w7YhUqt2ELfIyuxzm410uOR6oAi65fg9MjjDHYiTSEpEE8GsGUOVl6HDPwc56dgJyW
         CXTaBvtaDCwUocfRp6AHVzSi8SnzmbXYe5uKmtjbbbiInBTkU3FS2XkZOWBCUWIB1htJ
         PYnjPZDJVXv8lyhx329Z1pCrNvLJZ2+eFsjfTi863zCsjYUMDVhwGdKHvZKS59HjzDx9
         BOfddrZloSAx1O0xIgaGj3lZdyTz+WafoZmlFX6ySFjSqMQD4YVj1uAB7E+zOchhbXTZ
         9c+ne43TY4F6RhiTp+1RgjQSlxZkMaM/i0TVydqgvCjNxhL/7iG42lCgaiZ/fl9lCq0F
         47gg==
X-Forwarded-Encrypted: i=1; AJvYcCXcDwBclyNe/L6iob9+dPorh92/Ir9qVbkxaNGINWKw12Yosz0ppyoE3QiBd66dsK1Bq7dJOYvY4klYc75LdA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzgpgVx/5Yqi+3YBEAR15axktZNJumJ5HEjJ6pf3UoNAjFbh+Yv
	7TCb0EXksIjizGvuJ5k7DIJKTuOIOXr1X09sHRzjj+oVLCdep8Gg8MMk
X-Gm-Gg: ASbGncvCPI7FsFMGkm+ziKuKXoK0hNwGNt+sMWau1xUbw7PaPixzHv69puk429xWkmw
	LXVdpYODMkQNlX1Mg9VByA+5ZI/UWqU/Me05xhgkxRJrmv4OsLKQrgMuKyfNbp8gJ3cWqE6z7ri
	Fv1s1XIkqBwZFn9uABbleUs1a4SVOoPZh5sfVHmNlin/PhGQT8cOi3OU6B1UCXC/u5bjv+tTDuP
	8YvfIhfFtlmPfrgexvGEE0UnjliYFOtupxbsJbpTiXTNDGL5BB8GoTjvM20vqS1F8f6jfoVDJnb
	7UCDBLnzgr95O6bk0ALn5PMH3rwpJehe9ZIM5Hum9s4S9n5MkS24zEn3anuW4oWDlh2bXMhZp+G
	yU7L1NdHt60+lHByb6FLcMGBz/hh1SDHWIuLcBjWDBeJO9bfav+SsCAkjPODIMdD7t05aEeJ4GY
	oH4i0nWAGSz0Ai7w==
X-Google-Smtp-Source: AGHT+IHxjRQnRW5DZRFV2Qwhcw+akufX9vynEkSIauiFSd7fK9owVylMsihE4r48/PVg7PHb0yVz6Q==
X-Received: by 2002:a05:600c:468d:b0:471:95a:60b1 with SMTP id 5b1f17b1804b1-475d2ed6e11mr100007385e9.32.1761508143555;
        Sun, 26 Oct 2025 12:49:03 -0700 (PDT)
Received: from orange.info ([2a02:8010:6606:0:8fa:2ba2:6886:7fe4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-475dd05098dsm45244265e9.5.2025.10.26.12.49.02
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sun, 26 Oct 2025 12:49:02 -0700 (PDT)
From: Hugh Cole-Baker <sigmaris@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Hugh Cole-Baker <sigmaris@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: pwm-fan overlay for NanoPC-T6
Date: Sun, 26 Oct 2025 19:48:40 +0000
Message-ID: <20251026194858.92461-1-sigmaris@gmail.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251026_124906_076955_FAE7C85C 
X-CRM114-Status: GOOD (  12.69  )
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

FriendlyELEC offers an optional heatsink and fan addon for the NanoPC-T6
and T6 LTS. Add an overlay which can be applied if the fan is fitted and
configures the fan as an active cooling device for the SoC package.

Signed-off-by: Hugh Cole-Baker <sigmaris@gmail.com>
---
FriendlyELEC heatsink with fan addon:
https://www.friendlyelec.com/index.php?route=product/product&product_id=305
Vendor DT with trip points and PWM duty cycle values:
https://github.com/friendlyarm/kernel-rockchip/blob/4944602540b62f5aad139fe602a76cf7c3176128/arch/arm64/boot/dts/rockchip/rk3588-nanopi6-rev01.dts#L75-L90

 arch/arm64/boot/dts/rockchip/Makefile         |  9 +++
 .../dts/rockchip/rk3588-nanopc-t6-fan.dtso    | 78 +++++++++++++++++++
 2 files changed, 87 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-fan.dtso

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 4cd8ef607f55c..7a67b68a6bb03 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -178,6 +178,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-jaguar-ethernet-switch.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-jaguar-pre-ict-tester.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-mnt-reform2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6-fan.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6-lts.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-ok3588-c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-max.dtb
@@ -271,6 +272,14 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-jaguar-pre-ict-tester.dtb
 rk3588-jaguar-pre-ict-tester-dtbs := rk3588-jaguar.dtb \
 	rk3588-jaguar-pre-ict-tester.dtbo
 
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6-with-fan.dtb
+rk3588-nanopc-t6-with-fan-dtbs := rk3588-nanopc-t6.dtb \
+	rk3588-nanopc-t6-fan.dtbo
+
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6-lts-with-fan.dtb
+rk3588-nanopc-t6-lts-with-fan-dtbs := rk3588-nanopc-t6-lts.dtb \
+	rk3588-nanopc-t6-fan.dtbo
+
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-pcie-ep.dtb
 rk3588-rock-5b-pcie-ep-dtbs := rk3588-rock-5b.dtb \
 	rk3588-rock-5b-pcie-ep.dtbo
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-fan.dtso b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-fan.dtso
new file mode 100644
index 0000000000000..08c4782fb4148
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-fan.dtso
@@ -0,0 +1,78 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/thermal/thermal.h>
+
+&{/} {
+	fan: pwm-fan {
+		compatible = "pwm-fan";
+		cooling-levels = <0 35 64 100 150 255>;
+		fan-supply = <&vcc5v0_sys>;
+		pwms = <&pwm1 0 50000 0>;
+		#cooling-cells = <2>;
+	};
+};
+
+&package_thermal {
+	polling-delay = <1000>;
+
+	trips {
+		package_fan0: package-fan0 {
+			temperature = <50000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+
+		package_fan1: package-fan1 {
+			temperature = <55000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+
+		package_fan2: package-fan2 {
+			temperature = <60000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+
+		package_fan3: package-fan3 {
+			temperature = <65000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+
+		package_fan4: package-fan4 {
+			temperature = <70000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map0 {
+			trip = <&package_fan0>;
+			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
+		};
+
+		map1 {
+			trip = <&package_fan1>;
+			cooling-device = <&fan 2 3>;
+		};
+
+		map2 {
+			trip = <&package_fan2>;
+			cooling-device = <&fan 3 4>;
+		};
+
+		map3 {
+			trip = <&package_fan3>;
+			cooling-device = <&fan 4 5>;
+		};
+
+		map4 {
+			trip = <&package_fan4>;
+			cooling-device = <&fan 5 THERMAL_NO_LIMIT>;
+		};
+	};
+};
-- 
2.50.1 (Apple Git-155)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
