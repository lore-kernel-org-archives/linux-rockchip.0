Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02911CA1018
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Aug 2024 20:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q9uYPJaJ7FmEi/m80Ced9M+5UwdIvEZr/lqj1KLJDdE=; b=zBXNBZPeIn9wfn
	0axRf0GUDaXV3eGXRQO2SRpCLiWqbz/FgLbEYqYDFvEYODMwZJLmeMI6v6Io0UoVLtmFFjD2nGCfc
	KDfY8tK3JBeIHMO9eaoFQAssciqTZbCCatOsN3b0syqbsqwKo6xjpAc3PrHL55DPySgX6T8nidTkV
	0r0UQw6e5IsqkDi8Rkutf78ggCBJjyPxSZagkng8BsB2HFJPlUbLFeVLwPxLrV/TZlY8JXLTcDsYb
	51kruHcWdO3g/tLCudywTJMrQdL4v0O4HzGOT+1ItjfX19NaEaxt2fiC0H9pmUJRUuegTjWhrTkeM
	mxBTplfH8zzssQFGIP8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk8Rd-00000007dyh-3oad;
	Fri, 30 Aug 2024 20:42:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk8OF-00000007d5B-1y1g;
	Fri, 30 Aug 2024 20:38:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Cve/jX2zAtDpvODGJR1P6htvkNqxysFCrhk+BT6Ib2c=; b=G/P2JBMBMxZ98lnknTZtZqnFrT
	55n4lNzdne2ig1jsP/WrHu43ppM2wQ/tTpDG9Uw8rJ0Pf7NWRWWKnc8UOgkfmpsDtSACnBpDSpo0m
	rbfpVfxuhZRctGTLvO4cMyrL8GhZijFIzuA2DrtmFSgNkDvUt8+xkGZHJ9QlHqC9CzldWyqWGGytP
	Z+kXrItkd1ckHJImL/z1BMmXjkhDPzKwYEjVYIOLJ4sCMlq/T9mdixmb+zhW8Qa+Acgs+WxYECXaY
	YFkO+mcZ6K1Ht5lRbGFZn6m+dX01GEvyb1MiRzcrYd7/xE8j45f5+BWn12p0/4U8T7feaVn5EwT4K
	bUboFwQQ==;
Received: from i5e861921.versanet.de ([94.134.25.33] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sk8OA-0006ey-Lz; Fri, 30 Aug 2024 22:38:34 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: lgirdwood@gmail.com,
	broonie@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	marcin.juszkiewicz@linaro.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 2/3] ASoC: dt-bindings: realtek,rt5616: Document audio graph port
Date: Fri, 30 Aug 2024 22:38:18 +0200
Message-ID: <20240830203819.1972536-3-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240830203819.1972536-1-heiko@sntech.de>
References: <20240830203819.1972536-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_133839_527537_210E0705 
X-CRM114-Status: GOOD (  11.53  )
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

The codec can be used in conjunction with an audio-graph-card to provide
an endpoint for binding with the other side of the audio link.

Document the 'port' property that is used for this to prevent
dtbscheck errors like:

    rockchip/rk3588-nanopc-t6-lts.dtb: codec@1b: Unevaluated properties are not allowed ('port' was unexpected)
        from schema $id: http://devicetree.org/schemas/sound/realtek,rt5616.yaml#

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 Documentation/devicetree/bindings/sound/realtek,rt5616.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/realtek,rt5616.yaml b/Documentation/devicetree/bindings/sound/realtek,rt5616.yaml
index 754111f2e70a..29071044c66e 100644
--- a/Documentation/devicetree/bindings/sound/realtek,rt5616.yaml
+++ b/Documentation/devicetree/bindings/sound/realtek,rt5616.yaml
@@ -38,6 +38,10 @@ properties:
     items:
       - const: mclk
 
+  port:
+    $ref: audio-graph-port.yaml#
+    unevaluatedProperties: false
+
 required:
   - compatible
   - reg
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
