Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D95DCCA47F
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 16:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y1aXtXWhnocuV6rFIYdpk3+lomcHc8LmEpruPiH88nw=; b=RVzxGko4DsjMkF
	8QRVtGpcf7oj3sZKuRYZlUwIGe+1N3Zyfp7qWMDXgYri/WQsOwmCtvBcGUV/XR6T5pSISEEfqx3SI
	kCWVcmAxAKdqWm7cOnBPXar29Mu5oBZwHzSPPXQi5wY7LP5l6tEluTD57nLejhSB9yS7qiAQCyLf7
	dVKG5/1puZurmMH1mrsI4tG1GCX5ICH6uF+t4o+T/yc2uPZx2Re+NiuVwN3dAqhpfYnP0bnjmjN6B
	cCrA/YnhnDrfL5iYu1hxuZIZnk31YSPBshWtAXsQy8IwO0IrfKilt/p50mGHvggn6f+gG36H5QmKx
	bVyOcfdQ0TRvgIlrN7vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4PNK-00FowD-30; Thu, 23 Jun 2022 16:08:10 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4PNH-00Fouh-AN
	for linux-rockchip@lists.infradead.org; Thu, 23 Jun 2022 16:08:08 +0000
Received: from jupiter.universe (unknown [95.33.159.255])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E8ADA66017E7;
	Thu, 23 Jun 2022 17:08:05 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1656000486;
	bh=q9J33uYPMktafJTb3YVjGjiU6bVVAfRG+db8e8nmGWQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mBy7YqTN+y0phIUnivdmJNn1dKIayjp5GUlSvaXQASq8DDB1kyBW5YCTft3DcLwzC
	 +xo4ilHmK6cNPoQOqG5GwE4BG7bAHITJt0/o/tQLuVsMEiv+1h/EvQ9Xsu+Xv6ET/i
	 pbQxIA/RnzbRZe6UPc6RO88D5WGc1xmlF5Sfrom05ZrAGs3/OUrLMYZgNupIFlLaDV
	 A+FjJmhrTS/ZiivTiqnB+zeJl0qdeOEklmm5LOwecGxcGFDDU2odlBQ8ijb7gLzweJ
	 EUV9Sa3CBKdNXgREil09hpfUDOEgNX6Q1RRytOY4B908EyP0hueJMr37AxtthxhUrP
	 zGKO3n4oDG0sg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 9E59A480125; Thu, 23 Jun 2022 18:08:03 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	Rob Herring <robh@kernel.org>
Subject: [PATCH 1/2] dt-bindings: gpio: rockchip: add gpio-ranges
Date: Thu, 23 Jun 2022 18:08:00 +0200
Message-Id: <20220623160801.240779-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220623160801.240779-1-sebastian.reichel@collabora.com>
References: <20220623160801.240779-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_090807_524450_BDA9DA97 
X-CRM114-Status: GOOD (  10.68  )
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

Allow usage of gpio-ranges with the rockchip gpio controller. The driver
already had support for this since it has been added to the mainline kernel
in the first place.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
index d4e42c2b995b..affd823c881d 100644
--- a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
+++ b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
@@ -27,6 +27,8 @@ properties:
       - description: APB interface clock source
       - description: GPIO debounce reference clock source
 
+  gpio-ranges: true
+
   gpio-controller: true
 
   gpio-line-names: true
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
