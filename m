Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 327CEC433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Oct 2022 17:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ibZWjIXisulOjUmbL7fyw8f0mGYtfJ271I+5TbMvqCE=; b=gDwtZlVnTeq8Y4
	2egmh3UdbXMR2l6uSVfN4Zpd/LDbsxlBhYNlRnpzZOx0yRZN1UsZF/DIxNEioQq7Cu7n+sByfsr57
	6LtFyluLmqbQregHBq3s8uV9toT1dMXtwTBPYkALuOSngLxWHWzHlIlPFcuSjRy43evWqVnYMhbBz
	FJ0os5jgi5benGiufoxZVrjoEjQWhP6M3LI71LS79aFheQ8eeGkE53x7lIYk1wxiFpZ90qz9b3kE0
	7OnmKfemPgohnMmtl8ZI/1zaO0S9oOHQuxT/Q/7XlPiyDjlDbF/9fEx3C7b2wAona7zfIBJv7DQl/
	xzpan/ie9HVtRfg+33Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olvbB-0098xQ-PX; Fri, 21 Oct 2022 17:14:21 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olvb1-0098w8-3o; Fri, 21 Oct 2022 17:14:12 +0000
Received: from jupiter.universe (dyndsl-037-138-189-087.ewe-ip-backbone.de [37.138.189.87])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 94D41660253A;
	Fri, 21 Oct 2022 18:14:08 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666372448;
	bh=dZP1LqE3ISpjRhgKEIoPvIQMRHq56nH3yeV/sP67VRg=;
	h=From:To:Cc:Subject:Date:From;
	b=d93vNOFREv6wj+Y5ytyPCRWNKstQwy1WrnpMwp4DAPL+1RSFF43GjUJbYlYNKhyp+
	 ckzxqHVjN8kOtw7n7gYz0hUrlp2ZvSOPgl9TpAHIuVqAQu/IAghcYO4Pegrgurse71
	 46IJuYu6mHG1UMGuIX0AYnf4xB48xI5Lmb2pws1PJVJPdi1NFMOaLG48H2LR6TwR49
	 es4duQ50LX9vFNP4sKUbVc1A0Wjen0UGcA83B1I76PfWuwW14oHDiM5ke2bC6KuXly
	 1FwuZ1s6ijnRHLK95MBqZXsCBy+nZGtYhLid+ing0JZJ4oX+JmYwB2XHWnkkbbsw2w
	 XuwIRLAlNwPpw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 6C78448082E; Fri, 21 Oct 2022 19:14:06 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 1/1] dt-bindings: power: rockchip: Increase pm_qos number
Date: Fri, 21 Oct 2022 19:14:05 +0200
Message-Id: <20221021171405.86509-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_101411_305326_A9B4ADBC 
X-CRM114-Status: GOOD (  12.38  )
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

On RK3588 some power domains require multiple qos blocks to be
saved. The maximum required number for RK3588 is 8 (for VDPU).

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../devicetree/bindings/power/rockchip,power-controller.yaml    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
index 0d5e999a58f1..cf0f2946fea1 100644
--- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
@@ -134,7 +134,7 @@ $defs:
       pm_qos:
         $ref: /schemas/types.yaml#/definitions/phandle-array
         items:
-          maxItems: 1
+          maxItems: 8
         description: |
           A number of phandles to qos blocks which need to be saved and restored
           while power domain switches state.
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
