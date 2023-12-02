Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BAEDC4167B
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Dec 2023 12:42:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hiEae6rWuvfe5tGDpYutv7oXduqwSVQJQxCp3uDYq98=; b=pFRFcA3xNmD3rx
	nN0Uf6CMAgjsgZFSEJagyvS8VphNxpl2vkomRosK8PdCtuAQ8XFHmLeYNai78Q4hSxf20G3vKB2Zd
	IsRrRvSQNdZgkvXfogTqf9DHNcjUmYYsrTi1ye8FrOqSOUG2T4UGaU4QbyraLCvhY21xB8KPEk8Fc
	xHzH7dXvNazNVHCvk0Eq7H3At5EdSaefuLd8aoe4dHbLFnTy77W/szx/1qaDqXQihEcDw7CPt3bHG
	C34e+QSW8ogBwarIQ8roOK9RU5r8TdzZg0AHfJ2jQaQo0w+RqtE00wdHtZ6d6HszNfh8Fzl1oHcft
	RgfxwTvtyQ/xU/Co7CqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9PKA-00FhIo-2n;
	Sat, 02 Dec 2023 12:42:22 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9PK5-00FhEC-0y;
	Sat, 02 Dec 2023 12:42:19 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a1882023bbfso392229666b.3;
        Sat, 02 Dec 2023 04:42:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701520927; x=1702125727; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GT6U/Jm1kE8iHTek1ibUnucOypK2mgUYlFeO1cXQKVs=;
        b=jw9GMbcYFxpEIG84WOmI8Jx7Ln1UHBF1AH+6WPl2H9ihmYTDtOpvr7VwELYVWCrjrJ
         +8p4sEfLg4OD3IJwP1X5kuCmkxncbO6ZeXY4deQVP31rBVX0cDJnGgxiIxD+wWhB0RJX
         gWOHqL11cYOdHpb46qbLgxkGXNkDttnc1EWeuyfFRFUm4jX9pREHEW+selT6b43froC/
         9E8lJywy9qyJrqEPV7Vqhp3k7kdgCsjcP/8teJ/3mQ5HEK6kx0IZN/1SvzDWyemlR3g8
         2hhIOA6TCxJS0HroQbWNcbdLvDYjwfDpNT67fopak1yxY8SMXzj1YKbz+oewW6AMJofJ
         K32g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701520927; x=1702125727;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GT6U/Jm1kE8iHTek1ibUnucOypK2mgUYlFeO1cXQKVs=;
        b=Ubs+80YbFtu73AvSkiDeHB7naLbSfhhJjhB4pfSrek2QIeKsWYXKNrLf76sDhvbOzn
         3CGD3cy5uHO1iQl/g6mL1stkl6vowb0jgM0e0OQJPentwbm+Dr/k7KsOEyJrKNGKUOVu
         VZVBWgZ4QzWxvPUWE7kni0h0KeK43vDUhKLuOCjQu5n0Yi+tXn/IJteR+vWlUrcTOnzJ
         +vppzk6VAl1hPNSiQUCJWNCyT4iAdVAKyYxMpLzn7grwbL967KIJw4lwU0njR12GevJw
         /WweaWVnmwD8ap+mG3zqiUk6XDRYkHEHSPNVtNL7xdsU0IODv+9S6DNzDB/Hx8yLFhhw
         dwPQ==
X-Gm-Message-State: AOJu0YyODOUa3sdfL5dlJeSe5j1ZeYnS5j6HH4TEqTkcOdehCWOM58ZM
	1cC1uZmVtWrV9oFdifKzsA==
X-Google-Smtp-Source: AGHT+IFChGLYoqEgdEQJLZDJTHMTrQhqKoKtU5gV9YLdkn2cOl7wagJhu5UWTR7yjlabiTPJeZkH9w==
X-Received: by 2002:a17:906:24e:b0:a19:a19b:55d9 with SMTP id 14-20020a170906024e00b00a19a19b55d9mr2085815ejl.105.1701520927185;
        Sat, 02 Dec 2023 04:42:07 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:908e:b829:354b:f8ee])
        by smtp.gmail.com with ESMTPSA id q19-20020a1709060e5300b009a19701e7b5sm3009602eji.96.2023.12.02.04.42.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Dec 2023 04:42:06 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 1/2] ARM: dts: rockchip: Add gmac node for RK3128
Date: Sat,  2 Dec 2023 13:41:58 +0100
Message-ID: <20231202124158.65615-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231202124158.65615-2-knaerzche@gmail.com>
References: <20231202124158.65615-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231202_044217_337061_F3E859CF 
X-CRM114-Status: GOOD (  12.12  )
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

RK3128's gmac is based on Synopsys Ethernet GMAC IP core.
Add it to the devicetree.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 28 ++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index 4e8b38604ecd..c0c9f0eaffa3 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -525,6 +525,34 @@ pdma: dma-controller@20078000 {
 		#dma-cells = <1>;
 	};
 
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
+		rx-fifo-depth = <4096>;
+		tx-fifo-depth = <2048>;
+		status = "disabled";
+
+		mdio: mdio {
+			compatible = "snps,dwmac-mdio";
+			#address-cells = <0x1>;
+			#size-cells = <0x0>;
+		};
+	};
+
 	pinctrl: pinctrl {
 		compatible = "rockchip,rk3128-pinctrl";
 		rockchip,grf = <&grf>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
