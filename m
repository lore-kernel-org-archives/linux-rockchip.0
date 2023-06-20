Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3514BEB64D7
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jun 2023 18:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yWzJnKAnAKIsOYfJwlqj5J1onMG51cF4BwaKavE5HB8=; b=fm+d1j5Qb1myEx
	on1EsDE+oFeNmGELn5vYterW6s777dyGql42P912/YED00LZ9C+w56ENijt6O2RUO1NEZoudLJXvs
	10pwuW06jrZ8a8/3jGFZIYJFEbkRnm4las1Xj+bpPZiU39tC5oIeJSCXBid5fMG5p3OWS6IlpQQgm
	qpq6vxfZ4ul+LBnyRENxq9LJUYfIQOpQV9Af8eumPIDovqJSWYohRYPbiTgZyNcQBkb9Rh2cQyrZ8
	2iJcmft0nj4v/Sgp/c3D7sC096AkaIkUcPYqYsN282ZavUhxGmUPY/fNgWWz+eeGsUm39IXJE31uQ
	z85zraC8SSCD6kPu3TaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBgOc-00C5ld-0e;
	Tue, 20 Jun 2023 18:48:06 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBgOY-00C5j5-0C;
	Tue, 20 Jun 2023 18:48:03 +0000
From: Furkan Kardame <f.kardame@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1687286878;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=AdJOrsfn+EjXmTCRjY9atZ1E+lqcObT34k7FSpSTYes=;
	b=w7uvhxMsi9vPxgDJlB5G2+PebI6fpimR0bZIrarjfbvO/cfqrD0ohrWsZuBrcleRE6PNlB
	PwxdY+FjLW0EIHK+BgBmTcbcPc3WVZbPJ4w22BoRlZqBDn7TyGemydqff37HBnmazsxmUK
	dehUGXWMctu6lll/iauS1u8pUdC1/bADG1ERU2wXkOw82ByxQr33jvOpyF8HL/ZDgEsJbW
	ZkJ7SdpVzeMH8+eJWkNLqH4g7KlaJhJPFM4x8NCoNWSxQ6k7Cwt0RtfnMsYh0j4qDgyhjO
	teWLnYHSXKCg0h+EfUhlnBkdw3GDNm1IR5weUTqZtVQnAmdhln8WC7FLiO+RWQ==
To: robh+dt@kernel.org
Cc: krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	broonie@kernel.org,
	deller@gmx.de,
	dsterba@suse.com,
	arnd@arndb.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Furkan Kardame <f.kardame@manjaro.org>
Subject: [PATCHv4 1/2] dt-bindings: arm: rockchip: Add Firefly Station P2
Date: Tue, 20 Jun 2023 21:47:45 +0300
Message-Id: <20230620184746.55391-2-f.kardame@manjaro.org>
In-Reply-To: <20230620184746.55391-1-f.kardame@manjaro.org>
References: <20230620184746.55391-1-f.kardame@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=f.kardame@manjaro.org smtp.mailfrom=f.kardame@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230620_114802_261423_5C5F5A6E 
X-CRM114-Status: UNSURE (   5.83  )
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

Station P2 is a single board computer by firefly based
on rk3568 soc

Signed-off-by: Furkan Kardame <f.kardame@manjaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ec141c937..fa21640bc 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -185,6 +185,11 @@ properties:
           - const: firefly,rk3566-roc-pc
           - const: rockchip,rk3566
 
+      - description: Firefly Station P2
+        items:
+          - const: firefly,rk3568-roc-pc
+          - const: rockchip,rk3568
+
       - description: FriendlyElec NanoPi R2 series boards
         items:
           - enum:
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
