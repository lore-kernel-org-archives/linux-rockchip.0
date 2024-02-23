Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 248F0C54798
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Feb 2024 13:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FohgcBs6G5W+jfPGyEzitYtBphft7Ulu9ZSN/njamNE=; b=3r+rFi+ZZvueLU
	zemRBfd0YUQ7BvvtkiUpf/rWYNYIjtb5TmYTtMKk1pQswZmAG9rbnyh4zltDulgsvUlWsPXc+YzzH
	gIfxL5Cj01R/Ot8pe+ZdtJyQ6c6u03xG5Uz0DBcH6eqxp/wVJt8uGZ9u7TlwgDsScldVK6HcdVUEa
	NymEJr8Z1dhLrMwoiS9x5AWDmCdYt9DNL4/sfdeFIGxKsxAyo4KzQurJONgQWl1WU0pLzHT0lCCVR
	2rPM9ogKeVYr3iTrigKm9SehuCGJWolyQzFKlBTJC1Q3fozErQxWhrK5kNT0AEeobpKDYEOpOCofh
	vRQyYRETt1KvafotmvaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdVqk-00000009ctA-3q2c;
	Fri, 23 Feb 2024 13:44:29 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdVqI-00000009ckY-0HaF;
	Fri, 23 Feb 2024 13:43:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=iz5c2eHsmoVddnMYhQd51mPsqZT/x/p/32uLL0m38qk=; b=KBPYpLrUeFdvq/enUT7bOHEBJO
	Jk8/dzHqYxx5r7vy5s/hUHeSxyBfuASdL+G2Jedtf5MPD1e2jkxkameF5R8eVgeIcXN7ckLa146yF
	7dtzMTHeAEn2WxoOi3F3h+TnPXWFrglCFM8fskKuZE9r6wS2jo2uNAOTC9lpi2dTwaPUe5gD01Qif
	tmVX1WXy4wtBft+FrD+lNdG6TzJbv3mFU+RyTvULu6yvYylYj0Aj0XcISF8PNuMjOq9C0AkXEK4x4
	lvLUGNNoSm7zxdti9QrOhHxWl97+zfImVdLkFZ/nudM8/8H3HPHuM7j3Oviei0oXxtb4sTmXzj8Kj
	GeD2LdMA==;
Received: from gloria.sntech.de ([185.11.138.130])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdVqF-00000007CfF-0tf9;
	Fri, 23 Feb 2024 13:43:57 +0000
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rdVq2-0001HH-7o; Fri, 23 Feb 2024 14:43:42 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Shreeya Patel <shreeya.patel@collabora.com>, Simon Xue <xxm@rock-chips.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Quentin Schulz <foss+kernel@0leil.net>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>, linux-iio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Quentin Schulz <foss+kernel@0leil.net>
Subject: Re: [PATCH 2/3] iio: adc: rockchip_saradc: use mask for write_enable bitfield
Date: Fri, 23 Feb 2024 14:43:41 +0100
Message-ID: <2385656.yKrmzQ4Hd0@diego>
In-Reply-To: <20240223-saradcv2-chan-mask-v1-2-84b06a0f623a@theobroma-systems.com>
References: <20240223-saradcv2-chan-mask-v1-0-84b06a0f623a@theobroma-systems.com>
 <20240223-saradcv2-chan-mask-v1-2-84b06a0f623a@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240223_134355_269666_288C436E 
X-CRM114-Status: GOOD (  18.03  )
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

Am Freitag, 23. Februar 2024, 13:45:22 CET schrieb Quentin Schulz:
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> 
> Some of the registers on the SARADCv2 have bits write protected except
> if another bit is set. This is usually done by having the lowest 16 bits
> store the data to write and the highest 16 bits specify which of the 16
> lowest bits should have their value written to the hardware block.
> 
> The write_enable mask for the channel selection was incorrect because it
> was just the value shifted by 16 bits, which means it would only ever
> write bits and never clear them. So e.g. if someone starts a conversion
> on channel 5, the lowest 4 bits would be 0x5, then starts a conversion
> on channel 0, it would still be 5.
> 
> Instead of shifting the value by 16 as the mask, let's use the OR'ing of
> the appropriate masks shifted by 16.
> 
> Note that this is not an issue currently because the only SARADCv2
> currently supported has a reset defined in its Device Tree, that reset
> resets the SARADC controller before starting a conversion on a channel.
> However, this reset is handled as optional by the probe function and
> thus proper masking should be used in the event an SARADCv2 without a
> reset ever makes it upstream.
> 
> Fixes: 757953f8ec69 ("iio: adc: rockchip_saradc: Add support for RK3588")
> Cc: Quentin Schulz <foss+kernel@0leil.net>
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
