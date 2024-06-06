Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAFC7C27C5F
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 14:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5yQBBZwNakIuYUK1mxbgAs+I2UYrhqXEKfhxAw9St10=; b=az3SKLNf+s7WGn
	gkhlaRy9BU+IlKlY9df/7bg7u3NEhQhmo41lbxhnaUGleNfsUaJz70nHcJiTFdjpaJlEHCGaS+2Nx
	V9RL5OASuxyUbi0D1QOw5yV9QpYydqsmJZGzYqXouByUyP9LDTiVJiHQpJcjQ7q2HW95RvtrHPsK0
	Lvb8eqZVQWZfpvDBAYj3Yhq3Yjy3Gh9Rw9cmmW/kMhef1ro2AMJIJd/58gPIQhMcOU7L6BfAjwvO4
	1o2UsEYjOpZ+2VikXNNKqzdbZAbdAfT1tKulL+/N+3BWs0xB9SDoLZxH7w5HxYb2BVtmK/oV7QZWR
	vvP3IBjdn2Z+iVPT6gAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFEFY-0000000A6zq-0yRx;
	Thu, 06 Jun 2024 14:37:56 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFEF9-0000000A6fZ-4AsM;
	Thu, 06 Jun 2024 14:37:35 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-572c65cea55so458760a12.0;
        Thu, 06 Jun 2024 07:37:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717684650; x=1718289450; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6e1IO8wa8L/zyDqKfvDJQSO9H57/3PySfWDoeUhjP78=;
        b=VOYqdrdL5vKuiMjhx7Pd8MmRzLCIsCAiMkMqzbbUcCpuvnwDGvIHHFZaLmpnWKQp1f
         +5OKJAwxxVOs3lncxfNSQ+Oq0rD4IZ8vb4Ml23o2x9F1VDREY+0r+CAXDjsowSBQubyX
         9WT0UKEqmW44Z8R48xIInGS9YAZmOSe9YHHdbdAL/wB3yu7CrWZzjloSp7q1Amnhna7K
         TvDcVqOXrxCemhjZmTbWe3zotnULYmT2c9k9E8hBbLPbWQSn010/0G8QVT89OrE7Ybe8
         jbqZmaIZ82eI+WKB6e8sSbNwPL/KM2KgNheORSOLjuMESYk/uSG+BFkOuRpT7Jq8iN/5
         hw8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717684650; x=1718289450;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6e1IO8wa8L/zyDqKfvDJQSO9H57/3PySfWDoeUhjP78=;
        b=t4NfwwnhtC1zGKU+njp6lGptgdT11t0dRzbkSDCmiM+qTT7L/q27v/IB9nkN/yg0Oa
         slEeBRi9faQtou9QJ7tIR31cXfmhnIAvV0TSi07RkeWKK7lG6Csh/C5c7KKvFxcGZNGZ
         I1xUpa1PfXwuoHZ9aRu6Q8X0XouL040jYbR9Dkgzh1REBX2h1t7XDcq/XZA5Pysi7c3C
         XVyPwo/kbL0KYDwmVhqdwdVSLoxoVT4qcy1htNWBifLnBemQeBHvTvduTNS2PMBHvEp0
         LlqaytWtubnid0ive/it68z5Zm+rsdBEEoJYwjEoeVa3HfFPjEu0UtHRVNxp3VFiXZKr
         BLWg==
X-Forwarded-Encrypted: i=1; AJvYcCW5v2zgm2IW4vkSWTR7hdtVYuQvjTR4nNO7psSwPA8mLfU1FMPRcwtuHo7jD/7D+xcPGKNsc+b5CicOLJurrTnIrmWPA8dbLVjHahZEx7wZbGCBMJ0pl3PLKoHYDoyOu+8p34OeHGqpwgJy8GAO2NIwjypSjAkOJo8=
X-Gm-Message-State: AOJu0YzjyLSzo2BMsOmRo01Pch3m5q4KcB5DLxC8F7IUEN1wZLesezrb
	q3mxKDDBDGJzWVe7psX9DwK2wUmVYVxXNWzPubvOcNCUh5qfFyk=
X-Google-Smtp-Source: AGHT+IGTguIsiQuctF52YO2KaIAv/wxplXc7Xf93KtnhaWBBwggvhPDzJlNlzZ3hmNeOjD5ieyF3QQ==
X-Received: by 2002:a50:d7db:0:b0:578:69be:6e7a with SMTP id 4fb4d7f45d1cf-57aa53e0569mr2595265a12.1.1717684649733;
        Thu, 06 Jun 2024 07:37:29 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:ed9f:91b7:21f2:3109])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57aae1008adsm1190925a12.38.2024.06.06.07.37.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 07:37:29 -0700 (PDT)
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
Subject: [PATCH v3 5/5] ARM: dts: rockchip: Add SFC for RK3128
Date: Thu,  6 Jun 2024 16:34:02 +0200
Message-ID: <20240606143401.32454-7-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240606143401.32454-2-knaerzche@gmail.com>
References: <20240606143401.32454-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_073732_127412_71D3B5C0 
X-CRM114-Status: GOOD (  11.80  )
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
changes since v2:
Fixed pinux settings for the chipselect pincontrols which originated from
contradictory documentation: Datasheet [0] (page 29/31) says it is func4
(when start counting with func1), while TRM [1] (page 185) says func3
(register value 0x2). It turned out TRM is correct as with setting cs
pincontrols to func4 the spi chip is not detected, while func3 is fine.

[0] https://www.armdesigner.com/download/Rockchip_RK3128_datasheet_V1.2.pdf, 
[1] https://www.t-firefly.com/download/fireprime/docs/rk3128_trm/chapter-5-general-register-file(grf).pdf


 arch/arm/boot/dts/rockchip/rk3128.dtsi | 35 ++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index a7ab0904564f..c37aed28bd10 100644
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
+				rockchip,pins = <2 RK_PA2 2 &pcfg_pull_default>;
+			};
+
+			sfc_cs1: sfc-cs1 {
+				rockchip,pins = <2 RK_PA3 2 &pcfg_pull_default>;
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
