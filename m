Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A5BFC4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Nov 2022 17:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fz9Ry3AvdA9Oav24NEG3LqccARL9m8S3gu7HPlNmMv0=; b=DmUUbQUt0Y1W34
	RShyrYgl32SILcRh4m8emPzckgIewrDQLPmORTMDMmnmnOHmJBVAsvzSuvKhKbTxPynpGI+GiiLf6
	j2TpLMb63pDBDlhufqdXlF8PEAoLjAXCbRsa95yQA1OZzyS4vw2aBHoraPpPrHYcdTSzRqn2IAOCX
	fusZErRLh7BWzR3TBqmjfjkYto4y+x1pf291OxyZMdUvnzJs4R/hJzkzP1IVEcByZux1biq9ugDq2
	fk6CNkb28e3uES6lj/ZmNs2akTGj3mabAh3hCjnC6qtCrho/f6fkMZJDP8hbu7lgFyjMgLQ2fD00+
	M/nwtKjitwW4wlLFet9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p04QC-00AWOt-1H; Tue, 29 Nov 2022 17:29:28 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p04Q7-00AWMf-JI
	for linux-rockchip@lists.infradead.org; Tue, 29 Nov 2022 17:29:25 +0000
Received: by mail-ot1-x32c.google.com with SMTP id 94-20020a9d0067000000b0066c8d13a33dso9545327ota.12
        for <linux-rockchip@lists.infradead.org>; Tue, 29 Nov 2022 09:29:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fnrU/S9jrTo7VMkSItxfe7rQNqEwCFm0vszgPLvFvNM=;
        b=FMuZUNvNuprAFguviKR51jVrDAzZLGUbDQOtZNexD2xXwNxzNHQ63ay2m4eYEODfYH
         Vw5VfMDlwMd5w+Kawaujb4SSHVrenwVnHwa+gXBzg8bH7dzpPLP8G13oF4kH2DBS3YOU
         qRHHKSq2EeSSOmsE7aWaAYUci/uFIW4M4srljDLfJkHLAhULKrjARc0LGDIdhqqFbCPL
         fvaxcxHqS+6UQkTtkbvA1UaaSxxGpUmPwEeuMEySUI4SIOFUZd4MNvbnuIs187Nca9Ma
         8rRbLWJ7K048+wtP2BHjMDii4Tqzrl9Wab7XsRtTIQM5fS78iIiY48voYS7+l6IedHJR
         7Vjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fnrU/S9jrTo7VMkSItxfe7rQNqEwCFm0vszgPLvFvNM=;
        b=zUfMZcjUFQJ0JEMzKSQVCaiGGZB1NFXvJwFpwZC5nC/R3RBkf0NxMTvebsoL1wxOLP
         FlPE+vvUEK15GcJ5xs7NVr/Tm0lgWb2E4AEjVMJ+2MAvDi/dIZV7wmaqs3Z9XA0RCPmS
         TuS8AorNzyzrTuLPs/IXU7qGWJ8iar5tJS4SCso6kHW/+K94UnOdleqhW87T6woXdxJU
         DDvFtdZtLv+KjDdAuXLf9f4TWB2CiB/4HJs6OvtdIF1lP++dHp3qtymFnKI6P1mfhLDQ
         QD2EMYpJ8M+SJvPmA/edAlbLUt0/M2BmJE9S0lt9vSpyA5yJ2dc+3RwnRnVsg6b6VN8F
         3a5A==
X-Gm-Message-State: ANoB5pnkT/XcrJn6NMkeWHj8ovVk1LEcLVxwYR2JbqE4T2T+nsVrThgr
	tGBnBUw2wSBucNYDuNjcNh3LGgNCkB0=
X-Google-Smtp-Source: AA0mqf5HcnIQkAF9BdufN5q1s2cozIdu6aBXSB91VDBMW6tg6Xl5I2gKp8jDb3SVdelMdCKx9aUNcA==
X-Received: by 2002:a9d:5d04:0:b0:66b:85b7:ac37 with SMTP id b4-20020a9d5d04000000b0066b85b7ac37mr21802163oti.363.1669742962229;
        Tue, 29 Nov 2022 09:29:22 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id l26-20020a9d709a000000b00661b46cc26bsm6224546otj.9.2022.11.29.09.29.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Nov 2022 09:29:21 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	maccraft123mc@gmail.com,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	thierry.reding@gmail.com,
	linus.walleij@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V4 3/3] arm64: dts: rockchip: add display to RG503
Date: Tue, 29 Nov 2022 11:29:12 -0600
Message-Id: <20221129172912.9576-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221129172912.9576-1-macroalpha82@gmail.com>
References: <20221129172912.9576-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221129_092923_675398_A513B8D9 
X-CRM114-Status: GOOD (  10.62  )
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
 .../dts/rockchip/rk3566-anbernic-rg503.dts    | 61 +++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
index 5dafcc86296b..23442e38a751 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
@@ -47,6 +47,22 @@ gpio_spi: spi {
 		mosi-gpios = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
 		cs-gpios = <&gpio4 RK_PA7 GPIO_ACTIVE_HIGH>;
 		num-chipselects = <0>;
+
+		panel@0 {
+			compatible = "samsung,ams495qa01";
+			reg = <0>;
+			enable-gpios = <&gpio4 RK_PB7 GPIO_ACTIVE_HIGH>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&lcd_enable>, <&lcd_reset>;
+			reset-gpios = <&gpio4 RK_PA0 GPIO_ACTIVE_LOW>;
+			vdd-supply = <&vcc3v3_lcd0_n>;
+
+			port {
+				mipi_in_panel: endpoint {
+					remote-endpoint = <&mipi_out_panel>;
+				};
+			};
+		};
 	};
 
 	/* Channels reversed for both headphones and speakers. */
@@ -94,6 +110,32 @@ &cru {
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
@@ -146,6 +188,18 @@ spk_amp_enable_h: spk-amp-enable-h {
 		};
 	};
 
+	gpio-lcd {
+		lcd_enable: lcd-enable {
+			rockchip,pins =
+				<4 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		lcd_reset: lcd-reset {
+			rockchip,pins =
+				<4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	gpio-spi {
 		spi_pins: spi-pins {
 			rockchip,pins =
@@ -164,3 +218,10 @@ rk817_charger: charger {
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
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
