Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BC93CDD0DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 19:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Onslv8t1gExanelgUWDabvm8uo71UVUAhmHOWMPxO+Y=; b=ru6+F4o/HmeDdB
	RDKrsyyj5f4DtcAG2ll/CARuUdDPL1Fcv40HPACmy0E2UpNUB+ZGCcAanedu/Iqy7aib2zTzdax1b
	cWa4oJPq6qJa8pZcDMSa15iVo80EtvA3vSXuDG1GOYcih+OXnPKbMoypjDiS/gu+ROBBczxRgLv4O
	6CvUypwlGqIFuNubjQJsIPF3cbvjn02T7/y/qU0bYiAJ8HHLZbwqsaItx6NMBS+ULXqtAy7yz18xa
	gcgOb4C5d1kD9yYzg+FQd8cGUNp7sJkqVDpwxd8Wk/uTns9XNR+AjEXjBJuUNdjH9BKorPHKWeM5Z
	Atz40XjwQPvpVZGjyX0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Kkb-0000000ByZg-1AwK;
	Tue, 22 Oct 2024 19:41:05 +0000
Received: from mail-il1-x12e.google.com ([2607:f8b0:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Kfo-0000000BxZ0-2rxy;
	Tue, 22 Oct 2024 19:36:10 +0000
Received: by mail-il1-x12e.google.com with SMTP id e9e14a558f8ab-3a4d2d028b3so2437535ab.1;
        Tue, 22 Oct 2024 12:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729625767; x=1730230567; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dV9l/v2LcDXnviTDuNMkbMeVnn+PWfoffe417y/FNaw=;
        b=haQ5p+46ijhNBTdi5wBcogHMUARQVZCqEPJz5rioeqqNdTDoABo16Sc4834Rj0JvZL
         Fd7oDbXHQyUVTm2Yf/i317Djrlhb8dCSnyS29jxRn97t8SA4++0jZgy+vcaqV0aUTPLX
         fkYqN1x++u+XGXoX2lb8TkDn2TxfUGyBZEyWe/eetu2oWZuhn/r8ZgiwLXLqsdajwj4/
         HENBCxKQpj8txYZ0zWfuu+9pfBdmYNDU3nWx7Ajosl0tpjpe+XUDY8dActKOqs40rSB/
         UZ2DMsmissfLXZWu34/FXkkPdTKRF5cmOGlpw5qi37uSTe5HG2rJOyquGzG3yUPD6H+u
         Vq/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729625767; x=1730230567;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dV9l/v2LcDXnviTDuNMkbMeVnn+PWfoffe417y/FNaw=;
        b=fbxRsCMnSBNxUkOHiv++p8vfeK8Ih2GBz21rXGCaB9l0uH81hEgbIILZKGqTOyKErk
         gjzT1CPFwAFURuwJoDFUoymZAYKl6rPArIL8mpwFYm4WB+VLfPO2j5vbsK7d0ZaHqF1c
         kEItL3ThIdODMp/SVxbukDCv6h//LDo+1kSiICIOI0rIJqnC68PpzZPfCRje8vhuC8Sc
         zsg4wSTWECps+RKubeeOdFsaIru76/0KzxvRk05sMPeLONV464NhW54wzFyQLTahMxva
         Hs4i5vcQTMbmpchAr14nYORBVVVGFE7pSYzpiuvX5fZliflstsaN6ggAbu1nJl5f8txq
         mn3A==
X-Forwarded-Encrypted: i=1; AJvYcCVa9+vey+mZoh8NyH+Wxi9LaspqdZ2nTxTYUefe8ApN8U95M2OTif7UZNKhjNykEaibvMXfRoOSJ7ANJnowPuQ=@lists.infradead.org, AJvYcCXaP1d0tctoqbVajOtYmuME11fAsZ6DmaBt3hRHztsfoIn498LRiziECzotOMXsCCFUODoUfPGC3aV6afRObh+W@lists.infradead.org
X-Gm-Message-State: AOJu0YyRl0fZ9ALh+Wxqrx6EVGUbf7aQCY3ZScScrp9DyM8epQmHXr2Z
	VOdKLY6Bq8ESzEFFe1ttB+MRhuNlOw1QEA1jnxKdc4qfABj0W27Z
X-Google-Smtp-Source: AGHT+IHLlalPSHm8zG0hppdjSOOKHduEt8dQUk/4lbr+y7EGhPZQjy5bqFOm5stgAa1QyW5y40KauA==
X-Received: by 2002:a05:6e02:1749:b0:3a2:7592:2c5 with SMTP id e9e14a558f8ab-3a4d59be0c3mr2384155ab.17.1729625767259;
        Tue, 22 Oct 2024 12:36:07 -0700 (PDT)
Received: from CNSZTL-DEB.lan ([2408:8262:245d:4d65:bc4b:53ff:fead:2725])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7eaeaafb1e0sm5467316a12.3.2024.10.22.12.36.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 12:36:06 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Andy Yan <andyshrk@163.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Tianling Shen <cnsztl@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/5] arm64: dts: rockchip: replace deprecated snps,reset props for NanoPi R3S
Date: Wed, 23 Oct 2024 03:35:27 +0800
Message-ID: <20241022193537.1117919-3-cnsztl@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241022193537.1117919-1-cnsztl@gmail.com>
References: <20241022193537.1117919-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_123608_758746_733BF811 
X-CRM114-Status: GOOD (  10.63  )
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

Replace deprecated snps,reset props and move them to the PHY node.

Fixes: 50decd493c83 ("arm64: dts: rockchip: Add FriendlyARM NanoPi R3S board")
Suggested-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-nanopi-r3s.dts | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-nanopi-r3s.dts b/arch/arm64/boot/dts/rockchip/rk3566-nanopi-r3s.dts
index 6bc17f755b79..66a00cddda0c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-nanopi-r3s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-nanopi-r3s.dts
@@ -149,10 +149,6 @@ &gmac1m0_tx_bus2_level3
 		     &gmac1m0_rx_bus2
 		     &gmac1m0_rgmii_clk_level2
 		     &gmac1m0_rgmii_bus_level3>;
-	snps,reset-gpio = <&gpio4 RK_PC2 GPIO_ACTIVE_LOW>;
-	snps,reset-active-low;
-	/* Reset time is 20ms, 100ms for rtl8211f */
-	snps,reset-delays-us = <0 20000 100000>;
 	status = "okay";
 };
 
@@ -414,6 +410,9 @@ rgmii_phy1: ethernet-phy@1 {
 		interrupts = <RK_PC3 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&eth_phy_reset_pin>;
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_LOW>;
 	};
 };
 
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
