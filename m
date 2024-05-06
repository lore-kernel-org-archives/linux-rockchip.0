Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1675C10F16
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 15:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zy8FPmZn03irzbuujWE2rHG8SqT93de0OrREKl22hLo=; b=CAfVR2PPQRkUoe
	dy1sSz+o6G3cHpA7HqRdPDcO/eXpt6COdSSq54RUoWMvlBRwFIlzm9SafgA37AfW1A9ISwCOelBGu
	/OfmD2vBK0XLlb05xhAofujb50cnCBXNUKaZYRU1ECBdrjduQ7dYyyMc/GS9BmMK11wLWirZdmPuU
	Vy0+8IZWwKPuHp+OwVG+EgbkcAeG2TVBBMNZD0WyLJM1ZA/GSD+ZP6tzREFlEFjpYKS8ItrdcXhQI
	TzDtNQ9eInz14z437CRHJBmycvfQ1gDnyIVoSySnDt97gUxWGUZ7dX43B8thn3NL1Lp5B+YYb0bIY
	XkKU4K5eQaBNp1kc2vKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s40cg-00000007vZN-1R8Y;
	Mon, 06 May 2024 15:51:26 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s40cZ-00000007vUI-0e4w;
	Mon, 06 May 2024 15:51:21 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-a52223e004dso432271766b.2;
        Mon, 06 May 2024 08:51:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715010675; x=1715615475; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8I21WtsUZcdgpZuf38No+IlnE5W2vGDappaz3+ciLm0=;
        b=InvnENNe1kKVXnRvPYw8zdQPXBVJlXWOKA3+BTHvSq9Z17aUfUZqjsUCjPcWe3v2h3
         ymCeLXAK1wHAhGf/EVRIZecoXKvD3RsDWUQl0YjpkdSIDbiELTjAKOPL8DwZqAgw38mz
         VXkRNSsIvZXpZS8PsQVM2DebBQXQdZvZ5LQRd3IX80ZewchPsg9dn2jNicWlimUSjW3/
         diENZH7JEP4nFQMVMqY1NYpWBCWA5Q+OisiNYVIjJGTUATOVPJOcb18XHB03PJUtzUBb
         nPhW8EXncr6jPaLsUOdybtsCc207eZa6BeJXEKSxXVbMBK+T2lwgh1RfBbKrxEjGq+kG
         bEUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715010675; x=1715615475;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8I21WtsUZcdgpZuf38No+IlnE5W2vGDappaz3+ciLm0=;
        b=Ooe9PEYOIpEDk1jJMrj0GSWN/Ht0bfdYXQs1WiWji6pZ153d2CCij313yCBenDW/CY
         iac1B6FjXXqovRXubvg3H0Np34JV+Oz5D4MCFTtbXxybos89DEJYqbYxtijgShWDB2ou
         /Utvo+p6ist4HZwAdXMKsNhHltjqe50SBKqYLo0IPf4PDxc6VTiL5quErE5G4z90ropp
         H4+zPyyi1krTZOdl27MhZMNECgYYRCjtPZMWnixpoBkZdTSWhElw/0r+LWpbllN4fsLo
         LpYLunItLbMWBwC0h0mN/O0ptFRZy4qqeCpwfTmGxJimgY6ufAq78U+H/KKbY1a4x3iV
         jbJA==
X-Forwarded-Encrypted: i=1; AJvYcCXVgDTaMO/dv70mcq4mQ2J0fCtiD0jOMFJ3J1sarQAA+KdX2BxcTxMX1vTXWl3tptLxgssAsBNPehdtQuOPuxfNKkCfrN8s16++AUvXnpXfR2/hJKM/XtnHTVmQlsbYUt+xO9pWRXxSrG1cU3fEnxYuW/25yrh4FEs=
X-Gm-Message-State: AOJu0Ywc1uDiHOkOiyikkGhXOcQ5gK3WJeUUty+74OUCn1sZcYDo6lqw
	VDQGY8lSP991EQRlJu4HOfy9Yk0E7kIjk4t1kK8oZDVhmZ31Awo=
X-Google-Smtp-Source: AGHT+IGUXcRYajK3MdV54mEIKa/3JOK3wciOaMvhxvgKosMw2KgO/7txS4O4aJlUGlkK5fzdsMOW2Q==
X-Received: by 2002:a17:907:7e97:b0:a59:b1cf:fea0 with SMTP id qb23-20020a1709077e9700b00a59b1cffea0mr6357081ejc.19.1715010674674;
        Mon, 06 May 2024 08:51:14 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:1c62:e77:6753:5729])
        by smtp.gmail.com with ESMTPSA id y24-20020a170906071800b00a59cec38bf3sm1356230ejb.52.2024.05.06.08.51.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 May 2024 08:51:14 -0700 (PDT)
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
Subject: [PATCH 2/2] ARM: dts: rockchip: Add spdif node for RK3128
Date: Mon,  6 May 2024 17:51:03 +0200
Message-ID: <20240506155103.206592-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240506155103.206592-1-knaerzche@gmail.com>
References: <20240506155103.206592-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_085119_215509_782678B5 
X-CRM114-Status: GOOD (  10.99  )
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

The SoC has a S/PDIF TX controller which is fully compatible with older
generation Rockchip SoCs.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index d0d1d7c2ab2f..bf6e05503141 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -372,6 +372,20 @@ i2s_8ch: i2s@10200000 {
 		status = "disabled";
 	};
 
+	spdif: spdif@10204000 {
+		compatible = "rockchip,rk3128-spdif", "rockchip,rk3066-spdif";
+		reg = <0x10204000 0x1000>;
+		interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_SPDIF>, <&cru HCLK_SPDIF>;
+		clock-names = "mclk", "hclk";
+		dmas = <&pdma 13>;
+		dma-names = "tx";
+		pinctrl-names = "default";
+		pinctrl-0 = <&spdif_tx>;
+		#sound-dai-cells = <0>;
+		status = "disabled";
+	};
+
 	sdmmc: mmc@10214000 {
 		compatible = "rockchip,rk3128-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x10214000 0x4000>;
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
