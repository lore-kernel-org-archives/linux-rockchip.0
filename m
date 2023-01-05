Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59D86C3DA7A
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jan 2023 20:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ndUTVXnw8CViKgX0Y0zrwLFEmEzwtbcsSQ6aYoUWkyg=; b=v/71D0kDZoCvC7
	9SziP/6xOQxXMR0Isc4HP69JTPFyoCkcxLJ5ZzorA0tupShQA20iX+LJIaOi8k/oBCShTxPTKZEcI
	jBy44eO2/lRNXKEFUZRxvSMhF+Dx18ysD3bO3l3jHMTP33v7QqcQtWUzvD+CF/p+JCHm7jNN/H/tP
	oV2vMVBWO+XPEYwAVEj2bcW24JdkPNbr7DiNjYdJ849UGxZYdsN+TvOAV07+3n4DVTI9itJJ2AWPi
	NdP5fiJi5TLRN3Iz7y73QYo1lZt+udHwEXTF0FpqsfhPB77X9mYcwsp1zQwx4SwoUIRRjxk0Q64+d
	FvzMsoS7J+AcJO8ho4vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDX8b-00EjK0-3O; Thu, 05 Jan 2023 20:46:57 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDUan-00DJ1P-79
	for linux-rockchip@lists.infradead.org; Thu, 05 Jan 2023 18:03:56 +0000
Received: from jupiter.universe (dyndsl-085-016-198-020.ewe-ip-backbone.de [85.16.198.20])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 425D86602CA6;
	Thu,  5 Jan 2023 18:03:45 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1672941825;
	bh=Eit57BSuLLiRFOU6myIJto2e9A9VEfM0WBizgrQT8yc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TCMwnIV2hWgSnZDyenJ47ozEXjmCBJyGuEY+enk/AaIe17xPaSIZBk2PFzjZCb6UN
	 r2W1Z0qS5rNWgM/iWrV9AIe+oCXCxPOK+Yyf5ywoPBP4uezkq029c3fc4tm1C+zeRp
	 GBN1LAuHmS0EIzBEpLaTkjEAoV1kQH87RcsVQRThLXY5+pIecALH1oY76CxqeebjhH
	 UyTthQriDPZyhoNxW9tf9h3nrZrd49TBJYrtRdGI9ZT+zWSHG9mqepJFrsFqhUqe49
	 8nckB0mLM572zFZhZbBbOn4w9Tdkl7AZNdNgcrZdeSmrkb0Fffv/kpifSwEOSyY8QQ
	 Y7lKf90bleAqw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id A39FE480118; Thu,  5 Jan 2023 19:03:42 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Amit Kucheria <amitk@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv3 1/7] thermal: rockchip: Simplify getting match data
Date: Thu,  5 Jan 2023 19:03:34 +0100
Message-Id: <20230105180340.29140-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230105180340.29140-1-sebastian.reichel@collabora.com>
References: <20230105180340.29140-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230105_100353_482982_C4DE1269 
X-CRM114-Status: GOOD (  12.61  )
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

It's possible to directly get the match data in a generic
way nowadays.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/thermal/rockchip_thermal.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index 819e059cde71..8c52700d58e8 100644
--- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -1353,16 +1353,11 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
 	struct rockchip_thermal_data *thermal;
-	const struct of_device_id *match;
 	struct resource *res;
 	int irq;
 	int i;
 	int error;
 
-	match = of_match_node(of_rockchip_thermal_match, np);
-	if (!match)
-		return -ENXIO;
-
 	irq = platform_get_irq(pdev, 0);
 	if (irq < 0)
 		return -EINVAL;
@@ -1374,7 +1369,7 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
 
 	thermal->pdev = pdev;
 
-	thermal->chip = (const struct rockchip_tsadc_chip *)match->data;
+	thermal->chip = device_get_match_data(&pdev->dev);
 	if (!thermal->chip)
 		return -EINVAL;
 
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
