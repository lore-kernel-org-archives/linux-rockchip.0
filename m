Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56EDDC10F1A
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 May 2024 14:07:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UBye9gqeV/q+xZ/a43qmtX/iSmO/Op3/NhqBmvkhCMg=; b=l7GD7wSOPLNhtl
	UNKPDs9zC4F489GqJl4nO4CaM/aP92ADPspNWAuxcg/TWq1bEAdP79xlKWBfbFQw25FQcX/9zvsnc
	d7nKWftFogVTvYY5xaWZEfSb3ET41GMGHGSURfKrriF9lpQ6QSweHTp3V/DIQbf5B/9Kr9Bv0xjpZ
	O1S+utmJfQBscBKFZuznpNw//sHRmSZZiWagOrmE8A1Kq1OlJOLDkp8nnXUAYszelBn8OQZo3Y/+G
	GdK+MGAELotHOTxdmmQUNDSiuelNZdxrpxv0OtIC04loeq4WI24YaUtJILQXIaDifPoWXlUbWHKQa
	8FRvRAutVYbTyJ2MY0Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s54Qs-00000001fdi-0vlk;
	Thu, 09 May 2024 14:07:38 +0000
Received: from mail-wr1-f50.google.com ([209.85.221.50])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s54QP-00000001f9c-2ygi;
	Thu, 09 May 2024 14:07:12 +0000
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-34dc9065606so486696f8f.1;
        Thu, 09 May 2024 07:07:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715263626; x=1715868426; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nuIg0rxmudwavGYdewcr3VwDoFHinfP7P23xo/y6UpU=;
        b=N1Jgp5s9qX2NVv2u/rl13xzGdjwHbjOXgfayRuRoeG1LHrRRAZEs3CCga3Ukg4gn/j
         qhh1Zh2XwnHhePLdiJfhBW757dDqrKODZhBwQB5xZ38Zp5bFeV2VbUWhdXhors7rLa7x
         1hMsl7GjH6nmguw1q3bQMtPF5P4m/0qk+7LWgd6kkKcFAQNg//Ml+kA34Uk76c0RGedT
         FAGFv2wkiO8cOeYcmzhJfXL5ETYx8eH0X4UkmsdJkxOILzTZTc5lgsOrZDWkDZxVftGS
         JPmmpCPx/2q9bEKBtEaabr0Ge8ca2mK8NotiyOW+5wu5nxl5FJzbuyqhH79vfzIlJt/C
         ldUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715263626; x=1715868426;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nuIg0rxmudwavGYdewcr3VwDoFHinfP7P23xo/y6UpU=;
        b=KztCw5sSPip5ShSAmNO7Yuu09qknzrCHiFUxtIOCIXs2gUAg0YdRLZxORXsjEvBMZj
         JLHaWClHjiRJqr9Lpjs5Ei6tX0LeNmZ3MEOPsrJA/xQ0QO1JN0Evye6M0bjbOugNZwPN
         ZR1yynLh0rMeJ/B7+Jd2Dhgn4NUB2vf0i8Nb+wfmUSqgDHoSwtOH/jAqhrkubjjgVWsH
         Y31ADruYeuIQkZnISoFVRtJtUeYUSZRWO9VDE3o+042+QSX/LWgkm/34XPRyTNl4J2y5
         6oFNeOAJY016H/xjH8at196OrqBTuF3QihD75Av84xpkLHcxP1iuGW3aeXI7Z4ov/I+9
         IDXw==
X-Forwarded-Encrypted: i=1; AJvYcCWAxxnwrKnZWFYO0AqAQ423nvDbhqOQGYZQl5PiMNssxj2OAyMCPdIJnSfMVgNflvtmTiJmjqxx9fezidfOaqkWIuf8w4h88FFkL2dIkkAxRhuAjGP9OT3HBB2FNXQ34dWfad7ChUW57WjuWSMSad2RoDfm6P3beCM=
X-Gm-Message-State: AOJu0YzzAoqgWerBvHgniVGeuzCvAaZ4n+TI514YBNelkmZBPqbdJoKJ
	wS1kkQ6qu0ckXP5YbtSaUzi9Cv3VeKRpGCCF3vPx4rNAjl4E6VE=
X-Google-Smtp-Source: AGHT+IGrYuifyNXu2UQb3DwjWFh9xvmk2vwwMGUSyNdVTWC6BwXLa/x62uQHm8HbCp9cEY6jEZx1eA==
X-Received: by 2002:a5d:5604:0:b0:34a:6fac:6dab with SMTP id ffacd0b85a97d-3501812650emr2546256f8f.12.1715263625950;
        Thu, 09 May 2024 07:07:05 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:b44:d8c3:6fa8:c46f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502baad058sm1793311f8f.66.2024.05.09.07.07.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 07:07:05 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 7/7] ARM: dts: rockchip: Add DSI for RK3128
Date: Thu,  9 May 2024 16:06:53 +0200
Message-ID: <20240509140653.168591-8-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240509140653.168591-1-knaerzche@gmail.com>
References: <20240509140653.168591-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240509_070709_868796_16EE648C 
X-CRM114-Status: GOOD (  10.92  )
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

Add the Designware MIPI DSI controller and it's port nodes.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes since v1:
 - added HCLK_VIO_H2P as ahb clock

changes since v2:
 - dropped ahb clock again

 arch/arm/boot/dts/rockchip/rk3128.dtsi | 36 ++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index fbd95bb08cd3..7f2bf3e51082 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -277,6 +277,42 @@ vop_out_hdmi: endpoint@0 {
 				reg = <0>;
 				remote-endpoint = <&hdmi_in_vop>;
 			};
+
+			vop_out_dsi: endpoint@1 {
+				reg = <1>;
+				remote-endpoint = <&dsi_in_vop>;
+			};
+		};
+	};
+
+	dsi: dsi@10110000 {
+		compatible = "rockchip,rk3128-mipi-dsi", "snps,dw-mipi-dsi";
+		reg = <0x10110000 0x4000>;
+		interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru PCLK_MIPI>;
+		clock-names = "pclk";
+		phys = <&dphy>;
+		phy-names = "dphy";
+		resets = <&cru SRST_VIO_MIPI_DSI>;
+		reset-names = "apb";
+		rockchip,grf = <&grf>;
+		power-domains = <&power RK3128_PD_VIO>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			dsi_in: port@0 {
+				reg = <0>;
+				dsi_in_vop: endpoint {
+					remote-endpoint = <&vop_out_dsi>;
+				};
+			};
+
+			dsi_out: port@1 {
+				reg = <1>;
+			};
 		};
 	};
 
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
