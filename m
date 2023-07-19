Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D538BEB64DA
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jul 2023 12:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dKLkNPb3pwv7QKyQS0+1UOEDHJbfDQhFWeTgWUdMre0=; b=CvOj59UDVXxVOA
	2leivW1tLBWyutsR8x7V0FKusIpA6NjL80AsWzuDHB+t4s+uOFqKzm6cKCPNhtlvjesUF955Evrzq
	sy84SCLZGfS3hj4bBRkamW1Kb6jXW9cV3q+hnGwQR35XLYzRdCOfrJXhnEZagE1Xe92Q8PUA+xM1q
	WmoMwGvfHG07fK51pJn47iniRnwQD11KZmz2OY+DvDAezGWmPIlcrmbxGocV9XRw1HXjGBIakJtBh
	a9L0Bsb20Q1juQSw+fZGm91P+SRbmFJCpSHUDn5ySy1TG4qQZadrc9qRvlMiKvEM+LijvpR2XkTlh
	o4+VueT9XhL+NmMooAnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qM6BZ-007OpW-0d;
	Wed, 19 Jul 2023 12:21:41 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qM6BV-007Onv-1l
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Jul 2023 12:21:38 +0000
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-666eef03ebdso4548333b3a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Jul 2023 05:21:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1689769296; x=1692361296;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9xcCLpmftHeGeQfoD14ubT9Bi8tdJw0Jz86kdTTP9jk=;
        b=N1vPVKH1XV02F4rt3itG2s4UdBXz1J1+d5A4tHtBnamSb27U82FLXEEk3Qrv4CNolx
         CWySiduSwSZX8JZpfeyJ9Mz5fDs8M8WqFoOjk1gDz8qS4KDuMAYKKLryD+kgG3sRgEIf
         /l2TGQ8SYgiIggC+Ad/kN6WXy7xuVnpBAK6Vw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689769296; x=1692361296;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9xcCLpmftHeGeQfoD14ubT9Bi8tdJw0Jz86kdTTP9jk=;
        b=ftCnx4Bm9Wm67ifiuC17tj+jemUvXKWt0YzD53gvMW2m8zhe+NbsHGeBjbn5pYVAAl
         dIvXG43NQZ0IAzBV6UFIBwhxwUHYV2sg8CbAhlBxVzUpND3bTOasvj4GCOrILvbRAZ+A
         bNdh4LDBmate5a5miMCBNM6o1zXwuXP2vmZaFPnzlREqFwR/VnPbmBc7Ddem9AxzB+fh
         DP2gE4txI1urGMSDLXmFkfBDQsPLxchVXFMgqJ+v3yI3A5SAQiJM3V+AizBOxV+axRQB
         ofOEBXOLcOWbb5EJNP6Pnhuzr1L3eCDIV92YJ6EqB6UF2g7BOmtak9KAqbLdOSrz8nX2
         3i9g==
X-Gm-Message-State: ABy/qLYtN1QNfj61zn0urKb5LaKiUwETyObq7aFH5MOhDmks66oZjeYF
	1MOy2zjhAeeILjkiRJINZ/5dnA==
X-Google-Smtp-Source: APBJJlF0jPy1ajqwBXDOriWABI0+r/gQfRfllY+z9iV0HlUvAyrGG6o+K5F6n8FGBq2zdGWS0U8/8g==
X-Received: by 2002:a05:6a21:328a:b0:130:d84b:eb91 with SMTP id yt10-20020a056a21328a00b00130d84beb91mr19548092pzb.49.1689769296577;
        Wed, 19 Jul 2023 05:21:36 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id i3-20020aa78b43000000b005d22639b577sm3166773pfd.165.2023.07.19.05.21.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jul 2023 05:21:35 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@amarulasolutions.com>,
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH] arm64: dts: rockchip: Enable TYPE-C PD for ROC-RK3399-PC
Date: Wed, 19 Jul 2023 17:51:23 +0530
Message-Id: <20230719122123.3702588-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230719_052137_621266_25C12E27 
X-CRM114-Status: GOOD (  12.60  )
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

The power supply circuit in ROC-RK3399-PC is

Power Supply (or PPS) => FUSB => MP8859

VUBS pin of FUSB and IN pin of MP8859 is supplied via TYPEC_IN.

The MP8859 operated with 2.8V to 22V supply voltage and typical
applications this supply can be 12V.

This patch is trying to support the PD by changing the FUSB VBUS supply
to 12V and tune the I2C7 timings from downstream kernel.

Tested with PD3.0 PPS with supply voltages of 12V/3A and 20V/5A.

Cc: Corentin Labbe <clabbe@baylibre.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../boot/dts/rockchip/rk3399-roc-pc.dtsi      | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index c32913df93c3..8963b3858eae 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -6,6 +6,7 @@
 /dts-v1/;
 #include <dt-bindings/input/linux-event-codes.h>
 #include <dt-bindings/pwm/pwm.h>
+#include "dt-bindings/usb/pd.h"
 #include "rk3399.dtsi"
 #include "rk3399-opp.dtsi"
 
@@ -524,8 +525,9 @@ &i2c3 {
 };
 
 &i2c4 {
-	i2c-scl-rising-time-ns = <600>;
-	i2c-scl-falling-time-ns = <20>;
+	clock-frequency = <400000>;
+	i2c-scl-rising-time-ns = <345>;
+	i2c-scl-falling-time-ns = <11>;
 	status = "okay";
 
 	fusb1: usb-typec@22 {
@@ -552,8 +554,19 @@ fusb0: usb-typec@22 {
 		interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&fusb0_int>;
-		vbus-supply = <&vcc_vbus_typec0>;
+		vbus-supply = <&dc_12v>;
 		status = "okay";
+
+		connector {
+			compatible = "usb-c-connector";
+			data-role = "dual";
+			label = "USB-C";
+			power-role = "sink";
+			try-power-role = "sink";
+			op-sink-microwatt = <10000000>;
+			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)
+				     PDO_VAR(5000, 20000, 5000)>;
+		};
 	};
 
 	mp8859: regulator@66 {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
