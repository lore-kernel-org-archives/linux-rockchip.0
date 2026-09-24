Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B207C98315
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 07:15:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rzhO/VSplHukK6LdfqSuP+cWqdrERS32cCEA+PVAI2k=; b=f/T0f3Q6FBZTRa
	QDwO3JsXisuOjH5149qIeTkVIViJiQEu3A4BkYW+IO8Fbz5nJrswxo4P/fhixlU+/C92jakrwglST
	QUnzFlUkWQyCBQs5W3C8a1xEj5aFJhBemiNkPVB25dS2FvOMHyANYC3dHgLXpOzOPpqrawn4BDJLx
	3657UJ1v/whqLPNXJfGZ+0ycppCqFHCMnxYX+nQOcUh0P4XLmfDf9KEG/Rz9jLu1KFYce0wimnycx
	Uu7p9opSF9P3D/AEV7YNEqfSzC67ks1XEoWAMEUKO6LkuwiFoFWQyQaGQhnzGP24xc9ZxQxiE9XIX
	r5ERQxP+CN2c/UE2li6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9dfc-0000000AFVy-3shH;
	Thu, 24 Sep 2026 07:15:04 +0000
Received: from mail-ed2-x10.google.com ([2a00:1450:4864:33::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9dfT-0000000AFQP-1QOV
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Sep 2026 07:14:56 +0000
Received: by mail-ed2-x10.google.com with SMTP id 4fb4d7f45d1cf-6a6063d7dc4so2220743a12.3
        for <linux-rockchip@lists.infradead.org>; Thu, 24 Sep 2026 00:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wermuth-pl.20251104.gappssmtp.com; s=20251104; t=1790234094; x=1790838894; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7STxnZVUQmrLVyWonCr/WVFvn6ySKjnlDMhE0HDJ/pg=;
        b=o+kDUEn9mJmcrIn/8EkGX+MRFg8pfW3VWFBw6mNbxHEvpNtpIsqiuoFpaSP0lRpTi/
         j9el0Zl0UGNBmWkyai6Hc8YA9TSwzzRrxVvkhADJqHCzVfjvAoirDrUvhIogWSCK6+n2
         hlCJKNg/mNCgxoHs3wkcxea18KWwQhhj0GKdk/razNayKBE/FIAmsLWC1Vd2R5upQmPe
         NvMwlsyxR1vCJ6ynAkoswl/lNxxJ+gJUt007UFR/g2OGnEITbG4uBM5uyBKV+HLzqpcL
         be3ncPd9GxkB/90NZqJX72u8FgDtN3QKBapqoF8N/UQpbcXR07r1kddYU5gDsY3E/oRh
         WGLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790234094; x=1790838894;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=7STxnZVUQmrLVyWonCr/WVFvn6ySKjnlDMhE0HDJ/pg=;
        b=Zs69OrOqoPAWC7Wt6A8+xLmhOfJ6RALVVi9E1nh7PB8DnSrMGWd9viDStf28Ifnvmf
         LLqKN/yqrG/NJQBcYiemDT5e3NY/0hz+mp0mQ6mhxwmXUfBEO6x9k3JveCaXKUJ3Qd05
         UYTxBv3mP704IqReh/jHO2OE7VVcZjIws4eoPt3B2WekLRcAconSeY9Shrt9DQVlH1o6
         mBZRI7DImLyCpDJs8QB8EbN6RTlccS20b7IR2XWM4/KnlQbSgAzOUZ1DCqn6m+HxaAAC
         Jl1niolYcemkjGNTAlcElKLjWXf/4qCTsJN/yY3YvmRU2VZDUWGDMt83dPlXTovNbTti
         AYKA==
X-Forwarded-Encrypted: i=1; AKwUvBzixaPYiVbSHPxeOQQahMGbqxYCVF1vYzJ39SkvJD27kMQSf3LwFVqui+2qwIREWFk5rUj+oRUOpJklhtZZEQ==@lists.infradead.org
X-Gm-Message-State: AFuF++kmsQS1Id4By/PE/jrEJkNE2Rq/fcUAlmGZHDS2ZPPYqM2BuO4U
	9qDeXE3+jQY+M4rCXS9KJSWX6ZFDxK26IuBwHx/g56XFChppdRuYZIDrOnlfpQrtcQ8=
X-Gm-Gg: AYBFou0q4IDnvSceOPePcMO0kSGmvP6HCjZNSNnEbMC+HydDHKl1OokhqCfK241okhF
	AU5qEkMWj3zhq4DWSDfyZFmlE3WsrCV/vEsfIHvcXm3k0DideWWeH1wwcYqEx5dZB030DCHATKB
	1tHznJDqLKYqO4Iq0Y7YFV62Vbn/nK7Yxj1baE+a31qOgMy9KKvg/v5eEjt7wGKnr1e9ZoGHx8p
	Grn/pjHFe9EJOfkcvkt1sOBF3KhMNyNlKilZQiNOcHEH8nlK7uaRetQNUMm8jXEmDqhk+OYjdPO
	q8AVtjdOa7x2QxogCcyR0FgbWhmtN3aYQhZhFOw81x93Bkj9qIDCsXfnPMoNiVmK+nXzivG+HyG
	8ynVnOhF04EskVJN2a8T8GVzUOO+f0vUFosnt7yqTN8iWRSpi6gUZiWRLhYbJ+y9/adMzSx/d3m
	JgFb+zct8WQFICEWoxvG9vkmGwVIPtnJeus87/4RNkiWWpOSzYfBMsA3HGi6dfr8Lo/W+tlJixQ
	W136VNbRlf4LQa39s0/on5FNbHxmflR+2RABlzj9VhpGblVJBWKp8nnMw==
X-Received: by 2002:a05:6402:44d0:b0:6aa:a040:cbd3 with SMTP id 4fb4d7f45d1cf-6aac8ed4399mr891513a12.3.1790234093718;
        Thu, 24 Sep 2026 00:14:53 -0700 (PDT)
Received: from janlin-02.home.wermuth.pl (109-206-198-27.host.skynet.net.pl. [109.206.198.27])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6aab38a9756sm3306589a12.25.2026.09.24.00.14.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Sep 2026 00:14:52 -0700 (PDT)
From: Adam Wermuth <adam@wermuth.pl>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Adam Wermuth <adam@wermuth.pl>
Subject: [PATCH 2/3] arm64: dts: rockchip: Enable M.2 B-key WWAN slot on Radxa ROCK 3B
Date: Thu, 24 Sep 2026 09:14:44 +0200
Message-ID: <20260924071445.441822-3-adam@wermuth.pl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260924071445.441822-1-adam@wermuth.pl>
References: <20260924071445.441822-1-adam@wermuth.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_001455_426557_59A19EB2 
X-CRM114-Status: GOOD (  10.74  )
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

The M.2 B-key slot on the ROCK 3B is controlled by three GPIOs:

 - GPIO0_C6 (4G_PWREN_H) enables the 3.3V supply of the slot, which
   is generated from vcc5v0_sys by a dedicated buck converter,
 - GPIO0_D6 (4G_RESET) drives the RESET# signal of the slot,
 - GPIO1_B0 (4G_DISABLE) drives W_DISABLE1#.

Unless the supply is enabled and both active-low signals are
deasserted, the module never enumerates on USB. Describe the supply
as an always-on fixed regulator and hog RESET# and W_DISABLE1# in
their inactive state.

Tested with a SIMCom SIM7600G-H module.

Signed-off-by: Adam Wermuth <adam@wermuth.pl>
---
 .../boot/dts/rockchip/rk3568-rock-3b.dts      | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
index ad9a91c0d0d0..908bb4425e81 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
@@ -98,6 +98,20 @@ vcc3v3_sys2: regulator-3v3-vcc-sys2 {
 		vin-supply = <&vcc5v0_sys>;
 	};
 
+	vcc3v3_wwan: regulator-3v3-vcc-wwan {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio0 RK_PC6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&wwan_pwren_h>;
+		regulator-name = "vcc3v3_wwan";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
 	vcc5v0_sys: regulator-5v0-vcc-sys {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_sys";
@@ -220,6 +234,24 @@ &gmac1m1_rgmii_bus
 	status = "okay";
 };
 
+&gpio0 {
+	wwan-reset-hog {
+		gpio-hog;
+		gpios = <RK_PD6 GPIO_ACTIVE_LOW>;
+		output-low;
+		line-name = "wwan-reset";
+	};
+};
+
+&gpio1 {
+	wwan-disable-hog {
+		gpio-hog;
+		gpios = <RK_PB0 GPIO_ACTIVE_LOW>;
+		output-low;
+		line-name = "wwan-w-disable";
+	};
+};
+
 &gpu {
 	mali-supply = <&vdd_gpu>;
 	status = "okay";
@@ -655,6 +687,12 @@ wifi_wake_host_h: wifi-wake-host-h {
 			rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	wwan {
+		wwan_pwren_h: wwan-pwren-h {
+			rockchip,pins = <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 &pmu_io_domains {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
