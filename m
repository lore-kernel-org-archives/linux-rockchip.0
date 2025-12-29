Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F39DBE8FDB1
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Dec 2025 04:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kNIvLDsa9cERTiuF/cgc+qCgqUTLbDPbg3ah2QEiKhU=; b=BCUkb6T42GvCFr
	1pxj8KnnG9vNSxT7FP1y/RqGkNa2mvhTyQR/d9AQNq/sksoplBlXIZhLcKgyme8NkHah31ehxi8rQ
	PaySevTUnANCmzia+IJE6wQ538LAkOjpW8P9S22hm9wy+hWSmFEuutIqA4jdHSVrWb7saitJn19ar
	gpb9VTRdNaXfr6HVPkBDBMw6kvWwB4GfxCpoHzlBjnNbtD6L/Jmf5ytTwi635EiKkygAkneuhLXcR
	QTdfk5QzYI5hWfQ+vxzSWVdP/Q9+uXeZcKnYoOoZEpA4TpnOJd/tFZehjLzVHq3iviTkcMbecB9Dk
	KRIXYXIzKSAkzvVmWlyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1va5Li-00000003KcJ-0VQ5;
	Mon, 29 Dec 2025 04:59:18 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1va5Lf-00000003Kba-18n6
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Dec 2025 04:59:16 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5BT4wkSD012448;
	Mon, 29 Dec 2025 13:58:46 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
        i@next.chainsx.cn, kever.yang@rock-chips.com,
        michael.opdenacker@rootcommit.com, honyuenkwun@gmail.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: fix description for Radxa CM3I
Date: Mon, 29 Dec 2025 04:58:37 +0000
Message-ID: <20251229045838.2917-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251228_205915_536652_AC8E4573 
X-CRM114-Status: UNSURE (   7.48  )
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

"Radxa CM3I" is the correct name[1], so fix the description.

[1] https://dl.radxa.com/cm3i/docs/hw/radxa_cm3i_product_brief.pdf

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 79e99694577e..410a9715a0fc 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -914,7 +914,7 @@ properties:
           - const: radxa,cm5
           - const: rockchip,rk3588s
 
-      - description: Radxa CM3 Industrial
+      - description: Radxa CM3I
         items:
           - enum:
               - radxa,e25
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
