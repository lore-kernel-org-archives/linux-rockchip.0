Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78A4DC4167B
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Dec 2022 18:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iuHCQ3IuiWHzDrlb6nI7z8SoV5kuH/fECBNrQLqgCvY=; b=YKpp5gHhDG84t/
	l3bmxP/e4LxpcZ7KtuDKt+98uf3xujX3zprCxN6vPVd5u0mISEQcX2d5iIK9JXOilP+vAlVde7vBk
	xxPhbekH+zLJMBwz3mX6nT3mJ4UpmkXK2BM6Z67mf6d2iQhP9a+mURDOUNAs/oGUthd/1LywgYoUr
	vty1oDH+dugW6f+7h6aEaCt+aBVmG20WPLIioJRfy/apjEPKh6D3LPpuYvdJy4L0uY9y/bTqdTPbI
	0W/ernPGt1nkmZAAL51VcuepukuYPHeuEIPDj67uxjrk68ewQJODovgZ1paG+EApMVFT1F9tm2qHV
	aB4HfjAJvMk2WpJT0ehw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5tLG-00Au0Q-Ee; Thu, 15 Dec 2022 18:52:26 +0000
Received: from mail-oo1-xc2d.google.com ([2607:f8b0:4864:20::c2d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5tLE-00AtyR-F5
	for linux-rockchip@lists.infradead.org; Thu, 15 Dec 2022 18:52:25 +0000
Received: by mail-oo1-xc2d.google.com with SMTP id w4-20020a4aaf04000000b004a1ab217cecso23264oon.13
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Dec 2022 10:52:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xn0RWIp29/DDAGotFO+F2cDyIEYDf7WQu136TlHaqBY=;
        b=R2zO+t7nr+aKZeFcIqNjJdDuzyg9ArEuMc9RAnA2RV8wUsWaBNtdyp37mBaeRt7+8+
         G4QQzSbtA5dJru3BCO7mgYs1IMenpTgKww8wUcL1udzID+jcZnshCJ5H0ywuDIMGOKLP
         g9j56u2ug/IKiPLOttx5T/bD++cmQ3FWnRgsQHVsbX/9hV+Qn0oLxGeyGzda6nUOmaap
         8DpEfo6QSNVKiR+qrUesjD/tJ5xbLDxHtRz2cv1xLDeH4bzHiU9VE2AxFfuGYhgoTsnx
         ZMHc6em0/SBN4fYfMZR14UfUGABCeseV5m/ZtVJnGhSm2CU2t+IxmUkhWWMQd9v1+sMF
         L6BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xn0RWIp29/DDAGotFO+F2cDyIEYDf7WQu136TlHaqBY=;
        b=riFRdTYJ1tYS5OxLkMqfUsJk080/jMNe2tK3qffx+9HyYFQ74YSqnSA0Qg2d6CUglR
         c8nUSV9Okawrb7QzLRex50n5tNV5BlLVmMgddyUJd5QR9DRPd3sb/L3oP9hqAO6+Btfa
         uhxirzPyp1J7I4KJjlOYqqwG+OslCVU38niJc7+cv5oD7pCU3Eh6+R6MDKSnGkC5+UAh
         ncoye9lnOK6pmxtc/eWKvWdyIyOmZz1UFQh+Q3rPle0p24FmJaiHS4JWakemTghA/YIA
         e44Ug/w1G/RPwpnWtd51gs+koUOpfCN9fR9cI2pll2B3pUAnwkyrkVsoAEQtzHkxr0PE
         NrVQ==
X-Gm-Message-State: ANoB5plIyIFE83UMc/LJZ92L9B89R89YuReuSD6FFhtLLOS7ym9S516L
	V6eeIVqsZGVaqzf2AX/meVo=
X-Google-Smtp-Source: AA0mqf51VnHChzflEHwPYqgqklV9DYyCaptTFBBoCLZRwltPPvDECieuhv4Hem5uCmz853ZgYkWHrA==
X-Received: by 2002:a4a:b287:0:b0:4a0:2ddf:9da2 with SMTP id k7-20020a4ab287000000b004a02ddf9da2mr12199267ooo.5.1671130341879;
        Thu, 15 Dec 2022 10:52:21 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id g11-20020a4ad84b000000b004a09df5a1dbsm72264oov.8.2022.12.15.10.52.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Dec 2022 10:52:21 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org,
	maccraft123mc@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	thierry.reding@gmail.com,
	linus.walleij@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V6 4/4] arm64: dts: rockchip: add display to RG503
Date: Thu, 15 Dec 2022 12:52:11 -0600
Message-Id: <20221215185211.1560736-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221215185211.1560736-1-macroalpha82@gmail.com>
References: <20221215185211.1560736-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221215_105224_528319_CC1F7423 
X-CRM114-Status: GOOD (  10.06  )
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

Add Samsung AMS495QA01 panel to RG503.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 .../dts/rockchip/rk3566-anbernic-rg503.dts    | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
index 5dafcc86296b..b4b2df821cba 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
@@ -47,6 +47,21 @@ gpio_spi: spi {
 		mosi-gpios = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
 		cs-gpios = <&gpio4 RK_PA7 GPIO_ACTIVE_HIGH>;
 		num-chipselects = <0>;
+
+		panel@0 {
+			compatible = "samsung,ams495qa01";
+			reg = <0>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&lcd_reset>;
+			reset-gpios = <&gpio4 RK_PA0 GPIO_ACTIVE_LOW>;
+			vdd-supply = <&vcc_3v3>;
+
+			port {
+				mipi_in_panel: endpoint {
+					remote-endpoint = <&mipi_out_panel>;
+				};
+			};
+		};
 	};
 
 	/* Channels reversed for both headphones and speakers. */
@@ -94,6 +109,32 @@ &cru {
 	assigned-clock-rates = <1200000000>, <200000000>, <500000000>;
 };
 
+&dsi_dphy0 {
+	status = "okay";
+};
+
+&dsi0 {
+	status = "okay";
+
+	ports {
+		dsi0_in: port@0 {
+			reg = <0>;
+
+			dsi0_in_vp1: endpoint {
+				remote-endpoint = <&vp1_out_dsi0>;
+			};
+		};
+
+		dsi0_out: port@1 {
+			reg = <1>;
+
+			mipi_out_panel: endpoint {
+				remote-endpoint = <&mipi_in_panel>;
+			};
+		};
+	};
+};
+
 &gpio_keys_control {
 	button-a {
 		gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
@@ -146,6 +187,13 @@ spk_amp_enable_h: spk-amp-enable-h {
 		};
 	};
 
+	gpio-lcd {
+		lcd_reset: lcd-reset {
+			rockchip,pins =
+				<4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	gpio-spi {
 		spi_pins: spi-pins {
 			rockchip,pins =
@@ -164,3 +212,10 @@ rk817_charger: charger {
 		rockchip,sleep-filter-current-microamp = <100000>;
 	};
 };
+
+&vp1 {
+	vp1_out_dsi0: endpoint@ROCKCHIP_VOP2_EP_MIPI0 {
+		reg = <ROCKCHIP_VOP2_EP_MIPI0>;
+		remote-endpoint = <&dsi0_in_vp1>;
+	};
+};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
