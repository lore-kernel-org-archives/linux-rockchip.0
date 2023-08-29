Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DF75C6FA8F
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 17:20:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bmgFmr3qFuLrZm1O5WzOdFUongjZ2DVJY0cL07p8cIM=; b=aTGA3t0wT/615i
	UdMYnopS246KZ9pPQVH+VyLcfczY6IS3/BicbzfxzjpEMEVY9+q9p5gZoMmL6iO++89S/MYLYHgxr
	6GaefQ8GKAVE940iQcrzsw4nTDi9/SuGkBFFrHqRTuaNMibbaaThNsdb0hKJIV1xuWrLKHPo8imS3
	hd0f0c2yBpcpR5DOvjig3HRbQvbt0wOa8PDerAkxZCO2WBSGAPH8SGOmPEK3i0yxdpRHuGfnOvNcL
	vR4W52HbWIJFp3z6wlf8b+SRq6Vr9zVbvDiuV+Pelxz2UHefqCN0cphm03orUm2ddq+ENaL1PpreB
	rJk3ofgi1elML7IiKXow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2Ns-00BxrR-0P;
	Tue, 29 Aug 2023 17:20:08 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2Lf-00Bvcm-24;
	Tue, 29 Aug 2023 17:17:54 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-99c93638322so6060166b.1;
        Tue, 29 Aug 2023 10:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693329470; x=1693934270;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PCJom29YNAbeZrXkmUSy8bqZVMtySFQVpTmPU7p9fpw=;
        b=BwZxCj4tycBA0cAASNX2rKlNNQ4F85+7OzyOYRgBDcR/r1Rxn3+MRs1cYfJAT1Zw8s
         qzWAc5yCqfuc0FTy+vR8EoxzaVsKwcdFu1OVG8l0nfbEo5kI8FY9U/Yuay5+reM0eeID
         AW9tlmAaDtkLRRcZ+ES8GvOMi5e9uryVYwybOK20XtSY1pFWthL4sX9RAosS4UFFtvRi
         vcSn6VZlfeLJC137N6nXbPmyzbnaRfN2F4CT5bn9HnubxuG3JSvNVW5zEK4VZhV+QNrD
         urnjeTvh5oCBWV8gIrgJ8Ad4xqk5gFbUI+NxC92NqJda/xBtAHf5rIg4y55fDg/WwoTo
         Pb1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329470; x=1693934270;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PCJom29YNAbeZrXkmUSy8bqZVMtySFQVpTmPU7p9fpw=;
        b=AQ53rtAOdmnQ3qKBF+ZeR+mQ2BsBE8oQrdEt0AdDUc+YHjarp8YI5ITv1XyIG/6Fxt
         VnOZZOOS9T0x2P/nVZZKH5wQU3qT7DpEyMjB6Qp8gHqom3ivpDIjjibauorhtkfK7sX7
         lJ6WXbGmw8qr0QptI3a5PWSDy5QS/haFNfvkr7MsCixyaXamD0sBEldEf+nfmoEgJv5y
         pkFpg9sIZkt5+E3uDjFpsQRZlhQG5G+wde3CfNv9jtYDRUz65VzhIX/bc31pnKdvUX0+
         CaFlbhSbXkNBsh94UY8V7zIw8KyA67tk4tG6izwiwVT+Y0NnzJvVua+hTLIsHwvKC7oC
         Ndfg==
X-Gm-Message-State: AOJu0Yw8PWRZsh7yv6IL69rmr2mYj7Yrg+am1dqPHkI+1e4Fjz2KROPp
	P6xWpJ4JQUGVYth6QOgEAQ==
X-Google-Smtp-Source: AGHT+IE5VAqTYu0TpR/gEgBTX4rVF0ZLvuyk9o8kotWD9Y3byxkS/tgqtwzcFS28p1DgLC1+EPXD9Q==
X-Received: by 2002:a17:906:11e:b0:9a5:a543:2744 with SMTP id 30-20020a170906011e00b009a5a5432744mr4088667eje.33.1693329469971;
        Tue, 29 Aug 2023 10:17:49 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id a21-20020a1709062b1500b00993cc1242d4sm6115834ejg.151.2023.08.29.10.17.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 10:17:49 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Lee Jones <lee@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	alsa-devel@alsa-project.org,
	linux-clk@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 26/31] ARM: dts: rockchip: Add gmac for RK3128
Date: Tue, 29 Aug 2023 19:16:42 +0200
Message-ID: <20230829171647.187787-27-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829171647.187787-1-knaerzche@gmail.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_101751_720458_09634704 
X-CRM114-Status: GOOD (  11.26  )
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

Add the gmac node for RK3128 SoC.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index 874c97297c63..54a2768153c0 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -63,6 +63,32 @@ uart0: serial@20060000 {
 		reg-shift = <2>;
 		status = "disabled";
 	};
+
+	gmac: ethernet@2008c000 {
+		compatible = "rockchip,rk3128-gmac";
+		reg = <0x2008c000 0x4000>;
+		interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "macirq", "eth_wake_irq";
+		clocks = <&cru SCLK_MAC>,
+			 <&cru SCLK_MAC_RX>, <&cru SCLK_MAC_TX>,
+			 <&cru SCLK_MAC_REF>, <&cru SCLK_MAC_REFOUT>,
+			 <&cru ACLK_GMAC>, <&cru PCLK_GMAC>;
+		clock-names = "stmmaceth",
+			      "mac_clk_rx", "mac_clk_tx",
+			      "clk_mac_ref", "clk_mac_refout",
+			      "aclk_mac", "pclk_mac";
+		resets = <&cru SRST_GMAC>;
+		reset-names = "stmmaceth";
+		rockchip,grf = <&grf>;
+		status = "disabled";
+
+		mdio: mdio {
+			compatible = "snps,dwmac-mdio";
+			#address-cells = <0x1>;
+			#size-cells = <0x0>;
+		};
+	};
 };
 
 &cru {
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
