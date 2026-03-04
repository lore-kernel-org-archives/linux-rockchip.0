Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5AD2EFCE47
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Mar 2026 21:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a5x5opkipeP3hSuVm3Z8LgifWnRIvh0q+eAxUnKlkFQ=; b=Y4iKbSOXoiju53
	kBg3BA0bjv/WiKdasmPrw/PaP+msh1zecxlyNRPjW/v2Kg4HR5qdDkYeLX4Sn+UWZituafHRCaQ9Z
	u/nz/NXSUz8k0ZKHXZ3cwSyYiuDtZYHajpnA85uKDBdeZiJtw2gQKDu6vmd49EQSOXY0rrX13Unkb
	rNcrVrGe3TbUGgfYokoWtxJBw8tyD2Y6B7iw7ppFRP0rIRGIPMxGuzVJvPfQNfth5/GjZ+p+8SlXW
	xuo3t3tHHLI/5W56K6arAN534r1xgJzh2bSlBZEYWnKVh8dsb36UfI2fsQGVIox0VYgW0JIhapB0A
	sE/17x8IhJvln156l3Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxtLX-00000000U6a-2ZiW;
	Wed, 04 Mar 2026 21:01:31 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxtLR-00000000U3A-0cRh;
	Wed, 04 Mar 2026 21:01:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1772658082;
	bh=W18nID6Ds1IUWT7XQqyotdnw5GBHgdabgbB7Y0/D6ts=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ZTaEiEib96XOisoUpNam8xd6cwaQ940kp9/BrUyNgvG4tdjK5o8ALs0V84yJiISKG
	 TpfI3JE8tif2OcO5KxjoyJfCV9lnupWKy+G5KCJtJSlY2pWH8DSk3RwGkIIEQ0pzJI
	 OJFjzPeIOcq9BW1EvblTSC4olb8koaN+dj3oKXFW3rcOlzDs59j/KRVZssyCmug64j
	 KbtAqHtVLM0oxoXOVd3rEVh9qY+ekPLTefNsW2v6kqrdKdkXqQ0ruRSInHgBZFoIan
	 27tEBhP8NKWn+k/mFsv0vtb+KG3Ed7Ew4XisfJqcN/uaLHBFxfipgnfHhK/Zu3Z/4R
	 jhrfjXQVZuFng==
Received: from localhost (unknown [86.123.23.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id BFEBB17E1005;
	Wed,  4 Mar 2026 22:01:22 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Wed, 04 Mar 2026 23:00:40 +0200
Subject: [PATCH v5 1/4] media: dt-bindings: rockchip,vdec: Mark reg-names
 required for RK35{76,88}
MIME-Version: 1.0
Message-Id: <20260304-vdec-reg-order-rk3576-v5-1-7006fad42c3a@collabora.com>
References: <20260304-vdec-reg-order-rk3576-v5-0-7006fad42c3a@collabora.com>
In-Reply-To: <20260304-vdec-reg-order-rk3576-v5-0-7006fad42c3a@collabora.com>
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
 linux-media@vger.kernel.org, Conor Dooley <conor@kernel.org>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_130125_344484_07195BEE 
X-CRM114-Status: GOOD (  11.84  )
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

The Rockchip Video Decoder driver expects reg-names to be mandatory for
RK3576 and RK3588 SoCs, however the binding does not currently require
the use of them.

As a consequence, driver would fail to probe with a hypothetical
devicetree that doesn't provide the reg-names for these SoCs, but which
is otherwise a perfectly valid DT from the binding perspective.

Update the binding and make reg-names required for the aforementioned
SoCs.  While this change introduces an ABI break, the expected impact on
potential users would be minimal, if any, since the old SoCs are
unaffected, while the video decoder support for these newer variants in
mainline driver and devicetrees hasn't been released yet.

Moreover, this is also a prerequisite for a subsequent binding update
introducing an alternative reg-names order, according to the
address-based listing in the vendor's datasheet.

Reported-by: Conor Dooley <conor@kernel.org>
Closes: https://lore.kernel.org/all/20260227-urologist-gratitude-7984733f2d41@spud/
Fixes: c6ffb7e1fb90 ("media: dt-bindings: rockchip: Document RK3588 Video Decoder bindings")
Fixes: a5c4a6526476 ("media: dt-bindings: rockchip: Add RK3576 Video Decoder bindings")
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 Documentation/devicetree/bindings/media/rockchip,vdec.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
index 809fda45b3bd..dc4ebb50b316 100644
--- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
@@ -123,6 +123,8 @@ allOf:
           minItems: 5
         reset-names:
           minItems: 5
+      required:
+        - reg-names
     else:
       properties:
         reg:

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
