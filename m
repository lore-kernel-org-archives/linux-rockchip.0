Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A2B9C7EE2C
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 May 2023 21:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cy5q9068bY8cL/ksjPAy5ip4bMEawnm3oSYhpzFM5VM=; b=t8vOMLl9OVupjk
	mMUnys7+5mcJGxdvL1th1qtK1kYDYignCj4U++HTZGh93gPdpPciuF1g2OFXbOyKQJyFwN9RWPMRC
	ZTLJDgTOgjw8Qch7tYUz862DaTwL6fv9xluWgEbAGk4k7/54UCHTwZdxP2hHbvN2UPE5FyhPmqaM2
	/keeXJyvB5ZVP8fFE+hlbNjWLiU3OZ0SpfKxv8RnayC8yLdc+KgCNDAsnlPtealMVG/Q3X1mVBIz5
	jjplwWQJ/Q0Nd3iTH5qiQgaC1+oeTl01YXwmKciQAnvsuoviQqMjkb9XRHg4zX5Skru8RWCTT1+BR
	3wcXIltsNFQ9ZGteUptQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2IVl-000C3G-0O;
	Thu, 25 May 2023 21:28:41 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2IVY-000Bul-0c;
	Thu, 25 May 2023 21:28:29 +0000
Received: from localhost.localdomain (unknown [IPv6:2405:201:0:21ea:e49:10dd:40c0:e842])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id DB18F6606E81;
	Thu, 25 May 2023 22:28:23 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1685050107;
	bh=j2qbhtUEhsYOgwB5yEuSREejgg5NYmlmpVBBc3uuqiU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LUZxTVmHdiID1uTSssQoOF+AGu9yXAC7WYp7yUjlGKRmfwNX4Zg6P2xW1uEQ9FEIM
	 0BqfDvFHJj1LfUySw8fmRQh6Hhm3neBnA7/m8QQ1woP/z1WfX2wOsjURNWl94FuiPZ
	 vMQfDNeng/gK2OmVzgpOLjAWNzXMdKPndXMBMJ2NP9M+DCdk6AXvHuwlvLLVC8lXED
	 1PLba8uIjf5JeMFpF7kvPT6ekxCszbVajbYQYMSU1ksUmQplvtPPDVNwrdyN/qjtx5
	 0YrHrUq1yprxQwSSIEvQRTsadloOSmVBJ2q/D7eVIjucrotIBJx5x0yfdKeVEIyW/X
	 xllO5CBBuKbYw==
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
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Subject: [PATCH v2 5/8] iio: adc: rockchip_saradc: Match alignment with open parenthesis
Date: Fri, 26 May 2023 02:57:09 +0530
Message-Id: <20230525212712.255406-6-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230525212712.255406-1-shreeya.patel@collabora.com>
References: <20230525212712.255406-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_142828_360698_A08D047E 
X-CRM114-Status: GOOD (  11.54  )
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

Match alignment with open parenthesis for improving the code
readability.

Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---

Changes in v2
  - Add a Reviewed-by tag.

 drivers/iio/adc/rockchip_saradc.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index 1a5790264ec1..ede929d9bca0 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -150,7 +150,7 @@ static void rockchip_saradc_power_down(struct rockchip_saradc *info)
 }
 
 static int rockchip_saradc_conversion(struct rockchip_saradc *info,
-				   struct iio_chan_spec const *chan)
+				      struct iio_chan_spec const *chan)
 {
 	reinit_completion(&info->completion);
 
@@ -393,8 +393,7 @@ static irqreturn_t rockchip_saradc_trigger_handler(int irq, void *p)
 }
 
 static int rockchip_saradc_volt_notify(struct notifier_block *nb,
-						   unsigned long event,
-						   void *data)
+				       unsigned long event, void *data)
 {
 	struct rockchip_saradc *info =
 			container_of(nb, struct rockchip_saradc, nb);
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
