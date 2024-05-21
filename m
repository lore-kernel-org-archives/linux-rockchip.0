Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 215BFC25B74
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 May 2024 20:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wyVUZvMim9IJkbWLotYIxuvxx/Kk/V07ZzPArLc2AKQ=; b=hVVJkB6aJPyU49
	dsYNKWhIegPzLDWCSu2j62f4SASHXvvrxaCDbuu7A0AnaTwfoQFBebB742WfbTrVoEfv1gWxKeY4p
	nS5qV12uDT2iyzw5LOlmOwOEpA4gVL5mXJQ6jLnqluhXfQPWkoy3dWQi/ziqHhmT4BRuzsPpgH6OC
	lr5uta1k4nydEGBqXBwF+q9M7anF4wlVM0bpt3w6eQPWRRbGD3IH7z6ckweHctokoWC2cIUhLb7Wn
	fCx6Cg/9ixCxDuLVxHTlGADuI+K8XzbOgwHQKU7rdeFeF1O9yvPy3N0zNHzEhx8Mon17v3DNMBrxB
	ShAzEes1/1hu0dLEHd5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9W6n-000000010fl-0psH;
	Tue, 21 May 2024 20:29:17 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9W6h-000000010bm-1M2D
	for linux-rockchip@lists.infradead.org;
	Tue, 21 May 2024 20:29:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1716323304; bh=fcefaUUjcIVFz8cXLo03BezrzCivGislzB62c0WvQU0=;
 b=b4laSxmhyQ/5aQXtN8M9kEY7oRw+GMri4Sw+4HGzpCj46o0z6I43AiHJ//Dsdshc4DKZoMFaR
 8Zp77mZr/VTxdVVqz0r6f9DdOI4SFZ8prV6KN4d0hvfyVtoma9b8xyUzYv2XvO3ZkhAWSuTp7Ek
 ZivYfPO02ctu8AVE/W+kLOzLLc000IqcvHHp3cSHpLB1kWwdLBVA3hE/U8mj7QXt4cvGnEN9L1z
 ez32KWO9yAZr+v3YF6sCVD2nJ36KoEj+rDV6Sw3ZCNgN4PVNX3VYw/ACfDZmFYvz9S0qIKFE3M8
 6jlw1yTyx+X/a3LbbaJYaKHw8Zzu6DlVqjAJMMMmTRSw==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>, Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v6 1/2] dt-bindings: arm: rockchip: Add Radxa ZERO 3W/3E
Date: Tue, 21 May 2024 20:28:04 +0000
Message-ID: <20240521202810.1225636-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240521202810.1225636-1-jonas@kwiboo.se>
References: <20240521202810.1225636-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 664d03e4f0b0d6a409517482
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_132911_664402_340BEC7B 
X-CRM114-Status: UNSURE (   7.46  )
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

Add devicetree binding documentation for Radxa ZERO 3W/3E boards.

The Radxa ZERO 3W/3E is an ultra-small, high-performance single board
computer based on the Rockchip RK3566, with a compact form factor and
rich interfaces.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
v2: Collect acked-by tag
v3: Fix devicetree spelling
v4: No change
v5: No change
v6: No change
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index e04c213a0dee..51cdaabaf0d9 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -814,6 +814,13 @@ properties:
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
