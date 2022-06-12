Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20329C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jun 2022 15:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JU3Aq/yt3EyY2dt5tResO/WznXdx24nDfl8MjYA8wpw=; b=tF0knInxLr0aUF
	9lMKahC2IKmX86hWky9SS2AnA8dHCRLDMAEqxQyXNtfO9NKl2rW51vUspwlWh6CQeQpd7/Iqill31
	eNFEzm2mcfDxIIOKsDkub2fUbT6kgW8BoQ6m3Zo9qMICJTw/iIJSdh7Njdo7xISVBNdvqX+h/WCCe
	2qouKGGkO2L/4rqOlWMwNzXi2RuUSOwfCr/Ac9x0+KD1CwcmuqRWqIewkbNHpRUVjMOGhdHJStzB7
	SSgsaKzh/tlxMe3yYIYK6O6F/p2PgSQvwDyryoxhLOcUmwtPQ6gtl61oa57ekIsPgV9Yx7YjzYcig
	+BVSeWRMppA3hxmcwPJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0Pvn-00H0gC-V0; Sun, 12 Jun 2022 15:55:15 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0PvI-00H0Pq-S2; Sun, 12 Jun 2022 15:54:46 +0000
Received: by mail-ej1-x630.google.com with SMTP id fu3so6760459ejc.7;
        Sun, 12 Jun 2022 08:54:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BkOhkCBf8L6W0qXjfkueWj/eTLwif/nqIH2509i56Dc=;
        b=DCZIlrl3no93ZcB5AK79UcPT8IC1ngePkvS9mA5G5ZTiUnCY1KvfiXx13TlQhW6lyB
         Z7CYatD000q9XAqjS/rL5b/vUg+6RgUeKpWNtzACWaOnwVl3CSMuh9s4AvVabho6g6OG
         nQV1MoZZX2ssufbRyykH4nI1Pat/KUUYVpGVDWKquEkdDF12bQuw/62OjOClQsfS3SYq
         Cw//QztzF9Fx8HeYB3pz7kOxce6vaBGPoKWyCLL/aKFJOcO9B8tXPyO3BCNvqXzc1LC1
         qPs6ztNL8KvVnjN/sS4qQY0kxwKk1hxmGIOgq5cdMRX1fmGCxNUHkY7t+j36pKzJhqmN
         answ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BkOhkCBf8L6W0qXjfkueWj/eTLwif/nqIH2509i56Dc=;
        b=ziBofDDtHNLCWr6jqEdMAr40HaqehGXj/K21jCt3ZPD1OuZkmenuncxxAJzUem969c
         SYs4WmePfPVfJPDelONCzDEkaqQN5epsubKlTlGFq82ebCBjfui8TjWKuU6GfyC7ekjo
         QgKtEWk5eNB+Eh2bbkia3+gefVc68ETg9/4L8QmG1aRG+xqM9imB+oSFO8KU8VvCLp3D
         08A3wiaO2OVnVZvu8jUmanuhWiGz/VFv9j4N3bQgWV3LJKN3InhH1kEBT8V1EpHEJy8z
         XCa2c+wMp5BZaAJDGVklvWRSeAPpucq0auFBjLnTfH1lW2SvXYzjGNvWX7Idl0z07OLR
         WbnQ==
X-Gm-Message-State: AOAM533JRcDJY6SruzD/D9mjLKZQI8BAWpndKTCSDERUvLZMVQHm+UyJ
	T2kRL4GLcGc3jraTvG49OlTvKmR2HxQ=
X-Google-Smtp-Source: ABdhPJzo+GfLnE3D16gIoyA3E5dYq4u+nH4Sw5omIc0Bob7QpLXW/EHxy2NWsFEZyk6fMNkZxn4yhQ==
X-Received: by 2002:a17:906:4d50:b0:70d:afd4:1e63 with SMTP id b16-20020a1709064d5000b0070dafd41e63mr46025241ejv.618.1655049283717;
        Sun, 12 Jun 2022 08:54:43 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id o1-20020a1709064f8100b006f3ef214de7sm2609459eju.77.2022.06.12.08.54.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jun 2022 08:54:43 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 3/3] arm64: dts: rockchip: Add Hantro encoder node to rk356x
Date: Sun, 12 Jun 2022 17:53:46 +0200
Message-Id: <20220612155346.16288-4-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220612155346.16288-1-frattaroli.nicolas@gmail.com>
References: <20220612155346.16288-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220612_085444_953706_F190EFED 
X-CRM114-Status: GOOD (  12.11  )
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

The RK3566 and RK3568 come with a dedicated Hantro instance solely for
encoding. This patch adds a node for this to the device tree, along with
a node for its MMU.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index cc1c5a65c5e5..73a1403192e9 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -576,6 +576,26 @@ gpu: gpu@fde60000 {
 		status = "disabled";
 	};
 
+	vepu: video-codec@fdee0000 {
+		compatible = "rockchip,rk3568-vepu";
+		reg = <0x0 0xfdee0000 0x0 0x800>;
+		interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_JENC>, <&cru HCLK_JENC>;
+		clock-names = "aclk", "hclk";
+		iommus = <&vepu_mmu>;
+		power-domains = <&power RK3568_PD_RGA>;
+	};
+
+	vepu_mmu: iommu@fdee0800 {
+		compatible = "rockchip,rk3568-iommu";
+		reg = <0x0 0xfdee0800 0x0 0x40>;
+		interrupts = <GIC_SPI 63 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_JENC>, <&cru HCLK_JENC>;
+		clock-names = "aclk", "iface";
+		power-domains = <&power RK3568_PD_RGA>;
+		#iommu-cells = <0>;
+	};
+
 	sdmmc2: mmc@fe000000 {
 		compatible = "rockchip,rk3568-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xfe000000 0x0 0x4000>;
-- 
2.36.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
