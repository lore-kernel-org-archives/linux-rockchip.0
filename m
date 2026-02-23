Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98FF3EC1120
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Feb 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CQeRBfCwwnfiUi0s81m+b/+BUzVT14Rjqw/d9Cn5Es8=; b=0j7YhfYEe/fXhv
	HFKAS6PqIkYP3TIP/7R2/cg/eK8Scr79rn2EZDg0L2z9JjcvNigRMQp9zoHmGb40DpM2dJCF7hmjA
	ipXOR2R9nCCWkzmY8DYELXkMsqBaqFunDIR75b6SvSkCKal5kX+P4r7AwoBbke0py5oRjOEND3FIB
	XVKZx352VZWKmmJvDmhsZY+caFCET7FiVjwV+dDKFUzr+M1QRmCdIntW+rz+YnD7xfebnkKfocH5l
	9G9C0+yviFxkZVsI5IdeyXrryz//E4g1dAl9xi1U8HPrnlZlQ+HvR65c+BTJWvuGNhbkHZ/4HyW3w
	KqWPJL/BGjnhNk7aHXGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vubwt-00000000x69-0Akj;
	Mon, 23 Feb 2026 19:50:31 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vubwq-00000000x4s-3c8S;
	Mon, 23 Feb 2026 19:50:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771876226;
	bh=6NMNLw1s2WsA6uRfmv4c97SwCFOyXqpvR550+YMrFuI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=fjHwpuofkkdWxQVNuLZ14r9wtAUV/v+v+lNfbCEkdXvwI+OVs3kGKCbLMFcgiV0S1
	 jxW3d3nHOkBV0jpQFVZJZx+G+k862sZYcS2QNu9MZmo5B3gyK0Nm874wGaQRVunJMP
	 Hxo1A4WfRTWS+TT7rx7nDTtGcmxrdqq+zomh7bsag5r27YeL+sdrJrcW+s/K8RrDTS
	 YUU+KQJdHBmaRGr606wvgNdhvVBO5Iqt6jSp90T71KyYVu5acjcsv9Px2942jWltua
	 E+3eBUfOEwLWWUsvB4gICLqM4dafZHVzY8p8VDgLvk6lsuq5fvg3bAZo50xOaYLh0H
	 TCqnnUhvEG6Bw==
Received: from localhost (unknown [86.123.23.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id DDF3F17E0411;
	Mon, 23 Feb 2026 20:50:25 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Mon, 23 Feb 2026 21:49:49 +0200
Subject: [PATCH v2 1/3] media: dt-bindings: rockchip,vdec: Correct
 reg-names order for RK35{76,88}
MIME-Version: 1.0
Message-Id: <20260223-vdec-reg-order-rk3576-v2-1-daf4942dfc02@collabora.com>
References: <20260223-vdec-reg-order-rk3576-v2-0-daf4942dfc02@collabora.com>
In-Reply-To: <20260223-vdec-reg-order-rk3576-v2-0-daf4942dfc02@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Detlev Casanova <detlev.casanova@collabora.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Hans Verkuil <hverkuil@kernel.org>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>, 
 linux-media@vger.kernel.org
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_115029_054996_DBA3EC5A 
X-CRM114-Status: UNSURE (   9.27  )
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

Update 'reg-names' property to allow providing the register blocks in
the expected address-based order for RK3576 & RK3588 video decoder and,
consequently, fix some DTC warnings.

Additionally, drop the 'reg' description items as the order is not fixed
anymore, while the information they offer is not very relevant anyway.

Fixes: c6ffb7e1fb90 ("media: dt-bindings: rockchip: Document RK3588 Video Decoder bindings")
Fixes: a5c4a6526476 ("media: dt-bindings: rockchip: Add RK3576 Video Decoder bindings")
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 Documentation/devicetree/bindings/media/rockchip,vdec.yaml | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
index 809fda45b3bd..2d3164a2882b 100644
--- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
@@ -28,16 +28,15 @@ properties:
 
   reg:
     minItems: 1
-    items:
-      - description: The function configuration registers base
-      - description: The link table configuration registers base
-      - description: The cache configuration registers base
+    maxItems: 3
 
   reg-names:
-    items:
+    oneOf:
       - const: function
-      - const: link
-      - const: cache
+      - items:
+          - const: link
+          - const: function
+          - const: cache
 
   interrupts:
     maxItems: 1

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
