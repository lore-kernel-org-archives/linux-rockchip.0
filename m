Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D857FC61DB3
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jan 2023 17:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iuHCQ3IuiWHzDrlb6nI7z8SoV5kuH/fECBNrQLqgCvY=; b=BQ9YbKKERtyd7Z
	fNIQLgGLiw3Yuy/dsqZPiZTL87Zub3GmKg+PKuUZGz5OmiJOga3t+1jlD/nysVjD9A/D2L0t2TM8B
	+meDM6oKxg/ydQP1FPV1I0fRfSvkGkypfnWCWjzHYEkN6NkY89GufJqt8PJZqoNkwOH8grtsma84k
	nuQ9f2NVVYIHhDa2agL/bcuclQ4c3Zq1AtY8jmsNinqU1uyfoIFvcv+cz9DhZ9aNgPvKimUUhilt2
	jxv5o+GENaIgAjEf3hsUv5KDw1P1zn2Uv2Oapp+zTMnXzxPWqGOmS20osQpV3Na28L7wiVpcnVrmZ
	osFc0aDPOvNguAxktKHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG1mL-00G8BU-JQ; Thu, 12 Jan 2023 17:54:18 +0000
Received: from mail-oa1-x35.google.com ([2001:4860:4864:20::35])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG1mC-00G85Q-M5
	for linux-rockchip@lists.infradead.org; Thu, 12 Jan 2023 17:54:10 +0000
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-150b06cb1aeso19676343fac.11
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Jan 2023 09:54:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xn0RWIp29/DDAGotFO+F2cDyIEYDf7WQu136TlHaqBY=;
        b=GgLQFSrI7wABrz24xPa8arTDkKmXWC4TAcKWtorlQQBKvTjCXNYQUfhqGbQ4C8vtdn
         KqE5SnutmCPdI7XDVjZW9QekOlPxRH8wQOsUQuThnYa07mj50tyDcgKYNLNB0me6gYry
         iL/1LNBsBeNCf0MGcyiTuCiLjq24UEUeF8LKgDm34uTMUXQmK+XEOaTn6L7eCh/Hhvqh
         kAI9J5i79+dLiWnKzXKNz1P7T93pif6yHD2e5I+tijWPIcNHfN5S5ip3ulybi28ENlrO
         ZwF35SYISkdDIN+wEHMbw00rdfERrly6zUItwvLOguKfXBB+PMg4lgeH5YaeJzjOUZon
         URVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xn0RWIp29/DDAGotFO+F2cDyIEYDf7WQu136TlHaqBY=;
        b=rXQoz2av122GelAFkRIMp+MlvIOvzBW4xosKrpU0IaIoQhWHOgfOPHAEUKPppMpz+Y
         VG0ixH94JjsfVw9gG3vaU7Wug5DYq2olP95rC3miAhtmj0RZ2y3QTY8QAvYcHujL2OaB
         T/GH+FCY1hyWgW/GaRBpQS5pmCJs8fIPbnvTtePK2+GBam1Fp4U3p3ZBrQjLrZC3K9uW
         xuInB0cHD8Hb2B4VhjAWDEiUn0BlgFXua8e1QY3qh8o5XMuTdT2gRLU370UCP0hrswcU
         JoVtqcTJ1zHBJw60Uin8cNTzSxxH1tjAo2xQamiQUJn0amc3r4JFom1PtBqkTIZZ7mWr
         IGSw==
X-Gm-Message-State: AFqh2kpAT7ysTSK+EYYkZG/FEJZiXxAgk79W78ESVd2v5xzWN4Pcb8rV
	CH0j4uk0C1NvzhTrDjiURwk=
X-Google-Smtp-Source: AMrXdXtBjQHgctO3UfpGjiQn/IsGHMNY/nqHWRHZ2huNChe7We+hR5oAMk6Qv4zseol2n95jfj1iMA==
X-Received: by 2002:a05:6870:450a:b0:15e:dbe1:aee3 with SMTP id e10-20020a056870450a00b0015edbe1aee3mr34192oao.51.1673546046797;
        Thu, 12 Jan 2023 09:54:06 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id v17-20020a05687105d100b0014866eb34cesm9317049oan.48.2023.01.12.09.54.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jan 2023 09:54:06 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linus.walleij@linaro.org,
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
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V10 4/4] arm64: dts: rockchip: add display to RG503
Date: Thu, 12 Jan 2023 11:53:58 -0600
Message-Id: <20230112175358.421975-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230112175358.421975-1-macroalpha82@gmail.com>
References: <20230112175358.421975-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_095409_088094_22033321 
X-CRM114-Status: GOOD (  10.31  )
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
