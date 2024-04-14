Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDDA3C4345F
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Apr 2024 15:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OT0ZHjDGrcduOD/FPNZyhTJhaf8mHBBNJJyBQNB31Sg=; b=3FasH4BDzScFMA
	ejT/C4osHzfRhHAPRUVQgkfqoEhZ7U8+04dFJmjw4McUVVGMNDmR9CUVhIoSH1elsI/NzRy9MDnAX
	srnviwEKZ9m6X9eFPNAPPZjUYdh/JD/Dc/QHzrptjjCTaWARQFgExJMjP/EfUqGNZYWq3UJhxE9gx
	0PSQcAtKnigs06U9srfkTP0UuIvB3txFH5UsRNpWfFVWdX4G8gKxKU7v2or9HhQMfXh/4BSVWeCZ4
	kBqadMmVda8aSEtGo4PE3FxqhNxeJU9yMA4L6Fp5iuomrq5p5fKgNhJ7j50Xf9CWdJ5LHa4KZLCbY
	Sbi1D+E/0nbun3qpGFeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rw1Wu-00000005iCT-2P2v;
	Sun, 14 Apr 2024 15:12:28 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rw1Wi-00000005i6H-30rS
	for linux-rockchip@lists.infradead.org;
	Sun, 14 Apr 2024 15:12:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1713107509; bh=oQvPHwK37sX7tQP2xpq0TkEx87p6aD7ris711rg5za8=;
 b=wSOjMFbDQspvYZfd8jLgS/irrSSQoZlUlbkq9DKafEMi8rToSSTooQcWGpLBNMO64cWGn7ZQS
 lppYN0wfsLK3Ia5z1E6ObuNGnQwsa3t2sCVEDX3C1+FNss1hVcnrVnYDzkZ3ygaKEZqVb4sn1W3
 PmwvhDcQQMDNl5ANvF/aICZdtpWlyRwKVW4GMm3Djs0lHcIxbNPhkIHxVT4Ce9H06iEVx4FnaRe
 SGS2DA4tS+m7LtcHw2IJNu2ObXioNKiHcW+at6Fo7jSrxTrDzTPl4g/E1Tg8OEzF1/mo5zoy2Sa
 eqRILHiytHYHOhjHRMyOoBYLa003jdU85e9XmHbnuJyg==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>, Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/3] dt-bindings: arm: rockchip: Add Radxa ZERO 3W/3E
Date: Sun, 14 Apr 2024 15:11:27 +0000
Message-ID: <20240414151135.1774981-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240414151135.1774981-1-jonas@kwiboo.se>
References: <20240414151135.1774981-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 661bf23299ce03c87699d729
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_081217_224642_6A015D17 
X-CRM114-Status: UNSURE (   7.12  )
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
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
v2: Collect acked-by tag
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
