Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD82AE92706
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Oct 2023 14:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=070w6afYaLMSbFsdHGEsvdW2m+RY96uJ6xRWKrBnnjY=; b=FVY0iPRUuDn7oP
	8dil9JYO3yt5AJ97xxArENPk+RONocw+Dk3XBDvDc7D/y4+AIrgavD4xDBhTuYmg+NhYErpOy4OKa
	WcA/f2sMtsdIRtplmXypMDsWFY3HekTw9onR1w7B1qLSCtiohm7jTxyHsfehtChhunLiVB0795eSX
	+vctugT99d7VOneImDEK/wsLkHB9lZXINubeOvkSlwlxv4VZJ06TCfniM++NHTylSY8t6yl7Uickv
	/vjiX+DFBmXPmj4de6I1jXLWXs+4Gf6mNU/8Lijq6QfdMlLhLp57a8EiOxgQl8H1MDDy15lQFRVvZ
	NwZANS9UN7UIdQe4RpDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qoPfj-003nSs-2E;
	Thu, 05 Oct 2023 14:49:51 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qoPff-003nRf-0q;
	Thu, 05 Oct 2023 14:49:49 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:4c53:5fd0:f25b:b0dd])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 032DB660732D;
	Thu,  5 Oct 2023 15:49:40 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696517381;
	bh=CF7/KkgReu8FU2SkL3JEWvn04trO5qgnAMQhy/t48ak=;
	h=From:To:Cc:Subject:Date:From;
	b=fkjgfuYInamRq+lbhlWpcBOM/T8jkWBMMsSbwgIzXVaLZlb1uTmcLPA5Fyd5W1760
	 Syk95zka1pYfVE+7VRiLZ/VC5XvJptzGUm8Zb7Rd9meS0KiOAtpSls99L3oYO6TWQS
	 KaCR2DZ1kY/fNQNyMSDdDIfJ2/wWtrLpLCLpmVgZEh3KkAFYOrOfOnFfx3GY5jHesO
	 4VaSJ84386k0Xn3LxGrdeCs2wWsnMLF63JYfMohvzkcKhCkMBkeYhDRadUDBTqOYZC
	 2/hlmFGiYiu2T8Az0eJeEusJmUUy57/MfYY8nWW6nIvYtsFHKqETJOwBWsbiImKR9a
	 Ajqd9z5RU8zjA==
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
Subject: [PATCH] dt-bindings: media: rockchip: Add resets property into decoder node
Date: Thu,  5 Oct 2023 16:49:34 +0200
Message-Id: <20231005144934.169356-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231005_074947_440794_356DD145 
X-CRM114-Status: UNSURE (   8.01  )
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
already support it.
Update yaml file to be aligned with this feature.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
index 772ec3283bc6..52c7c840455f 100644
--- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
@@ -68,6 +68,9 @@ properties:
   iommus:
     maxItems: 1
 
+  resets:
+    maxItems: 4
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
