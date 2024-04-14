Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 514C2C001CC
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Apr 2024 13:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Xg3P4KFH8AhAM+IV9RNanCqaZdOEo5/74ReOlC/Mcc=; b=pqncl8ef35Sbd9
	e0P6ue+Dub2HXba2mJsmGGd3stRmzxdvRbmLJ0gNgn90BPuflEDrKw+7x9Gmdah9cZ8gKdrHXRrf1
	9AVtO9sLfHxvm++5ifr7Kv0VaWYufBYeVgkb2dtHx/R1WpfaTFl1wgSX1wmDyQqHTq6MvdlFJk6Hd
	1RqT9AAP15Q2NhXoMn+c7PXTa88HrVsUeS6OwJ8xNoqreE+0snnLUY2UU6quuh2ae5Bws0l8PFclK
	aM6lippMxzjwLgLIpQJ7C5GhYtaUfY+LokV3K14sTiq9sQ/UokFBY+8+fEy7HDg9pa3PoeoT4l3Q8
	Ll2O3//45SDhDAFyS8eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvziI-00000005VIm-3fc6;
	Sun, 14 Apr 2024 13:16:06 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvzi8-00000005VBx-2HgU
	for linux-rockchip@lists.infradead.org;
	Sun, 14 Apr 2024 13:15:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1713100540; bh=i9Z2YZbnmy3lJZINsktbGNNm1ZmA69He5guvitkDSds=;
 b=fnyxALMYrNuTjDBm1NzL/ZOXtf5MvKUIH3gancZDiOTQWFDrHzosPkw730gJcWRmug7wYWBLx
 f4Xy/sES1dbZRa3qv9qylW94ZXoe/T0eafJv3oqOm06WKNDh5GWA4/X/aBnwHXziMLf9a/mKcOn
 rr/JBuUJX386wKglTmTcz7ptYG+pKjU9l/qtmH2CB8Imh/f+sDltrUyyqNJcyf3c4aGzbEo/IhR
 YICWkIbaQVxbizJzbxIry1wc+afQ8unSdg92RVkT4QUxlD8iXJDaElQdj/L1U0ScgeEzyt/EPmj
 JhyaNC2knvBEKgejnTi4iKVkOtbDUZn/QF5tUphJ6pog==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add Radxa ZERO 3W/3E
Date: Sun, 14 Apr 2024 13:15:23 +0000
Message-ID: <20240414131529.1730506-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240414131529.1730506-1-jonas@kwiboo.se>
References: <20240414131529.1730506-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 661bd6fb3b53c644336284d5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_061557_162123_FAAEDE72 
X-CRM114-Status: UNSURE (   7.29  )
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

Add devicvetree binding documentation for Radxa ZERO 3W/3E boards.

The Radxa ZERO 3W/3E is an ultra-small, high-performance single board
computer based on the Rockchip RK3566, with a compact form factor and
rich interfaces.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 4bd033adeee4..2d43729bebab 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -804,6 +804,13 @@ properties:
           - const: radxa,rock-5b
           - const: rockchip,rk3588
 
+      - description: Radxa ZERO 3W/3E
+        items:
+          - enum:
+              - radxa,zero-3e
+              - radxa,zero-3w
+          - const: rockchip,rk3566
+
       - description: Rikomagic MK808 v1
         items:
           - const: rikomagic,mk808
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
