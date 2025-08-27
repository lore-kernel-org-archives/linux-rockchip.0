Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EE1BCA1008
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Aug 2025 11:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SWYGkUG/LQlDmKPlw0hA3yQd695lK+kuUyIrzGkQ5vU=; b=DOJOW1XCzOHSJ/
	i7jGe0DWCZVwfrMD20z18DR6FYMzN/WLxFhcCzsrvgx5Yij6HWDsk4MGsZIjRN1qwNQ6ijFPmeQ4O
	ibZOoVgVCdMbg/SWbwaggwTFWcVw6zNDqBl458KWNMr6bVmthKJxv32I7JuHCGCPmJLEldXFFNLwB
	bW+SpAaqC/1If6BH9Heiay4v5qIBC+R06OF7LF1LjdEGpFmcqVyHXdDCz6Et8oRAcMsK/KPeNbkW+
	xCUnCu9RFKcYkxPdIYLS31c1WqQHPoJ6BSAWn5q0X8xuaDIG5CRkr1hEwwRztpiq5Rh0lP/5pnlpk
	0JdR4532oczbv9jq3AxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urDzd-0000000F9l9-3Lqw;
	Wed, 27 Aug 2025 11:07:05 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urC8f-0000000Emtc-1sex;
	Wed, 27 Aug 2025 09:08:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1756285695;
	bh=guHXFU0f2kzdHH8bw4/i4gGvFNRMxxvXfItx9t7XXpU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=eUhQmUztgLwm0qAhvr6kSH7XIK11pXCWn1//lRoesUiRwQ7Uq87zh2YYarw+jiiD0
	 x+fpT9L7kkt0dF8wLVdON+4rYia7JHA1vYALbCRRxXdCD+z7fY94pMJ/BwLjiMN8HF
	 3ia8+Dte8vTmdz0qf2D8YOPFWzNMu9KOhVUMfOBm+ZVUi1NBiWFRwGd5bUO/OX/wot
	 mB8pI7feELXuSQQ3vmHpczsVBwaYpwAODgaO+lUspXE2oUWcbUu/Y97+4hnmS69WGH
	 p1IOqyTiews4iXVtkVCrL0CTytTTSx3Z3kEgqAy3+Q6wHYed5jyJA5XlDfZVVxHnjT
	 CV+PJdLOrruhQ==
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:4be:99b9:5069:3bef])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 47B1217E0483;
	Wed, 27 Aug 2025 11:08:15 +0200 (CEST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: joro@8bytes.org,
	will@kernel.org,
	robin.murphy@arm.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	nicolas.dufresne@collabora.com,
	jgg@ziepe.ca,
	p.zabel@pengutronix.de,
	mchehab@kernel.org
Cc: iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	linux-media@vger.kernel.org,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v8 1/7] dt-bindings: vendor-prefixes: Add Verisilicon
Date: Wed, 27 Aug 2025 11:07:57 +0200
Message-ID: <20250827090809.34555-2-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250827090809.34555-1-benjamin.gaignard@collabora.com>
References: <20250827090809.34555-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_020817_630361_0405D2A8 
X-CRM114-Status: UNSURE (   8.24  )
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

Verisilicon Microelectronics is a company based in Shanghai, China,
developping hardware blocks for SoC.

https://verisilicon.com/

Add their name to the list of vendors.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 77160cd47f54..ef71164ab0ec 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1654,6 +1654,8 @@ patternProperties:
     description: Variscite Ltd.
   "^vdl,.*":
     description: Van der Laan b.v.
+  "^verisilicon,.*":
+    description: VeriSilicon Microelectronics
   "^vertexcom,.*":
     description: Vertexcom Technologies, Inc.
   "^via,.*":
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
