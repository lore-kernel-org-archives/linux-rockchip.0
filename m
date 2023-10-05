Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBCF5E772A5
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Oct 2023 16:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wUPUHpRf7ESbZ8iSuDhFtywqJ9EyCixDV5Ahh1/Zjac=; b=jg+qGyLc5ZC40O
	0QZrHv1oQhF3TfPm7oxlfYCvabTGJrKapXL+r/bWEBQqIH56fprKStEWrDjMVKelA0CbwP3qzA+D4
	yWGSdKAIqiBhPLVU8sK0yNGyWtDqxlj8wMYf5TourwTNdimqOjuxwODOuq9Pblpb9Xhhw+Vmx3Bhm
	M+BxgxeXpvmk/ASO9MJe4PJFaNPWLo2YB3h9aBt5kmeCAlrYIoLkULqgHPc6dxVWZrtN20Kha9C/r
	qOv7HnZW2yfChwDTaFG62UEciIipTC3VAd/4tr5cY1VUE1aFwKtF2SMjdA+ZKlo6iaz9WhZoBKzqB
	ixE3KgXvX2zjKzGllOkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qoQwb-0040s1-0E;
	Thu, 05 Oct 2023 16:11:21 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qoQwS-0040ls-0o;
	Thu, 05 Oct 2023 16:11:18 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:4c53:5fd0:f25b:b0dd])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AA09A6607333;
	Thu,  5 Oct 2023 17:11:10 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696522271;
	bh=I2txkEvnu/MKP501CqRC09fArHHso7r5qQlX44V5U/4=;
	h=From:To:Cc:Subject:Date:From;
	b=bja4xJPCXX+3IjNN6av+ZzwBFfbJqowvhnre7vfnPmbr3LwXnl86b2trfV77Edku7
	 RiNYy+MxmW8sRPseLaP0qV48GMJ8Nnqt6m0B1agC15rOJz486V+EafHO3f/mQaYW2D
	 ZGOI9rDm2THSEjkMUgb9qfeRLdvmKGOzb3AX6Ea65/7BZia2MhiivbUoynANJFJJBD
	 nXiPXEYxZEm8aoKgAQB44NVpTjbW604g/ENWh3C4fJpBPG8JxObpP2A5S6KViJBN/e
	 1hku+vbu/6UwTTEhndHSKxjc0mGRJew0sro4jzUs62nuxuG34Z4AqnmRV7BDqq2kxs
	 VKrlPelRRA5vQ==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v2] dt-bindings: media: rockchip: Add resets property into decoder node
Date: Thu,  5 Oct 2023 18:11:07 +0200
Message-Id: <20231005161107.269303-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231005_091112_464530_0A5D3B6D 
X-CRM114-Status: UNSURE (   7.48  )
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

RK3588 AV1 decoder hardware block have resets lines and driver code
already suppport it.
Update yaml file to be aligned with this feature.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
version 2:
- Add description for resets lines
 Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
index 772ec3283bc6..c57e1f488895 100644
--- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
@@ -68,6 +68,13 @@ properties:
   iommus:
     maxItems: 1
 
+  resets:
+    items:
+      - description: AXI reset line
+      - description: AXI bus interface unit reset line
+      - description: APB reset line
+      - description: APB bus interface unit reset line
+
 required:
   - compatible
   - reg
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
