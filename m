Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCAFDC27C52
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 20:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SakxLHB7zJd9XBAwwX8k0TiekH/oK9rRcB8NsXJG33w=; b=bBJoI5QRoweGhy
	5RAjkhFnTji4rrVPBIjwXAc/ZJ3ROfbpqWKXNPQPZhXprOidoh5g7PE8KUYMsdPrftsD9+zCub6lP
	9C2jf/atxb2kooVm/0vUT4D4eFO9jBAMPu6+gVurFo0QSO9IV2QSwlBIk+7C+ygjIgb5UvsK0cUO+
	PatxA8swmRC9+7M8LW05LQOEKktD/O+p1oKzAOS6z8bptwTToPLlK+b2PO2WE9O4XuLudrhq6ahVU
	ZM7RhQ6OHArEfX8Z9HdbDktTmyyGcGkgWuTaWIwkQurz/mTShD7Exj96B+xm6qjzGayPg0HL6Pcmn
	zbl9xDWq+KnU/T1j4pZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExdF-00000007Vpr-3ZdQ;
	Wed, 05 Jun 2024 20:53:17 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExcP-00000007V34-3h34;
	Wed, 05 Jun 2024 20:52:29 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-57a7dc13aabso294747a12.0;
        Wed, 05 Jun 2024 13:52:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717620735; x=1718225535; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nSnrzfQSI7FFWe4M7p38YadUmYRLzv+fLcrRvYhlfvQ=;
        b=IC/t+TAblDlsjHqYXaXiqbZXneU8tPUL3J0nMXD4dPckysOXATptfR9SMhhySF/Nrh
         6x9wWwEuChXn3GvJR8rNoGoIpV6Nx2f7jLJxxm63TZfAtYNdPU5Cgva9wXkGdoeV7KNY
         eCsK0qt0opF1QpB9p4ESAbR5tZt8TqflNof9EbElrJQaK0SXcCVUm4Imt0sXDqNFXpl+
         J1AHtr/T7NNOlJc3wnwpV5ygURW6PGETN95ytdC4fAaWd+tX4VPiGr8olMGlbvgueSvs
         xYBP2uIscNNg1NJtBANXqp5JO0CTJeHUV3aJCSfsRRiAFKHUSfXiIsEY/eryx/iKCaoa
         6mEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717620735; x=1718225535;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nSnrzfQSI7FFWe4M7p38YadUmYRLzv+fLcrRvYhlfvQ=;
        b=GC8u4wcuUBS7mZnYZyuj7Nmah3acEMAQE5N36AIlYBa9LhsQ/TjHcB/cPtzJ8GYCic
         wkpd+CvRyrcpeDR9DQAeTgjqZ6wZwjL1N4JrRNzrL+vdx+Cdl9w8Hyqh7c1spaVnrfJT
         lonezn1hLQbSwOU8npzR+LmLJVyuxb+uNnJOCaukjOk3d3B2Im9mYzLfqTqQThiNEZU7
         S3QbUnOhLZ/tPrX5xCqNRtp9QKaVnNm+zshAtSZFVHekpt8Qu/79GZr3Q+6xSLGW1Y8H
         v3ZQs8e3IJtYrEZ4dEhlvpxRQAjbLFXya5yx6YhzlYWQDUetX2E6hb/hUSKoOcm7c+SR
         yONw==
X-Forwarded-Encrypted: i=1; AJvYcCVezG61bXoJBjrUvkgMJQ1ILYf5xoEnPkM2xWEjUKLe7bMm0C99CHC+I44mdNPZoRQK8Rv2lTTW+Gha1VnR0smZOHajHQxJ9/E8eIoHW/I/x9tHXzN1KMc1/bZbjLgSfLqqXshO7v+cTb8I1E3ALx32ozmOukitaDI=
X-Gm-Message-State: AOJu0YyFDML6untcmWW2Jl/Dh28LaXElfQdRiSExxxzb3jInQ+a1CPKi
	CT0C98pxB3D/0zEh4SwJldMoxDJiIbM131ZpRwcBVFeyoSzso2E=
X-Google-Smtp-Source: AGHT+IG14C4lSL+BhQzWiuSl+VxUO7QhT+hrjfkE58eBpjAdO85Xvli+57deBqfwo6LwhRefFCQAIw==
X-Received: by 2002:a17:906:ca57:b0:a68:eacd:2b38 with SMTP id a640c23a62f3a-a699f663ffdmr240503266b.23.1717620734864;
        Wed, 05 Jun 2024 13:52:14 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:5211:58fe:dfef:c48c])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6c71bb5affsm72265866b.147.2024.06.05.13.52.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 13:52:14 -0700 (PDT)
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
Subject: [PATCH 5/5] ARM: dts: rockchip: Add SFC for RK3128
Date: Wed,  5 Jun 2024 22:52:03 +0200
Message-ID: <20240605205209.232005-5-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240605205209.232005-1-knaerzche@gmail.com>
References: <20240605205209.232005-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_135225_992249_E9559E0E 
X-CRM114-Status: GOOD (  10.45  )
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
