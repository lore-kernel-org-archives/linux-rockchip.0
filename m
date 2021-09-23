Return-Path: <SRS0=OM03=ON=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90548C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Sep 2021 11:33:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5336A61029
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Sep 2021 11:33:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5336A61029
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=vanguardiasur.com.ar
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7TBuLdEB8iEHnmxu8ptr4GBfNHqpBTZG03CtqChEtFk=; b=fHPCtNtK2Axo/z
	svsnZPygNtoNFa4yWJAScBB3RcNXgyZ9+CwP9KUkJcqnIsg2re+6uiusaxC5o5vRlN2z/F+paKxNW
	vcZhOj+IleThpywC8DdOVei58AWx+DFsu0tjzn1TASt73A8IJtQB+kgR0hkDE7DQbpbw+BwKwcgNw
	aYPi2HWUkZMBP3n7VU1byuipi/5IcL2gVktd9531XBGFFgikpaE/+7EYpXdkGd4phbM3wNNKvYRxf
	l6JrUYtyOgSshMBQZjP7lAf9f8SEBahIhX4HPr1kO6QHQJM4ImeEo5g+4BL/znJkSxhxnTNGcjBQE
	WvO3zZUzEnRq5fISq/Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTMyt-00B7Vc-2Q; Thu, 23 Sep 2021 11:33:35 +0000
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTMyp-00B7Tv-Q5
 for linux-rockchip@lists.infradead.org; Thu, 23 Sep 2021 11:33:33 +0000
Received: by mail-qk1-x729.google.com with SMTP id 73so20958199qki.4
 for <linux-rockchip@lists.infradead.org>; Thu, 23 Sep 2021 04:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=KocIdb5jGuc17zu7Ll5xKBIwOSA5eG6mKrlgAJ0LxPk=;
 b=jKGoPkObEigizFUz6D0Nb5woqSbqQAGmw9/51htmMj8HWAau+xga/3nbPrl3CPpvcq
 wpVoYqgk2b0zTJawstauM+EqApBwi9vrq95W/ceXU0vUQOSbwwlQ4gsTZWtJBjMzTnM4
 CPG3kdqfzNZ17Fd2Ti9Pnq3iVGwVe7aWAOhd1ofZkSd8lcLVl25NFDA33/sbAwyUe7ML
 NpNvXGoUJdJlfXJzc27A3eTI0krPfyc8yOBxltFuMiuBWKzoEOjf48iFPTXAdp6MWhQ3
 5eo/UQIgdatPHItWRLllFH8tzTpA9O9G7BIHWec3Hsz4bN8+TPZiJp3HrYIABwlgns//
 i5cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=KocIdb5jGuc17zu7Ll5xKBIwOSA5eG6mKrlgAJ0LxPk=;
 b=M8D7KUc+SG49Gb1jLpRlmY5mhjkjaThFDG+UMKiV3fK+0WeilG+N0TbFcWdg8BQBW2
 jW2qIdaLUvcbGHky+Utc2m9yOsydC6D+TOgmq7LqpxCNEi9ENJDCW94w1P12C35DlNVh
 tcxsvptXykoWFCn5+RT74go7syqH8tn44xo3ANhqVeXyi0M7gooKZJx0XnLIZEQyrA5S
 xa0dW5trTfSVYW6Yp8H4mBY4kc+snqfjnqGhiBolG42ucWhUzDnqA9/L3SlumymOR2X4
 8/pYNBJ81mUg8n6gsgkDUHAt2SHHrTdBmtjPIKqQPysz86UDyZG7oX4CLiQ0KWpeZ/uU
 262g==
X-Gm-Message-State: AOAM533oRnxjZPeA5R2t4KJzX7ENGMRD8XwoUUwI0anP3gjVjhqnLmj5
 dzoxDdIBHyepAm9gm56wmE4j2Q==
X-Google-Smtp-Source: ABdhPJwLwFfPzjykD3Copu6BELIep6lzhOLkv+Q6ahS3Z1gWTVrd+LZwseEjX8HGZsp0xkALgkgwAA==
X-Received: by 2002:a37:f615:: with SMTP id y21mr4154292qkj.523.1632396803762; 
 Thu, 23 Sep 2021 04:33:23 -0700 (PDT)
Received: from fedora ([2803:9800:98c2:8470:9f4:8e2a:88e5:ec01])
 by smtp.gmail.com with ESMTPSA id v5sm3996894qkh.17.2021.09.23.04.33.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Sep 2021 04:33:22 -0700 (PDT)
Date: Thu, 23 Sep 2021 08:33:18 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Rikard Falkeborn <rikard.falkeborn@gmail.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] media: hantro: Constify static struct v4l2_m2m_ops
Message-ID: <YUxl/r8P2/k13FQZ@fedora>
References: <20210920200210.18935-1-rikard.falkeborn@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210920200210.18935-1-rikard.falkeborn@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210923_043331_875564_45026C3C 
X-CRM114-Status: GOOD (  17.75  )
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

On Mon, Sep 20, 2021 at 10:02:10PM +0200, Rikard Falkeborn wrote:
> The only usage of vpu_m2m_ops is to pass its address to v4l2_m2m_init()
> which has a pointer to const struct v4l2_m2m_ops as argument. Make it
> const to allow the compiler to put it in read-only memory.
> 
> Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

> ---
>  drivers/staging/media/hantro/hantro_drv.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
> index f23fc14b3562..fb82b9297a2b 100644
> --- a/drivers/staging/media/hantro/hantro_drv.c
> +++ b/drivers/staging/media/hantro/hantro_drv.c
> @@ -179,7 +179,7 @@ static void device_run(void *priv)
>  	hantro_job_finish_no_pm(ctx->dev, ctx, VB2_BUF_STATE_ERROR);
>  }
>  
> -static struct v4l2_m2m_ops vpu_m2m_ops = {
> +static const struct v4l2_m2m_ops vpu_m2m_ops = {
>  	.device_run = device_run,
>  };
>  
> -- 
> 2.33.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
