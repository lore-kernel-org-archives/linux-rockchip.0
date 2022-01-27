Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A84CAC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jan 2022 01:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8P0gj61Owdbp3FSyKit8Umx600mJoa5AR5e1K49xYjQ=; b=GZ8X29InFEKdPD
	th24PINucnGqpIuxUqmkf8iJqBOaE7dNXl2ETbkPEKqZHnm/2ZTzWhM8vyVO91eE4k2lQHRlbKU9s
	5yweJr7EJFctdIuf8DppKKyWQAJp1S+26uY+T06D0+nGAoQb7kut/HVY0Dxae+rdRQGPU5MfqDbou
	Dp1WaSVEcIsxAvLHMQop6F4q+VjVQ0JPDnuIDeudaO2WBbvk1iB8yXJE5QjlLbZTw4XT8qeeTpeZG
	kjEluOxwhqn3BHdlLdbDGE2XmVtStRk5xk7fjBfo7LcQEQ0SqwGrhcPGkUQMr7hXqh4mbcsFzwaY0
	rxvy7whXBGAdCNG1DiWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCtAJ-00DuwE-AR; Thu, 27 Jan 2022 01:01:31 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCt9L-00DuUo-9F; Thu, 27 Jan 2022 01:00:32 +0000
Received: by mail-qt1-x830.google.com with SMTP id y17so1222817qtx.9;
 Wed, 26 Jan 2022 17:00:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GxAKjAaT7xRmtbaC3UIIpwOLw+3uTtc8mu7tmoAjfy4=;
 b=Zz5yz1+UVMMTvLCtOtyv1ZgzZJE+2Lbq65e1LjBY2npGuew1iHnyPapsTtMOi75TUT
 OfHJYobE6UF154PgmJ07u8oVnSikBFm32KgAAf4mtcRE647MF4g+YG4nBr6+6dhU4AMR
 ZL9cs3fdTfoSbP5Re4bP3QUTpj+If2aBNL1cbldtmqrUa127ilFC6P2DZoEUOtm/0y33
 tobH1jDchHq7J0Kcwyj/26mufSQ+K42HYBfc04EGwlCLOVI5iVztHPK9bn4joRWodAK1
 4diVKf38TynRJDKMTWjngeHPelD3K13PgZtiMMDysSNIS0+N7ANcGX34PEGrquNOou7i
 e6aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GxAKjAaT7xRmtbaC3UIIpwOLw+3uTtc8mu7tmoAjfy4=;
 b=2LxwZ9CrljAKiGfpTrXpdnxzSm1ZJiWuba13qoYPzKH0gSX9OTvOOcUlJVl5m5YmlH
 kPHvZFlCqj8cfD6kgXDNjsATTifGDw7DhQgTulqmzc7yF2+tG6VWN3kC72N26rsaTS/i
 NxSj+/7M22Q8fYajoQ8eBMPlj5HqoO+cJW7/tcvqUC/G1b2MF2vlWO7oLF+OGW85xsHC
 WZ44SeMfRELRKo4bKsrHxe+d/TXZWgXsfiWruB8/5xYCeUVdMgOLkGdRwEBczAkxB4Wl
 xreNjo/OZTndZMsdFWdpNVgLbZNkLpUzHOTWXTUatmUR8iYoSJ4iqO6YJpVADuKPA7Es
 cyiQ==
X-Gm-Message-State: AOAM5303MoaHFNJQUu0ZH2fega64munOFVHyaZwmKucOMyHzW3eRhWTn
 hhf5KeARvU0TRm0XoIV2XUs=
X-Google-Smtp-Source: ABdhPJwg/dm6qzEciVkoxXvVnll6gPik2tZHun90f4n5bDYY8SUlJCOcYtpp5q5msQBnzLhJSOiGrQ==
X-Received: by 2002:ac8:578e:: with SMTP id v14mr1045070qta.345.1643245230206; 
 Wed, 26 Jan 2022 17:00:30 -0800 (PST)
Received: from master-x64.sparksnet (c-98-233-193-225.hsd1.dc.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id n2sm483389qti.59.2022.01.26.17.00.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Jan 2022 17:00:30 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: rockchip: add Quartz64-A sdmmc1 node
Date: Wed, 26 Jan 2022 20:00:23 -0500
Message-Id: <20220127010023.3169415-4-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220127010023.3169415-1-pgwipeout@gmail.com>
References: <20220127010023.3169415-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_170031_373477_A661B6E8 
X-CRM114-Status: GOOD (  10.95  )
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

The sdmmc1 node on Quartz64-A supports the optional wifi module from
Pine64.
Add the sdmmc1 node and requisite sdio_pwrseq to enable wifi support on
the Quartz64-A.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index 33c2c18caaa9..1d73ac6557c5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -91,6 +91,18 @@ simple-audio-card,codec {
 		};
 	};
 
+	sdio_pwrseq: sdio-pwrseq {
+		status = "okay";
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&rk817 1>;
+		clock-names = "ext_clock";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_enable_h>;
+		reset-gpios = <&gpio2 RK_PC2 GPIO_ACTIVE_LOW>;
+		post-power-on-delay-ms = <100>;
+		power-off-delay-us = <5000000>;
+	};
+
 	vcc12v_dcin: vcc12v_dcin {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
@@ -147,6 +159,17 @@ vcc_sys: vcc_sys {
 		regulator-max-microvolt = <4400000>;
 		vin-supply = <&vbus>;
 	};
+
+	/* sourced from vcc_sys, sdio module operates internally at 3.3v */
+	vcc_wl: vcc_wl {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_wl";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_sys>;
+	};
 };
 
 &cpu0 {
@@ -475,6 +498,12 @@ pmic_int_l: pmic-int-l {
 		};
 	};
 
+	sdio-pwrseq {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins = <2 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	vcc_sd {
 		vcc_sd_h: vcc-sd-h {
 			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -516,6 +545,22 @@ &sdmmc0 {
 	status = "okay";
 };
 
+&sdmmc1 {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	disable-wp;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc1_bus4 &sdmmc1_cmd &sdmmc1_clk>;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc_wl>;
+	vqmmc-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
 &spdif {
 	status = "okay";
 };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
