Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7146AC001DC
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jul 2023 07:06:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WF+zrRXl/ALhyLPVMezOgQ/ZRS9252EmvekSmJ1b0as=; b=N4Q9HY1YqytaDO
	6iCAxcr90ISCBH2ajoBzNGNVhFRlQOof0aQ3F/966FvnaCdh7lg0nKRZLIzmZbBrRPZMOmnmpjn1+
	5tVA1wSPFtqoFRpKrrUe3HYdRY4NJZyzZySme6zx2kLgu8RTcrpoXRXq/OXfUb/TwkrrZrNxTzLWP
	nEWTAuURoXgBdrpnr+ctxGOXpx6NI8CCvhOTR+9xq7jPjXcDG9Qd50isXoJCHlFF7Cx4sRACKP5s8
	byyGhfUyus6y4VnxHIwkrrDlPlWCR9w2iWssA8ou1yA3oEHxWucvcmoZle+8febkdz1Q6RcG05agw
	s/aIB+R+TxAk3vF/30eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOYbP-009Mhs-22;
	Wed, 26 Jul 2023 07:06:31 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOYbM-009MgP-24;
	Wed, 26 Jul 2023 07:06:29 +0000
Received: from eugen-station.. (unknown [82.76.24.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: ehristev)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A02CC6607115;
	Wed, 26 Jul 2023 08:06:26 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1690355187;
	bh=iz0YvQ3fnQ9vjxmywIwYRGMCuKmZv1tpf33ccDhklTc=;
	h=From:To:Cc:Subject:Date:From;
	b=UZUUdkhhH4JX93a4W1Gq/45Jt2H5arXOhIrMz0YvKRZl45tpQLrhi0UHtRwg+QxAj
	 1I9tNi9nl0jSWJ5Ws9d5RVCPajRg6V+ikrD8OgSGRCM+G7hwdGuCA6Vaz/mzhU7Aoa
	 Yiju2Bs/nmq2pZhA/SBRs5ZuKMnPGcGHd26g2TZnQOwxt007Nly4s2mC39Komd7sEJ
	 45f/rnwKqFo8mvq2eJHhsqOEkvcQThcoIRb0PXloEg3V6feCYhk4iN4hZBYYXYGkzT
	 InHAOlZVLMqB7EC9dHHSf8FdY5PciM2lJ4GUKQpH4s3EwenPqzaAAx/U4SnvJ1ZSdv
	 FF/MIJjZsY0ag==
From: Eugen Hristev <eugen.hristev@collabora.com>
To: linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	netdev@vger.kernel.org
Cc: david.wu@rock-chips.com,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	kernel@collabora.com,
	Eugen Hristev <eugen.hristev@collabora.com>
Subject: [PATCH v2] dt-bindings: net: rockchip-dwmac: fix {tx|rx}-delay defaults/range in schema
Date: Wed, 26 Jul 2023 10:06:15 +0300
Message-Id: <20230726070615.673564-1-eugen.hristev@collabora.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_000628_807028_05B6B17F 
X-CRM114-Status: GOOD (  11.42  )
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

The range and the defaults are specified in the description instead of
being specified in the schema.
Fix it by adding the default value in the `default` field and specifying
the range as `minimum` and `maximum`.

Fixes: b331b8ef86f0 ("dt-bindings: net: convert rockchip-dwmac to json-schema")
Signed-off-by: Eugen Hristev <eugen.hristev@collabora.com>
---
changes in v2:
- also move the range as minimum/maximum in the schema

 .../devicetree/bindings/net/rockchip-dwmac.yaml        | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index bb943c96c196..70bbc4220e2a 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -92,12 +92,18 @@ properties:
     $ref: /schemas/types.yaml#/definitions/phandle
 
   tx_delay:
-    description: Delay value for TXD timing. Range value is 0~0x7F, 0x30 as default.
+    description: Delay value for TXD timing.
     $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 0x7F
+    default: 0x30
 
   rx_delay:
-    description: Delay value for RXD timing. Range value is 0~0x7F, 0x10 as default.
+    description: Delay value for RXD timing.
     $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 0x7F
+    default: 0x10
 
   phy-supply:
     description: PHY regulator
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
