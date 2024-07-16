Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB185C3DA59
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jul 2024 15:51:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MfbYHqN/TvvGLcqr4ubcfgz86qf0KJ6YQPyELK86ST0=; b=lIr8xorryZlok/
	CbUFz/VDgvWwi+myXcGNFwo8CZC3nk7DOPI3h25XK9OzXP8/xUOYfHbZN8j5ZyhE4t7NB55+J1QJl
	43kw3EzCp9Qipc5C3cci3slFw8tGoJqCO7/EGKWSx1uC1IzlBfDwK4nOHwjGUyoX9N+vf+e76r35q
	zdOVvhyvJ88V1r3Qnif7ELVTePpBhjOQ6vzrVrvVeK4fORjQbBry11D9k1cNJOKoKAF15N4juGNfG
	GF+azH7b7NOiYYLiqTVFIq4b1+Omddmf3UI4lMetosX/XhjnaLfcPb9uyLTmR+ZVs+Dj5p/9zONdt
	L4YN0zDceKr47NDWrouQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTkSh-0000000AxNe-0EQe;
	Tue, 16 Jul 2024 15:51:31 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTkSK-0000000AxGK-3lje;
	Tue, 16 Jul 2024 15:51:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1721145066;
	bh=Q2Mlft8Y56s8Vjeg4O3l1zZuQNCYpMaZI5odbUhc1lE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=0e4kOoNvRAg+zhLmyQowbrH3Entrkmhzhl4RK3TjIzQHF4On8mAgD2YaYtTMLJ82r
	 ZsEvOu/6pKTE4eyAhtSjD+RjbfQ/doIW7M0IWyFB5wDzfiYy2QUV+46J3PU4tzi2OK
	 TdXmY0lr2WLVtbcgJZCYdFyPy8CRZkrS7GRO79ZaKnXHqnhghU3NiyRUruFHjB/VYw
	 8F7RsB6PD1iNVtVp6UI9YVFC6sKoTAiWhk/DNGd0CYB2oeZM4pSMpW0SUwHzzhMdtz
	 nDF3Xdoil3aSQEJZSgJMtiFcz3jAv8FU/JEK1hSp1UIMpSTCmWTgni+4Ha0H/aZNxk
	 FN/Vn5MYzL6yw==
Received: from [127.0.1.1] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 990B637821CE;
	Tue, 16 Jul 2024 15:51:05 +0000 (UTC)
From: Christopher Obbard <chris.obbard@collabora.com>
Date: Tue, 16 Jul 2024 16:51:04 +0100
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: add Firefly CORE PX30 JD4
MIME-Version: 1.0
Message-Id: <20240716-rockchip-px30-firefly-v1-1-60cdad3023a3@collabora.com>
References: <20240716-rockchip-px30-firefly-v1-0-60cdad3023a3@collabora.com>
In-Reply-To: <20240716-rockchip-px30-firefly-v1-0-60cdad3023a3@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Kever Yang <kever.yang@rock-chips.com>, 
 Christopher Obbard <chris.obbard@collabora.com>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_085109_277477_EE8A7FA1 
X-CRM114-Status: UNSURE (   8.50  )
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

The Firefly CORE PX30 JD4 board is a SOM and motherboard bundle from
Firefly. Add devicetree binding documentation for it.

Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index e04c213a0dee4..19e06e1253e15 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -148,6 +148,11 @@ properties:
           - const: engicam,px30-core
           - const: rockchip,px30
 
+      - description: Firefly Core PX30 JD4
+        items:
+          - const: firefly,core-px30-jd4
+          - const: rockchip,px30
+
       - description: Firefly Firefly-RK3288
         items:
           - enum:

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
