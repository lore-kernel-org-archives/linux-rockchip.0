Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A9F7CA101A
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Aug 2024 20:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SuXj4mT+q9tPqRVosAvLWVhtn5xmjTTctkQVZuomBp0=; b=eB5jk8DQBuz1w0
	2cE+rsWIueFkfhZP6dPs0F/oqIVfPOHJtqhhPw1VfjMl1xpgWUpE06GAWIEiwMq+60LR6dSIzkwj0
	J7W3qLtehwcNOm7EeK/q14jeKyS2ikFw+epfpRkATqqTyNY65w/Ti5aH9RKnyVAb+nd1e9GgubMDC
	2SrgyBq8Fs3axS6NsgT1a3ZcIEY4Xk0l0vJFn1Mk6cwbyAeLgu2y9XrLSap6H0+2zs+AxC0CtdPWo
	Gq8J3UG1bRZaMtBcDWzhlaaS9kOtOLxe96fK53QRjGBsn9tLtiuPwfGvynOOz1ic+Jru4yHfhPfiJ
	ojx5Lj7pciaUJAJaf+MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk8Py-00000007daI-1lil;
	Fri, 30 Aug 2024 20:40:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk8OE-00000007d4o-40vj;
	Fri, 30 Aug 2024 20:38:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=VC7uW2jsMg3kt3gjJ1vEywpnvPfD/SXYNyfLRKzT+Og=; b=SwHgq+kpTqUByPY+FNnjPCwfpe
	n7NnN0G1bwg5kjtA/H8jyE9OFwvsLGHdvvL+J8xFIaVe5Y5BhWS8l79NJy5mVPtWmMtGWOXs2xSDN
	JguDzXlUgRxA6gX0SieSHb9ktarPUbQgMSiC8HGWIsmzZsGO8AoWqmPVSVcuLrFFpzMGynM+zt1E8
	n20oENcOFXWLRrc/wbtrf07Mf/cTTjyj1yaLgA6R7c9/TNaJGsfljAOPrZXAPJPwOQOCILsZqXTmx
	aLCPScL8cQBW3dPj6oVUsPUcrcPvUqKCWzj5jtR5mLZKeoThfaXFt0p+6ywC757Vq4nfK1nZDG2X1
	G700jrWg==;
Received: from i5e861921.versanet.de ([94.134.25.33] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sk8OA-0006ey-4U; Fri, 30 Aug 2024 22:38:34 +0200
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
Subject: [PATCH 1/3] ASoC: dt-bindings: realtek,rt5616: document mclk clock
Date: Fri, 30 Aug 2024 22:38:17 +0200
Message-ID: <20240830203819.1972536-2-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240830203819.1972536-1-heiko@sntech.de>
References: <20240830203819.1972536-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_133839_042190_82C1394C 
X-CRM114-Status: GOOD (  11.70  )
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

Both devicetrees and driver implementation already use the specified mclk
in the field, so at least document the clock too, similarly to other
Realtek codec.

This has the nice additional effect of getting rid of dtbscheck warning.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../devicetree/bindings/sound/realtek,rt5616.yaml         | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/realtek,rt5616.yaml b/Documentation/devicetree/bindings/sound/realtek,rt5616.yaml
index 248320804e5f..754111f2e70a 100644
--- a/Documentation/devicetree/bindings/sound/realtek,rt5616.yaml
+++ b/Documentation/devicetree/bindings/sound/realtek,rt5616.yaml
@@ -30,6 +30,14 @@ properties:
   reg:
     maxItems: 1
 
+  clocks:
+    items:
+      - description: Master clock to the CODEC
+
+  clock-names:
+    items:
+      - const: mclk
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
