Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 323F1CF9C68
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Sep 2024 22:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M82BnWuqP5k/M08Id+qCug0BevUyF7d4FcxCmFinvlA=; b=L+nfwEqZ2a1D/F
	A71fRialcwjguG1o4LlrVNNabj+ulD35BRd+wZtnuOM+tMG7sY4Sn1ShrDiX3oo3l9hodXlbbwte4
	nwwwimwT4TICyXVDGWe+NMVGCbS2O6ujuj8BB6NFyP3Cenmu8tnLGAgCPyMbiAQ7zQu+Pw5ehYMum
	aNxI8G1OEiHlPgf85EibkZqZMnZzg8uRd48zMCfB2NR7+q4FFjnjCSu+3JPR6a86ECYwBKcG1Akfn
	SXKAFsj1FQeJPSEs4qecu3RVD+AcDjoR5lNTNiEQHipIS7X/cdbdMw11UT4tJWzCNs6Qlq6jrP6Jv
	gdkrvItsxHzfv8KlK0tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ss8Vi-0000000ELnu-2Q3E;
	Sat, 21 Sep 2024 22:23:26 +0000
Received: from smtp.forwardemail.net ([207.246.76.47])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ss8TR-0000000ELQR-2PCi
	for linux-rockchip@lists.infradead.org;
	Sat, 21 Sep 2024 22:21:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1726957246; bh=q4HGnQgfycy2AHtw5GfrgdiaBd9jGsGqRiZpjBBUbHw=;
 b=uQOZd3jysDFSkaUze5WIN/0cEfwZHt2UeyM8cszJYuDpN9jMxjIhkAYfxrGxQWar/MiqiYnml
 S57QTZnmF3JUPqlIDBw1WYMrQ7c/aU+sUzZVVkKJE4CZXTDoCAEaII1C1o5CVy43kCnmmeTjJMH
 /8Ca6ExY1wua2Ggthv8CCYbShOJeL9iEoNjE+ui/ocQYeLNshyRjADFL/d5rveOHKpVNdw81d/7
 qxpT7RBxVWP1qc1J+b6R/Cp2TojDmhmWoDgsUOg/CsyKjCo+ovrcOdmTv+rkv7ee4QeF0CydNDq
 XGaL1JDAsvU6/5xTotMz2zsjr73QZIHxtlpUBlE2UFzw==
From: Jonas Karlman <jonas@kwiboo.se>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 2/3] ARM: dts: rockchip: Split rk3288-vop into big and lit
Date: Sat, 21 Sep 2024 22:20:02 +0000
Message-ID: <20240921222007.2301868-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.46.1
In-Reply-To: <20240921222007.2301868-1-jonas@kwiboo.se>
References: <20240921222007.2301868-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 207.246.76.47
X-ForwardEmail-ID: 66ef46bd18c10b4d4a165d17
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240921_152105_900699_2B5F6CF0 
X-CRM114-Status: GOOD (  10.22  )
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

The Rockchip RK3288 SoC contain two different Visual Output Processor
(VOP) blocks, VOP_BIG and VOP_LIT. The VOP blocks support different max
output resolution, 3840x2160 and 2560x1600.

Change compatible to differentiate between VOP_BIG and VOP_LIT, the old
compatible is kept for backward compatibility.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm/boot/dts/rockchip/rk3288.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3288.dtsi b/arch/arm/boot/dts/rockchip/rk3288.dtsi
index 3f1d640afafa..db4a258551f4 100644
--- a/arch/arm/boot/dts/rockchip/rk3288.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3288.dtsi
@@ -1026,7 +1026,7 @@ rga: rga@ff920000 {
 	};
 
 	vopb: vop@ff930000 {
-		compatible = "rockchip,rk3288-vop";
+		compatible = "rockchip,rk3288-vop-big", "rockchip,rk3288-vop";
 		reg = <0x0 0xff930000 0x0 0x19c>, <0x0 0xff931000 0x0 0x1000>;
 		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru ACLK_VOP0>, <&cru DCLK_VOP0>, <&cru HCLK_VOP0>;
@@ -1075,7 +1075,7 @@ vopb_mmu: iommu@ff930300 {
 	};
 
 	vopl: vop@ff940000 {
-		compatible = "rockchip,rk3288-vop";
+		compatible = "rockchip,rk3288-vop-lit", "rockchip,rk3288-vop";
 		reg = <0x0 0xff940000 0x0 0x19c>, <0x0 0xff941000 0x0 0x1000>;
 		interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru ACLK_VOP1>, <&cru DCLK_VOP1>, <&cru HCLK_VOP1>;
-- 
2.46.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
