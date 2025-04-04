Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A68AC36010
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Apr 2025 21:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PZD2w3jBRQwky/fxnhNQySaejgEXKKykaCEYME9u0fs=; b=xJM9GH475m5703
	WiOeEwtXM9XRvXHBfNXr32OAKh7/m8oYSBt4WgJ3qzm6u/tmyI9IF/4ulmqplt/M3g466VOcKBMtV
	1zom4fa8GCMe0BFeQrRDGwbEWB1BgtgLuYyQUqSpZpmqUzpJyGquTc4SY560fsEhGnIOs/T0x7ZRW
	LRGuEKw5fP+n1klxiUNKD3615nx5HT0+3iKvDgBeSEkEM1LcgjdPg5xjdo4H5n4GA732tGFMGLWn9
	AckOr8lwvwiDGxQ9rpHzRMm2p8+/g5wfY7gPJU/+Qf4UbcWooL5uHj28dbGjfeFw+8XqQCpZ9EQ/2
	T7VY4eGoOkoCTjnYcffw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0opG-0000000Cueq-2kVt;
	Fri, 04 Apr 2025 21:43:46 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0omJ-0000000CuIg-2rFN;
	Fri, 04 Apr 2025 21:40:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1EF4261137;
	Fri,  4 Apr 2025 21:40:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 050E1C4CEDD;
	Fri,  4 Apr 2025 21:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743802840;
	bh=zFEs3x1/XsRtCRQwZtP7pGruMSG2FDF0PmU+lKKJ9YA=;
	h=From:To:Cc:Subject:Date:From;
	b=lJOZ37XTk6Gzb058yCFIkSasbWMpjaSRo0WBYPx7oY6I29arVAfkMJzlDIq3Oz2dk
	 OxrS2E0bPYx0vVtvExa1HT+SKWo2fPbvwpMWpYoyp/bI03lRa50nFWQoVLCbgrwTNt
	 +YF+OBmSLnZ/qPjNCX3+bwJkTjRf0f3NuR7S80xejJNinrTllZIBi+hrSjSs/sjdXW
	 mOWTBqGz4NUOV0jtVHZSe38vBj1DEygyCP6abYkDJ3sI1DgJZF/p1cLm9KdxxdBh13
	 E5nG2vRHjEgPGZ8YaRFhFFhlkD5bkCmMrGHzvcyrgR6V3IbeJWwoGPvV4nE6CKd1Dn
	 Ac0aoJnHA5TdA==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: display: rockchip,vop: Drop assigned-clocks
Date: Fri,  4 Apr 2025 16:40:29 -0500
Message-ID: <20250404214030.401629-1-robh@kernel.org>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
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

assigned-clock properties are implicitly allowed in any node with
'clocks' and don't have to be specified. The max here also appears to be
wrong as there's a case with 4 entries.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/display/rockchip/rockchip-vop.yaml  | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
index b339b7e708c6..8b5f58103dda 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
@@ -73,12 +73,6 @@ properties:
   port:
     $ref: /schemas/graph.yaml#/properties/port
 
-  assigned-clocks:
-    maxItems: 2
-
-  assigned-clock-rates:
-    maxItems: 2
-
   iommus:
     maxItems: 1
 
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
