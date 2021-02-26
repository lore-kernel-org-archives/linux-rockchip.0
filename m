Return-Path: <SRS0=dCsk=H4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C6CCC433E0
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Feb 2021 00:07:31 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E6DE864F1B
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Feb 2021 00:07:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E6DE864F1B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=vanguardiasur.com.ar
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1RW2S7Kkt4Eo6WsZ5K12M4YEZaJwwgzNTDoP1zo1K8A=; b=QIocv9mb3dS9Zb7w9HHlKsH6c
	ZM16MznjqxltGLpdi2jrg14On/4iVblD4LSecLDcb3l7bU0znKy8XVUGZBQpcf0mPKbcE4gs9ZjY2
	solBVC+SiJF8+2+uh+8iKshtDrvnmY91HE/QXnW38dMFNyA17xx1M6rIYKxIG0kI1y1iQ5v0jXtvR
	vCT2QCV9rSEtiJRABCdZXbcSiuHdsi7l6rHMC54FI2IDzfD+cCZzAg/s2vQaE9Ff1JYM/fPbviN4K
	/s0uIkhqL+4iTl6xLhBFARInzLk78F3bIeJYVu7tlYIGxT0a4WD/mqLywd3IVQrG1BB2/ahj+bpBJ
	+or4VQQSQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFQfF-0006OX-VU; Fri, 26 Feb 2021 00:07:26 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFQfC-0006Nd-Jp
 for linux-rockchip@lists.infradead.org; Fri, 26 Feb 2021 00:07:23 +0000
Received: by mail-ed1-x534.google.com with SMTP id s8so9003009edd.5
 for <linux-rockchip@lists.infradead.org>; Thu, 25 Feb 2021 16:07:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0dMNeVGeNEmq1dAI13Mytw4Ljru52gLa+2kqt1mu+Ns=;
 b=METfQ3BbsD7YYDm9ZB2eQh1FLAqtJK/MIpVHTLeVQbpVt9Ux685sNV3kKIidveaJR7
 Pc322TlXOrqsKq6CUOsEkxghMCtAQXXTXW3rv/oO8M4TeXIg6vPy5bsT0LKJC/wenc2e
 z0ATStODbpurtX2KqgKVZ+ZZjg6ROh0h0g9oYtI3X7NszSMrmqMBIoJ94CAuCf8fJFD6
 xYxYDis8HF/y13Wp1l8P+RdzBNRFESddiBSwBP4dYOP1l/kJEA1XkETk7nmZGpY1Kz75
 6h8PpGz0wFn6l/Bxh4BQd0y10iLvR2BhE0lu+14D1yqv3pUsCIAJXJQOObcMXCm6uHbY
 /K5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0dMNeVGeNEmq1dAI13Mytw4Ljru52gLa+2kqt1mu+Ns=;
 b=HMi5azcs7IMGX9DDWE9owdBjO/SKZ0HuxXO8hPevlwnpGfg3cxTpdMvfmhjplXpDCk
 wRTQRNASO6Dre4Hrfvg3rNZTk6IaGUhWH9LC18ASVGIXGsUhqtx7JQ5POnWmdk2Ovqt/
 faSaVdvZ5vd3afecTyyD2jPxPmTE6j68VwSgyIdjQx4nV2un7HW4oXcpn36CcrOG4LuJ
 4d83m2sbFjHw54WA74NJ7kdKgd9w5mz1b1abekhiBy8snJBmDhwNaD/jv0UQHqbThbWQ
 TdLM6TSBYZ7fYD0OdSSmjt8QhjujET33DsWf8fGgBPJllVKHruAbjuE0mIRVsaltJPSj
 4Raw==
X-Gm-Message-State: AOAM533pNyCLVMdIQ9ewCVL9z31WWQr4XOBPWO/trRoemu45rphDBWs2
 WJPo7i66qOqUMiiZoYuv5qwDvv5cuAJDrnBhjXRxqw==
X-Google-Smtp-Source: ABdhPJz3vDnmJKa1/D8y2YKRdHcDVB2YrPbbchrmyz/pA3o6/3+TJEWKTt8v+d+9rqLT6nw3XmAQzPHb1Ft4fkxcspA=
X-Received: by 2002:a05:6402:2ce:: with SMTP id
 b14mr500529edx.13.1614298037635; 
 Thu, 25 Feb 2021 16:07:17 -0800 (PST)
MIME-Version: 1.0
References: <20210225120601.669238-1-enric.balletbo@collabora.com>
In-Reply-To: <20210225120601.669238-1-enric.balletbo@collabora.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Thu, 25 Feb 2021 21:07:05 -0300
Message-ID: <CAAEAJfAubBp4t=6N1vVmH6ksuChZK9GnHydGf-v-3wy9Z9GQrg@mail.gmail.com>
Subject: Re: [PATCH] media: hantro: Auto generate the AXI ID to avoid conflicts
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210225_190722_992449_1677DC3C 
X-CRM114-Status: GOOD (  20.65  )
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
Cc: devel@driverdev.osuosl.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, fbuergisser@google.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Doug Anderson <dianders@google.com>, tfiga@google.com,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Collabora Kernel ML <kernel@collabora.com>, acourbot@google.com,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Enric,

Thanks a lot for the patch.

On Thu, 25 Feb 2021 at 09:08, Enric Balletbo i Serra
<enric.balletbo@collabora.com> wrote:
>
> The AXI ID is an AXI bus configuration for improve bus performance. If
> read and write operations use different ID the operations can be
> paralleled, whereas when they have the same ID the operations will be
> serialized. Right now, the write ID is fixed to 0 but we can set it to
> 0xff to get auto generated ID to avoid possible conflicts.
>
> This change has no functional changes, but seems reasonable to let the
> hardware to autogenerate the ID instead of hardcoding in software.
>
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> ---
>
>  drivers/staging/media/hantro/hantro_g1_h264_dec.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/hantro/hantro_g1_h264_dec.c b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> index 845bef73d218..090088cd98ea 100644
> --- a/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> +++ b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> @@ -30,7 +30,7 @@ static void set_params(struct hantro_ctx *ctx)
>         u32 reg;
>
>         /* Decoder control register 0. */
> -       reg = G1_REG_DEC_CTRL0_DEC_AXI_WR_ID(0x0);
> +       reg = G1_REG_DEC_CTRL0_DEC_AXI_WR_ID(0xff);

Can we define a macro to avoid this magic number,
and add some comments explaining what's 0xff for?

Given this is AXI configuration, I'd expect it's CODEC-agnostic.
Maybe we could move CODEC-agnostic path to avoid duplicating the code?

Does this change apply to the rkvdec driver?

Thanks,
Ezequiel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
