Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20710C54798
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Feb 2024 12:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6g/7B9BROAH14D75xz2r96GJKK8ZScy9kCcERpmD5wU=; b=2YyND/STofqErx
	YbepsJpdPbevIvObM+1GXu8q1r448nV8HoW2yw+9UH7eSTZasY1QNJLwWYfsv3xukotJGhiSg3Mrd
	MJ4494x1ODOq2EizA5+Wsy7I7D8Dzq1ziuanvXh2hudk5nv2xfWj5XVg5UTwmwTgjE44VyeqlvqmV
	hAqn2++24oRfenaVG7D0AqGboZ69a+P+Q6bL1JLbU0uv8LVYrgzsdSN5z5ItANP6dnPRcfade44GF
	MnQj1hzs0KjMo1NUnNIS+hTCGo2TFkD9l8qZa7Qi+0shB+85O4PyRG4M56SbpVc3LV5ffxcAWFFO2
	0YpmI39Ao12vbXa5RUuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdUww-00000009Otd-2YHO;
	Fri, 23 Feb 2024 12:46:46 +0000
Received: from smtp-8fab.mail.infomaniak.ch ([83.166.143.171])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdUwV-00000009Ofv-1IPP
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Feb 2024 12:46:23 +0000
Received: from smtp-4-0000.mail.infomaniak.ch (smtp-4-0000.mail.infomaniak.ch [10.7.10.107])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4Th8rS6rJ3z5mK;
	Fri, 23 Feb 2024 13:46:00 +0100 (CET)
Received: from unknown by smtp-4-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4Th8rR5kDjzyKs;
	Fri, 23 Feb 2024 13:45:59 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Subject: [PATCH 0/3] iio: adc: rockchip_saradc: fix bitmasking and remove
 custom logic for getting reset
Date: Fri, 23 Feb 2024 13:45:20 +0100
Message-Id: <20240223-saradcv2-chan-mask-v1-0-84b06a0f623a@theobroma-systems.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAGGT2GUC/x2M2wpAUBAAf0X7bItlhV+RhxOLTS6drZOSf3d4n
 KaZG0y8ikGb3OAlqOmxR8jTBIbF7bOgjpGBMiozIkJz3o1DIPw0bs5W5KbgmuuKiSuI4ell0uu
 fdv3zvF0lV5dkAAAA
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
X-CRM114-CacheID: sfid-20240223_044619_786550_99A0AAB4 
X-CRM114-Status: GOOD (  10.87  )
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

The mask for the channel selection is incorrect as it's specified to be
16b wide by is actually only 4.

Also, the 16 lower bits in the SARADC_CONV_CON register are write
protected. Whatever their value is can only be written to the hardware
block if their associated bit in the higher 16 bits is set. Considering
that the channel bitmask is 4b wide but that we can write e.g. 0 in
there, we shouldn't use the value shifted by 16 as a mask but rather the
bitmask for that value shifted by 16. This is currently NOT an issue
because the only SoC with SARADCv2 IP is the RK3588 which has a reset
defined in the SoC DTSI. When that is the case, the reset is asserted
before every channel conversion is started. This means the registers are
reset so effectively, we do not need to write zeros so the wrong mask
still works because where we should be writing zeroes, there are already
zeroes. However, let's fix this in case there comes a day there's an SoC
which doesn't require to reset the controller before every channel
conversion is started.

Lastly, let's use the appropriate function from the reset subsystem
for getting an optional exclusive reset instead of rolling out our own
logic.

Those three patches should not be changing any behavior.

Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
Quentin Schulz (3):
      iio: adc: rockchip_saradc: fix bitmask for channels on SARADCv2
      iio: adc: rockchip_saradc: use mask for write_enable bitfield
      iio: adc: rockchip_saradc: replace custom logic with devm_reset_control_get_optional_exclusive

 drivers/iio/adc/rockchip_saradc.c | 17 ++++++-----------
 1 file changed, 6 insertions(+), 11 deletions(-)
---
base-commit: 39133352cbed6626956d38ed72012f49b0421e7b
change-id: 20240222-saradcv2-chan-mask-593585865256

Best regards,
-- 
Quentin Schulz <quentin.schulz@theobroma-systems.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
