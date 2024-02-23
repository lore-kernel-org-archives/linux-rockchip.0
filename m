Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A457C54798
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Feb 2024 13:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qjDbiMXTmiDQJdjRSgVPgfCQ7zlx4T5UKQnDOxWA8wc=; b=yjBnKnCb6SxBgm
	QMCfLXFt/RXWUiKfqEtRrWEnaPIh1MKRqyyk/BuPjo7KDWvdBTV+gCSI8QH0kb0IrNZn8+Em3Ujrj
	+bAnxg5K4x+rWrWZ4b8xVUVX8JW4NIJrs9C+rmZuVqT7vh79yJk/kmgtbVlVs2u0ZRGnqX2kl6mAg
	0egwMHWRNe4mRr0JWaypNwGW8lbFBB0SV7pkkXp+03PAnnZtMcTRNwtAKl547q8X+l6hMo4VShQNh
	ce1rjnlnKGi79Xdxjv3Jr0IGmKwiebelt5VRPFIRwDSbzaWXIK3lAsKl7MqqJ+/bR1B6BFYZylPtI
	9BjsrZKatkB1KcvHcnDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdVo6-00000009cHq-0kfw;
	Fri, 23 Feb 2024 13:41:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdVnd-00000009c4S-15tq;
	Fri, 23 Feb 2024 13:41:16 +0000
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rdVn4-0001FZ-Ou; Fri, 23 Feb 2024 14:40:38 +0100
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
Subject: Re: [PATCH 1/3] iio: adc: rockchip_saradc: fix bitmask for channels on
 SARADCv2
Date: Fri, 23 Feb 2024 14:40:37 +0100
Message-ID: <4499105.Wku2Vz74k6@diego>
In-Reply-To: <20240223-saradcv2-chan-mask-v1-1-84b06a0f623a@theobroma-systems.com>
References: <20240223-saradcv2-chan-mask-v1-0-84b06a0f623a@theobroma-systems.com>
 <20240223-saradcv2-chan-mask-v1-1-84b06a0f623a@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240223_054113_448292_6751B734 
X-CRM114-Status: GOOD (  11.17  )
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

Am Freitag, 23. Februar 2024, 13:45:21 CET schrieb Quentin Schulz:
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> 
> The SARADCv2 on RK3588 (the only SoC currently supported that has an
> SARADCv2) selects the channel through the channel_sel bitfield which is
> the 4 lowest bits, therefore the mask should be GENMASK(3, 0) and not
> GENMASK(15, 0).
> 
> Fixes: 757953f8ec69 ("iio: adc: rockchip_saradc: Add support for RK3588")
> Cc: Quentin Schulz <foss+kernel@0leil.net>
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>

after checking against the TRM

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
