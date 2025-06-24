Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F748C7EE2A
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Jun 2025 04:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XYpP+d8XuLqNU6L8fa0pdsk4jPMewkMk2k378LJqvb0=; b=XL0oUt+DHzLfGt
	V4qCvgc1acXutoihQE4jT5nSld8gm4kS+9/6BJM3Y7RYt2GLuS4eEDgU3uN9XYQcgPhxrqjViKJ/S
	O/dmlV4qZyhOu+VNrZyhgrVm2OBnAiuw8At/5i9IbTkBCq+f8lQbPoO6Jnupns2RyakJt0aFF12A+
	p0XjHNOMjd/wnSEr+m4PSuTf5nzHb6v/YYqO5Hfp8Mp4RV/LsZXgtbnY/Extgrl0lvvbj3iPZvbhI
	X5xcLzuQq7zt821zwy0K/zFkDu3gsBuMMXaCK4usE6boNSWU98E3l6lbfboaVNK2tGE9S7kSJ//EE
	+H3JV5/2w3w7+lkkBfmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTvf6-00000004dfB-2QO4;
	Tue, 24 Jun 2025 04:53:36 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTuUq-00000004YoQ-2YE7;
	Tue, 24 Jun 2025 03:38:58 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 6DA7825E27;
	Tue, 24 Jun 2025 05:38:53 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aFgsdalLs7_F; Tue, 24 Jun 2025 05:38:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1750736332; bh=yODzzaf9Fz4zDNnq6RmSVB/x6hfsM2gZLYhXaaV9Fc8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Nfh7JAADztLWQODlkPoldvQSDqPRmIYLBqWG0Gmj7CKFNAhLcztG/ZlgX/O//39or
	 oqOHrrJiy3R4LDUvhVExr5ke6E7LCVTGFVkVZs7JbFNYJeOwJgY0URA80F7i5Poab4
	 C9ETlWWVjFfwBLOkD5T+b4hHcIGkwGqTw5p7mPuroUhdQAvzctL5Azc/ZbK/AS6/AE
	 vU0jvLh9BjkZ45q68OArFjO2gGrzTNgPdkqSLdHPqfglW03IUgnTreQUxgTJN/23CN
	 0vValTcbSTuewKqC9x3ahxxn08vuNHQnY+ucldNdynsJh06gUtZe4liCnJAyGy73Sr
	 fqmhfRvYSAh6A==
From: Yao Zi <ziyao@disroot.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Yao Zi <ziyao@disroot.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Shresth Prasad <shresthprasad7@gmail.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 3/6] dt-bindings: phy: rockchip: naneng-combphy: Add RK3528 variant
Date: Tue, 24 Jun 2025 03:37:30 +0000
Message-ID: <20250624033733.50197-4-ziyao@disroot.org>
In-Reply-To: <20250624033733.50197-1-ziyao@disroot.org>
References: <20250624033733.50197-1-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_203856_777189_DB38CF76 
X-CRM114-Status: UNSURE (   7.36  )
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

Rockchip RK3528 ships one naneng-combphy which operates in either PCIe
or USB 3 mode. Document its compatible string.

Signed-off-by: Yao Zi <ziyao@disroot.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
index db293d2fbf1a..379b08bd9e97 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
@@ -12,6 +12,7 @@ maintainers:
 properties:
   compatible:
     enum:
+      - rockchip,rk3528-naneng-combphy
       - rockchip,rk3562-naneng-combphy
       - rockchip,rk3568-naneng-combphy
       - rockchip,rk3576-naneng-combphy
@@ -108,7 +109,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: rockchip,rk3588-naneng-combphy
+            enum:
+              - rockchip,rk3528-naneng-combphy
+              - rockchip,rk3588-naneng-combphy
     then:
       properties:
         resets:
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
