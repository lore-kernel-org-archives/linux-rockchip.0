Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBCC0C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Nov 2022 17:58:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YelfiV4BtWnAz9a0BFPx6/THxwtEAAGAragLs0ku5hk=; b=DNRuWaiFmwLQFR
	iFzLOoXlgVGTDA8Yh4mFchjKkSGMvHmf8ZDTNptlunUVGHu7G1Zgczyx83KkSiWqfVjLq3ZNNvsds
	umXqhTeWyfCvGsC4SAK8m9d7OQD9OuEZflvnKsNoeF+QOrB1nQEys+twfT4pyxQa8vMFDHWbfcfMT
	ArKnZ7xXq8nALdAbVSTevnqJdahC1W3/PeipZTpT059kbsDQydWLeLIWJTQdyFmwgkn05HgRtx8gr
	gHNVbem4nSCzNqk/tFe720ElcIYyaFMjvC656NRjSr2SxybNEDtVdhjKs15VFNpeLYWefbnDQiz8X
	FoXquf9SCgIOSpzp/drA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxB3x-00GZDE-TQ; Mon, 21 Nov 2022 17:58:33 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxB3s-00GZ7I-37
	for linux-rockchip@lists.infradead.org; Mon, 21 Nov 2022 17:58:30 +0000
Received: from jupiter.universe (dyndsl-037-138-187-016.ewe-ip-backbone.de [37.138.187.16])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 71F196602A73;
	Mon, 21 Nov 2022 17:58:25 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1669053505;
	bh=BhOzmXV+pjyrO9kOToC4JgQ/3OrwnGhzEgYAPhdFtf4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=F/Y8nCZeJ0ZjDeepTj10ZRHA9fd39+76JjUr+99NgqxpolfC5ZYHckD30VJIJTdE5
	 cTm2MoG2zsipl2ZpMCb2e1xUwWzhohD79ZiZj87DmivzYN/lEQ0J5T7eh7Wt0q7Yuh
	 whefEnEQYzqkEJIOwUlSDW2RohYyqHJIn+nixWTnA4O6d91kSGwdjhzNHqVItF6U88
	 uzYhj7jqgdfdqHWhbG5aLSquauz4sXKWGvgl5FD7gjpntDkmUdxY90tyMXT20pVt+m
	 v0JsRhtFcuYPnCxw8nJn8pQUNUVxv8ntusiByQYsTtPydd0shCZy7NhoAqvFYXPLzK
	 8yhVmL1SG6nlw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 14E47480117; Mon, 21 Nov 2022 18:58:23 +0100 (CET)
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
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv3 4/9] dt-bindings: arm: rockchip: add RK3588 EVB1
Date: Mon, 21 Nov 2022 18:58:09 +0100
Message-Id: <20221121175814.68927-5-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221121175814.68927-1-sebastian.reichel@collabora.com>
References: <20221121175814.68927-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_095828_291450_C796AF45 
X-CRM114-Status: UNSURE (   8.29  )
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

Add DT binding documentation for the Rockchip RK3588 EVB1.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index c6c69a4e3777..9b7ac0903262 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -704,6 +704,11 @@ properties:
           - const: rockchip,rk3399-sapphire-excavator
           - const: rockchip,rk3399
 
+      - description: Rockchip RK3588 Evaluation board
+        items:
+          - const: rockchip,rk3588-evb1-v10
+          - const: rockchip,rk3588
+
       - description: Rockchip RV1108 Evaluation board
         items:
           - const: rockchip,rv1108-evb
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
