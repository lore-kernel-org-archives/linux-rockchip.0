Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47C81C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 16:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eret+96BTwBvqPG/r2MTFfZf1Y8g2AWx60sU+P5Gn0A=; b=zb8NLCiktl/xVR
	B6pWuHExP0fvyYjQXTKRWawAZoSLwPoV0eDk764VCobPcfZzUIqjnMB/LfD5TYppBy5MDqTuTAmlf
	ZazZ9dvs8YyhS3bWncWHPyOgV3rBQ6alrXbxa+86rrrgFGjUqiCC76BtVaqLTfgFkHxrb6LHZWMlh
	vs5Inpz6moPQkwUNtMAH5nrXw01NmIVG/cYAhAYLhlbCzLoxAkO91U8kQ6D1hye0W3+0pIA4w1nEa
	CIksk32gpYuVy/G79fwlvfJDsoecUSMvVaniMzW5mIJm95106mFKklJZfoiX9Iu+fB7E7yPcsy7aA
	EaBsEIkDsP83hI6freuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4Pck-00Fr8m-D6; Thu, 23 Jun 2022 16:24:06 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4Pc0-00Fqrr-Fg; Thu, 23 Jun 2022 16:23:23 +0000
Received: from jupiter.universe (unknown [95.33.159.255])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id DD14B66017E4;
	Thu, 23 Jun 2022 17:23:18 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1656001399;
	bh=1k76+Z2E09lVPZkdnZgMSbCx3lTMmi73P+p2vvelDUI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=nj3U6ZGVJKrzXBjLhjilrvVA72jJGi+xewy9uDejeihojbCYnZMNnh6uYwfOZAHJ/
	 FvOKaFTgu6AI6JlwxdYGykjGhGWFl/xymiv7wjdUdfFYw3QVy8NWvJDpOqpv387+YI
	 003xzcDAmyzRVUsQl4NobE15M9+0puoqWgyyRY57UdhNmHhrddGKAChKVlKAY9Xa0t
	 HqqCYG99YEtUZj0DHCyBYRjnHjfQjUQffLHgpGBMJSKaB4zAZiNEGgWA0m3V5wboyY
	 XctJS1M5NVppbZ4Kr1oXlReYo8Ntv05VVEO9SEcfwYqmJXQ7gM51nBMBfv9y/XOgFc
	 pvixK2UtsIh9g==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 7474648059B; Thu, 23 Jun 2022 18:23:16 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 4/6] dt-bindings: mfd: syscon: Add rk3388 QoS register compatible
Date: Thu, 23 Jun 2022 18:23:07 +0200
Message-Id: <20220623162309.243766-5-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220623162309.243766-1-sebastian.reichel@collabora.com>
References: <20220623162309.243766-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_092320_689962_C98E18E2 
X-CRM114-Status: UNSURE (   8.71  )
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

Document rk3368 compatible for QoS registers.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index fb784045013f..ff1a7aae33f2 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -59,6 +59,7 @@ properties:
               - rockchip,rk3368-qos
               - rockchip,rk3399-qos
               - rockchip,rk3568-qos
+              - rockchip,rk3588-qos
               - samsung,exynos3-sysreg
               - samsung,exynos4-sysreg
               - samsung,exynos5-sysreg
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
