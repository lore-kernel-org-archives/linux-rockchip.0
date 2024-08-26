Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28D64C5472F
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 04:55:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UMS/RhBFnTNcdTYuTO1ve+GHxWCN1QYM/dwt55PqBuI=; b=hKPKkCv4HyXn7j
	9we2CiqMk0Ir+B1EL4ATQuxhS6PQcJzX2oDoZmjL2aE5P6oWFnKReBLXf6Uy/jTmGcig/ZeCAqbvI
	4fvOYJvU3mKgvC/3eXmvG/yZTqZZvgFwKdvLVi7V6SxTUh1/Qda6iiLlmplqpYwm7cZGJMKizFssX
	lgIXfHOGq2TRGVeDv1fJT7oYF2utfkVSzXzUbFCrtjJ0ePZq8V9eFbHKH0kC3Vdjgy689MeVp4qlU
	zNFYO+ELuozH2aJZnVPlN8z0fUwyhy3NIUOGDxWXIWYkn5uQKv4XUjsGIPjyXsN5ELsvRhAXi9Gzg
	8QRbOdIis6EL4i0fHB5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siRkw-00000005pGA-0hrR;
	Mon, 26 Aug 2024 04:55:06 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siRiN-00000005onp-1Yax;
	Mon, 26 Aug 2024 04:52:29 +0000
Received: from bigfoot-server-arm-node1.classfun.cn (unknown [124.72.161.4])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 152E378921;
	Mon, 26 Aug 2024 12:46:00 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 152E378921
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1724647560;
	bh=xy3BVZ51BxjGwxtVBSSEMAXgINYYbn7h0bC1DIDUHk4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IpZERUNSKzCW8tuMIZO8grTY68X9AXA5/707euG9hp/rnSW2Twg2WwrOjWki25YOe
	 W5OTNqCKwHpQfK6IeAri0U3saSmj1Z5jWQMQXEVIwxh08ZAzJTtrzQdoYgy7bZvb4k
	 TeEnDiMaaSTnVjAF1mxDc8mFBcPovmhupnm/DyMg=
From: Junhao Xie <bigfoot@classfun.cn>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Junhao Xie <bigfoot@classfun.cn>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Shenzhen JLC Technology Group LCKFB
Date: Mon, 26 Aug 2024 12:44:11 +0800
Message-ID: <20240826044530.726458-2-bigfoot@classfun.cn>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240826044530.726458-1-bigfoot@classfun.cn>
References: <20240826044530.726458-1-bigfoot@classfun.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240825_215227_577966_60274576 
X-CRM114-Status: UNSURE (   7.60  )
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

Add an entry for Shenzhen JLC Technology LCKFB (https://lckfb.com/)

Signed-off-by: Junhao Xie <bigfoot@classfun.cn>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index a70ce43b3dc0..e5d64fc4fe31 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -804,6 +804,8 @@ patternProperties:
     description: Lantiq Semiconductor
   "^lattice,.*":
     description: Lattice Semiconductor
+  "^lckfb,.*":
+    description: Shenzhen JLC Technology Group Co., Ltd.
   "^lctech,.*":
     description: Shenzen LC Technology Co., Ltd.
   "^leadtek,.*":
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
