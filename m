Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB44CC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Mar 2023 11:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EKJVfHDxHS3pvxRAbd0AnZyj9opG7ffXxdGRYAuM8+0=; b=Ntcj+dM8kxlMjL
	DGfvL6nGf8NApjyIZInoLsZTYMF+dTCvp7OZHj6ufOaGVfPO8n09i62wob31SrU9huPYgf7FJt+FG
	KsW1BEVp8wn2Gi0AOOpvYuWf/WHSjzaJfyWZc3327AAVa71iu63seSzD9rJA+rB9CyoUWJU7Ht9TO
	TzH+FJQoFgc4pJjiUdb6D5Lteh/1uYpq6QmnK+ZaOPYwc65f4Fmlbl2phMBKQ6Qsdg278JZZQMi9N
	S+oC0tl10njNNPbRjbIk0eJuCcYlSc7yUK1kxX3VE4NBJEINXGKF4l/975blEjP8XOdfi/LSKhrPn
	0asakhFcBHSB9JJvfk2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZrsz-004aza-3u; Wed, 08 Mar 2023 11:23:09 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZrsu-004awD-22
	for linux-rockchip@lists.infradead.org; Wed, 08 Mar 2023 11:23:05 +0000
Received: from jupiter.universe (dyndsl-091-248-211-125.ewe-ip-backbone.de [91.248.211.125])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 6AED56602FFA;
	Wed,  8 Mar 2023 11:23:00 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1678274580;
	bh=iWR+Ie0iBDfXOU6xkYUhXbfMDnxFsKJg6EnHQJe+oCk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=a44uYxZ5spjJcG6hvL9PA6l2g24dpX6ghMMsE1n/t2hbWYDTEfiKSws+UQcQukTNc
	 i3Mdv17IC/argWmBEJyZF+A/MSRxQAvhnneQQtjJRgYQX97c0sZ1RQCfF0wjPCM8tf
	 rA1LDu2Eatfxa5bpl6j+RdGKeID5Y4LEWMBWHjZqPpgH22tEJYw/CgA4ZVYvrVXKlh
	 FjOxd7LBbsjdzkLLp+mLxsjkxlm5qi2CQUKOGceEN0a3GI5ySKivDTE+nlxJ2lwA35
	 qfmZcrP2lbAFoyIMJOvXu83AhuFLetKNx+k7P2QL4oyFAz51F7EIh9X5PueTMjurcF
	 Rt7iwWOj9fPOw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 79AE648011F; Wed,  8 Mar 2023 12:22:55 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Amit Kucheria <amitk@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RESEND] [PATCHv3 7/7] dt-bindings: rockchip-thermal: Support the RK3588 SoC compatible
Date: Wed,  8 Mar 2023 12:22:53 +0100
Message-Id: <20230308112253.15659-8-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230308112253.15659-1-sebastian.reichel@collabora.com>
References: <20230308112253.15659-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_032304_282539_CACB5E41 
X-CRM114-Status: UNSURE (   9.12  )
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

Add a new compatible for the thermal sensor device on RK3588 SoCs.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml b/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
index f6c1be226aaa..55f8ec0bec01 100644
--- a/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
@@ -19,6 +19,7 @@ properties:
       - rockchip,rk3368-tsadc
       - rockchip,rk3399-tsadc
       - rockchip,rk3568-tsadc
+      - rockchip,rk3588-tsadc
       - rockchip,rv1108-tsadc
 
   reg:
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
