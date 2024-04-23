Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5ACC0C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Apr 2024 00:44:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YpfDaM3VQ0kdGqExrFdPWKb3mMIiOrAxYIrpLZIJNAI=; b=S/yK+BcrXI1TSU
	QGzgr0hexwEwkE+7yb5Sy3KQnXL1hu1nZa+BsQNjDk0SAsLJF7hbpx7dO0quDe9iaMdDmxdt0qUO1
	eoZ/lcOrSH3UhyNa3b1G+vR8+Mca9l9XG8M2a599jZhnWRrUo+ZIOr7jxvvYaFO4fWQPzPS6C/+uE
	OgGn7+fr88hkgIb6YLzf+9h98GakDzBI7w5B3k4J6tHjtkRo/oWL2wBN/Cpc8lQ43njW/ASW8RiZC
	FtgXLPQ1xm1N1m6a4yUoERD7KhHcZWD+Jee2UJe43wU/CuY8pZ2fkLcvvZUI8n60fotrRLep28DNa
	9Nl3Fp7ZINtq6yG2j+Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rz4GQ-0000000FbOi-0mRZ;
	Tue, 23 Apr 2024 00:44:02 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rz4GL-0000000FbKs-0SBn;
	Tue, 23 Apr 2024 00:43:59 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1713833029;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=92Gzeso2RKfoZWJr3QPWn/Gt5fFc0yQVUDOpR1xpRaY=;
	b=fZRU8iHZ9RDxDFHJEoLpOjfdy5jYPfdNZZ73gYjtZyt6K5/zsV+rT+hNCTqLIeJcOoCxW9
	0RfvMbFh9QN6ZB3Evqsekns+sOPWW1CAjv1M+eVWZl9cjk9C9gObwfnwJOElBRbaF8FEXs
	/bnD9z2UJ9Pks7KkMo83mPkdNL62k2UX/ylSSndWWCdRCTNpSFfwzy9hwANNrdUsnhZIVj
	b1VVF2TR2BMjEmlDYwyqCGVFcfz8BOl0eQtFAKCgG/jIivm4yL+a2mGPhDSsypxQjS7vQM
	mx95oKhKxODQSBfh1MrKiIsWCEXor+Lpukz4Kn//4w/q77mH000uHuf+uBN9hA==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	didi.debian@cknow.org,
	Marek Kraus <gamiee@pine64.org>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Correct the descriptions for Pine64 boards
Date: Tue, 23 Apr 2024 02:43:43 +0200
Message-Id: <ec124dab2b1a8776aa39177ecce34babca3a50e2.1713832790.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_174357_662225_28FA33DA 
X-CRM114-Status: UNSURE (   7.39  )
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

Correct the descriptions of a few Pine64 boards and devices, according
to their official names used on the Pine64 wiki.  This ensures consistency
between the officially used names and the names in the source code.

Cc: Marek Kraus <gamiee@pine64.org>
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---

Notes:
    This continues the description cleanup started with Radxa boards. [1]
    
    [1] https://lore.kernel.org/linux-rockchip/1e148d6cd4486b31b5e7f3824cf6bccf536b74c0.1713457260.git.dsimic@manjaro.org/

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index fcf7316ecd74..120db82ec4c2 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -631,20 +631,20 @@ properties:
           - const: phytec,rk3288-phycore-som
           - const: rockchip,rk3288
 
-      - description: Pine64 PinebookPro
+      - description: Pine64 Pinebook Pro
         items:
           - const: pine64,pinebook-pro
           - const: rockchip,rk3399
 
       - description: Pine64 PineNote
         items:
           - enum:
               - pine64,pinenote-v1.1
               - pine64,pinenote-v1.2
           - const: pine64,pinenote
           - const: rockchip,rk3566
 
-      - description: Pine64 PinePhonePro
+      - description: Pine64 PinePhone Pro
         items:
           - const: pine64,pinephone-pro
           - const: rockchip,rk3399
@@ -682,7 +682,7 @@ properties:
           - const: pine64,quartzpro64
           - const: rockchip,rk3588
 
-      - description: Pine64 SoQuartz SoM
+      - description: Pine64 SOQuartz
         items:
           - enum:
               - pine64,soquartz-blade

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
