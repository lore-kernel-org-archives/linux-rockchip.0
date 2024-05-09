Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F410C10F1A
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 May 2024 12:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qRzsTBOrM3eUmzojFFCaZOt6taQCKY85caApP1fZaM0=; b=rrK/PN8JoQBROX
	lgfZryAcWaqK2AwOnW5iZLs5OP/GGqc1EjaZcSWq2nvBaRzvXdIyUR+5tcvNKeOHewL3IyIEfhz6i
	1rQcCJV3s28UKmYFgV6y1U/Kio517rD38HLlMtxQZ3v8CVU0VuMRwf+CsULQ9TVgXQeq7D9rxvjfw
	PBT+1VZtZxkv6mJfdN9ac5SKsWV4NHfYCAAuolIXVphO44wKkoeZIT+jgDaahG5+ZajyVdUKD6fZx
	G5lMI9ngQt5oJeK2p+PRdD70cKihiR1yjnEPPG8ZzzyAVKJ5DgURUvt8ftiwuP4v9np2GBs4xjlKZ
	MT96bODprlxLZm4WcFrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s52ZQ-00000001Mp4-2rVV;
	Thu, 09 May 2024 12:08:20 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s52Yd-00000001M5m-3Iq1;
	Thu, 09 May 2024 12:07:33 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2e242b1dfd6so9924051fa.0;
        Thu, 09 May 2024 05:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715256448; x=1715861248; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UJEaWHpHfTjOx8txJp83KCReKfr+CJyqA30JyxkgRQs=;
        b=gCMAyeE7NTeTKTIraGqjfGtTIkN9SYgiihexEO4j1eQsk6rZaea2xXNdFlDMWU5EVb
         fe8C5Jecp3hVZWEBgvp7m0oTZpH2aLK3TAK1/UNTRWACt3qAJJ03VamLVq5GO09Cua9h
         F1dsrZz+NQDpralOtqMx6MzuvY/O8D+oFuq0yKY4MFcirDSjZUaFr4ePZkedynHdY9O2
         27nZSadRNrOaTlo90FiTbbT/AfT5YJXLM7hxoySq8+4/tXZY5SSuKCsq8sI1vyR+oF8a
         kRFH3h86JjdIx+w803R+Ju3ha4t/Xf/3EIQ2qOSmd96VydBCDFgPUMOqiSqbcUzVDr8s
         wzRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715256448; x=1715861248;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UJEaWHpHfTjOx8txJp83KCReKfr+CJyqA30JyxkgRQs=;
        b=rts2t7/RA47StQXgGjipHfwnRfoVNi1lRXEBJg17tmul+29ybdooORyCLWaH/ZrsP5
         8IZZIsFizRFCmxJ6/PCEdRKfISvA+dbi4bPxJf+NwoHEzIKnZ/OM8uy0D/qnI7g+a3Y6
         Lb8lsEoGWQT0pqZ53/4hFUrkTgH2praV30Ktcg3lmwNuK1C7Uw+BDImT3Th3/yT4zC7Z
         D1TOLxxVfjtN9eO2uAGxTA3+TEpDzrgi66Du1xy1pj8qyVbKeo2vDb/Pt8psqs7E/nUz
         qIMI28TVZPko6wiZhn+wZe748on/Udjl7ScfIQZeMw4mr3YWMwD/RjDJTirqTjOHlDGx
         BlEg==
X-Forwarded-Encrypted: i=1; AJvYcCUnUKnNQ426hUdYoFoNXq27JYmgf4ceg/iL8ctbRutUExdbHuknXRjQVONv4v3LuN+RHFit9YazWTWAd2Umn1agKzzqS6B++6gcsDndff7N5JSx6hYsaz5X5rmu9/JA4Pfn0zUiJ6I5WOF8U3zuG8EGv97UqWjjLpA=
X-Gm-Message-State: AOJu0YwTxLx8lgsb61RI4gx1yjdgBvZj/WjX75qKvS0/gNxJ7C99NOs4
	UUdK1ePzxM5vF+DZWt/LyaVU3mmowwrua0IrcSLEUcoX19LpwDo=
X-Google-Smtp-Source: AGHT+IEOGVpnlxc4D9Jfg4bzT5yUTxC5Nb1l7o9iKNsaxhKiAZ+w5GYZsS4D630ujkwBJ9hHrRUsqA==
X-Received: by 2002:a2e:4602:0:b0:2e0:3132:94d4 with SMTP id 38308e7fff4ca-2e446f7c72amr28137541fa.16.1715256447777;
        Thu, 09 May 2024 05:07:27 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:b44:d8c3:6fa8:c46f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41fccce1912sm24112005e9.11.2024.05.09.05.07.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 05:07:27 -0700 (PDT)
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
Subject: [PATCH v2 7/7] ARM: dts: rockchip: Add DSI for RK3128
Date: Thu,  9 May 2024 14:07:15 +0200
Message-ID: <20240509120715.86694-8-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240509120715.86694-1-knaerzche@gmail.com>
References: <20240509120715.86694-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240509_050732_047133_3C009591 
X-CRM114-Status: GOOD (  10.83  )
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

 arch/arm/boot/dts/rockchip/rk3128.dtsi | 36 ++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index fbd95bb08cd3..1ed4436549ee 100644
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
+		clocks = <&cru PCLK_MIPI>, <&cru HCLK_VIO_H2P>;
+		clock-names = "pclk", "ahb";
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
