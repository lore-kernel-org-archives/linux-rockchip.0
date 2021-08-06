Return-Path: <SRS0=27lq=M5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3E78C432BE
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Aug 2021 04:44:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AEE60611C9
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Aug 2021 04:44:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AEE60611C9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2xXy6/Zzgb1cZycQA3Eh3k3QvxJ8daM+rEJenaHmTcU=; b=MY6sjShsG1XEXk
	8GarDzPvwYJsduSV8pK6G6MoxRpKPMzTAWa5A1I4EdWQ5Fpr27Ql9ceuXaxhdXt+hv7/qB23YJ+Fa
	PyBw7QIWSaJcT+umM5PVpgRX7lcsoCyZtqjacyAe72JXf5Ti6+Z2AfGYZ7EdeWDQ0ahv55A2RfHcW
	LlKGyYXiMxRHxE1t7TvznfUXqDqFlz4FQlU9n+Oo1DITk+IVtoIuvdg7ch+GiZoT8NnlOEK506rvO
	BwCJbbcCqqRzz8IAZN0xwTbE+A9yoSgCCZogAJw049mTHqBUDsxGXPS+1dF6cYJbiD1bmVkmcrqVM
	sa4feATl45NQa9+VVQOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBris-00BbZL-AN; Fri, 06 Aug 2021 04:44:42 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBrip-00BbYQ-88
 for linux-rockchip@lists.infradead.org; Fri, 06 Aug 2021 04:44:40 +0000
Received: by mail-wm1-x330.google.com with SMTP id m19so4784507wms.0
 for <linux-rockchip@lists.infradead.org>; Thu, 05 Aug 2021 21:44:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=E0jyHp/rsGyUBSc/zm3UYnSO11nUqZFB/b8HFTileso=;
 b=ZaKaUNq4AgYnG4GdQ5eqSLqVW/wDX1bizpgI8lyRUVfSefWJR4gnOKcxUs4jO3WwR2
 8cWBh/lUuQADuFIiTYe19Pcp+2haBCGqJPhEW1kDuZXuIOboKM8et3RREU0J0Rge3BE0
 G2u9uF3iUEZ+s66H5z1skSMHc967llUi5zguD/vSEwG64XVsAjhyEfOil4/Myp5ziefK
 XmExXLvlOUJJlBo+EGSsyTcgrEUOckBJNRYvLMiWuxIHLkovGMsxjPmfVhuFYS5ZZHFW
 NeGk/Ewlr3op9jNz/21XH0REmy+elmcafRcoqQFGc3LhWPS1JE8s/ze8JrjRo0Yegc4u
 BfGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=E0jyHp/rsGyUBSc/zm3UYnSO11nUqZFB/b8HFTileso=;
 b=kbRAja+vZ0hpAkuyW/SGmmoJpqxw79U7vqStd72qWfL9oOlN/zsfVbuTOjLTz6kAFk
 aGcOvYbUsE7OwFnHprjtSqmOByVYWEsOjFRoAgaT+7syCtqDKik89t0RvFFHAiIc4JRL
 BpYWz4PstiPKj+DZRU8zr7xeDlDytKVNOst2QKoYx55ALpdr9sBGrohPp/wuvuFHRREu
 ui5WrOW048EQ9nc4CZ7/YrQqmfLn4dywTsd1D3AZSNScYSBWesrpSB6V67BmBu8MLBE9
 0szZIW2YN56P4L5cG0GldRffMTMB05mHYmXGxOgXEvWIPlHV8JTOU6eCsv+XSKGEBMcN
 td1w==
X-Gm-Message-State: AOAM5310N/uz56WkpE/b19oN31A5Gr0/pgIWiLo58CVCR3zzcQEUEhGF
 SQs9ZnXL8Ep00ng3b4UkfUs=
X-Google-Smtp-Source: ABdhPJxKDTpXqvSGlHpDAJS36fz0bWT2b7ZusMwx5tRfozqoV+Pq4PjSyJaVLySbfv23BEGZP0dJ2Q==
X-Received: by 2002:a7b:c8d9:: with SMTP id f25mr1217959wml.40.1628225077496; 
 Thu, 05 Aug 2021 21:44:37 -0700 (PDT)
Received: from jernej-laptop.localnet (cpe-86-58-46-198.static.triera.net.
 [86.58.46.198])
 by smtp.gmail.com with ESMTPSA id n11sm9766446wrs.81.2021.08.05.21.44.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Aug 2021 21:44:36 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: p.zabel@pengutronix.de, Ezequiel Garcia <ezequiel@collabora.com>
Cc: mchehab@kernel.org, gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 emil.velikov@collabora.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] media: hantro: Fix check for single irq
Date: Fri, 06 Aug 2021 06:44:35 +0200
Message-ID: <8101406.vZ8PxZ7URt@jernej-laptop>
In-Reply-To: <6761bb11f4554e9f9cbe468b5ff8f851c57515ef.camel@collabora.com>
References: <20210805190416.332563-1-jernej.skrabec@gmail.com>
 <6761bb11f4554e9f9cbe468b5ff8f851c57515ef.camel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_214439_366949_E327DBA6 
X-CRM114-Status: GOOD (  28.54  )
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

Dne petek, 06. avgust 2021 ob 00:03:36 CEST je Ezequiel Garcia napisal(a):
> Hi Jernej,
> 
> On Thu, 2021-08-05 at 21:04 +0200, Jernej Skrabec wrote:
> > Some cores use only one interrupt and in such case interrupt name in DT
> > is not needed. Driver supposedly accounted that, but due to the wrong
> > field check it never worked. Fix that.
> > 
> > Fixes: 18d6c8b7b4c9 ("media: hantro: add fallback handling for single
> > irq/clk") Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
> > ---
> >  drivers/staging/media/hantro/hantro_drv.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/media/hantro/hantro_drv.c
> > b/drivers/staging/media/hantro/hantro_drv.c index
> > 8a2edd67f2c6..20e508158871 100644
> > --- a/drivers/staging/media/hantro/hantro_drv.c
> > +++ b/drivers/staging/media/hantro/hantro_drv.c
> > @@ -919,7 +919,7 @@ static int hantro_probe(struct platform_device *pdev)
> >                 if (!vpu->variant->irqs[i].handler)
> >                         continue;
> >  
> > -               if (vpu->variant->num_clocks > 1) {
> > +               if (vpu->variant->num_irqs > 1) {
> 
> Oops, thanks for spotting this.
> 
> How about this instead?

No, original solution is more robust. With solution below, you're assuming 
that irq order in driver array is same as in DT. That doesn't matter if there 
is only one name or if names match. However, if there is a typo, either in DT 
node or in driver, driver will still happily assign clock based on index and 
that might not be correct one. Even if it works out, you can easily miss that 
you have a typo. Driver doesn't tell you which irq is used, if it is 
successfully acquired.

Best regards,
Jernej

> 
> diff --git a/drivers/staging/media/hantro/hantro_drv.c
> b/drivers/staging/media/hantro/hantro_drv.c index
> 31d8449ca1d2..af7054b04155 100644
> --- a/drivers/staging/media/hantro/hantro_drv.c
> +++ b/drivers/staging/media/hantro/hantro_drv.c
> @@ -918,16 +918,15 @@ static int hantro_probe(struct platform_device *pdev)
>                 if (!vpu->variant->irqs[i].handler)
>                         continue;
> 
> -               if (vpu->variant->num_clocks > 1) {
> -                       irq_name = vpu->variant->irqs[i].name;
> -                       irq = platform_get_irq_byname(vpu->pdev, irq_name);
> -               } else {
> +               irq_name = vpu->variant->irqs[i].name;
> +               irq = platform_get_irq_byname(vpu->pdev, irq_name);
> +               if (irq <= 0) {
>                         /*
> -                        * If the driver has a single IRQ, chances are there
> -                        * will be no actual name in the DT bindings. +    
>                    * Missing interrupt-names property in device tree, +    
>                    * looking up interrupts by index.
>                          */
>                         irq_name = "default";
> -                       irq = platform_get_irq(vpu->pdev, 0);
> +                       irq = platform_get_irq(vpu->pdev, i);
>                 }
>                 if (irq <= 0)
>                         return -ENXIO;





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
