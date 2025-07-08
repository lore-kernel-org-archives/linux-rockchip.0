Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14B39C8303C
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Jul 2025 22:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xuDsS+B5yLqCBoDUMgGD3Edfdr6Zt9+jR5kStD3zJ3s=; b=XP2L8KljMZzozN
	R1hdUTdrKoT0jDeBfhmBSW7JlAJck884MLh5oMRX9p20yO1cBx3CtJF0CEUxrNLaA6+ojZZmEz3J/
	Fq51Cf90Zgfkw2FSl8prcqygL4IGFvpOXS6Tpuaei8EsgEfe3goHy+vlGSSs3DJsl5SkyPcNFofHF
	bBHIm5PZQ+3b7JckOhD09cVyktr6Sibye8AmLmQN65/QIi/rxoXUa3q8kogT7QPF5j7VZR4FWCKCn
	jiiuRS52+U9ASYJJdvCLyC3qfXBaNPgK+OHi8RmsW42I5VDy2PC+2nIqmKHSycZk5GHUJFKBhAQZl
	j9VV975Fnrn7SmNA+Hjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZHCm-00000006qRK-12gt;
	Tue, 08 Jul 2025 22:54:28 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZH83-00000006pdz-0jXB
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Jul 2025 22:49:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1752014974; bh=BmqNJa1An8REJ9AUcRdzNVNiR2hfr+EH12RkNn7sOKw=;
 b=U/Wx4eODl5lnsxHEISjQg5x02Q5PtnGaac4RNmCq+j4Enzs1I9S7QqtPlRfI06CcFQv+1w8W/
 Zp71t9YCOaO38u806uirBcn5+tNtJ7T7THCTxsAT7EreyVWf5oRacypc16oJb25gxgCYGEChUFo
 K/IagAIryv++zCy/dwb09Nv9tYEsZiazzMx5DW8D6EhOLhug2L06dny7WXKDvTLurnJjTMokyao
 16eSmpNe9BEUUHSmrLQXNuEpF50ooDCNWPIeqFCGPUMTKm224e2lfN97BR0TwKD/LEybNEycnyC
 bdpWYgrkmYiqqLymD7BDBAu3NfupoogoLxj71ijLM0ag==
X-Forward-Email-ID: 686da07b75317ad3cfdad3b7
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.1.3
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 1/6] dt-bindings: arm: rockchip: Add Radxa ROCK 2A/2F
Date: Tue,  8 Jul 2025 22:48:51 +0000
Message-ID: <20250708224921.2254116-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250708224921.2254116-1-jonas@kwiboo.se>
References: <20250708224921.2254116-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250708_154935_260501_B659C4A8 
X-CRM114-Status: UNSURE (   7.28  )
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

The ROCK 2A and ROCK 2F is a high-performance single board computer
developed by Radxa, based on the Rockchip RK3528A SoC.

Add devicetree binding documentation for the Radxa ROCK 2A and ROCK 2F
boards.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 58b9312c6c73..6636f98561e7 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -875,6 +875,13 @@ properties:
           - const: radxa,rock
           - const: rockchip,rk3188
 
+      - description: Radxa ROCK 2A/2F
+        items:
+          - enum:
+              - radxa,rock-2a
+              - radxa,rock-2f
+          - const: rockchip,rk3528
+
       - description: Radxa ROCK Pi 4A/A+/B/B+/C
         items:
           - enum:
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
