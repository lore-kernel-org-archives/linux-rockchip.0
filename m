Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 255D8C54EBC
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 20:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iuHCQ3IuiWHzDrlb6nI7z8SoV5kuH/fECBNrQLqgCvY=; b=mpyoEKNjNEDgKG
	GbhrW+KQIT1lJL43KBpZ8nSIDspbvO50ELo9uZ0e17pNbinPaULFOccgCSZczrzNbuxa0PEBiXfYT
	EKxPBjDx/wnFZXxkGdcWPEYJ2IRj6QuXpFh2mJuKx51/8aCcJHgata7GSwcIXEeOK5QYHuHLHLTcX
	PxkcQzMvotPa7Sm2oVv6KnSCp02SU44g+oTt30y5LWCq9QQ5a0Cmq+WsX1hIBpjM5N224lVKqNsCF
	33yfrswacvvwZYMIU0UEn1MLSL6uYepw9Zvn0UgKyp4VlSeCUgN4OIaqJLngVslo2NY7NpPo1et/U
	bDTGd+1fpjL4PzqnLsJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFKq0-008QW7-Iq; Tue, 10 Jan 2023 20:03:12 +0000
Received: from mail-oo1-xc34.google.com ([2607:f8b0:4864:20::c34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFKpx-008QTT-8W
	for linux-rockchip@lists.infradead.org; Tue, 10 Jan 2023 20:03:10 +0000
Received: by mail-oo1-xc34.google.com with SMTP id h3-20020a4aa283000000b004ead187bd6eso3502588ool.5
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Jan 2023 12:03:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xn0RWIp29/DDAGotFO+F2cDyIEYDf7WQu136TlHaqBY=;
        b=J5wl9aZ1IGVKg3lxEsQz4tnGLe3hwvrXmSc6JvIcjnH9Qk+O/wKX6InDxVsiLFF7HI
         nElQ3Tdyo29n+VERdoB4PBD3HnjdmlHL48hCL/FqvLqTb1jatMoEBMqrz4zCNR3Ltx4J
         SGnktX0yevWOFId052bDTYFckwojX1RXTdYuBmZV9/1hoKyiQu0FekR8zRoiqxtmmFrp
         DZqEicdPijXJvtEgoiaUnJwDEwer4qP0+y05oZ0AiBgsBvwCPqmpLhJRIAudwRjGuQ8z
         DditkC69Hsf57phbBQFTQKhwr840n2PXLpWs5b5reDRS2lClfMSxuRAnfhaw10/ANiXy
         Q6Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xn0RWIp29/DDAGotFO+F2cDyIEYDf7WQu136TlHaqBY=;
        b=Mlz/H3rS1yvTyUmDk7JjI1L6yUEuYweXGIKr4LuCT7fsiiZ5twXqO7eDhAim6DfFnz
         GMxlMZxBxl81BbzUqfkcXbHzglL0KhZx9KoMRaXUWUWTQSCF1Kq2hpt/Lczq+M4jLnB+
         qzd27n70RMnSfsHksZ0M59bPpn2OiHe88NlPp918QiarQd4wW3pCwyAy9KrEiwBqvJcI
         sAlvX9NhWqjxqOcKRNMUFB8m9AZDSVbY6K331u6mRppJWRT594RezYQzhONltZGebNJi
         rV5zy00v4DOGma5945TQdcT6D77ZZA2uQ8fExOOYmaiNP5Mxm7DI9B2Vnb1cR/bDCJLU
         OcOg==
X-Gm-Message-State: AFqh2koVtDktKLZJTgGmAuBVNQN33isSu8XzvwGXSniGzoR7Wwj4FixR
	KwKkbuGzqFhMBPJQH+nx2lU=
X-Google-Smtp-Source: AMrXdXsUnCZFrgXKeAiUQMlpciK+Y2fvmBkeu+sGeN5vr+2gS/lMTnHiixfEKYg1f/tLIXAiTGxg2A==
X-Received: by 2002:a4a:ce8b:0:b0:4b0:ddb0:e0a6 with SMTP id f11-20020a4ace8b000000b004b0ddb0e0a6mr30972164oos.3.1673380986977;
        Tue, 10 Jan 2023 12:03:06 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id r4-20020a4aad04000000b004a394578e14sm6089779oon.32.2023.01.10.12.03.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 12:03:06 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	maccraft123mc@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	thierry.reding@gmail.com,
	linus.walleij@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v8 4/4] arm64: dts: rockchip: add display to RG503
Date: Tue, 10 Jan 2023 14:02:55 -0600
Message-Id: <20230110200255.1218738-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230110200255.1218738-1-macroalpha82@gmail.com>
References: <20230110200255.1218738-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_120309_332955_312EF9B3 
X-CRM114-Status: GOOD (  10.90  )
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
