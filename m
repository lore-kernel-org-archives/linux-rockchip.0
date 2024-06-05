Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F344C27C55
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 17:22:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SakxLHB7zJd9XBAwwX8k0TiekH/oK9rRcB8NsXJG33w=; b=nTEOYYkn8hmiJB
	V1qZ8XCJgl5LzzShWSHvusvUcOG9o4Qc4a37O2eFosw5+mlNhSJMX5Wpn6XSUVbTgwUNe+jM/ozXj
	1g0A8yO2CmIMKiCeis0JVWHEKF27YkomEwJRNkstKX3bvvwK5LXCvM4aQ6mgF7c9cQdiOLRH3Lay4
	skKRduSZuhIN5zgApHZNQE7NNMDhtNqh8/TVQroCNHKok87pLyYkfQipBnh9WEPozUAkAPgkELclt
	FfOO8L8pIODSbw3Z9ehH3VJfmcTtABah5G+DAJYlf1WpyUSj4hjcg0rWI6RKpOYsVf9+oHJa3f03C
	G/RsJjxst0YVPy38nLqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEuKu-00000006xu2-11aI;
	Wed, 05 Jun 2024 17:22:08 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEuKq-00000006xql-12dZ;
	Wed, 05 Jun 2024 17:22:05 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-52b83225088so119189e87.3;
        Wed, 05 Jun 2024 10:21:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717608118; x=1718212918; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nSnrzfQSI7FFWe4M7p38YadUmYRLzv+fLcrRvYhlfvQ=;
        b=KhxoX3gnF2c/pDjSJivs2haCXMhhNiZPD0xn5TudR8JKtwrgIQQVjOTWaH/cPwE1SH
         e7If9PmSBcho/PGXLA945iZTKznx2r8Mr7EEzeGZKru1qvB9FKmevERdq7bATSL4D+ra
         Mv0enQltDZLizCrGce1RjzGjCqXFMGBWwc8Wz5QPhQzSzSKlFPposcL4wlQWmp+aExIC
         nyB84qHfR0M+jzgCXly3Pt4urJncURQysmop5FFm4giGvYJK7dorkIBp4CN8j3t9zuDQ
         z0UYorqheM80zmUOnG2FnOA++yYGyIo8LMvhjtL4enK81CJ5f2cmDu6kCn9T+YaTzd+1
         tNaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717608118; x=1718212918;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nSnrzfQSI7FFWe4M7p38YadUmYRLzv+fLcrRvYhlfvQ=;
        b=Zv7hL6CT6iaMyjj4Bnv6cBhh0ReMBo+s1dBdNlf7IUZPVDcrV10SJEKB5rbvRhIlQq
         aoLkh69dsy0FMPfOC2c75dmm5iT9QL/enJVsJ8Y9hsFdYCkrKEGByEUeNrFD+x4TE+8J
         AaR9m5iVBGSxyqHJiXBllAhFHrRvnvd16JZp/X463P4ZcPgqUesx7+usp8wV4IjN1Gut
         0rv+5jVbBFWq+j4NrmxAa6+lOV8FlsRw3vJDo2bexi3/9dNR1GrLkog+cMew+Z8KBF6a
         DXFc0YY9q3Y97JMGKApZnkiNG7eMpYxP3MHPmqLfzUCaYeedlF6w2epevMI8DXLfKoZe
         wyow==
X-Forwarded-Encrypted: i=1; AJvYcCXm1UHuC6uxOOaSdXLfB88l/XYAHoBHX/lQi2WQUZqJjKzaJ1Nu7X0WJE1tdB/dnMacpwti3FYnX9KGCybxh0EAhkKyIptMQPqIkp56moxXimAin30XhLfyfeFC99lFbKcLLbyvT1tYnN8AmtTf45ApNm8UKeMScMs=
X-Gm-Message-State: AOJu0YyjTayUgNRP/7IPDaLxAvb5zSXSX8DHmY5QbcXUKjVKNiJSnXrk
	8Ez4KaT5lPdIORS+HyKkPPh/9phu+DNmjjS6GCEhaBOml27AuaI=
X-Google-Smtp-Source: AGHT+IGvhcnG7M1Vbx/YQj99uXW0A5K4R73XVFCAylehvWPGYqkTm8EPKbShM4S7aRYehR6yW6Nflg==
X-Received: by 2002:a05:6512:5d3:b0:52b:51f9:a37d with SMTP id 2adb3069b0e04-52bab5084b1mr1671148e87.56.1717608118030;
        Wed, 05 Jun 2024 10:21:58 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:34f:df25:1c86:f2e7])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57a31c6d594sm9666663a12.69.2024.06.05.10.21.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 10:21:57 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 3/3] ARM: dts: rockchip: Add SFC for RK3128
Date: Wed,  5 Jun 2024 19:21:54 +0200
Message-ID: <20240605172154.193047-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240605172154.193047-1-knaerzche@gmail.com>
References: <20240605172154.193047-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_102204_310061_C478A6DD 
X-CRM114-Status: GOOD (  10.44  )
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

Add the Serial Flash Controller and it's pincontrols.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 35 ++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index a7ab0904564f..22e2a35dedb1 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -399,6 +399,15 @@ usb_host_ohci: usb@101e0000 {
 		status = "disabled";
 	};
 
+	sfc: spi@1020c000 {
+		compatible = "rockchip,sfc";
+		reg = <0x1020c000 0x8000>;
+		interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_SFC>, <&cru HCLK_SFC>;
+		clock-names = "clk_sfc", "hclk_sfc";
+		status = "disabled";
+	};
+
 	sdmmc: mmc@10214000 {
 		compatible = "rockchip,rk3128-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x10214000 0x4000>;
@@ -1155,6 +1164,32 @@ sdmmc_bus4: sdmmc-bus4 {
 			};
 		};
 
+		sfc {
+			sfc_bus2: sfc-bus2 {
+				rockchip,pins = <1 RK_PD0 3 &pcfg_pull_default>,
+						<1 RK_PD1 3 &pcfg_pull_default>;
+			};
+
+			sfc_bus4: sfc-bus4 {
+				rockchip,pins = <1 RK_PD0 3 &pcfg_pull_default>,
+						<1 RK_PD1 3 &pcfg_pull_default>,
+						<1 RK_PD2 3 &pcfg_pull_default>,
+						<1 RK_PD3 3 &pcfg_pull_default>;
+			};
+
+			sfc_clk: sfc-clk {
+				rockchip,pins = <2 RK_PA4 3 &pcfg_pull_none>;
+			};
+
+			sfc_cs0: sfc-cs0 {
+				rockchip,pins = <2 RK_PA2 3 &pcfg_pull_default>;
+			};
+
+			sfc_cs1: sfc-cs1 {
+				rockchip,pins = <2 RK_PA3 3 &pcfg_pull_default>;
+			};
+		};
+
 		spdif {
 			spdif_tx: spdif-tx {
 				rockchip,pins = <3 RK_PD3 1 &pcfg_pull_none>;
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
