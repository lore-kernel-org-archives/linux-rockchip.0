Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D876C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 May 2022 16:46:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+13Ljd3hvhmpyTw4WI7Q4eEAUq5zCgcZWDPP138lB0=; b=bc/IyqoUG5xxjW
	QYbTiVPmMw0UqFHhDZ41XEXDIi5+ZIaJIAwhdrPIyFYKxdO33vyMCvEbUI7tuEGBMVQMsxeFGK34i
	RJD+43CdGU0IfrWbRlXD1Mjw0V6TEn6G/YksJeb8wPr5oCqEboA1W7VI33oNzaMjdk97EA491tY1P
	8JJzHRdsg1VMBPWs7ZJbt13ImUTiGFb2K/apXVXouVAaVKP0LLCv5xWyUvAmjyB3AHDpOEUuwp2QE
	mitqPErkyRAkpKKBjKc+OIYdb+Mk52EhgECXvPDHe3sPQb/qyTeevKUk1UcU5vG3boay84yTdiyzA
	ZAEpKhdcg9eRkvzwjdyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrjHi-008SsS-Je; Thu, 19 May 2022 16:45:58 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrjHd-008Sm3-Q4
 for linux-rockchip@lists.infradead.org; Thu, 19 May 2022 16:45:55 +0000
Received: by mail-oi1-x235.google.com with SMTP id v66so7144322oib.3
 for <linux-rockchip@lists.infradead.org>; Thu, 19 May 2022 09:45:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vAncHnLBpOlRUc0OOfu8cfX5QtgUJCxxL9tQZFajpgg=;
 b=hJy6IxH21tG0Q2UVRI6I0zpPJBekBS3BT51UmhrFdjVWmuOIh75PYs12fFPvf5Hhmk
 OHERQ4aC7BLYotIVpL1fykIFL7ZSwuRMuxXJ2hCCbT7igx+rb2hdWtayaJ1RFfqL7Kif
 AU6C0gQagpcxlkaUvO9yZvBRam5QI+98UHdIIfgLmC7jqslf2Wsxc9wqMPMEELoGcJAs
 Qr38w+dazgnW0y/pYniDTTKMDktRVOMGy7Ufv//p3gRBz0BhUPQ3mB939KaCS3xcElZs
 P231f4tlbL60zVDOuMDS0PuK1xDKGNP+8T3ldEsmu9HEvUqDsiVV5g7G0V0j1VMiSKmr
 jtTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vAncHnLBpOlRUc0OOfu8cfX5QtgUJCxxL9tQZFajpgg=;
 b=KHQ68ufy72E/Tz6tw0Cm22Jx/OYnaro27EkHR81ngoQ9Qu/0kfCAEp0c90a2RJ66J7
 j0GjpPPkwiE9uwvADmwm/w5gfWnodWF3/dI2zhrIlVM2gp6X5DeI2WbDqvUn8uQqmb4i
 SzJBKABX5tKHZwWoLW5/Mg7+FMpxTzcpqLqcl5qe1/yHoWB6eAGyTRSiVuR5jMfFSZNg
 gNZCDTOEwihADpZa7HmwCXWigsCQiKWbqjbTqkIuYc5DCrJpDpxCTTcYppBFzLNyKl+M
 tXN3xA50uIyeImjB8L3ZvpNpYV7F3pTqEo7AELQRBXibekjopYh6uBen9mgH13M/gOBy
 Zf9g==
X-Gm-Message-State: AOAM533ZRtJTH/7M0lP4snSouZsaHaqa3hm0O3mlhpwO7SkcFTVyUmVB
 MDBVfG5LsACyCIWSQE9NrPyEWmKE7roIOg==
X-Google-Smtp-Source: ABdhPJz551tN9FM+mkMdW4A/XUbEeb/DtY+Y/vclXl9Gt1dtCrgtIQkaivvVQHph2qP/N47jz4ikPg==
X-Received: by 2002:aca:5889:0:b0:32a:f591:8731 with SMTP id
 m131-20020aca5889000000b0032af5918731mr828910oib.270.1652978753548; 
 Thu, 19 May 2022 09:45:53 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35]) by smtp.gmail.com with ESMTPSA id
 i20-20020a9d6114000000b0060ae5f10973sm575601otj.15.2022.05.19.09.45.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 May 2022 09:45:53 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, lee.jones@linaro.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 sre@kernel.org, jon.lin@rock-chips.com, zyw@rock-chips.com,
 zhangqing@rock-chips.com, Chris Morgan <macromorgan@hotmail.com>,
 Maya Matuszczyk <maccraft123mc@gmail.com>
Subject: [PATCH 4/4 v7] arm64: dts: rockchip: add rk817 chg to Odroid Go
 Advance
Date: Thu, 19 May 2022 11:45:33 -0500
Message-Id: <20220519164533.1961-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220519164533.1961-1-macroalpha82@gmail.com>
References: <20220519164533.1961-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_094553_886905_2EE0B9F2 
X-CRM114-Status: GOOD (  10.70  )
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
