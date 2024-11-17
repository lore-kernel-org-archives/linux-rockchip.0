Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02355D10F28
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Nov 2024 20:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nmTGJS6n9R++cqzC1Md76EOfEiRJ+4XaAlXgokVTqNA=; b=uDOO16h258G/fv
	F3pGpsKQ9T7s7rCr5wPTzWHcNrqn+Pwgzmt2l/1MSXX7U+YDkfU7T6t2W/mSPny1Uwpp3qBu0KtOn
	7Hcif53RBIYYBUBzeHJWXp/HBtfqCA52zNZlLlpnBLexunNyCEE5IZP+nooqHtzn+gSQq4mgZj4jG
	zWwPbTNv7HPS8iWT0+sx1RxVV/0zUzhslKQySFvNE8tWz96lagtjH5lz0BQMPdJwm8ZZOPdOXZKp8
	cLdlb+Fcav2Vxs+evNWC0sPODwqlbQcCWvDjnx5w/JM4H5elRLSmHvVwhMXTZjNicrajqodgK+9px
	P1QKyBGZVZx5E0L8Cf8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tClmh-00000007nH5-1ug1;
	Sun, 17 Nov 2024 20:22:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tCljw-00000007mtw-3wt2;
	Sun, 17 Nov 2024 20:19:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=TKD78TTgurmM3/4RfGBACsKaxsRBI+9fjLe01mkkrME=; b=OpytaC9/ywsGIyVzBGJXRVIYRH
	NXLuUdVVw4O89u8ByJXKIzZe8T8nJzJ4+UKQN0QrZw2MLtF0Ewh0kNHXIAMu2VOYyZ/UTRECisEAH
	WNsgvtWQuFFPKKGu7seUYYqZrvmPrvtUdRORHiAErTmnoKiNunP9CwRAEPESf4cmXy2G0YOXBEiny
	Vja/8drhuZl92kcPlaSpDMmG3nd3xuJ4J6laBIDnp//p86lc0DlkAj6hi5IsNWrsG70kRCudi54z/
	sAO3xDwc85WJARaYjt9z9O0c1XRFdIty539S9Y317AJAL5KgYqYsMKAKSNgYlwhx69eACy1weNplq
	lohJcl5w==;
Received: from i53875a30.versanet.de ([83.135.90.48] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tCljt-0000cF-JY; Sun, 17 Nov 2024 21:19:21 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add Firefly ROC-RK3576-PC binding
Date: Sun, 17 Nov 2024 21:18:54 +0100
Message-ID: <20241117201855.789945-2-heiko@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241117201855.789945-1-heiko@sntech.de>
References: <20241117201855.789945-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241117_121924_986278_52E3C078 
X-CRM114-Status: GOOD (  11.04  )
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

Add devicetree binding for the ROC-RK3576-PC SBC.

The board is based on the RK3576 SoC (4*Cortex-A72 + 4*Cortex-A53).

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 83139479db5e..ccfdc4c20438 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -211,6 +211,11 @@ properties:
               - firefly,roc-rk3399-pc-plus
           - const: rockchip,rk3399
 
+      - description: Firefly ROC-RK3576-PC
+        items:
+          - const: firefly,roc-rk3576-pc
+          - const: rockchip,rk3576
+
       - description: Firefly Station M2
         items:
           - const: firefly,rk3566-roc-pc
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
