Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF24EC54798
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Feb 2024 13:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/9vRlJIJRNCO53wRuKWY85fJ+NLpud6iMt7/iTuiV74=; b=I+JWq62K9mqkyy
	bF+4Cy9p46d8fpqaOpJBwpwSabALqCoYGE64iUk585J2QzPZAXL3tM83lpWdoDqpAv5tzjJmUcflF
	gBuAV0rtKV25V8aXxiRxXGEFnnya6Qrvze2ms4Pv3fYF/SGVQiAG6cjOLoc9oN0IyzIqI0SnxD+vC
	GaZeJ9PFKWJRLPVwQJR+CLCqeX5f8diuWpu8wJj57kNs3cUbahCiylcQJ6mzSHNtZslhAT8VNVQy4
	rK6CbH4rjm84BMuBNatixSXoeABYYUqHNFga3yy3iZG3f+lJeNNYTRVAGkNR2FzBdoEYkd2WzsHLw
	HdMkg43wzu2ZkyE3ITmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdVrR-00000009dA0-3Tf7;
	Fri, 23 Feb 2024 13:45:09 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdVrO-00000009d7r-32U0;
	Fri, 23 Feb 2024 13:45:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=w8g9OanyNYGuNbaWr//60jFHVeZOFf+WBjM3b6HBfUA=; b=v8jKN6HL8JHaIGzlMjhJfWBxPC
	uoJ2/cDxXz6OVm5iJAL3y/k3vPb0bLL8LRGjZOIAphUni6lir5AByDqK5O3XsAyEB3Xmmbi3k0nPq
	5TQGAJBtQbgUe0PjGPILZvoJnkk+aFethg43z4fqrtw32tD8XGbN6rqg51IX9B3S/TTsbLpxjXMqO
	sA9ApgPdkOIL8Fkk6yOeKJ6+nmlKmnBlnLO5pKAVpHm9CdoGmMWVTWhx66XKv87qHDH8Y+NV3REYk
	YG7zMcEBmI45sWL7mC4Cou03SWzVPPFe7f3YC4ORWUEkoppB/u3EpBbvLBSjVSJrF2ZNVJ4Zldhll
	0QSVJoYg==;
Received: from gloria.sntech.de ([185.11.138.130])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdVrL-00000007Csg-1tUS;
	Fri, 23 Feb 2024 13:45:05 +0000
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rdVrB-0001I8-K2; Fri, 23 Feb 2024 14:44:53 +0100
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
Subject: Re: [PATCH 3/3] iio: adc: rockchip_saradc: replace custom logic with
 devm_reset_control_get_optional_exclusive
Date: Fri, 23 Feb 2024 14:44:52 +0100
Message-ID: <3172660.fEcJ0Lxnt5@diego>
In-Reply-To: <20240223-saradcv2-chan-mask-v1-3-84b06a0f623a@theobroma-systems.com>
References: <20240223-saradcv2-chan-mask-v1-0-84b06a0f623a@theobroma-systems.com>
 <20240223-saradcv2-chan-mask-v1-3-84b06a0f623a@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240223_134503_538999_6ED226CD 
X-CRM114-Status: UNSURE (   8.79  )
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

Am Freitag, 23. Februar 2024, 13:45:23 CET schrieb Quentin Schulz:
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> 
> devm_reset_control_get_optional_exclusive does what this driver is
> trying to do in its probe function, therefore let's switch over to that
> subsystem function.
> 
> Cc: Quentin Schulz <foss+kernel@0leil.net>
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
