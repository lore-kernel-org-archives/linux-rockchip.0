Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 919C7C7EE2D
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Jun 2023 18:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DNmN7yFY4cTskfNUYtHi8JxrUrBfK37rfSsg7+5XFI8=; b=N4zbbuAi2Z8qQt
	PAZ9TyHjrAXn10HV9Au9pgFO4TSEeueeCAFt+rnUHHVS6Cj096BGiiaprikkFb/f5L2jOOjaMXPxF
	RvAwpoPWHRu6yoEhNxYdoFUgljCwa4PKySLSpRuFyhQZkkZ2V/ZnAhVGdMd0e4OgBiNlFM0xgXgxH
	bIEadTYIlbBqftYM5QH7TNHOL/mYom85gp3W3eUiSKLNxSZQRV2g6n779X7pMaJnSExXh3Ma/5dix
	2EWf1TW2QZZTvlWfr7++OIYrwYS2bCswJX4lHn7qOTvKSfC8rmXWvWbyt6csRq+iSCtq9p8o+bVyQ
	73aErr4LRucuI/bGG9Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q5WOu-00AM76-1v;
	Sat, 03 Jun 2023 18:54:56 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q5WOq-00AM3V-0B;
	Sat, 03 Jun 2023 18:54:53 +0000
Received: from localhost.localdomain (unknown [IPv6:2405:201:0:21ea:e49:10dd:40c0:e842])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 88EDE6603050;
	Sat,  3 Jun 2023 19:54:47 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1685818490;
	bh=wVq893NVcRnivMhnQm6Wl7GqGpgPC12kHSLJwuPQ3s0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XhWJ/UCyNf8cioxQiwkBtM+o4dXTOVoviZmYCWOAqGvgKnnIorApx+GnguSDCFr/5
	 XWRPJ3nQ30nahJchgfH3UgUcRtr9VWCmclm4oh5Gs9EeQP+DRhs8HC+HUpIb0muSg5
	 3HB71E4URO0yhob73lpwftRmfJc9zEbkm2tAv6Mf/ctOAjeAPqWCpFphzSiS3lqPvp
	 FmdsA4sOUNfR/YD1aWXI/lVziyz4YHbogTGbKt7ZMNuf5IPrvQxiTKTabds2i6UXkP
	 pceTA356IzvWhOMHPQDkaD77LQUZ1QjTinEK7WFthDUsIhdTndgQsJVL2jKIFUp0p7
	 aM1EV452LCzbQ==
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
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Subject: [PATCH v3 5/8] iio: adc: rockchip_saradc: Match alignment with open parenthesis
Date: Sun,  4 Jun 2023 00:23:37 +0530
Message-Id: <20230603185340.13838-6-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230603185340.13838-1-shreeya.patel@collabora.com>
References: <20230603185340.13838-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230603_115452_232955_1BCBDF18 
X-CRM114-Status: GOOD (  11.25  )
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

Changes in v3
  - No change

Changes in v2
  - Add a Reviewed-by tag.

 drivers/iio/adc/rockchip_saradc.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index cbe347fe8df7..436e219984fd 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -151,7 +151,7 @@ static void rockchip_saradc_power_down(struct rockchip_saradc *info)
 }
 
 static int rockchip_saradc_conversion(struct rockchip_saradc *info,
-				   struct iio_chan_spec const *chan)
+				      struct iio_chan_spec const *chan)
 {
 	reinit_completion(&info->completion);
 
@@ -394,8 +394,7 @@ static irqreturn_t rockchip_saradc_trigger_handler(int irq, void *p)
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
