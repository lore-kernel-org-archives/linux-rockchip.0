Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64FEEC48297
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Feb 2024 18:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AuXifMGjKpA1xZ3+kwXZQHRHL5CstxYIY4sm0y+wv4U=; b=BqpERIQq/1mBLf
	pX31Pbr30dIqRl9U9qiQMRbOAiWwZbnHJJ1tK0qy/auCHr7agvQB8eE/GqJpdDRPDmHy4Q/63MmWi
	zLH0nkgYLza1iSJ3U/N4sa/srA/PfL3cTZCq8+YHiZGbcTza1ZY6da6roLYFRtEMEginPkf+fShL2
	ut8IOtdXmenmsuL514n+nPB2Xx0zB7fYHwNOEXAAICtB+Z5yYOMcCO7Cc4b+l+RR1nQhhx63YkvWu
	3e7BqNNiKUm+3pAXICtmGVNewmei2ys3PvzcqD4xAtZgX0uJUV7KqkbChBX6B43uGAl4gQWbThgap
	9g8uLOGnJijgKJMORynA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYVSS-00000000Djp-2EdM;
	Fri, 09 Feb 2024 18:18:40 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYVSO-00000000Dh4-3xo5;
	Fri, 09 Feb 2024 18:18:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1707502713;
	bh=QanVdLZGJsZiEBFc9AV6ugIOyYSeeb2yQCO75yW587Y=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=SUBofVAJYhLIPTU4SWQQMESBw2uF9Wo+TwBi7QQULgFyvr2J0/R7SsYfupbPU7YWc
	 xb+QlBUWXwy1E4xEll3JGh0z0FFe2gICJfPkPDXopEHVkAPSK/BRC2Qj4SfTgI3aNC
	 iL7MRClT6b6LLv4HOzZFXzU5utyFGKy2XS0JuJHxJn42U0Ur8c85PTGyMHLmCgialG
	 cYXPhiL6bUnKtyFhhOfnRqde1ef6wlwqv7Q2cw59ERcIgXootWZXTN0YKX2hwIXMM4
	 gGZeoxwrN6gjYrIDVOgpclvQClFy1t49DdLtyL0d+kEOnP6s4su/9qmMNsXKZSM6ip
	 1XsaEAkp4FjSA==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id E6AA03780F7F;
	Fri,  9 Feb 2024 18:18:32 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 8DD1A4800CD; Fri,  9 Feb 2024 19:18:32 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 01/10] dt-bindings: soc: rockchip: add clock to RK3588 VO grf
Date: Fri,  9 Feb 2024 19:17:17 +0100
Message-ID: <20240209181831.104687-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240209181831.104687-1-sebastian.reichel@collabora.com>
References: <20240209181831.104687-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240209_101837_287449_86488C6F 
X-CRM114-Status: UNSURE (   8.87  )
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

The RK3588 VO GRF needs a clock. This adds the clock to the allowed
properties, makes it mandatory for the RK3588 VO grf and disallows it
for any other Rockchip grf.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../devicetree/bindings/soc/rockchip/grf.yaml | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 9793ea6f0fe6..20bc1f46384c 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -66,6 +66,9 @@ properties:
   reg:
     maxItems: 1
 
+  clocks:
+    maxItems: 1
+
   "#address-cells":
     const: 1
 
@@ -248,6 +251,22 @@ allOf:
 
           unevaluatedProperties: false
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rk3588-vo-grf
+
+    then:
+      required:
+        - clocks
+
+    else:
+      properties:
+        clocks: false
+
+
 examples:
   - |
     #include <dt-bindings/clock/rk3399-cru.h>
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
