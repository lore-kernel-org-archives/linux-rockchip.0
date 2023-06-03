Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FB34C77B7A
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Jun 2023 18:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=42IRt2eKBpcGDCk5mcDShhQiNBVDnIyx7tt8ISNrjbU=; b=Z/TtaUDPQk3nwB
	GR0ZaiKOsJm3F8UbeIvnugmqJGX04HwA/G0uw0uNQl/+DlvECvn4Yc2ArpHjUnqMXssjFGh2WN4lW
	EN9mx7Z38FD1KakjwzvWaAEyi++yjPI32Qry0yvby7yEgFhTyRdE+EWa7dzu4WXyvZUtaPVawRiK6
	PD9LTSLIOIibGmURBOXuF5nPMXeWYfaM9sM7AFYSssu6fmpABKQK6tcqE5TXO3WadVKO/PhU2gRpa
	F5pHqhDxaezUFyGrwK8qfKdsi7MemXqaqwT2DdiAmRWa5eiecyvkSy3lZKoxl9KtyXaRxq81m8Iij
	Kbb1SBCK8DPD+JHebztw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q5WPG-00AMMg-2U;
	Sat, 03 Jun 2023 18:55:18 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q5WP7-00AMFE-2T;
	Sat, 03 Jun 2023 18:55:12 +0000
Received: from localhost.localdomain (unknown [IPv6:2405:201:0:21ea:e49:10dd:40c0:e842])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0D5CD6603050;
	Sat,  3 Jun 2023 19:55:04 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1685818508;
	bh=8S7OKZmsezN6RAz8kQrAHp0icflqSiGjbX9ZA0jDAwA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QWmWePs19ts8sVUd4Z4OscrkOetjDVbAaFedKZFjEMnXmn2su4sDSPtsGHDjUAHjG
	 bQwclcUFme+Pb7TeUB4X7eJJOsP1qnr46OVHC2HviY62rJRhBaHBsyS2MTdY46Ki+S
	 VcF+ijqRifz0EFLjk9JsCwogHo3M4cPS8OzN+hfzBa5VG3Fbpbn7chHWaWQMqgZdkF
	 8w5Zh2S3ZuxhCOBc3YfIXPeaGlTXmrQNoEzCLXlStFIWJtR/hll94cy2BkMnG4kO/S
	 fiSJ+E0KuzfkCz2IXvx560GjVaggcC0i9xkgwjKzV3xbFLDd22iL1bih51DlEpOpOD
	 cj807GFcEHiMA==
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
	gustavo.padovan@collabora.com,
	kernel@collabora.com,
	serge.broslavsky@collabora.com,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 8/8] dt-bindings: iio: adc: Add rockchip,rk3588-saradc string
Date: Sun,  4 Jun 2023 00:23:40 +0530
Message-Id: <20230603185340.13838-9-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230603185340.13838-1-shreeya.patel@collabora.com>
References: <20230603185340.13838-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230603_115510_003640_275E7072 
X-CRM114-Status: UNSURE (   7.80  )
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

Changes in v3
  - No change

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
