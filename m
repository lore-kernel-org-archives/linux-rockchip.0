Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CD9DC27C53
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 00:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GHBw2yvsaIuuXBTQuD6ys24jgPFP5nXv3Bq8vGFzAqo=; b=MKnc8f1O8BSoPH
	w34QMBPvwiEayH4Me8IOGxoyx4Y3rNKxecygyRZgUWChgYdNUI3w/FVK1BX3PWnQusg5QtsLNKTGv
	Ntp4yFG5mDbRSzKj1Y55NkxRdEMVp3LXiUqYPsM0S12GuuC/LZp4MhJwtjLvJODwKaGW94sHsMd6f
	yt5GnStNarlvCgoRWe05co+RRn1UQ8zzoYud1x3C05vIkNFkyygpubMow9acCkOXy5CDsLUawGz1c
	yBSvWyVaFFfeWKZgaH4foIIrBcMpBnISSRqsnNLggD02yshY1Cw9+okSt2w5ln9163cX2q2tv4QxX
	m9RxNP2iksdfeN0tfBbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK5p9-000000039k8-1OAl;
	Thu, 20 Jun 2024 00:38:47 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK5ou-000000039Zz-16qb;
	Thu, 20 Jun 2024 00:38:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718843909;
	bh=DUumqL7rzqsTDAUT3dMeqFEijCCpD7CQ16OMA3dYjVs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=XSsDeqRunlR93PFTbpTPXm/iozbO4yoGjEuufg/HJyQOjNp27pQOp9uM0wdaDCfG2
	 xWOpP0SvDfwaVRqDFuqh9wG8kW+M7XGK/DVDGRYrkMZ2iJPkiSKvCMLoOSlBLrlyrq
	 GKVfkZv/cqoN2PprrygWT8yRfcBBUzdDxGtK2jate1UvC98Tzf1kgDlpLzHGlUHYih
	 cAwwFDj6n8L5RLjfOTJPhW1iD7R4oHde5CCGSjJnyDZK9whRDF+e9gZd9S6LxVkc0Y
	 8xibo3/2u3tXtURYBnpQN2IBGI88+q2mwtQroipm/sP9thM9vg9QWM37eqEbrWd86x
	 KqtnUA+j1TJbA==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id B912037821B2;
	Thu, 20 Jun 2024 00:38:28 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Thu, 20 Jun 2024 03:36:24 +0300
Subject: [PATCH v2 3/4] dt-bindings: phy: rockchip,rk3588-hdptx-phy: Add
 #clock-cells
MIME-Version: 1.0
Message-Id: <20240620-rk3588-hdmiphy-clkprov-v2-3-6a2d2164e508@collabora.com>
References: <20240620-rk3588-hdmiphy-clkprov-v2-0-6a2d2164e508@collabora.com>
In-Reply-To: <20240620-rk3588-hdmiphy-clkprov-v2-0-6a2d2164e508@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_173832_616331_A1F7EFC2 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
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

The HDMI PHY can be used as a clock provider on RK3588 SoC, hence add
the necessary '#clock-cells' property.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 Documentation/devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml
index 54e822c715f3..84fe59dbcf48 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml
@@ -27,6 +27,9 @@ properties:
       - const: ref
       - const: apb
 
+  "#clock-cells":
+    const: 0
+
   "#phy-cells":
     const: 0
 

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
