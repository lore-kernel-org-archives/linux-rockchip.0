Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D4ABC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Nov 2022 17:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w7hu/Iw4pqTCVX05gKWTg7PAQYGFKaL8jqGPvrKQKCk=; b=2/fXfM2+IzLg9f
	kCAqXXnooRzZqyVWHaKibixhrIkua5V5Ng7+icQXZkW/+GTGxIz7iCfwsC0EC05NMZKj8QVIdbUC2
	jkNgam+Lo6w/vvD65qbFrCDQNQwXDqj7rVVMLZ6JQ7IkAgkG51Icy928DK0NPKKU8Woc/AiaTQtQ+
	tvRNqNZJkOBw7loUAW3cWw3Af83YXHH/dE8CSFYMcpMw7zJFfyZ+hRRaZdd+3NQkxgpK6HA10NnCo
	5GZaC2nnR7FZ7QWgLGqWHFK3QKlyf9P6rA1gbcUwePiPnfWaoJ8n8jtPC2rPdOnoU+cCwwVOwDQSv
	Ck9D3ufpEj4/tOkoplyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxB40-00GZEY-4a; Mon, 21 Nov 2022 17:58:36 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxB3u-00GZ9U-Bb
	for linux-rockchip@lists.infradead.org; Mon, 21 Nov 2022 17:58:32 +0000
Received: from jupiter.universe (dyndsl-037-138-187-016.ewe-ip-backbone.de [37.138.187.16])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id ADCF06602A8F;
	Mon, 21 Nov 2022 17:58:27 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1669053507;
	bh=71vz1dJK9c6n63dYwAsfDrn+l5+x0pdh8gpbYZj8WaA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lXLzBLt5fOdOBotmgEjvdSI+5OSvI3s49e0SxvUT0DXIS4DMhFUmRP5oA8D8Vj3IR
	 oLE+6aEyybPjWaV8ImqnZSRbf6mPDGeLp1UJSXmR+zVia0px91i8qYZjmva9RQKIUn
	 8F7eLbpcKRc/9qJymRjCnloYLWi4eczHeBhYeu1tbJwXfCS1JE+nYvTalcmb6+A8Dj
	 FOzxmO9szoTkb/kgJThZ5+vjZEtvJZ3rnmOhjaZowhwdk0PQ+U/GEZwUDpp4TpENJx
	 CTVYIO6sHgesQSj/OTn8gSwnd0GjJCcktBEucC3FJIC5zKfV+A9dVRYEyiW9appEA9
	 YRk0Suzmayq/w==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 18E5E48011E; Mon, 21 Nov 2022 18:58:23 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCHv3 6/9] dt-bindings: arm: rockchip: add Rock 5 Model B
Date: Mon, 21 Nov 2022 18:58:11 +0100
Message-Id: <20221121175814.68927-7-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221121175814.68927-1-sebastian.reichel@collabora.com>
References: <20221121175814.68927-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_095830_578518_2939B081 
X-CRM114-Status: UNSURE (   8.92  )
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

From: Christopher Obbard <chris.obbard@collabora.com>

Add DT binding documentation for the Radxa Rock 5 Model B.

Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 70aff0851ae2..49d442afe67f 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -625,6 +625,11 @@ properties:
           - const: radxa,rock-5a
           - const: rockchip,rk3588s
 
+      - description: Radxa Rock 5 Model B
+        items:
+          - const: radxa,rock-5b
+          - const: rockchip,rk3588
+
       - description: Rikomagic MK808 v1
         items:
           - const: rikomagic,mk808
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
