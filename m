Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60849C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 May 2022 21:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eFxyJXY/zZ9aVOQ7V3w06jFZKXbKxC4t5DCPIkvhItc=; b=R9kATpVPRRGVuJ
	Tgr9umDLldtmcMBZ4wA/D4KivGRL/kAl4qTjbudMcpAP0V8ICJpSNDH91QkxqF5BZOwcRm7J95tjf
	nCmpuTl4Je7W172eH/z0PdjdaI2ZqmqvBCZSH41TmjvvszmzJ2A2W/NBKUCfqXVa1FYmdUNJ62V4k
	cPiF/751y4M2h2csLWkM2Kroxqa9K8lULDucvE0PSnLjf+SiSadCJJVIcOnjjpbjqWZtW/fprEIW9
	W1lKAtLcNnEoMDVMBVUlp8RQ6zN+cWlGBL630mHHgeYIyUyynae4L0lxpdTldd+zR2b5Oso+jo5f9
	X3cXQ9qx38CZFbX6utPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmMq9-00CwT0-VK; Wed, 04 May 2022 21:47:21 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmMhr-00CsFq-Qh; Wed, 04 May 2022 21:38:49 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 65DE81F44BD4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1651700325;
 bh=OdKlO5+vwaD7DgJFiCMIAHa9XgAnLHYYCe2QdHgE3yc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WH0LMQ9Xrpk+5N5JzxohQqlQuXcUwkIvYgLV26XFHU46Qvv7KOPORH8DGFqVtbiHG
 w/R1lXM0eBTDxctNAM3PnO1vrFB/V7+pSZld57tejyl50JIereMHZffwtQd3GGJuzI
 HaY/ALgj91Kx8dw6eXKzZT8Ips3M6JpvNxX+6rGGS/KAXjLDdz5A7FbEg2CZnzt2qj
 5Soi8jo7PMgc28b73lIfgZP4QDTWv9S9kNRovecW8B/X9e0nF4hlppez06ZUO0tfUE
 PdTw93e+vhWnul8ti26orJyoTVn7PnDCGH8y37ugriKtJ18Dvs6GIyMAU46LGeZeL/
 a6Nr/EIT8SQzQ==
Received: by jupiter.universe (Postfix, from userid 1000)
 id 557C94819D5; Wed,  4 May 2022 23:32:53 +0200 (CEST)
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
Subject: [PATCHv2 16/21] dt-bindings: soc: rockchip: add initial rk3588 syscon
 compatibles
Date: Wed,  4 May 2022 23:32:46 +0200
Message-Id: <20220504213251.264819-17-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220504213251.264819-1-sebastian.reichel@collabora.com>
References: <20220504213251.264819-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_143848_058131_33D4A715 
X-CRM114-Status: UNSURE (   9.90  )
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
