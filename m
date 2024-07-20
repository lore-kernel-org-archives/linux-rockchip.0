Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C64B5C3DA49
	for <linux-rockchip@archiver.kernel.org>; Sat, 20 Jul 2024 20:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oAuqfEa0ZD9pOclaqBaEQNGUslpEx3rnqeQ3QMAwzHc=; b=sqMLcgNtnHwAED
	gFGFh7RFQc4KZUC5XG/OdTMKikFCICZeY86eOhUSMAZavWvEIzqDIGIbQnwCLiA7n+5gxDb6uZkqt
	epI2mJn9BlWqr/gaGz4iWP6G8W5yb7EUXaIeEtX3bvoq8MjBfH/BeSa7EZMYHSsCmYAjzD2l+hg6F
	PzfYweyprIZzsLy6cHzF6wHiz/QERSqWSNelZEXUcxSgdnUg5COy8ui5maWzT4bkCawyeRtzwpwIR
	9KdnsiIw7m6PCVMjAliJXDNwjvg7fDRkcbH7e6/U+g6OMfFKd1dWQVSzcmQrsUyqpe5X66/UfODoz
	dD+HMZbe5AlVcMocospA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVH9k-00000005e6v-3h40;
	Sat, 20 Jul 2024 20:58:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVH9M-00000005e32-2f23;
	Sat, 20 Jul 2024 20:57:54 +0000
Received: from i5e860cd3.versanet.de ([94.134.12.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sVH9D-0005tv-2L; Sat, 20 Jul 2024 22:57:43 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: dlemoal@kernel.org,
	cassel@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	linux-ide@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	u.kleine-koenig@baylibre.com
Subject: [PATCH] dt-bindings: ata: rockchip-dwc-ahci: add missing power-domains
Date: Sat, 20 Jul 2024 22:57:05 +0200
Message-Id: <20240720205705.776384-1-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240720_135752_692568_3407ABF1 
X-CRM114-Status: UNSURE (   9.69  )
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

The Rockchip variant of the dwc-ahci controller does have and need power-
domains to work, though the binding does not mention them, making dtccheck
quite unhappy:

  DTC_CHK arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dtb
/home/devel/hstuebner/00_git-repos/linux-rockchip/_build-arm64/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dtb: sata@fc800000: Unevaluated properties are not allowed ('power-domains' was unexpected)
        from schema $id: http://devicetree.org/schemas/ata/rockchip,dwc-ahci.yaml#

Fix that by adding the missing power-domain property to the binding.

Fixes: 85b0e13b19c2 ("dt-bindings: ata: dwc-ahci: add Rockchip RK3588")
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml b/Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml
index b5e5767d86988..13eaa8d9a16e5 100644
--- a/Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml
+++ b/Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml
@@ -35,6 +35,9 @@ properties:
   ports-implemented:
     const: 1
 
+  power-domains:
+    maxItems: 1
+
   sata-port@0:
     $ref: /schemas/ata/snps,dwc-ahci-common.yaml#/$defs/dwc-ahci-port
 
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
