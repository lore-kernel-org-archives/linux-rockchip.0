Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DE59C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Aug 2024 23:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=noRPcv3Bmf0hKnzGAOnugwMuJ9mZMk8COo1+qGPMFNU=; b=sSSGK6GecmpV/7
	zM/pjrAsi8dHyxbW8I/M59yPgffI3CE+pv36NcJ2f40lj1JLZLLZ4QqFl110MbKWx6LzTPyh2aR5V
	lA9osIOFJR54hARBKhSX7OQxHOwVBy6SJiiPo8KRIJqr2XUX+hK3e30fXPm1onm07kBsO7DjZWbpt
	y7+1Ssc5TZ0z+iBHBvguVDN61GFgt1cNObHqUa5qT8UgQQsFXr1E1JGezG7ffgUjTZEQm5sPgQLA8
	QHk135uyPXN61FU/zdZWixrWyR6RFIHNXHSaTBxUsNq1Poe23Puj0c4x1byruhNzlRXGcE6Bgud25
	LAIus82l4j7tB9Kyjhbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb79U-0000000HZ3m-0Kwl;
	Mon, 05 Aug 2024 23:30:08 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb79R-0000000HZ2m-1Re6
	for linux-rockchip@lists.infradead.org;
	Mon, 05 Aug 2024 23:30:06 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 475NTbJg020641;
	Tue, 6 Aug 2024 08:29:38 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/2] dt-bindings: arm: rockchip: add support for Radxa ROCK Pi E v3.0
Date: Tue,  6 Aug 2024 08:29:31 +0900
Message-ID: <20240805232932.2030-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_163005_619389_B168DB2B 
X-CRM114-Status: UNSURE (   8.33  )
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

Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the Rockchip
RK3328 chip.

[1] https://radxa.com/products/rockpi/pie

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Changes in v3:
- collect A-b tag
Changes in v2:
- fix typo in commit message
- add missing --- in commit message
- add new section instead of new item in rockchip.yaml
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 2ad835f4068e..0d9ad91e8969 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -790,6 +790,11 @@ properties:
           - const: radxa,rockpi-e
           - const: rockchip,rk3328
 
+      - description: Radxa ROCK Pi E v3.0
+        items:
+          - const: radxa,rockpi-e-v3
+          - const: rockchip,rk3328
+
       - description: Radxa ROCK Pi N8
         items:
           - const: radxa,rockpi-n8
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
