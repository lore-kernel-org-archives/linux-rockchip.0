Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14894C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 07:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1FmQhR+/ff1KKoZ4Do0OsvWKNahunAVOTElHEP9qoHQ=; b=woo1O3qlWfIEqR
	8A7rX0pRWbnDkHO2OjAta4JJTGV0lSLYvheCy6zIAfUKS1/wT/CZ4Auyl+ksFrM4jt66i5iLeQptx
	n/5Qh8NM9LbwSxREXZ61tShADuKY9mOTqhUktG9s3cmvNeLVSPgAQhPuhj7dn1q4rEeFjMCw1awgl
	qG40+hXVEZGUa/RwNMt0BMzuFXEAUXhAuDRu8oGiBmx5IwmOZ7ROH6cKqse/5J4mZyE97LEC8MiDC
	MLmkrc02Lsj3CUiokWJqQ4F3C5gAIc1DvaaFVjuYzak0ITHIoLwMXHvEVXlNw33XrU8sjwpWvewRK
	w6mHcCT/04IWiSyCvsvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofc7l-008iRe-1h; Tue, 04 Oct 2022 07:13:53 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofc7R-008iPE-0Q
	for linux-rockchip@lists.infradead.org; Tue, 04 Oct 2022 07:13:51 +0000
Received: by mail-ej1-x62a.google.com with SMTP id bj12so26833479ejb.13
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Oct 2022 00:13:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=GPCtShCbSyDzwVbcHV+pLByAKo7NFJt5Qsu/XrbzZYU=;
        b=cxXD3Lt8p84hMFLzhG0XxCduK8GhdUzNfP6y1/V9N8hZnprngpah8XjAl9jWe4ioNU
         tRsaiKOKx9X9MR0Ieie+35o2JPcfo+WecI2JpKnogS01JdqbrHslZtujj5J9Z+xAANcw
         G+f+RbX78kZ5srB3oYRlyQ5rSh6Pxv7tE1RXfkQrLnoP+IGnt2Ba0OhhcNDyLoo0ShR0
         kdabFycEHyZ6vtnylEzaKdk/yCb8ZV7qiUbv9xyOhTupyAX4FExlIXReoIozZ71iJ5C3
         mTWt+LrWQF0sQY0S/Jv/jor8KoeBk538wS0sNuYaUoSWhYmmItR9rSmefDywS1OvcgoR
         Vq+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=GPCtShCbSyDzwVbcHV+pLByAKo7NFJt5Qsu/XrbzZYU=;
        b=DCcPEKTHvD6KLYJllD0IC5OOGA8YwMSZH2czR0LWUxG14ocfR+MVkH6RCgWj7BcJkm
         ogOQh0RHobGmTqc/1tffArr5gmyR8xeaGp2hk3frckrMHpEHhxlZB/vucohUbZb2/XGn
         z8P0ZCyQiKJ+unIcSSAngcIvp7FFa3Jsf6JNN3ajp9ieJ9hX7F96MlWoct+VPjh5JIgX
         rmTyrCYC8CY2cp5k/2xBcME92IBzg8orYwg6xmznCG8lPhzXiENt5ANnwAaIt7EyXYR5
         38ZThocUbzhkJVGsXvT0j/pMdQHtv3S5BSiwFxOkY28ReQcBHbek5ZJ20SKBTNnsetDd
         8PRw==
X-Gm-Message-State: ACrzQf2GMuAaI/8+8m+LFERMsL80DMSOx2rVSoTAFk79jgLF9mYfSf1m
	3E85lqoGRUB61Owh6UzbSEJ3oedVc9miYde+DUCpcw==
X-Google-Smtp-Source: AMsMyM7bJYaqKdEXLdr4K12/gr8Z6r+mws4ryUjSTArXKsX2AbSxB2IWTJSEOGxALJG9xnEKagYz37jDrE/oeM7u0CY=
X-Received: by 2002:a17:907:7b9e:b0:783:10cb:2826 with SMTP id
 ne30-20020a1709077b9e00b0078310cb2826mr18451663ejc.208.1664867610518; Tue, 04
 Oct 2022 00:13:30 -0700 (PDT)
MIME-Version: 1.0
References: <20220920103108.23074-1-jay.xu@rock-chips.com> <20220920103108.23074-5-jay.xu@rock-chips.com>
In-Reply-To: <20220920103108.23074-5-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 4 Oct 2022 09:13:19 +0200
Message-ID: <CACRpkdb78PCZ0JXmMt29bB9zy8VXsS13rm9atGiOfYLZjpOvHg@mail.gmail.com>
Subject: Re: [PATCH 04/20] pinctrl/rockchip: switch to use device_get_match_data
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: heiko@sntech.de, brgl@bgdev.pl, andriy.shevchenko@linux.intel.com, 
	robert.moore@intel.com, robh@kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, lenb@kernel.org, rafael@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_001333_918660_0B05810F 
X-CRM114-Status: UNSURE (   6.09  )
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

On Tue, Sep 20, 2022 at 12:31 PM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> -       match = of_match_node(rockchip_pinctrl_dt_match, node);
> -       ctrl = (struct rockchip_pin_ctrl *)match->data;
> -
> +       ctrl = (struct rockchip_pin_ctrl *)device_get_match_data(dev);

Drop the cast: these pointers are void * and can be assigned to anything.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
