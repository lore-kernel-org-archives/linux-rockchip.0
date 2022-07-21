Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1377EC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jul 2022 16:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+13Ljd3hvhmpyTw4WI7Q4eEAUq5zCgcZWDPP138lB0=; b=R+P02szEad4da6
	iFisglVD307ftgXTKcaQb1ugYWlPoQbTPlBwtQJ+mXbwB4ZZd+zHKmklRe0ypMrQyB2lI56I+FhFj
	Glg3lcQRdXr7giAynkf1bs+eUX1yUYeUm2OZ03iklL1BoL36TA3oLMlwLUvupogm6Pz3I6Wd0DKSk
	dP4LlsSFb58bIy+J+sbMhMSKPxOZvypn0lNk3gt46p3gMQjaInGqbTIKvMZm1Q0coV+VH8MFCELla
	8bteYPPQzxgc33P6mDB7koHFbI1qpIvT7QKhLjP0cIQK6lQWDPDnMsPN1g9IP+KJKTO16DINiFN4R
	1lVfhzorQ0cCTNUsA5Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEYsS-009oh3-BF; Thu, 21 Jul 2022 16:18:16 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEYrq-009o75-EM; Thu, 21 Jul 2022 16:17:39 +0000
Received: by mail-oi1-x230.google.com with SMTP id bb16so2540313oib.11;
        Thu, 21 Jul 2022 09:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vAncHnLBpOlRUc0OOfu8cfX5QtgUJCxxL9tQZFajpgg=;
        b=Bnit3RnvVApAb0BMEMNLC5rf9A3SmIziFUfAu9GLA+7b5ZtGCSodLw6p2A1aI+nDs1
         u15wB+GGv2DJzAQh5lNIe7ldxuTcYUMiCf6ZLx2hBSbbA/qb7+f7XFLkvoMTEkxaFeA1
         DQ9V+ZfTZByF2zWCQcSYIJLVjQ5hnzDbgqtaWdDcikmCxfhoigw8FVqUQonK1FMa6XgN
         6ezVSfLYqk249M9aR1BMA5vya53fXyUeNynnGMM0pNAuhWX7Vfc0P98jjzfgS7TmEXoj
         A/D0MeJAG46M3aWVE/bzMDoW3i8/96akDLz07ziXeeW8wGhPwuegfgr7+LrRIQUssJjI
         ZHvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vAncHnLBpOlRUc0OOfu8cfX5QtgUJCxxL9tQZFajpgg=;
        b=LWRbAl8GkywCrhfo6oFGDKjlD8UDQoTQ4PPlVNNcN8dwIV+GHosLrb7p+TNJ9gsn+r
         fO5Y4wMvq6Btb/X+zqoFCNVIcrPiIYMTUSejRXjP3zyPBm2uPTuW5adsOY4jcehMU1lX
         Gr82kETgKiijUvf8xLHPt0bYyasyOvSq4wGrEoSe8gVGa2VPRS3gO7mqeJK9nKuTT0eN
         E7LvIZOzaNoZv6ZuZNKQvm2to2S1vrKPEA8meINBVux6dmV9p2cTb8/q1EnOf0PDWLEb
         ZHLisdCQbYJYLL7HC3I8cc0X/7YIdKp10PY+bcKUtWL7Q6D03z/Y3d0jXrR2VfHBJtnt
         wy/w==
X-Gm-Message-State: AJIora/PKMV8ZfFFfW4YCNQG440N+i6H5NA2rgsrdBIoFiAPCeCB1bkW
	qHzSfVAw7j+2KoJ4rI0xUkQ=
X-Google-Smtp-Source: AGRyM1v6n8kqlO/5xGGVPCCoaBUta9NonqGVhE2EvR9sUgVPEj0oKX+iaCKC0K5Tt2G8nXOCkMDePQ==
X-Received: by 2002:aca:5e82:0:b0:33a:5c00:49e2 with SMTP id s124-20020aca5e82000000b0033a5c0049e2mr4944590oib.167.1658420257560;
        Thu, 21 Jul 2022 09:17:37 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id cy18-20020a056830699200b0061cc06a886csm951732otb.9.2022.07.21.09.17.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jul 2022 09:17:37 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	zhangqing@rock-chips.com,
	zyw@rock-chips.com,
	jon.lin@rock-chips.com,
	sre@kernel.org,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	lee.jones@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Maya Matuszczyk <maccraft123mc@gmail.com>
Subject: [RESEND 4/4 v7] arm64: dts: rockchip: add rk817 chg to Odroid Go Advance
Date: Thu, 21 Jul 2022 11:17:18 -0500
Message-Id: <20220721161718.29800-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220721161718.29800-1-macroalpha82@gmail.com>
References: <20220721161718.29800-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220721_091738_520648_1AABD188 
X-CRM114-Status: GOOD (  10.85  )
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
index ea0695b51ecd..ba72e6716e8c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -52,6 +52,25 @@ backlight: backlight {
 		pwms = <&pwm1 0 25000 0>;
 	};
 
+	battery: battery {
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
 
+		rk817_charger: charger {
+			monitored-battery = <&battery>;
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
