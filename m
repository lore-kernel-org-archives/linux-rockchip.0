Return-Path: <SRS0=xWqI=CN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3FC6EC43461
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2020 18:36:56 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6B50820665
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2020 18:36:55 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="O30U/WuZ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6B50820665
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7NMVZTB+5dlObIOO/4IHg7H2uMQySz2m8CCCEyvHsMQ=; b=O30U/WuZr8y4Z60EHG29O04KX
	BTcMvaUq7q/tKk6COAMY/jrXFPfiwMZs/bNhxe4ez1OJUQbhZPHhwoKgE0b2MgeZC315CKhOMXux6
	14eMKnaxt+1PDMTU9lokNigdeSErN+5slurl0sIhkAArRP6+D5eDE5ifGHHYSuqlr1T5LdhgfGGej
	ifMQ2XeAKZ9nVuC7MQ3Z1wp2qkctgVY50FHZqgHpmtZJxxmUPkz6K2sQeRaC9zwmJfOOmmCmVu1Hk
	RY5VQ9PiFUMhb4QQouS74/W+CVAkToFLHzwxlYCFBQ12iN3PkDDZNBZcIKkc7BvknLD4AzxxM5uO7
	2XqhB2v2A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kEFZv-0006xI-Ta; Fri, 04 Sep 2020 17:32:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kEFZs-0006wX-OQ; Fri, 04 Sep 2020 17:32:45 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kEFZa-0007FR-A3; Fri, 04 Sep 2020 19:32:26 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Alex Dewar <alex.dewar90@gmail.com>
Subject: Re: [PATCH] iio: adc: rockchip_saradc: Allow compile-testing with !ARM
Date: Fri, 04 Sep 2020 19:32:22 +0200
Message-ID: <1602652.ZmzXO7uU3z@diego>
In-Reply-To: <20200904170416.16061-1-alex.dewar90@gmail.com>
References: <20200904170416.16061-1-alex.dewar90@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200904_133244_798122_51B760F3 
X-CRM114-Status: GOOD (  17.41  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Alexandru Tachici <alexandru.tachici@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Saravanan Sekar <sravanhome@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Vincent Pelletier <plr.vincent@gmail.com>, linux-kernel@vger.kernel.org,
 Beniamin Bia <beniamin.bia@analog.com>, linux-iio@vger.kernel.org,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, linux-rockchip@lists.infradead.org,
 Alexandru Ardelean <alexandru.ardelean@analog.com>,
 Alex Dewar <alex.dewar90@gmail.com>, Jonathan Cameron <jic23@kernel.org>,
 Artur Rojek <contact@artur-rojek.eu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Freitag, 4. September 2020, 19:04:16 CEST schrieb Alex Dewar:
> There seems no reason to allow for compile-testing on ARM only, so
> remove this restriction.
> 
> Build-tested with allyesconfig on x86.
> 
> Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/iio/adc/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/iio/adc/Kconfig b/drivers/iio/adc/Kconfig
> index d94dc800b842..03929606bb01 100644
> --- a/drivers/iio/adc/Kconfig
> +++ b/drivers/iio/adc/Kconfig
> @@ -863,7 +863,7 @@ config RN5T618_ADC
>  
>  config ROCKCHIP_SARADC
>  	tristate "Rockchip SARADC driver"
> -	depends on ARCH_ROCKCHIP || (ARM && COMPILE_TEST)
> +	depends on ARCH_ROCKCHIP || COMPILE_TEST
>  	depends on RESET_CONTROLLER
>  	select IIO_BUFFER
>  	select IIO_TRIGGERED_BUFFER
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
