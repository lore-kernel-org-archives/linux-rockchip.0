Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0960C10F16
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 15:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r0Z58/v3PYt3Z7WrY6kSwU3WOevbAJRX0f/cOP80qdA=; b=oH4uH2xvgAVjgT
	oPjxoPw6f/D/SVswC8y39hnfO8dfwdOcT2j+HKIIcov5i4otLTUGC50hjgklOIbCduznsRu0t91V9
	KrSSpwv0RjC5fFjWl8hxNOiXlPtXTJt9Iq/9wLkS22+QfSc7/NDQZQ0zxcekgaUuBX6jExfOiY92x
	9/jRX4SPFSi6ks+MVM8dvnsgpb5US1OU8q9jnIKUhXHBXrw5rgpSnl24CxEUDZfQL+seQwVJmGam4
	xSoJP0H3G/lMyrRtvtyZ1jtxbv0gjHliFSroD/1Pkl12HEOi6kvNw6WTI2iTx3CX61AGT3OfQl6Xl
	aTiIf13cs5bZVL2MnvQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s40cd-00000007vX4-1sBk;
	Mon, 06 May 2024 15:51:23 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s40cY-00000007vUE-2GNi;
	Mon, 06 May 2024 15:51:20 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-a59b58fe083so264241766b.0;
        Mon, 06 May 2024 08:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715010674; x=1715615474; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r6WL+utsI5ALbgqCnqncesAytLi3m+WaTzt+MUlSYpc=;
        b=nYSocjnwUIkFU8HZy0v+u11X+ftDipHn1rQzk1tUftJ6p9YqNmyJ7p4qZHY+XHBN6d
         GtNFF1gFaamoM2ojq+ncFY86hyOU4ubJNHJNpVGVeA9Pmh2YUypsSPG18svAPe0a5ZEI
         ebg0KLa3C+s4Dw4VvPhGCmwft/rWK8vF/jCr4VBQKEmAjgMwr1kvDe2/9Bt6fWBzFERS
         YJEhAK9GOpuEjgmKagicIISRjjVg4hjuISBFnA445NCc4O3+hRINgiSPNFbo/RNCspbV
         +IPRGZ27GKJxc/M+BEeI8YlyaycD9Gant//YJ7ERsntlV3jYW3s5U7oECPKRUVXEdGDJ
         UPig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715010674; x=1715615474;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r6WL+utsI5ALbgqCnqncesAytLi3m+WaTzt+MUlSYpc=;
        b=L/F/rGzyXZEiLgc1PAETnSSXyoBbAEsNSdlFC0IfefnwtqcCYaMtRaRJ0KPchbx1ZS
         EzyiYKOSt1UnKniZrc4B8aUxn6Pxu6edUdSzKW5NIPF9M1D1V7c7/tGryRB8wUVMW+Yx
         6kbVCpYF9j8SG40CzOL9TCCQqBuPEnQP7hngvE+YXkmxPORpyMnkHJzZTtwjqg9uaul0
         5rFsYXv5JapxP3XQ/VQrvXuCqdwh4OkgJ89DrMKzk/olgmJA8u9AcDW4KioZjEle7g88
         s7xaUvmiDnXQrxvs+tujooA1iMrVDDpNQ0QH4gxmJu8CwRUBvbJH1eouWZ9m2r21RCQb
         yqpw==
X-Forwarded-Encrypted: i=1; AJvYcCXW9FK2uqITdsgsvLDQSA4gLwa7XsKLeXXbV+PTR0hT39zKpt8IsK3aXDe7tAtRanM9CASMkMjM1CZ1T0gnsKpwLRcToAOEVvrGzURguZ3rL0pgf3EbMcg3AD17L4rH3lyOS3ElY8Jocb2vu0ue2vq4TSCpLehxjqI=
X-Gm-Message-State: AOJu0Yxl3qsc9w3YJ8gDU7KlUcNBPufOYAkhrtOu609e0f0Zm1WXoPz+
	hp/xw66Jqi7se9MBeVJARUwGmG7m4/cpjHvTb/LE6oqHKEl9/qo=
X-Google-Smtp-Source: AGHT+IHhmPeJC0I0evCo/zPiqGgGGWlw4mGMDbzXZO590N8dUNiAb2cYXbXPNJmb8x7X0qmUdBjj5g==
X-Received: by 2002:a17:906:787:b0:a59:9e01:e784 with SMTP id l7-20020a170906078700b00a599e01e784mr4665005ejc.5.1715010673882;
        Mon, 06 May 2024 08:51:13 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:1c62:e77:6753:5729])
        by smtp.gmail.com with ESMTPSA id y24-20020a170906071800b00a59cec38bf3sm1356230ejb.52.2024.05.06.08.51.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 May 2024 08:51:13 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 1/2] ARM: dts: rockchip: Add i2s nodes for RK3128
Date: Mon,  6 May 2024 17:51:02 +0200
Message-ID: <20240506155103.206592-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240506155103.206592-1-knaerzche@gmail.com>
References: <20240506155103.206592-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_085118_637156_0879CC4F 
X-CRM114-Status: GOOD (  11.27  )
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

RK3128 SoCs have two i2s controllers. i2s_8ch has 8 tx and 2 rx channels
and is internally hard-wired to the hdmi-controller respectivly the SoC's
analog codec. i2s_2ch has 2 tx and 2 rx channels and can also be used
externally as it's pins are exposed though pinctrl.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 27 ++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index fb98873fd94e..d0d1d7c2ab2f 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -360,6 +360,18 @@ usb_host_ohci: usb@101e0000 {
 		status = "disabled";
 	};
 
+	i2s_8ch: i2s@10200000 {
+		compatible = "rockchip,rk3128-i2s", "rockchip,rk3066-i2s";
+		reg = <0x10200000 0x1000>;
+		interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_I2S0>, <&cru HCLK_I2S_8CH>;
+		clock-names = "i2s_clk", "i2s_hclk";
+		dmas = <&pdma 14>, <&pdma 15>;
+		dma-names = "tx", "rx";
+		#sound-dai-cells = <0>;
+		status = "disabled";
+	};
+
 	sdmmc: mmc@10214000 {
 		compatible = "rockchip,rk3128-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x10214000 0x4000>;
@@ -408,6 +420,21 @@ emmc: mmc@1021c000 {
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
+		rockchip,playback-channels = <2>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2s_bus>;
+		#sound-dai-cells = <0>;
+		status = "disabled";
+	};
+
 	nfc: nand-controller@10500000 {
 		compatible = "rockchip,rk3128-nfc", "rockchip,rk2928-nfc";
 		reg = <0x10500000 0x4000>;
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
