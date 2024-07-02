Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2632CC2BD09
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jul 2024 01:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/Xb8PpwxWeq39W53FLGB5tcWqvFraiisnf+ZATP17RM=; b=qk6lVuG8apwPKt
	OleDdKnsRq9nngCeTNbpWQ8YaWpqOR1pE3E2UZI8oBW6TJtoQ4g9UFSdAobqd69ZlOtVVKw5m2mc8
	WTtu125i87oA4GM93dfr7G0kHaMwj1L1AMi+mLTjskZGRgQI2sbDE76DLiSiXeWjfIn3sDiIEiST7
	271hC4zZxf3lM/sBlDoIHOHXbw/FrHdL5t3sG4I+Xl9Y9LquwXcxPcXoEnO4ReJhaLNeZqAvS2L0J
	DdMsMpYLBiv3UBWkyo9GKA8F/9d1R734uHTJC0l4OkXv5p/d+j2V+1XXOydr7TMLLA2Ki8x8LfAhS
	9gYakr1ldLYcp82IMO2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOS5C-00000005FV2-03qI;
	Tue, 02 Jul 2024 01:13:22 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOS4z-00000005FSg-2KQB;
	Tue, 02 Jul 2024 01:13:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1719882788;
	bh=LEpS0prWNwTg637CGji58I1O4rLSQPuHkPWQ3gbelhg=;
	h=From:Date:Subject:To:Cc:From;
	b=hMWNKsGkfexOjlTg+YJbWEj460nsPq0oadciGY1Okr8c72pPUmivorKnU1x14Yvyj
	 P92dvrCKUD8Lpy9gVtY8RqOTxj0HpjXIvoapuYawW4jAxP4iJTwIbvxjgCRtLwQU2E
	 kQU8+M6TwuXAOku6XEj5wrhxKFff48cyLNx3Wva7Fh+kAlefWa0CM7i3oZwkf8b6Oc
	 pihOrZen1Eme+X5NjdkRCskxe8yJKxEafCgCjYGvBeT2Ttfxp+7uxvj3Sot4m85ngK
	 NKXz9nnlJIICw64Oq3iREMArmWBo+dAFHmw4FTCTH6/SklxkDl4JAqngvH4lUGJ1DO
	 RFLj2x7YxG7kw==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id E1FF537820DE;
	Tue,  2 Jul 2024 01:13:07 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 02 Jul 2024 04:12:52 +0300
Subject: [PATCH] arm64: dts: rockchip: Add missing power-domains for rk356x
 vop_mmu
MIME-Version: 1.0
Message-Id: <20240702-rk356x-fix-vop-mmu-v1-1-a66d1a0c45ea@collabora.com>
X-B4-Tracking: v=1; b=H4sIABNUg2YC/x2MQQqAIBAAvxJ7bsE0NfpKdJDaaolSlCII/550H
 IaZFxJFpgR99UKkmxP7s0BTVzBt7lwJeS4MUshWWCEx7kqbBxd+8PYBj+NCJ5WeTeesah2UMEQ
 q+p8OY84fliuXp2QAAAA=
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_181310_220084_10F0F9C1 
X-CRM114-Status: GOOD (  11.60  )
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

The iommu@fe043e00 on RK356x SoC shares the VOP power domain, but the
power-domains property was not provided when the node has been added.

The consequence is that an attempt to reload the rockchipdrm module will
freeze the entire system.  That is because on probe time,
pm_runtime_get_suppliers() gets called for vop@fe040000, which blocks
when pm_runtime_get_sync() is being invoked for iommu@fe043e00.

Fix the issue by adding the missing property.

Fixes: 9d6c6d978f97 ("arm64: dts: rockchip: rk356x: Add VOP2 nodes")
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index d8543b5557ee..3e2a8bfcafea 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -790,6 +790,7 @@ vop_mmu: iommu@fe043e00 {
 		clocks = <&cru ACLK_VOP>, <&cru HCLK_VOP>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
+		power-domains = <&power RK3568_PD_VO>;
 		status = "disabled";
 	};
 

---
base-commit: 1eb586a9782cde8e5091b9de74603e0a8386b09e
change-id: 20240702-rk356x-fix-vop-mmu-a235d68a734a


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
