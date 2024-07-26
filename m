Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72CBFC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jul 2024 17:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ttQis0H3EzVI7jBo7e00y69n1QHxj0UhodVH6uu530U=; b=qskf4iXroKNmj3
	4LlDXaZZrfk8K4Oz9SuzhvLV6xFHNw3734AUPKGpaNFjDmmZyHLmS2a3+0kiTdgI/IuFh3ULl4j0f
	RgHPjxprXXwk7QVXyM/yS4zpduXtK/Iq08G19ToY6bHkS6g81hoK5EQkBwxS+c6Oqy/lvyrYFNUnO
	dcOQXVIOuUG/GCaGiuK9FySfXHo13tNb92xa8Wm7fL9eCcwZzcbzm7WlNYEzxiAuhfMC1KJ62sjn3
	AGo61oFCEAjMuBDYC9efXIosFFDDTFK3U+ljLbTh0JRhZzci8RFdWQ3bjOyCdUD5P3nwxsGnEgE6h
	lEX3koFeevYZXnt9erog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXOYF-00000004Vip-35ZW;
	Fri, 26 Jul 2024 17:16:19 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXOXB-00000004VJa-3V9x;
	Fri, 26 Jul 2024 17:15:15 +0000
Received: by mail-pj1-x1032.google.com with SMTP id 98e67ed59e1d1-2cb55ff1007so868441a91.0;
        Fri, 26 Jul 2024 10:15:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722014113; x=1722618913; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wWES2bQT90aeNpHB9lBbGnFEyMSuVA3NqfH6hD88dJc=;
        b=Cut9mnL7inZ0Lm/kfQQVXRMkVe7tbHcKX/MrCTHdxfTtdTU6Ki7msif/Rw+6mTMjTy
         0NqaMSDAttaUQC1i7PCGwB9qWz1HLuCLrbBHjACmAV1XtwxvdvUhudjPvbRAzaD79O32
         +i7m5x0eCriJQaACezAiF5VqdLePpcsypVkqfdN+YvG4B6hqDqWloYmoYq8vpFMklrvY
         vq2U+gEqloRWlni7+YXFDSPk2DLXsY1cqWvFMn+RlPObK2EBMOTOspD+pnbLBLdmuDDv
         VV5tKWZWk/ZtPOmCKXGC41NMR2oc3SChrijIhhk67BhYlK3bpzhA9P228MNiRibLAn8h
         zuUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722014113; x=1722618913;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wWES2bQT90aeNpHB9lBbGnFEyMSuVA3NqfH6hD88dJc=;
        b=hKh5slQpDZefY/c8yggFzdLyoi8Q5WyTebOlBVrlKRf/RTW85jCWT36FTWvO8frIa9
         9NDsaeEXfbai9k/eJfreHIA89DvFdAnQOysuMdvzdQ7vEelhmBHXLPU+6loNvaYXvVPt
         cgu+be8LMDysfrJrh6GDNOXssCVXOZAVCXhbhvNHBj0WCa94dwV9fHXdX1x8VAZZ7xAS
         v3QTvY4B5ejNvELDR1N6+uhwI4CS1QbbqwsNhvBIw2gKhyMnPSRc4CO9VJNbtMM5lGF3
         IGYIGFENeuhI49PBMGQYhsE3KPBoRgTBBZNh0YD+UNdgcOCC/REwZoBFe3Gzq/HHD6WH
         13RQ==
X-Forwarded-Encrypted: i=1; AJvYcCVyzvi0kJGEDeeg7MjuiPlmY0SKtbQ00ErhfDZ/VOb1vSfE4MvICvyDu8Pm1d8yqrmUgmg+jwDX/2E0dNdX9LG+ZlU+kpih1rB04eB01VRcW9QM3N5/AWohB+1Sb2tQomrHwXPGWfpCS/ufupTcY4jXZtKLng/iwRY=
X-Gm-Message-State: AOJu0YyePt6yhiF5XsiQU8g3vvPP2PPw+W9F09kBkfX0Jd17KRHBIN9U
	g8Mq+wcBWzAacve6CYKFAaWGD6M6Z5LJ2BA7jV3Kgj21cXclinmZ
X-Google-Smtp-Source: AGHT+IGJg1vkK8mEH1oYikk12jQXh5IJ2w10jCagEsadDUeCGJRIDXEshIIM4ECEILPSh+aPCPnL3w==
X-Received: by 2002:a17:90b:4c04:b0:2c4:aae7:e27 with SMTP id 98e67ed59e1d1-2cf7e1ff170mr172266a91.23.1722014113033;
        Fri, 26 Jul 2024 10:15:13 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cdb73ededcsm5718855a91.31.2024.07.26.10.15.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jul 2024 10:15:12 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 3/3] arm64: dts: rockchip: Add missing pinctrl for PCIe20x1 node
Date: Fri, 26 Jul 2024 16:30:46 +0530
Message-ID: <20240726110050.3664-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240726110050.3664-1-linux.amoon@gmail.com>
References: <20240726110050.3664-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240726_101513_894073_F81B4354 
X-CRM114-Status: GOOD (  16.23  )
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

Add missing pinctrl settings for PCIe 2.0 x1 clock request and wake
signals. Each component of PCIe communication have the following control
signals: PERST, WAKE, CLKREQ, and REFCLK. These signals work to generate
high-speed signals and communicate with other PCIe devices.
Used by root complex to endpoint depending on the power state.

PERST is referred to as a fundamental reset. PERST should be held low
until all the power rails in the system and the reference clock are stable.
A transition from low to high in this signal usually indicates the
beginning of link initialization.

WAKE signal is an active-low signal that is used to return the PCIe
interface to an active state when in a low-power state.

CLKREQ signal is also an active-low signal and is used to request the
reference clock.

Rename node from 'pcie2' to 'pcie20x1' to align with schematic
nomenclature.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v4: rebase on master, used RK_FUNC_GPIO GPIO function instead of PIN
number.
V3: New patch.
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index eeae14842b71..813a28b8916e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -326,7 +326,7 @@ &pcie2x1l0 {
 
 &pcie2x1l2 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie2_2_rst>;
+	pinctrl-0 = <&pcie20x12_pins>;
 	reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_pcie2x1l2>;
 	status = "okay";
@@ -363,9 +363,15 @@ hp_detect: hp-detect {
 		};
 	};
 
-	pcie2 {
-		pcie2_2_rst: pcie2-2-rst {
-			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+	pcie20x1 {
+		pcie20x12_pins: pcie20x12-pins {
+			rockchip,pins =
+				/* PCIE20_1_2_CLKREQn_M1_L */
+				<3 RK_PC7 RK_FUNC_GPIO &pcfg_pull_up>,
+				/* PCIE_PERST_L */
+				<3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_up>,
+				/* PCIE20_1_2_WAKEn_M1_L */
+				<3 RK_PD0 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
 
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
