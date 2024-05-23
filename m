Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A9A5C25B7A
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 May 2024 18:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sbnpBDOmFluBGU4yzaNJn2NF2eUyBaiFEGq45U8497Q=; b=TEs72SJfcgdXus
	ha+mmPwIP5U5bD2veFcJQdzza+8bc0OcT7xFqNZOnD+lZNwfDu5zpNxMM8aW3T5WlyqITvcAogG5T
	PUCl5EmdmTH2nLx4kexndX/owSxLV2TZEj6OU1SYNJ9yXkoN7srctIi21UBx06U6vdVQQBk/qctVV
	IExCCNuPIXsryD86+98jCTl+L0/jDy1E1aDGvNqzRVws9CDKKidYVFtJdpHKwUbvA61wPh9Ny6g12
	wNT57D7gz4yi33RrAO+Xy/oSROXMT7+7EQ1V7f0xU5T83mr/zs/NZKmhiVjJ055IAyKjE2IzpDZqF
	LdY09LwDK3fM5JOMki2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sADcO-000000074E2-2oa9;
	Thu, 23 May 2024 18:56:48 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sADcG-0000000747i-2dBc;
	Thu, 23 May 2024 18:56:42 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-42017f8de7aso57595295e9.1;
        Thu, 23 May 2024 11:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716490598; x=1717095398; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aagzBVjJ/D8Y1ifoBBVOq9JBnR6o7BIp7hhz9J64Up4=;
        b=N6YQhT9mV10aXacfxfQkbk9TWxdAAJjaCZ+GMks7MuVlHCTP7XFuvmiVaB3ZupcUYO
         a5+Q3KEwp14uoJIAO5CgTFrY0se0/2cqg2BtWTMSQ4eQb+1Pn03OV0+3xKWZWl5n9Wpm
         ItD3tgrhqF5q+rdx8/BujnqVx9zmzBWb0nafajxnwWF/gck7pnpgZF70aKwNrp2XvafI
         qGrLQwlY74crzBEH2gAV4MSHi+TCXHFqL474cLvJdqgbRs6yeQCz7Ci9NSuyNNSPkr5y
         QSlLUqJckN8CvMy3NBakgRXDqXYflzUZHaJLPnivgeX4RZNuQkefaYM/WwlUu4KlM0aR
         WCpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716490598; x=1717095398;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aagzBVjJ/D8Y1ifoBBVOq9JBnR6o7BIp7hhz9J64Up4=;
        b=Vnio8i/rk32qY1JTYZlGJjSJlgMn39znTmdaqHEVAmxCzMbYRXshF/07aKpmLaAqMn
         PSZxmCQeV0r587OufXt1BOwz9/yB8bPWcqJ90sKyFwgADKGvDP+2w98N8/E8xYirD7cw
         GAf8XG9R/osUHoLry/xbHOQYk7vbIrEKb34YmrrnRCwb9iAfW2+Bp1mjnviJzwkPtWeG
         TxMyvcFyuKydMfA6JccEAgZy/bxJDdlGXOGINiwFJ4yJxCnLJdXXLx/7J3mcjf1CtJvj
         pPTi+mbDbMPMGuNXLv9ErDTuZaI9t1DtoVtpOm9agFnciiwJ3kC9njoD7J+U8VOi9UOF
         /pnQ==
X-Forwarded-Encrypted: i=1; AJvYcCWi3dYiyUftdN+g3b+BbFEqz0yRG8OKmHdBfJI9DamqkQ/NaMwRWQEBsvAtjjCKfwbw4zAyNlYY6yG4lJ2+8j04glj3DKLTxqXlzU0kzPe6GYh+MszcCEJf4yRCwUT7U/QCtRl8Sldkw61ANF0asaJN40Dy9D8qhzs=
X-Gm-Message-State: AOJu0Yw/u2wRQYlRA89g1xEFY9saaZ3U9dcTX9RHkwHzyH+V0+zZEo43
	TaUCuxaAiacrKZkqA9l3hKfQcig2jlCJ50XvmEfqltBa/BB9toQ=
X-Google-Smtp-Source: AGHT+IHQtIRERiIjgF0uwBvsMBAGXfHwHjUykiz+HaZvwboLaRdKEhVREw2VDEvxpSx1HgPPVohtVA==
X-Received: by 2002:a05:600c:22d4:b0:41c:83aa:18b7 with SMTP id 5b1f17b1804b1-420fd35fcd1mr44947485e9.33.1716490598452;
        Thu, 23 May 2024 11:56:38 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:a453:b45b:e52a:2302])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3550c675581sm3965f8f.13.2024.05.23.11.56.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 11:56:38 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 3/3] ARM: dts: rockchip: Add vpu nodes for RK3128
Date: Thu, 23 May 2024 20:56:33 +0200
Message-ID: <20240523185633.71355-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240523185633.71355-1-knaerzche@gmail.com>
References: <20240523185633.71355-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_115640_862492_EF2E33B7 
X-CRM114-Status: GOOD (  10.80  )
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

Add nodes for the vpu and it's attached iommu which are both part of the
RK3128_PD_VIDEO powerdomain.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index fb98873fd94e..c11f55677841 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -252,6 +252,30 @@ power-domain@RK3128_PD_GPU {
 		};
 	};
 
+	vpu: video-codec@10106000 {
+		compatible = "rockchip,rk3128-vpu", "rockchip,rk3066-vpu";
+		reg = <0x10106000 0x800>;
+		interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "vepu", "vdpu";
+		clocks = <&cru ACLK_VDPU>, <&cru HCLK_VDPU>,
+			 <&cru ACLK_VEPU>, <&cru HCLK_VEPU>;
+		clock-names = "aclk_vdpu", "hclk_vdpu",
+			      "aclk_vepu", "hclk_vepu";
+		iommus = <&vpu_mmu>;
+		power-domains = <&power RK3128_PD_VIDEO>;
+	};
+
+	vpu_mmu: iommu@10106800 {
+		compatible = "rockchip,iommu";
+		reg = <0x10106800 0x100>;
+		interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_VEPU>, <&cru HCLK_VDPU>;
+		clock-names = "aclk", "iface";
+		power-domains = <&power RK3128_PD_VIDEO>;
+		#iommu-cells = <0>;
+	};
+
 	vop: vop@1010e000 {
 		compatible = "rockchip,rk3126-vop";
 		reg = <0x1010e000 0x300>;
-- 
2.45.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
