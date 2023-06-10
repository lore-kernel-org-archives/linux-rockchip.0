Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB1D5C77B7A
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jun 2023 14:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2+RxGQOc5YoZySCDwCy82shB5tT30MlP7vJSA9Hdv7Q=; b=wNKBh7BkfXtSP+
	KfIL1+fW5MiiMoDx4AKz54oc1TdL6PFvnpLT5tqqujZvKgzWHmkLPZA2IHRf9BDkKy4T1iIcsEvXz
	R9ByPyCArh3UlVPXs5paL3JSi5SwHpBrkjpMFHhx3y9uNIvPsZ2DhrMwhrmk+5UDCy99awuTP/gEt
	D/lplKM5Xw8MpOeW88Jfnqh5UeyKQu6d6HNkGonouzMX8SU7NiGrkE1YOeWEOGGhf8C6TWt59iP1c
	aVBjqxQAbZs1CHYWMsZso5a2J5DAMWQIyoQW55yeNp+exnhl+otxe9AFXBpJtbUfCqCWPE9sE0Q9z
	e1EacAPFwQjNtCUrS9ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7zho-00GNEP-14;
	Sat, 10 Jun 2023 14:36:40 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7zhk-00GND4-31;
	Sat, 10 Jun 2023 14:36:38 +0000
Received: from localhost.localdomain (unknown [IPv6:2405:201:0:21ea:e49:10dd:40c0:e842])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id CEC566606EB0;
	Sat, 10 Jun 2023 15:36:26 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686407791;
	bh=9Ks8x/ae3veDlEgEje6DwGJcc5jroANDKa0uKHr29oA=;
	h=From:To:Cc:Subject:Date:From;
	b=D+h9elAG/TLBxW4wBk2KEOQ1qZXaHCjW2hqqlmSevqZ8QHYclOOKndhsupdDwiyZ7
	 JLN7qpcvbRNuH0O5xxbyJGM0UYEWcSdBybRJ9yRkvlwVdlt/Od7W2FMEJcA5mXdP87
	 81GxtpFA4RmEreYGGSloQQg+Cu2s94ZR2sK1xupRO3ruRXFkcOyByoFnn3UBQUtbLn
	 TOkf0rFTO+4O3solXZlESGjHk69/qKMw1GZu3lAcy0s/FyrpbjrR8vEtP8BgYWCZr4
	 Gnn1s2GkQl5SYey1MeXmRSx5P/m8nBfViy0JrxJNCWJM/rOpgl1GsHm8KjFiNvtpCk
	 fc2eX959lolGw==
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
Subject: [PATCH v2] dt-bindings: iio: rockchip: Fix 'oneOf' condition failed warning
Date: Sat, 10 Jun 2023 20:06:01 +0530
Message-Id: <20230610143601.173307-1-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230610_073637_141250_780A7694 
X-CRM114-Status: UNSURE (   9.60  )
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

rk3588-saradc isn't compatible with the rk3399-saradc variant,
hence, fix the following dtbs_check warning for 'oneOf' condition
failure.

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
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
---

Changes in v2
  - Improve commit message.
  - Add a Reviewed-by tag.

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
