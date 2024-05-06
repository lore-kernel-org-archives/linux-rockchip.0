Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D7E8C25B4F
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 19:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DjnXEoI5JLRhbNzTaWG0XOa0gS4NPZpLUZ1OSl2+JQ8=; b=vtZewfJ1FzAS3z
	tl8aKKbSfVLp4XKoK0xPUUtY9b98YYGp/OjvOW83BHWFxil4KJs2bhcVqP3irJvta9/5Q/G5Fou2G
	BZWK6FLg5+T8uP+H93iFKT/lPLpBZQmaTnndWrCnsfDWhd/MWkIh5LDA6mkmO6wv91lgf4mXqNImG
	5fuW00X0MfUpg5+HuBW9NnWmY/RhhDTukwO+p6TQd8Bbhk2/feZNFzGitx3gma6fbf9kthAyiZT9q
	EA1Vl+RmRXNy2OABon9hjPhQyrAh/9SzlniqFqkdtuBwSQ93rpedwAuhilFs83e4xgdD8WtFF4twg
	bas2kA4o7R2+W1yPcxNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s44GJ-00000008YfW-01Z9;
	Mon, 06 May 2024 19:44:35 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s44Fo-00000008YAp-3g2i;
	Mon, 06 May 2024 19:44:08 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a4702457ccbso586119166b.3;
        Mon, 06 May 2024 12:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715024643; x=1715629443; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oPo30HLErisAcogmRAQBmaHjRdsPf6mxSQ2qeztK2Sw=;
        b=GdnkitBhxxD1+QdS7mbG+13l1lF+KHC5QaKTnNDe02jrhY1wOTcLnvVu4VhhgMeeYC
         seG2n9NtumqaKE1Km9n5aGej+fnzh3eVcOzFagOMEl67GL0QFgnkfUVwMguJ8W1E8c9D
         6B1IxcsyMYq1qv3UTWmViKL6u1LLW1xlH47R6fzPH6AZrT3RQHItZvBAYY44nd2YDwZB
         YPTACcrFWjtjYJlmJPQYM698XVzAeaA+69mLMRf3OEqkCFJIOjyHauXraGGaNTWWIJSF
         iOIiqmODP7s+mvDsFua3kgB+SNrFnGqRC5oYLEQkJsNkeDebJf1swaIWtYuSjqjp0Sne
         qHww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715024643; x=1715629443;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oPo30HLErisAcogmRAQBmaHjRdsPf6mxSQ2qeztK2Sw=;
        b=Y/YgNZpxesSanx5824WCsBkJ4WSMOYwHtbyn3Wu9QMWY4NK8p8XhM3V0n5bz2Ij28r
         R2vbW8XpBleqK9bXjcOA0s04iunA+t7VpAktVBVago3DbdcdypNicrXv+SybkhpNyspR
         QSdEMRMTQ1g3VxzPhLsdY4bgIiiU8Tw5PMIACbt+jRmsZ8da+5ib4r4myD60nZgmQxFh
         U9O7vhQjbDgWEh6OgB+/VW4Mh3n33ejOb+gZZ5mgL+2fZBCIjGAw5+HntnN+Mg46SVVA
         ELG+SKOoIyvJXDezbnvrmvj/3CoGiJMyNXRH/oxzlzXKQBrpQmSiQwrtEi9ASkplALuw
         qxaw==
X-Forwarded-Encrypted: i=1; AJvYcCX4ceCrenJHNzBc4HnbTuzTEE3h1FghmtpQF1Eqbya9Wfr/R9ErQK5OCSAbJWhv2IScPBC1ExMs1li04gU8KoiZjA2i56NEmc/qBOwUVpCfmzM4Hp753R88Gzy6DtkDQzSojI3UC+P9golvxIb5NO9p4TlW13GLAyM=
X-Gm-Message-State: AOJu0YyPWfCBz5559Jy7uDZP7Z/DhqwnaLrUZwtCuU6yhPsPly24L1gR
	tgNxCe7aMBd9gWbjqAl7lM7OrX0yVLrkj2GJOdBl3Q7RNeEqNxQ=
X-Google-Smtp-Source: AGHT+IHSrrVeS/vienMxLpjAA24SO1Al2k+NRtJh5keVZVgcxbiYBpQB1pEWoo3HKzaMNkd68QRWQw==
X-Received: by 2002:a17:907:97d2:b0:a59:c9ad:bd26 with SMTP id js18-20020a17090797d200b00a59c9adbd26mr2965779ejc.12.1715024643508;
        Mon, 06 May 2024 12:44:03 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:1c62:e77:6753:5729])
        by smtp.gmail.com with ESMTPSA id f13-20020a1709067f8d00b00a59d146f034sm1367321ejr.132.2024.05.06.12.44.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 May 2024 12:44:03 -0700 (PDT)
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
Subject: [PATCH 7/7] ARM: dts: rockchip: Add DSI for RK3128
Date: Mon,  6 May 2024 21:43:42 +0200
Message-ID: <20240506194343.282119-8-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240506194343.282119-1-knaerzche@gmail.com>
References: <20240506194343.282119-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_124405_282950_8A499298 
X-CRM114-Status: GOOD (  10.40  )
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
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 36 ++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index d16a9d03ba2b..93885338a80b 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -276,6 +276,42 @@ vop_out_hdmi: endpoint@0 {
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
