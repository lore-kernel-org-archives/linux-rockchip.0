Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F8E6C48BC1
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Feb 2024 20:00:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8o9zNu68e4dZT0O4TG8Y/jrsCPa8hcdxDEPTrWHjyvo=; b=RqIwffaKxQgNIp
	UHu0f8J0A+CDxvjKYDBLUIXvW9cV3/dbw0iF7UjCG7Btzw5xOQlxrA8IIAKgSGhXD0EK950EySwgQ
	2OtuY+WayV9UMxL06oqJEhZoR6DBy7Hlek8n57FCttyJGDpET5miJ7NYJ7vYlPIrN06jtBPZoHLXG
	X1I5xJk8wjxB5pbIGlAhJoymOsjvMBJ0iTHSbTzQDviVS7D90jWg9i5HZOr+3kVxfrydp+aajmJ7h
	v9+aaJrGENHhsMza6Z9646Z9Pm/HMob8hYoT8QDT/Xok8XjzRpnKMhgqUZNPD3C9EhN0jjtIBeX7R
	AEEEYx0LACMOD+OCNvPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZcTa-00000006oIo-1Diq;
	Mon, 12 Feb 2024 20:00:26 +0000
Received: from mail-oo1-xc2a.google.com ([2607:f8b0:4864:20::c2a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZbNT-00000006g3w-0HhH
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Feb 2024 18:50:04 +0000
Received: by mail-oo1-xc2a.google.com with SMTP id 006d021491bc7-5957ede4deaso2216066eaf.1
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Feb 2024 10:50:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707763801; x=1708368601; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w8Muw6h1Q9P9TaGArYYX/lVFQTdPnjrlwu+lY7NfQMY=;
        b=ER7MdA/01qP7Nk+6KoKdj6c5tycJReecFcDGzp/rKjq+VZdwWIsUQcWUGYVx4ZRHpa
         kQWYbtDxwwbWN/jgY/S03z0EdR8xHEztIkRetUF2uoUc88xwa4idh13jT2DcB0P5FWmW
         8AOAgSdy+uYeGiSWIG42yDUGxhJblMBb5HmUnu1EIziLjf9r+GUgdneBZVYs5uxjuvt9
         1s63+1YX0FXzpDBXtXo5sVXbF3Kc3MO42AKkvvVCKWI+HGAd6g49+4Ym1y2QYeuiklQq
         FAutUXPbihmbUBDAWhEf2TGST05+kUV0mwG+NAQ+amDhE7dfmKxftmBr+Dl71dr82TCe
         BqkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707763801; x=1708368601;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w8Muw6h1Q9P9TaGArYYX/lVFQTdPnjrlwu+lY7NfQMY=;
        b=etB2jh3Ce9s8cB7j4pBh3vqOYR4LbhaqwLCGjunQCXRq50ALhZWS8qdrpeXcaS0GTb
         daOch4YmpJhOQn46ibjsnwNRodP5Mg4nrUzhvdPR/gbZz6lbffyGy+mPsYMa3WxjDl32
         7qY9gbcY7EPErLQmRfGzzwNQqfRC2FPHahYfpo0JAvP6Qsh4ugcI+BWirQAG2H38Ecmt
         ioodi83CrGXzXBXZIqR6JWKcU05KMGXPeVMOWNqH3mtZ9gB+j18de3xRgtsXPWTFFmeU
         TwSOhWi6r99Lpm7tAf7iJi0WSEV2bz61y01pyaXsDtwjNp88uHA+gJAVtv4j2YdyO8ON
         bQvA==
X-Gm-Message-State: AOJu0YxpEjfU/b+0Sgq3tSALujPeAmD1SEA3Yr/8gn5T+HvZG3L3Bz4i
	cqLlvsz170dBP8jmbkof2zVXheXdOGscbnRydSBxx2fzVRjIkAQ4mJuebzT8
X-Google-Smtp-Source: AGHT+IEyol+40Ytm7NwX5jgfgRdxMGoz711CEzuTbCrMDRmaGjM6JITqTjIMUT4sVuKU/aYQV+lhGA==
X-Received: by 2002:a4a:3043:0:b0:59d:4eb1:1b7d with SMTP id z3-20020a4a3043000000b0059d4eb11b7dmr4373629ooz.6.1707763801581;
        Mon, 12 Feb 2024 10:50:01 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVCAHg8jjwVNnCn2wDfiU8wLFp8CZBjM/oUV2aG9tbS1Z6mEifTK/co8G7mdxU3NFTMxkVXlzUSDgCIg/le/ishPNtgv4QzxFsilMo0UQJvtCUbp23pd4Xzy9OlES50/DW9uJX0zL0V9gYl3338z3OdOftCK67W6XfsjBCu4XqsPNbHpvf7RS5ayEJ/ka46m0vYZRnIz9ID/osCSEb/g+0AS1Ro3Sj8DA+x73mFOgU3iAcSIkyI1Mkx/RCV1CZsO8KkVBQ8CBCQACkZokmU/v3nAcoqxzT2Se2p8l1Sjv3HVdX0OmiDNYcoBH+QJ2sdcyFaOWCoT47V/JHEfeUIitSxFEWAc4XPyExwiVMJcpZSxobhXmCUQjcbNETcAystZJuLVWUBhAeuFOt/gCx8DuWY+gXs9bSBoDpSGGYYvPT8ijidf0/IMUjkQ/IeBMiW1P0x62EY7g/r5WD+8C+AsVX2zlHBxkWYPpRrYFI51Ucdud93t3LGk0Th0nhnFus72/U/Cq0sB/n0cAexOUV1z5zDJYr/8yutqxNydGdobOpVKLI9S/sTSPqCmLjD
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id b7-20020a4a3407000000b0059d5360c62esm171939ooa.11.2024.02.12.10.50.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 10:50:01 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	megi@xff.cz,
	kernel@puri.sm,
	agx@sigxcpu.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 5/7] arm64: dts: rockchip: Update powkiddy rk2023 dtsi for RGB10MAX3
Date: Mon, 12 Feb 2024 12:49:48 -0600
Message-Id: <20240212184950.52210-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240212184950.52210-1-macroalpha82@gmail.com>
References: <20240212184950.52210-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_105003_155104_03C8603C 
X-CRM114-Status: GOOD (  12.25  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Move the vdd_cpu regulator to the device specific dts. This is in
preparation of adding the Powkiddy RGB10MAX3 device, which uses
a different vendor for the CPU regulator at a different i2c address.

Also add an alias to the bluetooth device so that we can change the
compatible string for the RGB10MAX3. This device uses the same pinouts
but a different bluetooth device.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3566-powkiddy-rgb30.dts     | 18 ++++++++++++++++++
 .../dts/rockchip/rk3566-powkiddy-rk2023.dts    | 18 ++++++++++++++++++
 .../dts/rockchip/rk3566-powkiddy-rk2023.dtsi   | 18 +-----------------
 3 files changed, 37 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
index 0ac64f043b80..1f567a14ac84 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
@@ -37,3 +37,21 @@ mipi_in_panel: endpoint {
 		};
 	};
 };
+
+&i2c0 {
+	vdd_cpu: regulator@1c {
+		compatible = "tcs,tcs4525";
+		reg = <0x1c>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <712500>;
+		regulator-max-microvolt = <1390000>;
+		regulator-name = "vdd_cpu";
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc_sys>;
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
index ba32d0793dca..bc9933d9e262 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
@@ -36,3 +36,21 @@ mipi_in_panel: endpoint {
 		};
 	};
 };
+
+&i2c0 {
+	vdd_cpu: regulator@1c {
+		compatible = "tcs,tcs4525";
+		reg = <0x1c>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <712500>;
+		regulator-max-microvolt = <1390000>;
+		regulator-name = "vdd_cpu";
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc_sys>;
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi
index 0fa8f06f94cd..3ab751a01cb2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi
@@ -614,22 +614,6 @@ rk817_charger: charger {
 			rockchip,sleep-filter-current-microamp = <100000>;
 		};
 	};
-
-	vdd_cpu: regulator@1c {
-		compatible = "tcs,tcs4525";
-		reg = <0x1c>;
-		fcs,suspend-voltage-selector = <1>;
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <712500>;
-		regulator-max-microvolt = <1390000>;
-		regulator-name = "vdd_cpu";
-		regulator-ramp-delay = <2300>;
-		vin-supply = <&vcc_sys>;
-		regulator-state-mem {
-			regulator-off-in-suspend;
-		};
-	};
 };
 
 &i2c5 {
@@ -805,7 +789,7 @@ &uart1 {
 	uart-has-rtscts;
 	status = "okay";
 
-	bluetooth {
+	bluetooth: bluetooth {
 		compatible = "realtek,rtl8821cs-bt", "realtek,rtl8723bs-bt";
 		device-wake-gpios = <&gpio4 4 GPIO_ACTIVE_HIGH>;
 		enable-gpios = <&gpio4 3 GPIO_ACTIVE_HIGH>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
