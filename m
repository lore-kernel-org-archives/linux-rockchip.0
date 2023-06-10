Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3A59C7EE2F
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jun 2023 12:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6luqV3heuJVejh6UFcvoZ+3D+40CdyMkTM1hKpevFk0=; b=Ssc7PmLgvVp51p
	fpmq28cGjBI2A+NRcRVh0Z953fbKXKqQNEBjPSTHCsG2RzfeMWqJ0ppgNQYfganO4Vq7cEaT+cn7h
	3SB/f33f1cSMxlUrrMKzrOmAleJULOjC8fp8X7b1zJM1+Ag+xo9Del5A2rT3tr8YJqS3yLmVKtErf
	C4+Z2118cUrtxH/3MTzEFL6kRiiFff1ltD34o91HrpbBlw9jX/z77WVAWhMTS6MbqsszYucdhrXlI
	NuQr7Pgsz70280jhiL0p49v/4vCFcbmTyzZieCKCUPWnHMsY9xMd4BeR1fiOPnPAFvB6SGpkMt5rL
	U1sXzGIBtVjujVxBxBww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7xbt-00G4bd-2k;
	Sat, 10 Jun 2023 12:22:25 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7xbq-00G4Zs-1m;
	Sat, 10 Jun 2023 12:22:23 +0000
Received: from localhost.localdomain (unknown [IPv6:2405:201:0:21ea:e49:10dd:40c0:e842])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 04D486606EB4;
	Sat, 10 Jun 2023 13:22:15 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686399738;
	bh=aOlIGXvrIXsEwyA7cJuJAjyJJNiBEdnDaaOrXAikU34=;
	h=From:To:Cc:Subject:Date:From;
	b=EVRx8kEF7+KXet3WFC4qQ1wwywt0YV3J9P3Hqjfoi/7qaxHduSOnwB9mySWPtfPDO
	 5vsBnd9ot/wjiwT1Tsb2H0XkRWYvC/10VyN8G6zGBJl0XWSWwae8kyn9jIeatxnSkq
	 3LahgJ4wTCmESUeBlGueACQU8rqWEHegSZk+yvARNHvUFSnKdoLUKihgxm63IqmO4A
	 nq0iX4dHr1yKkcjsMLLhAoQqftnWT1uIaEJLyiPm3Cy7+Rc5o7/RAkmpdkLGobgxuv
	 e/4oGPRLZveEYbRCE4Xhw+EFmMe7KATOQprMfZ2ADyie5W99+LCnV4y3izQcvCzhy7
	 py11SKh/dDGpQ==
From: Shreeya Patel <shreeya.patel@collabora.com>
To: jic23@kernel.org,
	lars@metafoo.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	gustavo.padovan@collabora.com,
	serge.broslavsky@collabora.com,
	Shreeya Patel <shreeya.patel@collabora.com>
Subject: [PATCH] dt-bindings: iio: rockchip: Fix 'oneOf' condition failed warning
Date: Sat, 10 Jun 2023 17:52:00 +0530
Message-Id: <20230610122200.161741-1-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230610_052222_784663_3F8C330C 
X-CRM114-Status: UNSURE (   8.85  )
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

Fix the dtbs_check warning for 'oneOf' condition failure.

DTC_CHK arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtb
/home/shreeya/linux/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtb:
	saradc@fec10000: compatible: 'oneOf' conditional failed,
	one must be fixed:
	['rockchip,rk3588-saradc'] is too short
	'rockchip,saradc' was expected
	'rockchip,rk3066-tsadc' was expected
	'rockchip,rk3399-saradc' was expected

Fixes: 2daf2ae9793d ("dt-bindings: iio: adc: Add rockchip,rk3588-saradc string")
Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
---
 Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
index 11c27ea451c8..aa24b841393c 100644
--- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
@@ -15,13 +15,13 @@ properties:
       - const: rockchip,saradc
       - const: rockchip,rk3066-tsadc
       - const: rockchip,rk3399-saradc
+      - const: rockchip,rk3588-saradc
       - items:
           - enum:
               - rockchip,px30-saradc
               - rockchip,rk3308-saradc
               - rockchip,rk3328-saradc
               - rockchip,rk3568-saradc
-              - rockchip,rk3588-saradc
               - rockchip,rv1108-saradc
               - rockchip,rv1126-saradc
           - const: rockchip,rk3399-saradc
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
