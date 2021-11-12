Return-Path: <SRS0=3MKG=P7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63112C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Nov 2021 14:24:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8206F60FBF
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Nov 2021 14:24:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8206F60FBF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dCUDV7tTFNJ+7Lx4u3EVhi39QHdJrBp1/mAJ0r4OyYo=; b=3ybEMA2TShOFKo
	TaJ696Q3+6DaKTfoQSc8AI+6Bd/PXi52UdrZKhV8ciwSU23XHVXEulVTFECnMYv+GFqjQoMzNb2gR
	8OsheZetwN7lGCtvsAanlDMZzvQWGWtncN+1mMc2t1TYC/eaGhbPi+T5j3+5mTCBIDMKSY1l9aXN1
	RgqpMJ2QuOJtyLSxnn2bsgvwdvMBb9TrFpf4P9cC49UGuhjxPMLgWZFazV1w1p6oD9VqFztD9UbZs
	cq9kYnvsJ5KOwAynzLrYVF7fwWPKVYlTnZO9L+EcDrGyUUb7kx1745GKy+L/Ju3gs9sUvcP1yyuPj
	YB0xWvfjDEdv/GOWx7cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mlXTR-00AkId-5x; Fri, 12 Nov 2021 14:24:13 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mlXTO-00AkHy-Le
 for linux-rockchip@lists.infradead.org; Fri, 12 Nov 2021 14:24:12 +0000
Received: by mail-pf1-x436.google.com with SMTP id x131so8596950pfc.12
 for <linux-rockchip@lists.infradead.org>; Fri, 12 Nov 2021 06:24:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ilsk+MaRfmtCqUcT3SwAuDne2pJc5N62fUP65s6Y02I=;
 b=XWDsDubF2gjeTUcY0wJ5xYscXaFEhrGJTeS5cC41iu64kDeHIzKtRtX3pDwleuE88y
 TgSD6/RmExP6Lmi1zcCAGZnFVOe0qNAt+OP8cEn09U8h55dXSABwYjY71HVVZ2F1BDyt
 fWuETgJ+H61a8luchtOm/mGC/vr8L7BpjGWKE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ilsk+MaRfmtCqUcT3SwAuDne2pJc5N62fUP65s6Y02I=;
 b=E1cRRPaKfaJBelGRT/Ttx7sdtwrWBXDHKB4sGfz98U/U9BfH9bShKkbkd7ZTzrnut3
 EQgdtBevMgf2hOxrIIzuCCmKAlkUpJ87Cd8yr5IVLWg9/aYOn+Q24H0ZykC1B3z7PJPK
 d8pTnaDQtRE4Z/zSK9mlZby4y0xcDbim6Alomj0eQeTbeRFduhsyRd5pd67DpRwfk+xR
 0CBmh+Y/QUrNrJEEN4zeckTjT6h5j4Hq6M3Aox1L0t+l2u4FwaX93VP0R+RaOcDJ6LN+
 7F1A3BIdYPp6dTyL8hp8Z8DWQysSXIZIzR0kRU+4Sh0uNc6LtJddX+1f7y5ahG0I1IX8
 OM6A==
X-Gm-Message-State: AOAM531Px4YKfy9a2dqiVO8qXgl+MihYggnT7mpDB017Aux8qEMZuSSz
 kl1jZoDgaZpIytIg9PfrrQ1Nf8U1ZI5i5Hiy
X-Google-Smtp-Source: ABdhPJxp4hPp/X7DFL0yQUq6jyg7zfYLXscjglRLdO0i5i+wDpxfwkrtU85HxJQRA1Jr6XWXofGlZg==
X-Received: by 2002:a63:556:: with SMTP id 83mr10222511pgf.222.1636727048728; 
 Fri, 12 Nov 2021 06:24:08 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a0a9:828f:77c4:f985:d787])
 by smtp.gmail.com with ESMTPSA id l6sm7702271pfc.126.2021.11.12.06.24.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Nov 2021 06:24:08 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH] arm64: dts: rockchip: Fix Bluetooth on ROCK Pi 4 boards
Date: Fri, 12 Nov 2021 19:53:59 +0530
Message-Id: <20211112142359.320798-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211112_062410_736476_08B3B36B 
X-CRM114-Status: GOOD (  10.79  )
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

This patch fixes the Bluetooth on ROCK Pi 4 boards.

ROCK Pi 4 boards has BCM4345C5 and now it is supported
on Mainline Linux, brcm,bcm43438-bt still working but
observed the BT Audio issues with latest test.

So, use the BCM4345C5 compatible and its associated
properties like clock-names as lpo and max-speed.

Attach vbat and vddio supply rails as well.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts | 7 +++++--
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts      | 7 +++++--
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts      | 7 +++++--
 3 files changed, 15 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts
index dfad13d2ab24..5bd2b8db3d51 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts
@@ -35,13 +35,16 @@ &uart0 {
 	status = "okay";
 
 	bluetooth {
-		compatible = "brcm,bcm43438-bt";
+		compatible = "brcm,bcm4345c5";
 		clocks = <&rk808 1>;
-		clock-names = "ext_clock";
+		clock-names = "lpo";
 		device-wakeup-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
 		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
 		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		max-speed = <1500000>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
+		vbat-supply = <&vcc3v3_sys>;
+		vddio-supply = <&vcc_1v8>;
 	};
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
index 6c63e617063c..cf48746a3ad8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
@@ -34,13 +34,16 @@ &uart0 {
 	status = "okay";
 
 	bluetooth {
-		compatible = "brcm,bcm43438-bt";
+		compatible = "brcm,bcm4345c5";
 		clocks = <&rk808 1>;
-		clock-names = "ext_clock";
+		clock-names = "lpo";
 		device-wakeup-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
 		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
 		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		max-speed = <1500000>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
+		vbat-supply = <&vcc3v3_sys>;
+		vddio-supply = <&vcc_1v8>;
 	};
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
index 99169bcd51c0..57ddf55ee693 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
@@ -35,14 +35,17 @@ &uart0 {
 	status = "okay";
 
 	bluetooth {
-		compatible = "brcm,bcm43438-bt";
+		compatible = "brcm,bcm4345c5";
 		clocks = <&rk808 1>;
-		clock-names = "ext_clock";
+		clock-names = "lpo";
 		device-wakeup-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
 		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
 		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		max-speed = <1500000>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
+		vbat-supply = <&vcc3v3_sys>;
+		vddio-supply = <&vcc_1v8>;
 	};
 };
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
