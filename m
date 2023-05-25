Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C0FDC7EE31
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 May 2023 21:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JfsU+ECcNsZTkXspfXqQn9Yt1CDbRamab2ICTaz9jX4=; b=3SRxK+SSlIzwYD
	h9OQQe11bW6WtGoGS3M9dqCv2wYNxHa5JCa7IfC3atdIwWtYHb0K6EOM052J8P79wgLkdM7uUFPFM
	W6OFrLC9RAAhPQIC8nZqmypy1w0jyazPZMx92h9uOsKOo7uBSVOBzsjpWkhW5pXtdLtNVc7/6p7qv
	5rfH9WxMlr1Ddg8Rj29xC5ZWW6xKtsuZ1RVWxE2VK1AHGNbnP7OH41mmRXWs1NLwGDLdhUIw3SOJU
	MCXoqPh58AnK+dZcu1k7Gb++4oBSCIvnB6CQZ4ViO8ykh6QjN7GYxu5UvHwhOMWT7RGiubvbeKDnl
	KWsbJbxX2TFLUr7gCemQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2IW0-000CDP-31;
	Thu, 25 May 2023 21:28:56 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2IVq-000C6U-32;
	Thu, 25 May 2023 21:28:49 +0000
Received: from localhost.localdomain (unknown [IPv6:2405:201:0:21ea:e49:10dd:40c0:e842])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id F32BB6606E82;
	Thu, 25 May 2023 22:28:42 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1685050125;
	bh=AdgtOiujGdnJQQ340NQqbEudA96I7ryN0UWjDsdCfzY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lG4FikeQH1NKS/9TgwgyENYkK2aokxl3DxPPZSCqCjLzFRFCna06SITyuIMxFG4tI
	 AyzaapWk/rdI57Rgvow8WBnVNPrFXQ3rVisw4OV+FTJkATQCPK8CDVga6AIr9R9aQ0
	 Fc+bIBfRy4iszF6xfcxIKOcLcO58NQlR+sXyXT2sYlnMgeleiJvfMjqLsDZraJExF9
	 SkkK4w/dla7azOKCb4gxGNB1eOAZbeqPUGoJwxYJe89op4udgQoNrW2iJIVXMQt4b+
	 IpI7THxhIvspfJoEp/6Jqi3nfRSNWtvM8f0/EC2ksfnG1BtgpoJzyaBAQbyDJzE9x5
	 JykoNe3wXRykA==
From: Shreeya Patel <shreeya.patel@collabora.com>
To: jic23@kernel.org,
	lars@metafoo.de,
	heiko@sntech.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	sebastian.reichel@collabora.com
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	gustavo.padovan@collabora.com,
	serge.broslavsky@collabora.com,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 8/8] dt-bindings: iio: adc: Add rockchip,rk3588-saradc string
Date: Fri, 26 May 2023 02:57:12 +0530
Message-Id: <20230525212712.255406-9-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230525212712.255406-1-shreeya.patel@collabora.com>
References: <20230525212712.255406-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_142847_132782_DB6F8B26 
X-CRM114-Status: UNSURE (   8.08  )
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

Add rockchip,rk3588-saradc compatible string.

Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Changes in v2
  - Add an Acked-by tag.

 Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
index da50b529c157..11c27ea451c8 100644
--- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
@@ -21,6 +21,7 @@ properties:
               - rockchip,rk3308-saradc
               - rockchip,rk3328-saradc
               - rockchip,rk3568-saradc
+              - rockchip,rk3588-saradc
               - rockchip,rv1108-saradc
               - rockchip,rv1126-saradc
           - const: rockchip,rk3399-saradc
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
