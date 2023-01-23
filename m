Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0FF3C05027
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jan 2023 16:02:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=axcfFuemil6DTmC2PIYkq5YA6KXFAj/B08ErxNLBwf0=; b=KA7eUFKYQdlpSR
	OzEb5FwDj2yw7SH2L8nQtX4xoAWbRaYnA6FTNrf/1lL1lW5nd+SLIQtl1Pe8v65KQPRzz9hVPlDgZ
	NW5UteBeUJCmKWtL893XsxGulmUcRjebF+9fdKAKKMTWQgzDvSpIvlIWnEjBQgdgNC3yGoeRq6X3F
	PrORWySSrenleIAUy1cqZt0akBAnTjZae8eGILTE7P6EWnMk+CsfD7xwPSOTwdeyPN+5MJbQhrZgp
	VrVUYnxvDRRrZYJQ2usJnj58ca/wA2CdUv4o3wEBppo8jHcNpNevzGh5tkumj6HHIqYlCZa7NyZ4B
	iDN344iulvFf/TKMrMdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJzH5-000Ofp-NB; Mon, 23 Jan 2023 16:02:23 +0000
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJz1T-000Id4-2e
	for linux-rockchip@lists.infradead.org; Mon, 23 Jan 2023 15:46:20 +0000
Received: by mail-oi1-x22f.google.com with SMTP id n8so10756157oih.0
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Jan 2023 07:46:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lAsZjV/F62ehp3lu+dOQ47iT4A8AwdolBkS2EqUE/rA=;
        b=YWfuJVBaEV8h+q8+hAGxtJYkAMtOJqj+4/wY7jhchxrDVUz41Jkr4D4Lbh+ZgnZB/m
         9H3d7Dq8r/ZncBMZj7eUYiRsOXMNutmfBah9VYeYIb5N5mloXjb6pSUaXWvELem6u+uU
         ziKNznOm6td4Za/rx9TXUdhmz3K4NG0T7cuDhwrzetfv6lMYQVZ4gZEK6K0Estpw6rSn
         dKYNYR35ctWOdCMCcwm+e+lh40vAWaBnHaLU8OiOQmuCz0JJtoRJ0hT/B6j0oZQDskUk
         FdXtHl3QCbHgvp/tthCzgaa2Ex9xA/w1N0bzsDYAscfpvlzF28PM3Q/4z3ir4iCKZn9Y
         V/Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lAsZjV/F62ehp3lu+dOQ47iT4A8AwdolBkS2EqUE/rA=;
        b=zzb2MsRhomaH6140TpGHBFhYnAbRPHYA2DAZXBWSAbZB2shzHLe7tBCNJc065ZEC8o
         WkdySMG85RQ+MNckekeFbtHivOGbZUyX2a43yC2mToU4Mqzayf1qP7RhgYrlI5FVp969
         pGgJfeDq5nQjSsXwqTClXDHVOdi0Vctd8QGm1rtIa1KxzaILqi59Q7WVtmN+x/8hoY1j
         yxDNcWzO2l1ad4LeQIBJi5AZDyK7vbPr85FcfW3utgcMVoEZE90YNH6ePRNPJVEh2Zxt
         XcZxjes3ULzH/Fbz1J+EXoW/B4s6Fgm7qTSxhVlq9EU1ykqNpPaa43Fu8S3Av00UlCLc
         1j2Q==
X-Gm-Message-State: AFqh2koO4nlwJnjm4D8f/1KBKesneRIU2CzL8Bg5vwcCQSGs3stPTohK
	bqC7QNBQ5H5ISOaOnwVzh3I=
X-Google-Smtp-Source: AMrXdXuYbHqR4J82pKKdQRM5vPgIpVKffS/ltAI+6WMM81sbew5aDBjCqcM5Y+CZzaac0etn99OVdw==
X-Received: by 2002:a05:6808:171b:b0:35a:1124:227d with SMTP id bc27-20020a056808171b00b0035a1124227dmr13432623oib.3.1674488774199;
        Mon, 23 Jan 2023 07:46:14 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id w13-20020a056808140d00b0035e7ed5daa1sm10040132oiv.26.2023.01.23.07.46.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 07:46:13 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
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
	Chris Morgan <macromorgan@hotmail.com>,
	Maya Matuszczyk <maccraft123mc@gmail.com>
Subject: [PATCH V12 4/4] arm64: dts: rockchip: add display to RG503
Date: Mon, 23 Jan 2023 09:46:03 -0600
Message-Id: <20230123154603.1315112-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230123154603.1315112-1-macroalpha82@gmail.com>
References: <20230123154603.1315112-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_074615_273785_F65B8F4C 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
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

Co-developed-by: Maya Matuszczyk <maccraft123mc@gmail.com>
Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
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
