Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DFBECCF2CC
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Oct 2026 06:36:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+021M8GxotQCFbeE92iIzB2iSAcUCP35HBkog7RLw8=; b=2nGYYcRj41cVRp
	aDe7+Op+rgdea0X7Oa4YWq88WPa0syBoDL2Desaj1FwBtsWYE/eR0XSK6GeguoXxfdeQ5TJAF8dKk
	LTi6hT8NL6Nj0e9O9ko3YrrT7K7OPgH+FQRPmsYbp6hHUDiKyAqRKFHkgewgvvtV0off5UeVmhuPW
	Or2ZEqPR8Sh7LZDsUt0lfJRZyF0aIEBB88HQqbyBCKaD60x+kjLW1Ih9hFgGwP1HVY1Onz/IKlXne
	fYOib8R6xjwhKYvGHmkTQT7fh4FhOZQbTRQy9ZF5f6pL0C4ZKL2IlN3tcpiGASKLt8E3OPtA97Chb
	30bGX5V3e5zSYn1kaj5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIKVA-00000005czl-3XOJ;
	Sun, 18 Oct 2026 06:36:12 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIKV4-00000005cwX-3OiK
	for linux-rockchip@lists.infradead.org;
	Sun, 18 Oct 2026 06:36:08 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-89f85edd210so488885b3a.2
        for <linux-rockchip@lists.infradead.org>; Sat, 17 Oct 2026 23:36:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792305366; x=1792910166; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=tCpwVytRBHG001ylJlx6CLpltdlyxsoct+VeDjqc/64=;
        b=S6sgD6MvJdSCNbi/dA0fSqyzPZH1rsV7mIm4DbNIbrUazItjyp7hgh9gUx+Gd46Y/R
         ECfoZAkbgCNJgDf089Me/1G7CWBJn3zQVBGCy8AGrEEsyurgE2J7o20V7cslpBoQlWTz
         STSuHhbEZKVyK1dKL8C1/dEJvJuYQkpk2CAlEGuvpR42pyKEvdBLmmb4icEAjI95EMuZ
         t4CksuYzdpIzjCqIik3lxn/HTfAt4hc15qUJ7wKr/WKihZEWCxWdv8WiBjQ0VaL668f3
         YFrv/GaeFWIhz8cdlPo9MUsi9Mdy/kw3Q3v0yCNsnPRu2mHRsvMXSxLEVlV2ixCpaoLj
         Kkmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792305366; x=1792910166;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=tCpwVytRBHG001ylJlx6CLpltdlyxsoct+VeDjqc/64=;
        b=npxtienlUQHFKZN7wdAOOZvUrTUvSrB+h8skh0SMZtby28BaadO//wh3i8HVRVEbRh
         2GKxpuv7soadD7IR+QmGv2kdgRS/NzAF952kvsd581Xpb8rzm4o2NwfJ2LxjxThTHrpJ
         pa14kAh7YqR5gaetp3OrdhmigJk8YuBWVYr3r7bv4V/99957xQfVsWkiqqZ81za5PUwC
         NbmkxHHjd5UMjblUbn4zJxufb2dA3UfPMvzRZwtbsfM0FHoAkruhdd1l2lJJIMuy7+Oc
         3G4mUsxrm07JwM6itIMzN9x7xhnT5w4jW2VUv535dbEyH3+VfwlUoh8MniUdA5UMzdGB
         VV9A==
X-Forwarded-Encrypted: i=1; AKwUvBwh3ZTWxcQbHjvrdXNH/ytMIf9Ht4UB7KiFk/q2g/l9Dufbn42mhxiX1Jjp4QW4uqxgs3r+8Yz09Fc70QzXLw==@lists.infradead.org
X-Gm-Message-State: AFq9FYJMznZlmR/+CJT103+oiEfgwwUetT6ljiUpXU4lK5rchkYdMC+L
	UvMs+OE9YygAfyLnEqEZj+UrL6L7WfqaHyc0dDZsAR+Qr5Y/kiIYeqF5
X-Gm-Gg: AYBFou2FYQcZmJETH5TCw3xwiou/jiSX0b24HuWfrXesoTk3041XrZoHJzS7C06GStR
	OgUDUCO7b86rKv1p0j0Zgl3utD4lTS8oJBB2gCCyX7jALUEb5Nsxc4aHLOO9IRvdJZ59wcvRuCD
	LJLFrEs7cvGK4iuLyvnvLms8UiU+BP1aRkssiQxgmpeoyR98cCGK7+glNTdZcsFA+ww7HppHGlQ
	Vwl150FLBF8N7DDYrJo95kC0RcuehZ7wLTtGITJWt2fxldSn/lUI9D0ognIRYYNO1S2Ra/YsU2R
	yM5Qm7fJ5j42ogpeO/tux4vYgX1O11qaI9ETMSAjXNXbONibgmE5vqeeWhjH445QyVIzHDw0MLK
	Ph0fS0IbDkEYbJPV25sfMngVL7Y+QBUSKfmvuI/CB/BmWY9uDmwKurr8OJHRLcqkfNnHcCKrO2W
	RtN7NLJiBVWXbnGkzDULr+ycQ7TBDxkRGsB+1ZVlDSpeOpugSsgyytDtLKY9/sCIVeLsqVxnzUj
	EIvpm5rscQLa63s3w==
X-Received: by 2002:a05:6a00:13a0:b0:89e:ad95:e01 with SMTP id d2e1a72fcca58-8a04be6af1emr3279470b3a.46.1792305365889;
        Sat, 17 Oct 2026 23:36:05 -0700 (PDT)
Received: from [127.0.1.1] (2403-580b-35b2-8--43b.ip6.aussiebb.net. [2403:580b:35b2:8::43b])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-89f57653ea9sm2718874b3a.32.2026.10.17.23.36.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2026 23:36:05 -0700 (PDT)
From: Kel Modderman <kelvmod@gmail.com>
Date: Sun, 18 Oct 2026 16:35:30 +1000
Subject: [PATCH 1/2] arm64: dts: rockchip: Move SD card regulator to Orange
 Pi 5/5B
MIME-Version: 1.0
Message-Id: <20261018-opi5pro-amp-v1-1-05c84e91bf6d@gmail.com>
References: <20261018-opi5pro-amp-v1-0-05c84e91bf6d@gmail.com>
In-Reply-To: <20261018-opi5pro-amp-v1-0-05c84e91bf6d@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Dennis Gilmore <dennis@ausil.us>, Alexey Charkov <alchark@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Kel Modderman <kelvmod@gmail.com>
X-Mailer: b4 0.16.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261017_233606_858035_B767AB42 
X-CRM114-Status: GOOD (  11.32  )
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

vcc_3v3_sd_s0 switches SD card power via GPIO4_B5 on the Orange Pi 5 and
5B, but the shared rk3588s-orangepi-5.dtsi is also included by the
Orange Pi 5 Pro. On the Pro, SD power is not switched and GPIO4_B5
enables the headphone amplifier instead, so the inherited regulator
claims that pin.

Move the regulator and the sdmmc vmmc-supply into
rk3588s-orangepi-5-5b.dtsi, which only the 5 and 5B include.

Fixes: f47af8ebbe53 ("arm64: dts: rockchip: Add Orange Pi 5 Pro board support")
Signed-off-by: Kel Modderman <kelvmod@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-5b.dtsi | 14 ++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi    | 11 -----------
 2 files changed, 14 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-5b.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-5b.dtsi
index 6e081bc06c..13351e4130 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-5b.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-5b.dtsi
@@ -67,6 +67,16 @@ vbus_typec: regulator-vbus-typec {
 		regulator-max-microvolt = <5000000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
+
+	vcc_3v3_sd_s0: regulator-vcc-3v3-sd-s0 {
+		compatible = "regulator-fixed";
+		gpios = <&gpio4 RK_PB5 GPIO_ACTIVE_LOW>;
+		regulator-name = "vcc_3v3_sd_s0";
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_3v3_s3>;
+	};
 };
 
 &gmac1 {
@@ -218,6 +228,10 @@ regulator-state-mem {
 };
 
 
+&sdmmc {
+	vmmc-supply = <&vcc_3v3_sd_s0>;
+};
+
 &usb_host0_xhci {
 	dr_mode = "otg";
 	usb-role-switch;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
index fd0efa8d1b..615e914fdc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
@@ -39,16 +39,6 @@ hdmi0_con_in: endpoint {
 		};
 	};
 
-	vcc_3v3_sd_s0: regulator-vcc-3v3-sd-s0 {
-		compatible = "regulator-fixed";
-		gpios = <&gpio4 RK_PB5 GPIO_ACTIVE_LOW>;
-		regulator-name = "vcc_3v3_sd_s0";
-		regulator-boot-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vcc_3v3_s3>;
-	};
-
 	vcc5v0_sys: regulator-vcc5v0-sys {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_sys";
@@ -297,7 +287,6 @@ &sdmmc {
 	no-mmc;
 	no-sdio;
 	sd-uhs-sdr104;
-	vmmc-supply = <&vcc_3v3_sd_s0>;
 	vqmmc-supply = <&vccio_sd_s0>;
 	status = "okay";
 };

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
