Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD811C5DF8C
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Aug 2026 12:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O3mcX+t3+yo6QxUe7Ilg1h+7gQ59hg12a3FKeCc/Jkw=; b=mnG8lc99H3PDbu
	6lV20SzQlWqSH/4frRydIE87aEqccc1e8X78jgzGSrJI1rRgGnSX9eP9lKluUzO365ZXX19aGWhqQ
	qKHNY3bP7N/wV2h4ZjUHsooPboRFIJ8Vy33kxMuf147qMhg5kCmEvOHwk60CsAWEiIlSv5y/2bCwP
	xy8XF6dMl9qlEsgoQTtWyHdoIzKdkBvWmtKrTeMxTn6iTpQouarOUbVxJIXeuTQkUzgmr1CbDa++l
	lQScPInGwgOAqD1Y7gKOXsS/uyG6dy6sEMEY699hhN6By+9pFprjbLlvneSDYDPKGsXi1CZ0Lwt9o
	Ec+1bNDL3aSXcf0Xz3dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wy7D6-0000000FKc7-1Hyf;
	Sun, 23 Aug 2026 12:22:00 +0000
Received: from mail.zlab.su ([109.73.193.145])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wy7D0-0000000FKaC-2yH8;
	Sun, 23 Aug 2026 12:21:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id BC426BFD8E;
	Sun, 23 Aug 2026 15:21:41 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zlab.su; s=dkim;
	t=1787487703; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=BGaX7DZeXOQA0/nBLDUvFWM17WVGbg1iQdf4XKAR9lI=;
	b=HzVv47cgeugUidKyCTu5cleDaVdH5DNGhT0d/6KuKoYsyLq+yb24QZbCvm2lX5wWVpGNic
	BIWSrFvMC1iIuUj+cIWrsXvAZkM7YwDMOEsyhR0gekuk629/kNg/YaSEBb83YblvasoNjO
	pi9bCU0EhqxXXfbvxzUP37kRD82Q2kQm3lVV2d+sSLiRUch3nKvMNjWAHYcNU1GQcz7Am6
	kisLY0sSWUf9Pi4IODyjw4RDemKH4RFWbIxneURpLBFcbTZyg7VuDtREpyVfLY0vT0pUmy
	6xg6WqV5LIg80lG8cZv8qNrLt+eGA0HDPySIhS3jfd8rQVRVQP+lee6jk670AQ==
From: Vladislav Leonov <vlad@zlab.su>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Vladislav Leonov <vlad@zlab.su>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Joshua Crofts <joshua.crofts1@gmail.com>,
	Simon Glass <sjg@chromium.org>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/3] dt-bindings: iio: adc: rockchip-saradc: Fix RV1106 compatible
Date: Sun, 23 Aug 2026 15:20:34 +0300
Message-ID: <20260823122039.20831-4-vlad@zlab.su>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260823122039.20831-1-vlad@zlab.su>
References: <20260823122039.20831-1-vlad@zlab.su>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260823_052155_289360_B3F589ED 
X-CRM114-Status: GOOD (  10.38  )
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

rockchip,rv1106-saradc was folded into the fallback enum together
with rockchip,rk3576-saradc, falling back to rockchip,rk3588-saradc.
The two IP blocks are not equivalent, though: per the RV1106 TRM v0.3,
chapter 20 (SAR-ADC), RV1106 only has 2 channels at 10-bit resolution,
versus 8 channels at 12-bit on RK3588. Documenting it as falling back
to rk3588-saradc allows device trees that would bind against the wrong
channel table and report an incorrect voltage scale.

Remove rockchip,rv1106-saradc from the RK3588 fallback enum and give
it its own standalone compatible entry, matching the dedicated match
table entry added by the driver patch.

Fixes: bdba14f6122c ("dt-bindings: iio: adc: rockchip-saradc: Add RV1106 compatible")
Suggested-by: Jonathan Cameron <jic23@kernel.org>
Signed-off-by: Vladislav Leonov <vlad@zlab.su>
---

Changes in v2:
- Added missing Suggested-by tag.
- rockchip,rv1106-saradc compatible moved from the single-entry to enum list.

v1 https://lore.kernel.org/all/20260816113636.33635-1-vlad@zlab.su

 .../devicetree/bindings/iio/adc/rockchip-saradc.yaml         | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
index 78ec9a33da24..0cce357cb01d 100644
--- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
@@ -19,13 +19,12 @@ properties:
           - rockchip,rk3528-saradc
           - rockchip,rk3562-saradc
           - rockchip,rk3588-saradc
+          - rockchip,rv1106-saradc
       - items:
           - const: rockchip,rk3506-saradc
           - const: rockchip,rk3528-saradc
       - items:
-          - enum:
-              - rockchip,rk3576-saradc
-              - rockchip,rv1106-saradc
+          - const: rockchip,rk3576-saradc
           - const: rockchip,rk3588-saradc
       - items:
           - enum:
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
