Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE9ADCDD0FF
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 22:56:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5suMBX5KVOBG0H5wP9Th2cWZpJ9agRcakG96Nv4z5VY=; b=OPZ
	6dM3X7uii3Jm0vO5YzUsrZmnQLJjdon+htsfjSlZSOS83B2CaogrnmPtUAX93yR/+9RzNWHfH+9nY
	z+5njhHxhSAKmTAHKhO3/aq2d0MgoYsx8BUDPT1uXrWcO6KViCrRr2rUp6Jl0MnaEqGcra7GCeAfA
	qRsRgSjPUeTPegBu6eaLJMlzzYYzP9R4iHSKoLlZbSx+Ka5AOQJGCeUNeLXMcAZlKQ3K3dYm/Tq7X
	Sqht5S/2PTT990EV5p4RBJlTcGx3zLbHJkZuEg63VlL7xGTXQyxE5tc2OG5H7hKypzng+VWiBQDcM
	+DhlBl44AF/oqzEBk2pFF5m4qDUkhoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3NnR-0000000CO4V-2owf;
	Tue, 22 Oct 2024 22:56:13 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3NnO-0000000CO3i-367H
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Oct 2024 22:56:12 +0000
Received: by mail-oi1-x236.google.com with SMTP id 5614622812f47-3e5ffbc6acbso2966022b6e.3
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Oct 2024 15:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729637769; x=1730242569; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=f2B8vtJRkfFuf7RKh3LB4I8OvkrTbWdiGsWUNIcfVXU=;
        b=AcKN4IWhjRzS+bVk1tnZHOSjamKW5/s9ib6swL3Id45NTpqRpFxgw0fup5REzOVaUx
         hxkO17S24/kMMK+5OsLsNyrZfsCXwuS8MMbl/aXwNJvoGrZVyNPdQqlzpSvLzsqGTGi4
         VF3p7gL+A9HQTdvfHgriBAP0i4DQfQ6xUkoSCSvJNBuIkqcxGd603tCpejiYZXuKndAK
         DCqWLMcDGrJo0KiQJ/777upg/2XDPD1V6e6LsbzvfRXi0zznpaVYQp7asR1B+ZP1t/69
         GR7q2/B38X2XKXqA9ZjwWDYV1d3JSO/pn7p+irp5rX3gZw0lSVGUsYqu5QHrY1y75+r1
         njtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729637769; x=1730242569;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f2B8vtJRkfFuf7RKh3LB4I8OvkrTbWdiGsWUNIcfVXU=;
        b=E3dB27fdXbSh8+UQmrNN9+rGAx9HPFH4DnjvmmmHK0f4uPh3tCkhVzSFN1lZH6n74J
         fLFS7SIEzsETyuVj0CxgvCNtvo/e+CZKwdi2rcVJ5iMYZhwtWKqouY0QeaqTRJzHLyGI
         tNSkNueJA42SfT4dMCpyNqdMKniDxyD7lSw37HoNB5xNFDFTW+2J7TXHtIlcn+o/COt4
         z2qXujw/9Pg/jP4rgL0jhYcpUyTizw0R3VPPgSwFBKiPFaSxoDuRhON2yHNvIV0GWwJ1
         KLTDIJf6UuLUTaus8xfRkByLvdLNoIv2z+FSm+PtBL4vPDid+GGnYwnQblk3L54UYwhA
         m5Fw==
X-Forwarded-Encrypted: i=1; AJvYcCUQU/KjBzvgrrx93Y+hCF5KtbYpB34MBXsf3qqee1D/td1NvTDLiDDgBDiUleb3TxURqQE7rTThnsAlrn2yDQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxFmqk660UmgWPJKEnewpRUm6Za5mWlU0gLLPmNjiuWR/2dNONi
	2YIF84l0y93rNJ+MoOFPFC+nK7gDDEb6KYsn1cwbePQqR7VWX9p/
X-Google-Smtp-Source: AGHT+IEwrlzk+YCK+wIum9qbHdvOzre6J3BE6t9DWCEtjuv4t5qqPKoelfo3aAA+otuDMbY+oC3D2Q==
X-Received: by 2002:a05:6808:1783:b0:3e6:2432:aafc with SMTP id 5614622812f47-3e624500a2fmr542777b6e.4.1729637769224;
        Tue, 22 Oct 2024 15:56:09 -0700 (PDT)
Received: from tower.cjhon.com ([2603:8081:ad40:11:3885:3c8d:dd4e:9891])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3e61035fc2dsm1522940b6e.52.2024.10.22.15.56.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 15:56:07 -0700 (PDT)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH] pwm-leds for Orange Pi 5
Date: Tue, 22 Oct 2024 17:46:54 -0500
Message-ID: <20241022224653.1483-2-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_155610_798875_EF681A07 
X-CRM114-Status: GOOD (  10.60  )
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
Content-Type: multipart/mixed; boundary="===============8906751083756047927=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============8906751083756047927==
Content-Transfer-Encoding: 8bit

The green LED RUN is driven by PWM0_LED that can be controlled by PWM0_M2

Fixes: b6bc755d806e ("arm64: dts: rockchip: Add Orange Pi 5")
Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
Based off of v6.12-armsoc/dtsfixes in the same spirit as the cleaning up of
enable-active-low
This change will also avoid the DTB warning when using the id "leds-gpio"
This commit basically implements Ondřej Jirman suggestion from the first
patch series. [1]

[1] https://patchwork.kernel.org/project/linux-rockchip/patch/a1eca379d151c3f91f4cd4e1751ba389096c4f13.1692102057.git.efectn@6tel.net/#25472495

 .../boot/dts/rockchip/rk3588s-orangepi-5.dts  | 26 +++++++++----------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
index 6b77be643249..c78eb298a017 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
@@ -36,15 +36,15 @@ button-recovery {
 		};
 	};
 
-	leds {
-		compatible = "gpio-leds";
-		pinctrl-names = "default";
-		pinctrl-0 = <&leds_gpio>;
+	pwm-leds {
+		compatible = "pwm-leds";
 
-		led-1 {
-			gpios = <&gpio1 RK_PA2 GPIO_ACTIVE_HIGH>;
-			label = "status_led";
+		led {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_STATUS;
 			linux,default-trigger = "heartbeat";
+			max-brightness = <255>;
+			pwms = <&pwm0 0 25000 0>;
 		};
 	};
 
@@ -297,12 +297,6 @@ &pcie2x1l2 {
 };
 
 &pinctrl {
-	gpio-func {
-		leds_gpio: leds-gpio {
-			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	hym8563 {
 		hym8563_int: hym8563-int {
 			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -320,6 +314,12 @@ typec5v_pwren: typec5v-pwren {
 	};
 };
 
+&pwm0 {
+	pinctrl-0 = <&pwm0m2_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
 &saradc {
 	vref-supply = <&avcc_1v8_s0>;
 	status = "okay";
-- 
2.47.0



--===============8906751083756047927==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8906751083756047927==--
