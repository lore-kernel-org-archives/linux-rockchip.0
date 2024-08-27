Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33182C54735
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 21:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fXHwU+SJp2G7hcCCHYL5d0fskGGJP4eCHG5cB+hoA9w=; b=F+3KNmklHs8yiw
	qPFCVHrXOp+cpOUKoq0HpIl+bH2PuWNM+QzBxz5Y6UefxxCRemBHUugXw1O/5E8SZ7Jqpun7xagBz
	v8zDBnTUMV19rb6gWizmY1QlnKpzGK+bMUnPslW0Ya+Xre90ar5A3t3L8O7wNXlf/bfSgw1q4VQ3h
	lC0X3bC/8qSQDK2rm7W/e7mQu6Gw5PsmGh1gJduEZ4wCaHCFd4QaHOzsZSSuQJrtwTk1Xey3WZkn8
	hFyssquxEntBVdQNjisfZcqu63uvYayaCCNJ/MaU2PqVFW3gCjsYv9GhxuPHiu7wQ1DIpnEky1gM8
	My7BaB41JUPhYKS1Defg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sj3c8-0000000CrcC-1366;
	Tue, 27 Aug 2024 21:20:32 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sj3aR-0000000Cr89-3B3T
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Aug 2024 21:18:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1724793518; bh=FXuH7LgutafS02nGDIP0EzLsjyYbt06PqvqUjuwhd94=;
 b=y3pdTWleQ03GVZGcOk9LpKcWt5YnXqP3VidmcLNWFzJj/kFbtg2gPhNRLTNka+x8b3s6ElVhN
 2gj4jilwGIvLiJJTAs8uApwp4gX+6ap9lR4GX7HOHjX/Yi2HT9Jt2VbmXV+ojSQyG6jImpRkD2d
 LzAu61FjexqrUHYPnJKgJmv8Tl/HS//OiJ8t8wS09MiH4TaNrUa7RY+gIZ7ZUdD1QT5Wc8GDBgX
 OiYg5M4CPN23Q/D2qNyZ0V6WpJ4Z1gtso5NZsbQIZsEjvLG9oHwKQw5NXowrp8uKy2DJGbFf9wV
 WTb698rBJBfvFP/WzP2uZPlLao93rauJJ2+okYdlk/Zw==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aurelien Jarno <aurelien@aurel32.net>,
	Dongjin Kim <tobetter@gmail.com>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/4] dt-bindings: arm: rockchip: Correct vendor for Hardkernel ODROID-M1
Date: Tue, 27 Aug 2024 21:18:15 +0000
Message-ID: <20240827211825.1419820-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240827211825.1419820-1-jonas@kwiboo.se>
References: <20240827211825.1419820-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66ce42abec205819dc6f1788
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_141848_349553_3E4B5F5D 
X-CRM114-Status: GOOD (  10.07  )
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

The vendor prefix for Hardkernel ODROID-M1 is incorrectly listed as
rockchip. Use the proper hardkernel vendor prefix for this board, while
at it also drop the redundant soc prefix.

Fixes: 19cc53eb2ce6 ("dt-bindings: rockchip: Add Hardkernel ODROID-M1 board")
Reviewed-by: Aurelien Jarno <aurelien@aurel32.net>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v2:
- Remove the redundant rk3568- soc prefix
- Collect r-b tag
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1f23b8b05a8f..207358b2faf0 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -595,7 +595,7 @@ properties:
 
       - description: Hardkernel Odroid M1
         items:
-          - const: rockchip,rk3568-odroid-m1
+          - const: hardkernel,odroid-m1
           - const: rockchip,rk3568
 
       - description: Hugsun X99 TV Box
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
