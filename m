Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30A2EC43217
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Nov 2022 17:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Km9Kb8S8dzZjo5jOVyk+NXeiJ4tv0FgRw2YeqPGD+AA=; b=VT/D/gaD7x9Zq/
	W79+AjYt8VqOcSGfci1jwEQoSuBy3IVgy3AIhGcgl0tart8Bn41OO6IvWtNSV6csQ2q716ruyZCse
	Wh8QzEd1gotnbN3vS3PDGs9U2Zqrv5lRgN207ZxXyNIZKuAK1EgoKc4TkQFGgVMHfIAVeFzvRCCfN
	uewXCWW/tIwedFW2bw77KwwE+lR5gh4aTkP7NsKOil/Yla6O2p0biDnywFZcA7xg77qHi9sG3YGQo
	XuOYjJr7wsG9vCA/+0dfO97R2kPBmB2phKDLaZsz0mVl93FCaNcccnzhFReYLWiZ5lwLwMMCfIFli
	uZSCyboFy02dsQRhJxxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osSBu-006z7w-7o; Tue, 08 Nov 2022 17:15:14 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osSBr-006z5c-HF
	for linux-rockchip@lists.infradead.org; Tue, 08 Nov 2022 17:15:12 +0000
Received: from jupiter.universe (dyndsl-095-033-156-208.ewe-ip-backbone.de [95.33.156.208])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 314D16602960;
	Tue,  8 Nov 2022 17:15:07 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1667927707;
	bh=j6U1J97xtpvnDEk8MFhf+VZfguyZclzTAFUGOJNjV70=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DZdPO/S0RtuygRBCT08qhzHlOFw+M/g2lsbo/bUoRNm8T9qEysitFBUUkQ5vZjB+s
	 mQlIupUK8WQBceQnx9gLzQap9QJrhf60kFpHa2uDM3biv6XVQ1Vc2uzb7C9FTOG0og
	 6DQW5oRtyDawnjU/bVLcgI1z+BA9+hk7J7t82YsevXZJSJESRZfvTJu+qFeRB1ZpJb
	 +RBVxeyLJwV3z9ibrWUw0utWSc8XwSaZxa4gyStRvK49SjThaxHQVNQLCTqqe7613r
	 hoYrj5CKmUlxlO4YzPCwDvBGKz93RNZDazM1V2Yg+JT6LnqvpvyNBXJTeUV8mQor4V
	 +zXZhmNU6Qz+Q==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 0F0B9480076; Tue,  8 Nov 2022 18:15:05 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	Rob Herring <robh@kernel.org>
Subject: [PATCH 1/5] dt-bindings: soc: rockchip: add initial rk3588 syscon compatibles
Date: Tue,  8 Nov 2022 18:14:56 +0100
Message-Id: <20221108171500.99599-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221108171500.99599-1-sebastian.reichel@collabora.com>
References: <20221108171500.99599-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221108_091511_719352_4EBA53D7 
X-CRM114-Status: UNSURE (   8.61  )
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

Add IOC and PHP GRF syscon compatibles for RK3588.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 2ed8cca79b59..e682b407a383 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -20,6 +20,11 @@ properties:
               - rockchip,rk3568-pipe-grf
               - rockchip,rk3568-pipe-phy-grf
               - rockchip,rk3568-usb2phy-grf
+              - rockchip,rk3588-bigcore0-grf
+              - rockchip,rk3588-bigcore1-grf
+              - rockchip,rk3588-ioc
+              - rockchip,rk3588-php-grf
+              - rockchip,rk3588-sys-grf
               - rockchip,rk3588-pcie3-phy-grf
               - rockchip,rk3588-pcie3-pipe-grf
               - rockchip,rv1108-usbgrf
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
