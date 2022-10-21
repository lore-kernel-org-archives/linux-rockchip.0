Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10863C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Oct 2022 17:20:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rweCrZhuFd9SZ7DxINMFKTm3jJKGjen0yQhbUIyFVtg=; b=O8uNyA5G1HuQqB
	78UTdUFBvIb9rq5SLjbotCh/JjSPcnNdvyr02LzKjylt6kodnN7Iv3r/kkEziAQScfdoMMRlcqKgw
	QK0vI9UKSTGtXUbvRdcpJTnB3/D21po5BuD09Toh7VQ5U8BTm3dPDTn/9wvIjgQTxH9+rjRPGirwq
	B0KkVfEvrF8y6qgkJ24mahfLnV5ow7Min/I8oi5npFsosi+fFMhvDfb1kFwdAI4uFxjdOJGF9R/KB
	Sf9HJC6kiIWc4tRpypJavAIWF0HZ7LPDcyfejBJW9coUzpsVPBSnX9sCJCgozF9TZZtVYiNKSHcyg
	Tdc8NuWjns99qMyuWqUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olvgy-0099zM-6k; Fri, 21 Oct 2022 17:20:20 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olvgw-0099yE-3u
	for linux-rockchip@lists.infradead.org; Fri, 21 Oct 2022 17:20:19 +0000
Received: from jupiter.universe (dyndsl-037-138-189-087.ewe-ip-backbone.de [37.138.189.87])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C04B566023A4;
	Fri, 21 Oct 2022 18:20:16 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666372816;
	bh=zSCt5midhUrfQM0L1c3hkIuUzz9cCV51sQyBcAqxLh8=;
	h=From:To:Cc:Subject:Date:From;
	b=oVSzQdXbdufPEEI6RPZbcHuF0Yc+mTw/9YLTbmcEXZMMXe7S/vi1vqNXQqpxGg2mJ
	 a0w/1IilxWQG4V26xB9KC8uazzH75uL+VjmgZMdefu/TTeNOzaPfrSqBPeQ3hsQd1f
	 UGmKs+iaQUXqQhA1W96k1/lOmYYhMk58e8M7g34uU5KWAh6MdDkOhbM8mPiffBDF2e
	 eyOkscKNxUg4Qg9XAXY34gEDl2YI96ikTOwmbJAqSCdRhlYY4XwUYlOtlmbvxZFmcH
	 5e6MNB9n8vMBxqD3CO/yYwNEwEtdlvin0D9c4Wup65LR7TfhYxViCJoRb9/lZ0bFOO
	 9dMwj/8nHuwJw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 16A6A48082E; Fri, 21 Oct 2022 19:20:14 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 1/1] dt-bindings: pinctrl: rockchip: further increase max amount of device functions
Date: Fri, 21 Oct 2022 19:20:12 +0200
Message-Id: <20221021172012.87954-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_102018_308955_EAE7258C 
X-CRM114-Status: GOOD (  11.44  )
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

Apparently RK3588 pinctrl has 13 different device functions, but dt-validate
only checks for pin configuration being referenced so I did not notice.

Fixes: ed1f77b78322 ("dt-bindings: pinctrl: rockchip: increase max amount of device functions")
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
index b486f41df65f..d6539723f354 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
@@ -132,7 +132,7 @@ additionalProperties:
               description:
                 Pin bank index.
             - minimum: 0
-              maximum: 10
+              maximum: 13
               description:
                 Mux 0 means GPIO and mux 1 to N means
                 the specific device function.
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
