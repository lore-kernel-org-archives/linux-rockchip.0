Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01C06C10F04
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Dec 2023 12:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8qiH30mw6pTNYY3quAyxnLRphPdiVseiKLNtt+DTOPo=; b=1iLnpihNuF7+rf
	TADLD6Z4niglnhwE0umzfha4FVZ7zjJz0+/nKbJY0nCSq9mtEEB8Pp+RQgQqioc0o/6rVfKgMdCMo
	9Lheb717xKNHV/m+qYgiR1U0nBbPQ1slikFwFSRJmxqJjiCQudxJy8pSZJutryP6RbMkpO3QzJDZT
	W6/G7F2Vu2vywrDvUAVfE59Ub/xL25Rwii8LwPv9+myLYjCts4QaAGYvxs/GagPTzewVenR+XM9vM
	2z+A4q/Py/DQxF7KLlEkqoNEg3QKwgDqF31RwdjSM0jWR+XeNmthcgpxLjwFfapnBOf9o/Xf0rNz4
	WJhJy/Pnr2mT8Gm3eliw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9PTc-00Fhwd-0A;
	Sat, 02 Dec 2023 12:52:08 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9PTY-00Fhtx-2A;
	Sat, 02 Dec 2023 12:52:05 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a1a22b7f519so198770866b.2;
        Sat, 02 Dec 2023 04:52:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701521523; x=1702126323; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HR4GQ7+5atR3ar2YrCztGhjSeU/LO6OVqwoc3hEbrC0=;
        b=jxTEXH8+WdPIGY/ByRcqm0dT0iQDLDpb90+icweXKWRaOiA0CJXSPtF3w9sT0SsgBn
         Y0gZ2i/qqYJYObJG/qKIG2Sd1eEnL2SASvbE6pS47SusqtZzHjdywYzzh/AFrpuGjree
         4N+aAKGowUnrpKCWqwZZOQ89M2cmnmevBPyvAe8Xrc66juI2uNgI5lsTsQUv58Al5YpK
         peFCwf59UM9PNAiYpnmaninP3XhPVo36c7CbT7lceNcQ6NDtLjFz8fERwb3RtjmhYIY8
         Q2TqKyEWBcY+qAJy2k7XJUMFIeP1S9XOhonZmR0HUNElb+83Fo3sLIHd5CLDsVUI9I1F
         ITBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701521523; x=1702126323;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HR4GQ7+5atR3ar2YrCztGhjSeU/LO6OVqwoc3hEbrC0=;
        b=Be9qXKmW1eqSniWUoXtpFjFX2GFgv9FjoX6rj+V6g+lDWKCA6zS07Cv+/yu0xntZAS
         qFEN5vgsGyJVop2nwvm+v8oooeZhIbK1hNL9pqsZAgTC2MsTuqkCp5MOS9wmPYwBUbnN
         EDGeMFoXCky5yqLjof8uYRT0jJQFmcEMLowSF+WP6hjQ10Ng4QXD5AmEf0xlIsJwiHOI
         eVPVj3v2lJ7UMhls7eWIaO/7bOVellaekMZIfeh8xNwRQdC9v/gv16yDO4OKanpnCp/l
         J0dJRNV48jzVzIZx1VLvAGF/Cz50uIT+KHQed0shKjLKdiHExRMFECXtaEDQhQDrmiaJ
         b8bw==
X-Gm-Message-State: AOJu0Ywj2JCmGDXQQMq348iSlQbZLQ0pYkLuKYboN7XldtlWvat6vkcV
	5hpXxRDKOIfDlyZi8viYig==
X-Google-Smtp-Source: AGHT+IFsV7yIlBBzkDPIYNDCqw3wEkc8AQ/SUwRG3frSQ5X+KzW+68Zbs/ntALcZcfg6t9TIXCXl8g==
X-Received: by 2002:a17:906:35ca:b0:a19:a1ba:bacb with SMTP id p10-20020a17090635ca00b00a19a1babacbmr891820ejb.113.1701521523169;
        Sat, 02 Dec 2023 04:52:03 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:908e:b829:354b:f8ee])
        by smtp.gmail.com with ESMTPSA id g5-20020a170906198500b009c5c5c2c5a4sm3018161ejd.219.2023.12.02.04.52.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Dec 2023 04:52:02 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maxime Ripard <mripard@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 4/5] ARM: dts: rockchip: Add GPU node for RK3128
Date: Sat,  2 Dec 2023 13:51:43 +0100
Message-ID: <20231202125144.66052-5-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231202125144.66052-1-knaerzche@gmail.com>
References: <20231202125144.66052-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231202_045204_709331_61E4636A 
X-CRM114-Status: GOOD (  11.78  )
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

RK3128 SoCs have Mali400 MP2 GPU.
Add the respective device tree node and the correspondending opp-table.

The frequencies and voltages of the opp-table have been taken from
downstream kernel.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 44 ++++++++++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index b72905db04f7..b05ee3d926aa 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -101,6 +101,27 @@ opp-1200000000 {
 		};
 	};
 
+	gpu_opp_table: opp-table-1 {
+		compatible = "operating-points-v2";
+
+		opp-200000000 {
+			opp-hz = /bits/ 64 <200000000>;
+			opp-microvolt = <975000 975000 1250000>;
+		};
+		opp-300000000 {
+			opp-hz = /bits/ 64 <300000000>;
+			opp-microvolt = <1050000 1050000 1250000>;
+		};
+		opp-400000000 {
+			opp-hz = /bits/ 64 <400000000>;
+			opp-microvolt = <1150000 1150000 1250000>;
+		};
+		opp-480000000 {
+			opp-hz = /bits/ 64 <480000000>;
+			opp-microvolt = <1250000 1250000 1250000>;
+		};
+	};
+
 	timer {
 		compatible = "arm,armv7-timer";
 		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
@@ -131,6 +152,29 @@ smp-sram@0 {
 		};
 	};
 
+	gpu: gpu@10090000 {
+		compatible = "rockchip,rk3128-mali", "arm,mali-400";
+		reg = <0x10090000 0x10000>;
+		interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "gp",
+				  "gpmmu",
+				  "pp0",
+				  "ppmmu0",
+				  "pp1",
+				  "ppmmu1";
+		clocks = <&cru ACLK_GPU>, <&cru ACLK_GPU>;
+		clock-names = "bus", "core";
+		power-domains = <&power RK3128_PD_GPU>;
+		resets = <&cru SRST_GPU>;
+		operating-points-v2 = <&gpu_opp_table>;
+		status = "disabled";
+	};
+
 	pmu: syscon@100a0000 {
 		compatible = "rockchip,rk3128-pmu", "syscon", "simple-mfd";
 		reg = <0x100a0000 0x1000>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
