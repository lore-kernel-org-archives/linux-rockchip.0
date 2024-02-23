Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F124FC5478C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Feb 2024 12:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G5hXm62x10kCQPRvN59LNwAjNZWzuRHBe/f8FguGKpk=; b=5Gvgd2nFU6L/Ij
	5b5HCePYxSTHO6+uKxEmwQfJM/mBLjRvia3/p5cGSximZ6oJQ8MJK726q9fGpCcxK391GXF1jBVaf
	qoKXZ8k6y3W8UP02kcMDLT3kEn1k3D8r9Ue14Ee6tZQM7g0BR3KrbFWpbA4cUBxt+Y5frdRQv16Dw
	WY6Kmfu1jirLIYm84RZz2FClZaqDd803LH35fbprmQ0Wj+XbpKnZ/noCZ9+UCcI6G7f2GarJfVJC/
	ew4vvynE9Q8X89c/QbIyLBdXIwqkQ1jo+V4x9Ac7pYtyaWZIQpQrTJD8G3G33sYGpivdG97YYav9R
	Zc3kbEHeQGqJnCVTubDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdUwh-00000009Ooe-0QiP;
	Fri, 23 Feb 2024 12:46:31 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdUwQ-00000009Ohb-3y0R
	for linux-rockchip@bombadil.infradead.org;
	Fri, 23 Feb 2024 12:46:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=hVPGwzrf4l7G4dYf8bLHWHZUm4bLf5NyT+s4EhMj80o=; b=WrUbCVQ7RnV7SKJ/9h6cuxVRdG
	KX6KabsIlgzuYhqJkqjsVo6JYW4vKxDcf1k2jr+RO8kz/72vqB4+7WefBcm6b3f3WmLD6B8KGkFFg
	ChlXh+jY/rh/SED58ci4ya2XDz8LibOElx0mSRP66wUaO8PX19sNehPUyYTCSJZJ7r6R13k5qHocW
	wChA9E4JNKzbsOdP4yQdWpYdHrE6YAZh50sm7BuHZ4ugFOrVRpwddX9aO/wb4Qu+Rr4hNSmTS6eZO
	xS8zRHAVq8HFAk9cOl/IBhN8I8OMh88zz65ynNeT8VA9O7Wg6sb1DQ5BuoDqDjL9f02TD31uNCweN
	CznAky/g==;
Received: from smtp-8fac.mail.infomaniak.ch ([2001:1600:4:17::8fac])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdUwN-000000072oH-3JKH
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Feb 2024 12:46:13 +0000
Received: from smtp-4-0000.mail.infomaniak.ch (unknown [10.7.10.107])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4Th8rT5Sg8zMrtd6;
	Fri, 23 Feb 2024 13:46:01 +0100 (CET)
Received: from unknown by smtp-4-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4Th8rS6knNzwNb;
	Fri, 23 Feb 2024 13:46:00 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Fri, 23 Feb 2024 13:45:21 +0100
Subject: [PATCH 1/3] iio: adc: rockchip_saradc: fix bitmask for channels on
 SARADCv2
MIME-Version: 1.0
Message-Id: <20240223-saradcv2-chan-mask-v1-1-84b06a0f623a@theobroma-systems.com>
References: <20240223-saradcv2-chan-mask-v1-0-84b06a0f623a@theobroma-systems.com>
In-Reply-To: <20240223-saradcv2-chan-mask-v1-0-84b06a0f623a@theobroma-systems.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 Lars-Peter Clausen <lars@metafoo.de>, Heiko Stuebner <heiko@sntech.de>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Andy Shevchenko <andy.shevchenko@gmail.com>, 
 Shreeya Patel <shreeya.patel@collabora.com>, Simon Xue <xxm@rock-chips.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@theobroma-systems.com>, 
 Quentin Schulz <foss+kernel@0leil.net>
X-Mailer: b4 0.13.0
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240223_124611_895034_EE876FD2 
X-CRM114-Status: UNSURE (   8.07  )
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

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

The SARADCv2 on RK3588 (the only SoC currently supported that has an
SARADCv2) selects the channel through the channel_sel bitfield which is
the 4 lowest bits, therefore the mask should be GENMASK(3, 0) and not
GENMASK(15, 0).

Fixes: 757953f8ec69 ("iio: adc: rockchip_saradc: Add support for RK3588")
Cc: Quentin Schulz <foss+kernel@0leil.net>
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 drivers/iio/adc/rockchip_saradc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index dd94667a623b..2da8d6f3241a 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -52,7 +52,7 @@
 #define SARADC2_START			BIT(4)
 #define SARADC2_SINGLE_MODE		BIT(5)
 
-#define SARADC2_CONV_CHANNELS GENMASK(15, 0)
+#define SARADC2_CONV_CHANNELS GENMASK(3, 0)
 
 struct rockchip_saradc;
 

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
