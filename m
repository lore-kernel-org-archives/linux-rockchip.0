Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D73F3ECAAD1
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Aug 2022 18:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mYXM22W72rKmahtToxDQBgDGP3S5/oYV2Gv0LN3Ec9U=; b=h7UyQMAqajdvBh
	XIse8RBF9SkT0T/le3QrtQrg5FHn4sVV6Kq5VRF8sYQr4R7R+dejQtoP+9KV/QDjUTugWE3xw83ZY
	H9+O9PoL55I3Xm+N5UK/6YNO3vb5uNj2GZanXNQEmDCxnks7+aVGabdfr2K19m1isWFGciZe8FSBj
	/G3LHNWQwPjT68CNUd+vCxoY9TvKh49obnGt0ITK6N+0sdcFHh8QO4WUhu0D4UlsFvWaOkwPO4ItD
	0/Y97zJlZoDMF2k6JdJaYk9A33cIIF1XLOb6Sym3JndNRcgNfDffSAyPBDy/DKjv3Oop32Rij8KFO
	x1Gxef6YpeHvZKEyFmwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTSRR-007ZD9-F9; Wed, 31 Aug 2022 18:27:57 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTSQE-007YbY-9K; Wed, 31 Aug 2022 18:26:44 +0000
Received: from jupiter.universe (dyndsl-091-096-057-024.ewe-ip-backbone.de [91.96.57.24])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4F5A16601DF0;
	Wed, 31 Aug 2022 19:26:38 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1661970398;
	bh=+rwcY1WUac1w3sXnyj1l5+zLst961YRJ5Tdpg70DUtA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BzSaKNMt+n3ayE48OO50TCTqC62E6jbwZD5Umy7tKLbdEIPfw/poN47sTF9XQVBXg
	 on4BRr1c1/TOR/gbllJTogYd5+2e+BjUk7lp6/l1JzThxV2FzzEh5j7iD+hLlpvMmJ
	 E94o/0nbaXg4zNkAHQciop0NbSon7hD1V70o82VIKL6wJYJsS0JQnehYaEozwMfRPs
	 yOtOHKgyfJZUR8aN1qAMdQ6RdQLjCRQb7ETO1Pg03codS5lgaQlcerZVAR3iWWdlA0
	 1PNppgjrPWstAPcX+o+446lRXVN9mS6CsK/1hz+toEpQxNI7dBaT8aGFRD1vndhzY3
	 G+TZCHgXviR/w==
Received: by jupiter.universe (Postfix, from userid 1000)
	id C41064805C3; Wed, 31 Aug 2022 20:26:35 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	Rob Herring <robh@kernel.org>
Subject: [PATCH 3/6] dt-bindings: power: rockchip: Add bindings for rk3588
Date: Wed, 31 Aug 2022 20:26:26 +0200
Message-Id: <20220831182629.79255-4-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220831182629.79255-1-sebastian.reichel@collabora.com>
References: <20220831182629.79255-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_112642_509920_52432CC8 
X-CRM114-Status: UNSURE (   9.95  )
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

Add the compatible string for RK3588 SoC.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../devicetree/bindings/power/rockchip,power-controller.yaml    | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
index 3deb0fc8dfd3..5a769517f5c4 100644
--- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
@@ -41,6 +41,7 @@ properties:
       - rockchip,rk3368-power-controller
       - rockchip,rk3399-power-controller
       - rockchip,rk3568-power-controller
+      - rockchip,rk3588-power-controller
 
   "#power-domain-cells":
     const: 1
@@ -119,6 +120,7 @@ $defs:
           "include/dt-bindings/power/rk3368-power.h"
           "include/dt-bindings/power/rk3399-power.h"
           "include/dt-bindings/power/rk3568-power.h"
+          "include/dt-bindings/power/rk3588-power.h"
 
       clocks:
         minItems: 1
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
