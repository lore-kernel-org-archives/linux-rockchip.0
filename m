Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD4E2C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Apr 2022 17:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eFxyJXY/zZ9aVOQ7V3w06jFZKXbKxC4t5DCPIkvhItc=; b=FBPuHlpyT7Ko1e
	Vy1CEXhlJPfHBsk1TFpMI33yQLIgIJsqUy7mYivKijb/vNo6Y0rfImaGmrOv4eNaZRQjhRLGm+ojq
	7ASV/fUA2lrA/sMcAqdoWi9z7YCkDp92a1GI6t+Vmnzr0hPO8SmJnhBUouQPXHPOIO1NLAI/JRM13
	olQv6lSjYSFDOBRXqFCtYKira1+wQSLyv5Jx70KDqadZn4js0VllD7Kw1RD7gMKpKoRyohZp9tlhj
	Wv3+jaqbLNshzCQ3LppcEetwcvV6K0faLY4I8LrxfSW6TNRv4myo1bUr02hb3QZH59pbNNPRPgTY4
	ssrIRjYyTnUs5FZelf6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhwtw-001h0Y-LE; Fri, 22 Apr 2022 17:17:00 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhwmu-001dVh-Oy; Fri, 22 Apr 2022 17:09:49 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 5EDFC1F468ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650647379;
 bh=OdKlO5+vwaD7DgJFiCMIAHa9XgAnLHYYCe2QdHgE3yc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kTLrqtqflhR8k1+ez/g7eS5G7u5PiE4rG71JtnABLP5vvEJ64ZN5EFuTTZBJQCtjT
 aqownICx6VWldBFymAHBCBpTImE+Jhykpc//LSdLoCC8nTpN9FIJzV9UnN2BXzm+6a
 4g1ixaJ3i8vEtn19BPka6hzFP4RZAH/MpUGdfsTx7ZyIfHHW7dDXEnwr4Jo42cUI3+
 MSru+BmJV5F4QzGrLM1R2U5evLPJ1rFxpeQ0P5+pxl7zSb2NsLeI7vgKxN/rFiWSGH
 3+GFS6PLN4lcvafZM0vwYvB/fANEdzaAGMZpBvUswRmaXR49YHhk5N/TbvwvIejYz2
 qyVhRW1KjDGOQ==
Received: by jupiter.universe (Postfix, from userid 1000)
 id E72DB480C27; Fri, 22 Apr 2022 19:09:32 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@lists.collabora.co.uk,
 Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com
Subject: [PATCHv1 16/19] dt-bindings: soc: rockchip: add initial rk3588 syscon
 compatibles
Date: Fri, 22 Apr 2022 19:09:17 +0200
Message-Id: <20220422170920.401914-17-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220422170920.401914-1-sebastian.reichel@collabora.com>
References: <20220422170920.401914-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_100945_031324_D0609F8C 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index b2ba7bed89b2..2181c8031b0d 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -16,6 +16,8 @@ properties:
           - enum:
               - rockchip,rk3288-sgrf
               - rockchip,rk3568-usb2phy-grf
+              - rockchip,rk3588-ioc
+              - rockchip,rk3588-php-grf
               - rockchip,rv1108-usbgrf
           - const: syscon
       - items:
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
