Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41B93C25B76
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 20:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e3FiYwG4QPdh56onRHp8qoRKD8Lr6ksPK/jnc94RqR4=; b=yIAT9kO7QVkTXP
	m03V1yVgMW0CS7PmrnmE4mRkgnzdKBQLY/2kCZlKLXJlx9M6vewJ640UnxzWY7mfofc0KOPyR1M6Z
	3RUBIdvz3drVSqhIEp4ifv4wnCtJC2kKnFitqfuGrPJ8Zc+qDim8udhB7yC5oL/feYnr1JyyrKbl1
	UI64e4avjLnuCqPR4pVhK/ee1aQVLKNCLnW02XOSMBmH25LoSL5iAfMATSmnA/KHkz05XlfP6JDb+
	YicewmNyOiigjsj7Dt+ISen+yz2buMLzXbCJ9qCUIG/tl2C/j9ZGVXziAnaf145Y+0/0zDlMYsVPm
	adAXIkzJ/9C7LypqTmeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExcs-00000007VXH-3658;
	Wed, 05 Jun 2024 20:52:54 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExcL-00000007V44-3wqx;
	Wed, 05 Jun 2024 20:52:23 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-354dfe54738so195169f8f.3;
        Wed, 05 Jun 2024 13:52:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717620739; x=1718225539; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jhHtvxGUyohTCTNa+GzFt+gMuFh5QKejQOFzumSpgUQ=;
        b=MGhnK8/eRGJBsQFnMBlQkTBhzn08+WtqwF/Z1nWHUQxkt9QhDgAJGH2QaKQDPUehAs
         PXagDU1bpcf+h4OMKGBzzbhQR0YL+xtQNK4E7NWH7AgV/N4P3Ef8dl5cyxY7RcNlZJCs
         QhQxJ9W8qkcVcsvYRFeuza9xJlHJfhasuyA/PTSxk57YbM4ZjVYw8eE3ulP3yj/BvyEd
         Ja1p+rfhSBAH8NAzHwdIqtL525j6Hp6xHNdQuZichhq/HuAS+1FNyH1lOw+IRfhUfr6y
         7kcfvKHGkdI1wH/O+hr5fWxmU7ocL78MgQwRdyFyd5YxRBgJ9VZNTUxd0ePh6nyl23tr
         E5YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717620739; x=1718225539;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jhHtvxGUyohTCTNa+GzFt+gMuFh5QKejQOFzumSpgUQ=;
        b=fNZ51McqY+Qt+c7Z1zKxDnc6LEKfsv4AZhPBWfQ6VWmzZPQdlJw1otuDgXM1MddNJn
         L4OrgdJxAfSYN6fo4VEwWcyk4d7qkEMUHHElXGPl1kuTJzm2t6IqSWX9j/Gezb1nuRPx
         5M9zef/Jf6VUGyMSSJrcW8YKZsCmCWennXQEkEN3fdJ2VTCK7KH327pM0UvYFhLUsC+c
         u99oWRXUdzN4sMOah/d4PXWxpboNWuUIOHEizk3oZMWqye2wlPVUlM8ZOKw84IXAMRxd
         58I1MS+ErZSo3nse8ecmZkBDBHRSj3263GAGCMOPLlvKLZ0QmYGRWzFCHLFE+gB4DW3T
         sMSQ==
X-Forwarded-Encrypted: i=1; AJvYcCVfDJtbcufMySI63/ybCFgEJapCUsFYjE4+7FLiL6vH71QDWqO4pLn4cdnclk6Z3TXKre46tMakALHR5pAEi3/abuy9MeGBLMTe3js0OMIEJedt7ar5gzyHtJ6vWrt2mgfa7c9uR1bQcYChJB69ccfOSZz6PmCZkQQ=
X-Gm-Message-State: AOJu0Ywyd81gO8gG+yTA64WHW9ISrf3s6E5ZKhknUYzI/BmGWsAsvUs9
	APvOAjvuUvjZN+jQRieyrGJ0VIWKG5gqpzkPYF16reisTK8mqYk=
X-Google-Smtp-Source: AGHT+IFCUf/nSWcFwovwvBwGIMkEfxcyaPdZQUK7IjGCB4qaZIM7Vbj8k1JhhipZFwk6qW+PghjHTw==
X-Received: by 2002:a5d:5886:0:b0:357:bd78:4954 with SMTP id ffacd0b85a97d-35e8833a4ebmr3356057f8f.30.1717620738877;
        Wed, 05 Jun 2024 13:52:18 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:5211:58fe:dfef:c48c])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6c71bb5affsm72265866b.147.2024.06.05.13.52.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 13:52:18 -0700 (PDT)
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
Subject: [PATCH v2 5/5] ARM: dts: rockchip: Add SFC for RK3128
Date: Wed,  5 Jun 2024 22:52:09 +0200
Message-ID: <20240605205209.232005-11-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240605205209.232005-1-knaerzche@gmail.com>
References: <20240605205209.232005-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_135222_062730_DA586B75 
X-CRM114-Status: GOOD (  10.18  )
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
changes since v1:
 - none

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
