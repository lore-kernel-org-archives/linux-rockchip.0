Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 369E5C83F12
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 17:19:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ui8EenHHeRyPHF5QMCbZxAoC0rJNkf2IeVhDZCcv/tw=; b=4MGQe3FMif+Mcn
	03N5ECOp3vIV95v5BFDkj8V2F6fJXIZQnq/EpzO39+tW9q4MmAGi9zWSI4y1peB6e3W/DfAMwW//W
	oDasyciNJEnreTu3kzAL0txegL2mli/jUhDSJPCyxpFQhychUVvRvQ6r5wDMtooU6HBga3DkhaNNE
	P1mRT9TeUzY6/Ptd4QxkQKrIuKZhklhnRAWzz43z5uc3zTvmRfsSZ2lqGRh4Xg+/nGDbNe8nUgfZ3
	2X/MrpWbYYNgLzqAdoPC3e+3cZWC4NV9/NvwTzZL3YLwX4MEBbO3R8kz0C/O0Up48GK34IjxYIgRJ
	d7XfTFBLIOVfb7sOEk4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2My-00Bx2Z-1s;
	Tue, 29 Aug 2023 17:19:12 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2Ld-00BvZF-1p;
	Tue, 29 Aug 2023 17:17:51 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-99bf3f59905so604785366b.3;
        Tue, 29 Aug 2023 10:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693329467; x=1693934267;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uBecglGDcBm3dfaewAdojWnpNSqkK3k2Gii0sDddaoQ=;
        b=XP1yHF+4eAQ1aY3Irua4+dW2toI3nREqhZP00I5y08G3PeXlSneut2EIbz1iiUyWwX
         oqwl0IrVqJlXw8D0vWuGDTyrdoLSF6KHTXDXSs31wyV9VuGK6z67UVY/eFMScIvbDQhk
         AWxkHAD+loWSGgfx1VWlfktCTr45eNKchRHG+KW3rJqfn2ABiuXlixsNlfqJH4K8907B
         2EKNWSQDvdUzlI8QOIrwc6gk5do/f2EOzTJFotT0gsVS0O39epzp1vuRXvDvXKa1YeTT
         AMG/Z1T/jQeGfabrDe574rkIXRPRYAaILQZRsmYVFod1hp4cHLYzNWJinQ2hS/f29LhS
         XOyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329467; x=1693934267;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uBecglGDcBm3dfaewAdojWnpNSqkK3k2Gii0sDddaoQ=;
        b=b5ZZcxSPixTmQcgx+PX8KVflPfZk5vufSnWRPsz1EpzX9WL43ETPnzSoWuU4I0p0A9
         5pSPYF7Y9960FGSNtWQY0AEolyx9PT+QdopnBLCXjhE/HdpZ0CcuLp+sZNIe5MLgxuMo
         NJoQT+L8Kj9s6Inq2oFzKJtYwOJeomvBz/S6SxadmrsZzTG5yl1sHwTciDsw+1VBakyO
         WUvFWa/VVicWb0AK/RXcR6SDaAIsrY/EDYtV2nI4sykXy+/kJgGwqM60MLc+GVPOdZZX
         FPQcTfAmXPvQeet19JLjld45BpRJuKEgxAU13ntJFiS626aJ/Uz6Po+5cBic1hKDOVSO
         fE2w==
X-Gm-Message-State: AOJu0Yze1b6b3/RvMmlSOqM2lkpJE384cy5S1IUmAr/w0z2btDdtVaxF
	dnOEABC7sCnLAk4nnrEw4g==
X-Google-Smtp-Source: AGHT+IGQSIHfyxWScSSaGtZgRmVAcjAeSYpIMFw2Pk7BPF5NMwiuJMreccIL2u+G9vwApRBvVAVtXw==
X-Received: by 2002:a17:906:31d8:b0:9a5:da6c:6518 with SMTP id f24-20020a17090631d800b009a5da6c6518mr497191ejf.37.1693329467128;
        Tue, 29 Aug 2023 10:17:47 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id a21-20020a1709062b1500b00993cc1242d4sm6115834ejg.151.2023.08.29.10.17.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 10:17:46 -0700 (PDT)
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
Subject: [PATCH 23/31] ARM: dts: rockchip: Add 2-channel I2S for RK312x
Date: Tue, 29 Aug 2023 19:16:39 +0200
Message-ID: <20230829171647.187787-24-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829171647.187787-1-knaerzche@gmail.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_101749_629714_A8284F54 
X-CRM114-Status: GOOD (  11.67  )
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

Both RK3126 and RK3128 have a 2-channel I2S IP block.
Add the respective node for it.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk312x.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk312x.dtsi b/arch/arm/boot/dts/rockchip/rk312x.dtsi
index 024d801a9792..ce3f03c3532e 100644
--- a/arch/arm/boot/dts/rockchip/rk312x.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk312x.dtsi
@@ -351,6 +351,22 @@ emmc: mmc@1021c000 {
 		status = "disabled";
 	};
 
+	i2s_2ch: i2s@10220000 {
+		compatible = "rockchip,rk3128-i2s", "rockchip,rk3066-i2s";
+		reg = <0x10220000 0x1000>;
+		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_I2S1>, <&cru HCLK_I2S_2CH>;
+		clock-names = "i2s_clk", "i2s_hclk";
+		dmas = <&pdma 0>, <&pdma 1>;
+		dma-names = "tx", "rx";
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2s_bus>;
+		rockchip,playback-channels = <2>;
+		rockchip,capture-channels = <2>;
+		#sound-dai-cells = <0>;
+		status = "disabled";
+	};
+
 	nfc: nand-controller@10500000 {
 		compatible = "rockchip,rk3128-nfc", "rockchip,rk2928-nfc";
 		reg = <0x10500000 0x4000>;
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
