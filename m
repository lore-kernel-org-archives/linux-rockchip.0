Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B9BCC77B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 May 2023 23:04:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RhRmwebG2w+o+Qymlxz5tuZB4jtHtXJwnOlTMI2zgOs=; b=2vr5GLjTuUwwu1
	wB1bv0l0AwDh8wgZzp/Ow4ezNxM+PGfpVmYAQytJlMjSVeX0ZUHX6KYGJG0zGECyARyeS4Eb/W5DT
	1tTlY2EpOjNs2iEGcQ3IyhABRfPTgY5fYD1NM3XGuvYZ40mQ0pkCdsBBx8CpPtq4K13huSlqbo02o
	k300foAFcuZ9EcYbBKhYzlB/K7Ewwbg4QXvoiSaqyBkKjHpvA+JUuMbXDyEliCdMvC1BgEV/rjcFY
	Ww+bqZAE0AZKkkSK/HflXe2wBOtGF44tQhSOD6V6Pjo4qzAH+Ziuu6F+F+bNcgER6uCvYeHvtLmm3
	0cIJPYY7GagDkhrAZS8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pz3iG-007OTE-1J;
	Tue, 16 May 2023 23:04:12 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pz3iD-007OQV-0d;
	Tue, 16 May 2023 23:04:10 +0000
Received: from localhost.localdomain (unknown [IPv6:2405:201:0:21ea:73f6:2283:f432:3936])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4AA25660322D;
	Wed, 17 May 2023 00:03:56 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1684278248;
	bh=q7DeK2S2OQkUm9aAia29KELl6k5xzi/Rod0mLsIEALU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MkvF1OSgSOmsRxfiohHOFcn+geDm17i5fZFWtOQoQF15BxfzDL10xxKK6QJqI02bD
	 hVOps6siX71uu3cI4pa3nr3JNntxP4riYnpF2tDAbGeH392IO3oVhWlq+0lGGfq7YL
	 6pNS2Dr7F6TvJ1RfqJR51xBWBk12ENkXt0SHLMZrrA9BwjkReWvmwXPl6+opa0bk23
	 LZxHQqJm3iUI3OaNr/Bv1V9tuCdZwanID8ciLRe62p32nYLn4KBJavIGNxqth3v5tN
	 GpJCTtjgO9j6cCoQ8vzuAmiyU0UCL4sm9vZYrQQ+O0lG+owKPLxWEjF7P3nh5bmswg
	 WISvHFU/BaD8Q==
From: Shreeya Patel <shreeya.patel@collabora.com>
To: jic23@kernel.org,
	lars@metafoo.de,
	heiko@sntech.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	sebastian.reichel@collabora.com
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	gustavo.padovan@collabora.com,
	serge.broslavsky@collabora.com,
	Shreeya Patel <shreeya.patel@collabora.com>
Subject: [PATCH 7/7] dt-bindings: iio: adc: Add rockchip,rk3588-saradc string
Date: Wed, 17 May 2023 04:30:51 +0530
Message-Id: <20230516230051.14846-8-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230516230051.14846-1-shreeya.patel@collabora.com>
References: <20230516230051.14846-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_160409_360268_3697193B 
X-CRM114-Status: UNSURE (   7.55  )
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

Add rockchip,rk3588-saradc compatible string.

Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
---
 Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
index da50b529c157..11c27ea451c8 100644
--- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
@@ -21,6 +21,7 @@ properties:
               - rockchip,rk3308-saradc
               - rockchip,rk3328-saradc
               - rockchip,rk3568-saradc
+              - rockchip,rk3588-saradc
               - rockchip,rv1108-saradc
               - rockchip,rv1126-saradc
           - const: rockchip,rk3399-saradc
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
