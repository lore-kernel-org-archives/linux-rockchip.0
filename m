Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DEAFC71130
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jul 2025 17:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nab6rF5zSS/MZTrRodQZncMqlC91J97zlLqUaC88kGA=; b=01QJ/9JBX4gWPM
	SnCPfAAh3quRa8Es1hOMiZA25/Q/dbx5LW7GeQk9BGUAfrNYuKBl4hEjo5gIKnbN9TPCUZWrANQZZ
	pAtD80VpGqkd06JX0iFY3BczydEXBWfbqMj3hmhyy4rvTtdmhwCYck5ruYJpe/CeNAl2O/JFIzByd
	/vS67e/pNqNvSErf1KCPI9mOjuOqBLj1/QRNkhFNZimePjXuXQXJvszq+TWBgJC5kIQok2ziiJNRX
	pTVGc3voMVU9tiwRyfJalEv0lhE144USo8ZxaKWKEtJTKcIl1yXqU7wGq4ufspyBoP9B1CMtREct7
	0nWnZKp+8gKTrbKizoRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYpgD-00000003Aw9-2y38;
	Mon, 07 Jul 2025 17:31:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYp2I-000000033tS-1Y5b;
	Mon, 07 Jul 2025 16:49:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=UssX1ASejeE1FfOOTatFss1tZXaYm0On8IoX7Y///lI=; b=pYYzZY8mQ8czGLIn/1QmcdGsNP
	7ooLfZukGQP9nDSqZmkrwX4Z8QK1B3XlGyHIvM9d60hE8lJw/Bt4dugJxKxYBSxfkW9gKyvGWyahs
	SpEbaJTl20RwPrs0yZEdH9nXD+xDbzoiY6P/gP4hOy0zGuQWPJJkZNVYcyXNwHsA4ZyiWs+0BhC6u
	6QqMDhKaerWdDCKvrsrp00wOfIuEbRugqthQQuS2H+w6WTtj3J9qpcE6iwMW5bx9zpTH6RshdJvsW
	axBWW4ya8xGTXuHF4vC5En3zKI+j0buxKSgUIxSf5EhEhQIuQtLt/MbsihJpMqP5oug9wmD3S3x1+
	NVAZv7wQ==;
Received: from i53875bf5.versanet.de ([83.135.91.245] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uYp1r-0004yl-NF; Mon, 07 Jul 2025 18:49:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Subject: [PATCH 04/13] dt-bindings: vendor-prefixes: Add prefix for Shenzhen Bestar Electronic
Date: Mon,  7 Jul 2025 18:48:57 +0200
Message-ID: <20250707164906.1445288-5-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250707164906.1445288-1-heiko@sntech.de>
References: <20250707164906.1445288-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250707_094946_413894_E2374FC7 
X-CRM114-Status: GOOD (  10.66  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, linux-kernel@vger.kernel.org, maarten.lankhorst@linux.intel.com, hjc@rock-chips.com, mripard@kernel.org, andyshrk@163.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, tzimmermann@suse.de, andy.yan@rock-chips.com, quic_jesszhan@quicinc.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add the prefix for Bestar, named in full both on Panelook.com and their
display datasheets as
  Shenzhen Bestar Electronic Technology Co., Ltd.
which produces at least DSI displays and maybe more.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 5d2a7a8d3ac6..5e066c07c188 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -216,6 +216,8 @@ patternProperties:
     description: BeagleBoard.org Foundation
   "^belling,.*":
     description: Shanghai Belling Co., Ltd.
+  "^bestar,.*":
+    description: Shenzhen Bestar Electronic Technology Co., Ltd.
   "^bhf,.*":
     description: Beckhoff Automation GmbH & Co. KG
   "^bigtreetech,.*":
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
