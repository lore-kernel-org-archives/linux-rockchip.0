Return-Path: <SRS0=1ikY=LY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5DFCC11F65
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 11:41:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4E11861883
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 11:41:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4E11861883
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hAt4VllWaNm0nDt/5TLbZEg9YCmsFqAujweg5YJdq80=; b=sY1FLUxb+Q4rs+
	Zc25jm8UIfM6xSZYlpjuxGLdLtLSVpp88cc+C5iGZxVQ1Hp+Y7x358Z0mbCI8MEJbv+UMYiiG25Ly
	U7nuZUwaBwDOAwTSM5yGpPMc6Sd+VlniSt3UpCg+Qs6JdZMKngBx8V09SQBq/C6aSwqItzRWE5nbL
	MzEqSkS8dyRRpGaqV/iQMClm6k0ccnA9MHyin4GFw316GLGr8nsT64ydAYjJLLHN9Uik6zkrntUY1
	upXZ6jYFkZbrF+pRj0G1oRgzKLaSTQlrxW25/TG7NUIeBE1ib441cWbn+vIteBhbO5vULuN27qI1d
	zX1x9jt/rhIu5ZEFhOdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyYal-00DjuU-U8; Wed, 30 Jun 2021 11:41:19 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyYaZ-00Djk9-3l; Wed, 30 Jun 2021 11:41:08 +0000
Received: by mail-qt1-x832.google.com with SMTP id g12so1211202qtb.2;
 Wed, 30 Jun 2021 04:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9WGajNiQMTDo26j5le/bSfKiJsofDJEV08hqKWpTcKY=;
 b=lqL4REt4yP/jbdel4Hui+qpoiB/2SsINyZkvA9J/Ady4JM6toFgo+6vATEPuGACsXw
 sn3FYCOC2yattpqp6HugxOrKxl/6PiiTw+iOrLT7QurtgW5AKr/qONX5l1LRFUZ97/fH
 B1bWejnE27PJDjkblhyxn/vKSlevmIWHRQjMD/MjjGVZNLXlkw4fO1jDKGvaoGIdqHBN
 1CVzVEdS53tDJokzPaWmiHDDa+nacX8LLIhN4kq9rX6rvLPGgXTsGvXigQR3KcWexB+3
 39yXN7+Bbn7EaAprfx4OTJcy/iYWOIVpLZnrZ0iQKUh3v7q8nISB2xzAqLGSFnGH9IM2
 efag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9WGajNiQMTDo26j5le/bSfKiJsofDJEV08hqKWpTcKY=;
 b=HDqkHDHkYLi4Q6ZX6DXmR+zAzoHUfw4y5mNAsmLm6KzbQQHzi1IUNKuItraK4NxC5n
 RcQGkLtcYFm1sh+8AmuPs6HFHdyFWcp2QypoovVQ0gE9lA9ivC+z9QmBsaQguM45YH3t
 TDJ2SQXFqbK/oY9GpWA1YhTF7eMqnLSipmdzUiw22sKZLj6KrQgUsFV1FCluJH5rpzqI
 41FNEH4szOiJLMPKz8W3OtD6Ey6Gi67o9E/XeT3zKHTZVY1P+a1ZexWBJXobdnA/LcFy
 0mb0cIqoP+hlQ4dx71qGxwD2mwB79dPCWZSpjG8yxlRH33XVjU5M+xA382iqBEpasbwu
 XOcQ==
X-Gm-Message-State: AOAM530Nw77SeAII1Iy0TFExnmK1HbqvonJ5yIJYP4GLOKVP637OFmNt
 bhIN+zSsymimAzd8BeLIp2c=
X-Google-Smtp-Source: ABdhPJylPLF/vX617JJjLPIS4fQxa8BNN509WCfyDbGHvjnIrQjA/OT5JFFzxoiC8qgmcOYgkl+0XA==
X-Received: by 2002:ac8:5d8d:: with SMTP id d13mr30583296qtx.49.1625053264589; 
 Wed, 30 Jun 2021 04:41:04 -0700 (PDT)
Received: from master-laptop.sparksnet
 ([2601:153:980:85b1:6476:6b8e:397c:a7a0])
 by smtp.gmail.com with ESMTPSA id k8sm12001773qkj.46.2021.06.30.04.41.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Jun 2021 04:41:04 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: add thermal fan control to rockpro64
Date: Wed, 30 Jun 2021 07:40:57 -0400
Message-Id: <20210630114057.472121-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210630_044107_215337_82ED491C 
X-CRM114-Status: GOOD (  12.23  )
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

The rockpro64 had a fan node since
commit 5882d65c1691 ("arm64: dts: rockchip: Add PWM fan for RockPro64")
however it was never tied into the thermal driver for automatic control.

Add the links to the thermal node to permit the kernel to handle this
automatically.
Borrowed from the (rk3399-khadas-edge.dtsi).

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 .../boot/dts/rockchip/rk3399-rockpro64.dtsi   | 57 +++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index 6bff8db7d33e..687a5afa5d2c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -69,6 +69,7 @@ diy_led: led-1 {
 
 	fan: pwm-fan {
 		compatible = "pwm-fan";
+		cooling-levels = <0 150 200 255>;
 		#cooling-cells = <2>;
 		fan-supply = <&vcc12v_dcin>;
 		pwms = <&pwm1 0 50000 0>;
@@ -245,6 +246,34 @@ &cpu_b1 {
 	cpu-supply = <&vdd_cpu_b>;
 };
 
+&cpu_thermal {
+	trips {
+		cpu_warm: cpu_warm {
+			temperature = <55000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+
+		cpu_hot: cpu_hot {
+			temperature = <65000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map2 {
+			trip = <&cpu_warm>;
+			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
+		};
+
+		map3 {
+			trip = <&cpu_hot>;
+			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
+		};
+	};
+};
+
 &emmc_phy {
 	status = "okay";
 };
@@ -281,6 +310,34 @@ &gpu {
 	status = "okay";
 };
 
+&gpu_thermal {
+	trips {
+		gpu_warm: gpu_warm {
+			temperature = <55000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+
+		gpu_hot: gpu_hot {
+			temperature = <65000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map1 {
+			trip = <&gpu_warm>;
+			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
+		};
+
+		map2 {
+			trip = <&gpu_hot>;
+			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
+		};
+	};
+};
+
 &i2c0 {
 	clock-frequency = <400000>;
 	i2c-scl-rising-time-ns = <168>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
