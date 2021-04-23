Return-Path: <SRS0=DeNp=JU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DD10C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Apr 2021 09:00:50 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9572B6141C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Apr 2021 09:00:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9572B6141C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CEYgvBqMDizxBCc+6eXW7tDt5XqudwU72WZjIa48Rmg=; b=pR2tsdOitVUdzKunQcFmRCes+
	/d+pHgfM7RfpQ4Kv4eyqGD2zN4DggAr7rSObHVaqsrQ1NPgf19VofPsxqPJJYNQ6GTROdWKYzqRln
	FG0CTnXsCBxDzDSsOgCjJJnZiOfml/PQ4ME/Eehtv/rYZMdg7VL16zdzJI9JCWS6XHdpeiVn3SmPt
	jwiOselo7B/v8PZ6X9uPblzujsMNM4YA4U5a8sfrw+vglx1BPni9IYzJDzSHbhVgl+xhLfFqWBlNV
	TuhXHthlitDHNA0Cmhy5gXbq7teqOTjKHJr9D74bqaI4Wy90BYg/0khU5c6BytDVgqdKWfmguTxi7
	IAoaTEGig==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZrg3-00184T-S7; Fri, 23 Apr 2021 09:00:44 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZrfq-00183I-5u; Fri, 23 Apr 2021 09:00:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
 :Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=CaUeAHQszL+wORL6XzkWNMteYVdvuXywp/6DuTGsSSc=; b=eyqpm8vr7hdgkxwzRea7no4vJn
 2nmvI2J9xR5xSic+WaOTGpqUkUqrC1wm19bxpUFIf5Rky7JoMbTXB0KOW0pCA3SebG15jdUYn5cQY
 gx4E5RPCX+SWY5/Mt3DRq+c4w5hvz3N0InKjzFU7J5GmNNuAYYfoFFppVPFUEp4hZ6RuZ5XnUX0bX
 lP3xTJ4IQz3I7CI+B5wzB4M0x3L5pAayMVAPzWNPQgEkKzqhTpXP1WvlfIDHHLD+YgwQiVoGjd6FA
 8dS7I/GlKAjMb0OTQSDAXeYxywQnU6RdgqcHKfaLWt5kgzHzMbNlwjnVzU2oiTyjz6T9CPh+mkhTc
 NX7FUGig==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZrfn-00EGtr-Ox; Fri, 23 Apr 2021 09:00:28 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lZrfg-0005L5-Nr; Fri, 23 Apr 2021 11:00:20 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: broonie@kernel.org, Jon Lin <jon.lin@rock-chips.com>
Cc: linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@esmil.dk, Jon Lin <jon.lin@rock-chips.com>
Subject: Re: [PATCH v1 2/8] spi: rockchip: add compatible string for rv1126
Date: Fri, 23 Apr 2021 11:00:18 +0200
Message-ID: <10186800.nitPUkWRp2@diego>
In-Reply-To: <20210423084155.17439-2-jon.lin@rock-chips.com>
References: <20210423084155.17439-1-jon.lin@rock-chips.com>
 <20210423084155.17439-2-jon.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210423_020027_836808_5DD810F3 
X-CRM114-Status: GOOD (  16.70  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Jon,

Am Freitag, 23. April 2021, 10:41:49 CEST schrieb Jon Lin:
> Add compatible string for rv1126 to applications for potential
> applications.
> 
> Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
> ---
>  drivers/spi/spi-rockchip.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
> index 52d6259d96ed..dae0281f6ba8 100644
> --- a/drivers/spi/spi-rockchip.c
> +++ b/drivers/spi/spi-rockchip.c
> @@ -911,7 +911,9 @@ static const struct dev_pm_ops rockchip_spi_pm = {
>  };
>  
>  static const struct of_device_id rockchip_spi_dt_match[] = {
> -	{ .compatible = "rockchip,px30-spi", },
> +	{ .compatible = "rockchip,px30-spi",   },

unrelated change with the add "space" at the end

> +	{ .compatible = "rockchip,rv1108-spi", },
> +	{ .compatible = "rockchip,rv1126-spi", },

it seems the list was sorted alphabetically, so rv* comes after rk*
which is probably why the rv1108 was at the bottom and rightfully so.


Heiko

>  	{ .compatible = "rockchip,rk3036-spi", },
>  	{ .compatible = "rockchip,rk3066-spi", },
>  	{ .compatible = "rockchip,rk3188-spi", },
> @@ -921,7 +923,6 @@ static const struct of_device_id rockchip_spi_dt_match[] = {
>  	{ .compatible = "rockchip,rk3328-spi", },
>  	{ .compatible = "rockchip,rk3368-spi", },
>  	{ .compatible = "rockchip,rk3399-spi", },
> -	{ .compatible = "rockchip,rv1108-spi", },
>  	{ },
>  };
>  MODULE_DEVICE_TABLE(of, rockchip_spi_dt_match);
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
