Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D35D0FA3743
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Oct 2022 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s9yyj85pgAlRJZugd/bW1GIQ7QTXubKeImKTOL9dC1Y=; b=TXnSFplC/i6BPF
	TIhNYmug5aiREqntfVfdCh8Briuk9DlxtGMUKZicYwqRoVlZMN6lmZ1WiZRYKUhe17GNbIqmqc6b8
	0dgnlEaNtXOqn7wpNoZ2eK5BBmt+zI+Gd5gVpo78T7IvcF19TRwHbt4JYj162N4ah3IBZKNG+pLNo
	3z5x/sR5wTTINs2F7i4IiaUnX+W8dIYAvhv9dJOTfzZP2SDgFCCa6VEy9sw9WyiL51OyVr57ltYLQ
	zvI81mnhHvPn44JarHVAXn4WpHB3q41AD8LeYyvmXglNYnghYWVHBWHGWJM2M4fZBVWfRA3UkcQug
	ZUEOMaF1Hop9//+/CAJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opYwN-00DVIO-7D; Mon, 31 Oct 2022 17:51:15 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opYwE-00DVAb-Eg
	for linux-rockchip@lists.infradead.org; Mon, 31 Oct 2022 17:51:11 +0000
Received: from jupiter.universe (dyndsl-095-033-157-181.ewe-ip-backbone.de [95.33.157.181])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7792666028E6;
	Mon, 31 Oct 2022 17:51:01 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1667238661;
	bh=pn3c/M5REulyO+/Lr9DSgob3MkqAqMgCCAmDXuQCjnY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ju1XDGJwvPmDz6J1YMiJDtop4EdMYbPcN1F8Wvz4EeHGO/dnn/sx0d3x0VAsXhAAw
	 wiPh1dDoYwLF2ZJJ3xfyRdl71L886oFAHC4iPfBQTFQOQrH5VjNsS8ujPypiTlUEXS
	 QZaxPl+iJlk4nKQfVPMNIm6vv5FVp+NwfeKrTyCUGPUYYFRhNVccLU34FVMwJHNwz4
	 K7R0tPt+y19mNFagHfE3RKHSlzsUzcWQdf0XUwvClBOU+1HqFSen85x2Wn/4v/qqEO
	 0URcGDTERecc79ywpVNZAv6XADQWPnwIwra3SPiGGyZ/OZeasnEuYm3+KBETVRnykC
	 fkjkDhdgB1dLQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 4CE3748015F; Mon, 31 Oct 2022 18:50:59 +0100 (CET)
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
Subject: [PATCH 1/7] thermal: rockchip: Simplify getting match data
Date: Mon, 31 Oct 2022 18:50:52 +0100
Message-Id: <20221031175058.175698-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221031175058.175698-1-sebastian.reichel@collabora.com>
References: <20221031175058.175698-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_105106_768766_A16DC86F 
X-CRM114-Status: GOOD (  12.04  )
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

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/thermal/rockchip_thermal.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index 819e059cde71..0a0f38c29842 100644
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
+	thermal->chip = (const struct rockchip_tsadc_chip *) device_get_match_data(&pdev->dev);
 	if (!thermal->chip)
 		return -EINVAL;
 
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
