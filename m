Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4AB4FA3742
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Oct 2022 18:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ayyga+XiSLTvIdAjDcm6cNHDZ3Mp8mkcphqWeH38n/A=; b=NslbmshWeW7s/S
	HjZHYVuAUZ4z/iUzpI+tGtierZDJObMvkeNmw+1Bxql+wnVo6P59ehNSNByRObftNtiDqXqbixZS8
	sH4yLR6Sbs7W7xVDl4RCAnp/Ene0/gwPthbTaBWHZ6UqziYXP5SwuVmsTm4puvdS8GBTOgdhQlcMr
	Jcru1TN0nhpRqwL6oTkJi32KX9qmiU4y2sSc36cCdbQJ4ICvx3IhWLIkA2z/rYf+jW24JWHUKa3Id
	GK3wlvYs37B2mRrYqfHxAgg1gton+BvjQXuKz/C0UUuwXb0exeYAuQsaM7Z5fAux6YKSc8YM/k00m
	DDT73ufHqXhBKgqbnscg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooUHx-001g0W-Ps; Fri, 28 Oct 2022 18:41:05 +0000
Received: from mail-oa1-x34.google.com ([2001:4860:4864:20::34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooUHt-001fwz-Pa
	for linux-rockchip@lists.infradead.org; Fri, 28 Oct 2022 18:41:03 +0000
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-13c569e5ff5so6855964fac.6
        for <linux-rockchip@lists.infradead.org>; Fri, 28 Oct 2022 11:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4ynt6JT69HA02Oq8WM7F4kqQBK5tLRg6dL8O0dxxMqc=;
        b=Pkxqg5BTmAVShE5+autPmavgdFYq6sH3gqtICfzT0mN6bJR+ty/vuMl3uFmwHMKo9p
         HxesyXUXBX7PAjdTJjoQME0bpqDjP7Nd5aH3U916XVNT4eAwgCPjs7ZShnS9nbuACiuZ
         KAzbXeLo911fjY4jWF9NQqzULD6s73f+P6fB0wUNRKWun+9B+yngWCLqRXI0L0uxwMC/
         L8EaT4F6iPo5S8ySdgbOuUwu+HNKi+fGkpICDRSlGD0CBETdTJK+el4YUjWox7TvIJ/s
         VPOR8rSNjLJbnZYh4UZxFarAv2fPP8K3GETpoAStdDLzEs+jbeuc79rwGCIRQyk0GRJI
         PqUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4ynt6JT69HA02Oq8WM7F4kqQBK5tLRg6dL8O0dxxMqc=;
        b=TXvOkCYTmiGYaKwized8Y01i+yVrJakY5CibA/qEzai9L0Re65V0+KKgVguLLB9G6N
         8HzXhF+cdhUlOYQKRnG9KocgvoRVVKR2I8Mju/6tRJqQ+GFpGY/S+oKLmJlqZna+8Mpk
         ziSKWrMY2hUT3KTZb64YE/0MltPE3M/kMcP7yIebgD9iQc/6QqJRtjAf9ioWD2+SES/M
         0lpVHbAubyQMMVKIQmU8KgFrI74xLLTsHlwns0tiIrJCxzpOAD36K4TwtQNCdqyUShie
         Ls4QvNEUHycjfOdTxzR8bcd5+DGeEp69jevhDYtWujP9XkS5TGP6sTg95R6jibhCoXkz
         uVQw==
X-Gm-Message-State: ACrzQf3NM/mnMeuB09F9dROaG8rsuyhAbXmVRRrlO7dqa1gTapjN+lR/
	VbzpB0OoIwjTV/qaCKxd7njRRJHzjhM=
X-Google-Smtp-Source: AMsMyM7F+br2pqNe1GmsfyUORiHlcDIJZu1fQJXHoowqOaPfw/dZ2FJlY96pJhMt2R8m5hOOY3HUZQ==
X-Received: by 2002:a05:6870:a449:b0:13c:7d1c:5116 with SMTP id n9-20020a056870a44900b0013c7d1c5116mr325067oal.27.1666982458410;
        Fri, 28 Oct 2022 11:40:58 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id z7-20020a056830290700b0066c34486aa7sm575288otu.73.2022.10.28.11.40.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 11:40:57 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	pgwipeout@gmail.com,
	michael.riesch@wolfvision.net,
	frattaroli.nicolas@gmail.com,
	jagan@amarulasolutions.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/4] arm64: dts: rockchip: add rk817 chg to RG353P and RG503
Date: Fri, 28 Oct 2022 13:40:44 -0500
Message-Id: <20221028184045.13113-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221028184045.13113-1-macroalpha82@gmail.com>
References: <20221028184045.13113-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_114101_849809_327DD905 
X-CRM114-Status: GOOD (  10.28  )
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

Add support for the internal battery and charger for the Anbernic
RG353P and RG503. Battery values are taken from the BSP Kernel
device tree.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3566-anbernic-rg353p.dts   | 28 +++++++++++++++++++
 .../dts/rockchip/rk3566-anbernic-rg503.dts    | 28 +++++++++++++++++++
 2 files changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
index 80716b2ebd29..63cff402f3a8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
@@ -18,6 +18,25 @@ aliases {
 		mmc3 = &sdmmc2;
 	};
 
+	battery: battery {
+		compatible = "simple-battery";
+		charge-full-design-microamp-hours = <3472000>;
+		charge-term-current-microamp = <300000>;
+		constant-charge-current-max-microamp = <2000000>;
+		constant-charge-voltage-max-microvolt = <4200000>;
+		factory-internal-resistance-micro-ohms = <117000>;
+		voltage-max-design-microvolt = <4172000>;
+		voltage-min-design-microvolt = <3400000>;
+
+		ocv-capacity-celsius = <20>;
+		ocv-capacity-table-0 =  <4172000 100>, <4054000 95>, <3984000 90>, <3926000 85>,
+					<3874000 80>, <3826000 75>, <3783000 70>, <3746000 65>,
+					<3714000 60>, <3683000 55>, <3650000 50>, <3628000 45>,
+					<3612000 40>, <3600000 35>, <3587000 30>, <3571000 25>,
+					<3552000 20>, <3525000 15>, <3492000 10>, <3446000 5>,
+					<3400000 0>;
+	};
+
 	/* Channels reversed for both headphones and speakers. */
 	sound {
 		compatible = "simple-audio-card";
@@ -87,6 +106,15 @@ spk_amp_enable_h: spk-amp-enable-h {
 	};
 };
 
+&rk817 {
+	rk817_charger: charger {
+		monitored-battery = <&battery>;
+		rockchip,resistor-sense-micro-ohms = <10000>;
+		rockchip,sleep-enter-current-microamp = <300000>;
+		rockchip,sleep-filter-current-microamp = <100000>;
+	};
+};
+
 &sdhci {
 	pinctrl-0 = <&emmc_bus8>, <&emmc_clk>, <&emmc_cmd>, <&emmc_datastrobe>, <&emmc_rstnout>;
 	pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
index c56c290f0d87..5dafcc86296b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
@@ -17,6 +17,25 @@ aliases {
 		mmc2 = &sdmmc2;
 	};
 
+	battery: battery {
+		compatible = "simple-battery";
+		charge-full-design-microamp-hours = <3472000>;
+		charge-term-current-microamp = <300000>;
+		constant-charge-current-max-microamp = <2000000>;
+		constant-charge-voltage-max-microvolt = <4200000>;
+		factory-internal-resistance-micro-ohms = <117000>;
+		voltage-max-design-microvolt = <4172000>;
+		voltage-min-design-microvolt = <3400000>;
+
+		ocv-capacity-celsius = <20>;
+		ocv-capacity-table-0 =	<4172000 100>, <4054000 95>, <3984000 90>, <3926000 85>,
+					<3874000 80>, <3826000 75>, <3783000 70>, <3746000 65>,
+					<3714000 60>, <3683000 55>, <3650000 50>, <3628000 45>,
+					<3612000 40>, <3600000 35>, <3587000 30>, <3571000 25>,
+					<3552000 20>, <3525000 15>, <3492000 10>, <3446000 5>,
+					<3400000 0>;
+	};
+
 	gpio_spi: spi {
 		compatible = "spi-gpio";
 		pinctrl-names = "default";
@@ -136,3 +155,12 @@ spi_pins: spi-pins {
 		};
 	};
 };
+
+&rk817 {
+	rk817_charger: charger {
+		monitored-battery = <&battery>;
+		rockchip,resistor-sense-micro-ohms = <10000>;
+		rockchip,sleep-enter-current-microamp = <300000>;
+		rockchip,sleep-filter-current-microamp = <100000>;
+	};
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
