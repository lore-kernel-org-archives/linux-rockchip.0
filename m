Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD9F8C5478C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Feb 2024 12:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wpp5KHwEhcgrsb0wvtsicXtSFRvjEazcdmXQq5rJKg4=; b=RYYpV1gK6d+6gl
	d+RcUw4fFX8fW4KM+zmVPJHDvVjbWjmwRU43itKF0y/zbSTcnW3lOMQsba8Dk9S1Xt21ZXTo9SdXJ
	fq9EX4SQj8e7AcX0KVAGcegZsVJbTl3WidWNT45R7JzME7Sl0uLXHCCciqHSRRYO38qrFSIa4COk8
	VSw2Qp3GpV20RT9QsXy3cCqNO0l9qfQPdX0QRtKHcZ5iA1PqEacg7mvDwToBsaGLYrC9ZRp2naRaI
	DwSbPc28RcUA2G9dMFPKBuInxBEieC0OFlIqhGCnxm2GSPQpjF6eNbDJ/ib0HJSOXOsvbnDBtFpOQ
	atfUYhufr5cCot7EF6Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdUxS-00000009P35-0FJX;
	Fri, 23 Feb 2024 12:47:18 +0000
Received: from smtp-190f.mail.infomaniak.ch ([2001:1600:7:10::190f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdUwV-00000009Ofu-0zIX
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Feb 2024 12:46:23 +0000
Received: from smtp-4-0000.mail.infomaniak.ch (smtp-4-0000.mail.infomaniak.ch [10.7.10.107])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4Th8rV3Qr6zGMT;
	Fri, 23 Feb 2024 13:46:02 +0100 (CET)
Received: from unknown by smtp-4-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4Th8rT5JLQzv7F;
	Fri, 23 Feb 2024 13:46:01 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Fri, 23 Feb 2024 13:45:22 +0100
Subject: [PATCH 2/3] iio: adc: rockchip_saradc: use mask for write_enable
 bitfield
MIME-Version: 1.0
Message-Id: <20240223-saradcv2-chan-mask-v1-2-84b06a0f623a@theobroma-systems.com>
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
X-CRM114-CacheID: sfid-20240223_044619_749787_77D93BB0 
X-CRM114-Status: GOOD (  12.20  )
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

Some of the registers on the SARADCv2 have bits write protected except
if another bit is set. This is usually done by having the lowest 16 bits
store the data to write and the highest 16 bits specify which of the 16
lowest bits should have their value written to the hardware block.

The write_enable mask for the channel selection was incorrect because it
was just the value shifted by 16 bits, which means it would only ever
write bits and never clear them. So e.g. if someone starts a conversion
on channel 5, the lowest 4 bits would be 0x5, then starts a conversion
on channel 0, it would still be 5.

Instead of shifting the value by 16 as the mask, let's use the OR'ing of
the appropriate masks shifted by 16.

Note that this is not an issue currently because the only SARADCv2
currently supported has a reset defined in its Device Tree, that reset
resets the SARADC controller before starting a conversion on a channel.
However, this reset is handled as optional by the probe function and
thus proper masking should be used in the event an SARADCv2 without a
reset ever makes it upstream.

Fixes: 757953f8ec69 ("iio: adc: rockchip_saradc: Add support for RK3588")
Cc: Quentin Schulz <foss+kernel@0leil.net>
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 drivers/iio/adc/rockchip_saradc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index 2da8d6f3241a..1c0042fbbb54 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -102,12 +102,12 @@ static void rockchip_saradc_start_v2(struct rockchip_saradc *info, int chn)
 	writel_relaxed(0xc, info->regs + SARADC_T_DAS_SOC);
 	writel_relaxed(0x20, info->regs + SARADC_T_PD_SOC);
 	val = FIELD_PREP(SARADC2_EN_END_INT, 1);
-	val |= val << 16;
+	val |= SARADC2_EN_END_INT << 16;
 	writel_relaxed(val, info->regs + SARADC2_END_INT_EN);
 	val = FIELD_PREP(SARADC2_START, 1) |
 	      FIELD_PREP(SARADC2_SINGLE_MODE, 1) |
 	      FIELD_PREP(SARADC2_CONV_CHANNELS, chn);
-	val |= val << 16;
+	val |= (SARADC2_START | SARADC2_SINGLE_MODE | SARADC2_CONV_CHANNELS) << 16;
 	writel(val, info->regs + SARADC2_CONV_CON);
 }
 

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
