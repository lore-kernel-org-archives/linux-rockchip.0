Return-Path: <SRS0=fzRm=NH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F02DC4338F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Aug 2021 12:40:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 608B763272
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Aug 2021 12:40:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 608B763272
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aLGGn4hAeZ4ppHziOf/8v7pAwEEi47ASaF9DWpcEN0k=; b=Ojd0OWa1h+FuV0
	P7zpj/ZdAIkdw8eAknn0K3xP6FPQC329WpweLaUB8NDpzwZWavQw84bPtMOP1Vw4zz6HeBlQWvUds
	OCQTki11+HTAHhREolIgl0UGvoULaGHaF5l4RPE/XXdY0mPR1DSD+c36a/YcfC0iIGD5LSTPROmfs
	0peJmKrGVjWsmd7J9aUjiek6B/INP0fsQXxY/N7arXDseqBHphMPjiJz5nKFDIz2lIEpYJTu7R8yx
	oTOM3HAgAgEe4zLBNnj8ksJRk6SzsqsWR603sMN8xZw8xLCPglRahycKVtu/8/GWV5Cm0hQ9ijqo3
	UKQerO5hch76K6S6Vhdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFbuq-00GxL6-S6; Mon, 16 Aug 2021 12:40:32 +0000
Received: from mail-vs1-xe2e.google.com ([2607:f8b0:4864:20::e2e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFbul-00GxJe-NK
 for linux-rockchip@lists.infradead.org; Mon, 16 Aug 2021 12:40:31 +0000
Received: by mail-vs1-xe2e.google.com with SMTP id a8so10851892vsl.4
 for <linux-rockchip@lists.infradead.org>; Mon, 16 Aug 2021 05:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VNwNXBDUCMkICc2Rzv/9tnwKQF1vpl085cudEYRntr8=;
 b=eJ2Z9oE5XSxgvUeoUoyA/QJ3fbSbHxOql3/ikT40/h43t83u9YAwm5tAMJnIaEyg9f
 44FiyWb/5H3WGR/ajGF13MxeUzFqLItwt44K/lzpxpI/Ptn8oIfP5knni2Y24xqOF7p2
 ktZnZyUFYQrCyls8vP166RJWV3FxOzNTr149i/UL1H8No7CEqSHsNMaCWckYipyM5Q1y
 UvvXuTrGbqS/jwtjW/VMb/bbJ7k5HrOfPPNAVyCcFMzKfLLTNbMsU01qcOvZ4zgekOsa
 u4QlGOSN67FvIzBkrcTUMJwEiCvyjvLOuefHSogxy7lhHe4ou6SKfToph75Pp7xyWPwx
 hJEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VNwNXBDUCMkICc2Rzv/9tnwKQF1vpl085cudEYRntr8=;
 b=ULhBNLW9kLRUvo8kUFYxgPC6oF4esE4lpxJMmCTA+0+FKCUQ1MGe8fuJn+IyCRi8rR
 yvJn5nRP44nFXLFgGNE9F/ZcO/9IUFgGswmGCS9vhZWVZE93immgUh3ifcqVHkyzf0pQ
 7So3ZwabZGoYzVXnQB+NFJA+CJUoYvPJCBHijZucRRJTaHb9RJN3TC40xih3dX6UOXcG
 2y1j6HlQaOycTVlBm/DNwnE0QANyCz/rLypTwhVwRrG+tHAGDSJWW4DolQ4+vCNrgtri
 smD1yew4DOX/OrusgTKD8B932eesMz3UXgiN7HDRy208N++dCV1Yp/DSwSmccF1IzW/D
 0Dzw==
X-Gm-Message-State: AOAM530dtX/5wk7F05KB1e8PqjWf414FPLaRlK1DUHPYzuyTulg+/GdT
 4gNDOaQYmWUXHfYRCR0wVQH0ya525mU09A99Reeh9w==
X-Google-Smtp-Source: ABdhPJwnIQS+cXgSTOG+a52nR/Nh2oBLImU+hFLKk4wPBtJQC0PSnWjuzP3Uv4Ytu64uB5g5788/5QHxin3DbwAOFZU=
X-Received: by 2002:a67:7cc9:: with SMTP id x192mr9550967vsc.42.1629117626325; 
 Mon, 16 Aug 2021 05:40:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210816032003.1162779-1-jay.xu@rock-chips.com>
 <20210816032003.1162779-5-jay.xu@rock-chips.com>
In-Reply-To: <20210816032003.1162779-5-jay.xu@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 16 Aug 2021 14:39:50 +0200
Message-ID: <CAPDyKFqYPfYqmFWHy818EKam7AOk1gNs99JAy3=W5cDGeE1QrQ@mail.gmail.com>
Subject: Re: [PATCH 4/4] soc: rockchip: io-domain: do more thing about
 regulator notify
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee.jones@linaro.org>, zhangchangzhong@huawei.com, 
 Heiko Stuebner <heiko@sntech.de>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210816_054027_838166_5B6FB3DE 
X-CRM114-Status: GOOD (  19.28  )
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

On Mon, 16 Aug 2021 at 05:20, Jianqun Xu <jay.xu@rock-chips.com> wrote:
>
> Do a fix to rockchip io-domain, follow this orders:
>
> * system running state
>   -> io-domain vsel to 3.3V
>     -> regulator_enable
>       -> vsel change according to regulator voltage
>
> * system running state
>   -> io-domain vsel to 3.3V
>     -> regulator_disable
>
> Found on some Rockchip SoCs, the regulator enable or disable without
> care about the io-domain maybe caused soc damaged.

Can you please try to elaborate on the problem a bit more, as I don't
quite get the problem.

What regulator is causing this problem? Who is the consumer of the regulator?

Kind regards
Uffe

>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> ---
>  drivers/soc/rockchip/io-domain.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/drivers/soc/rockchip/io-domain.c b/drivers/soc/rockchip/io-domain.c
> index cf8182fc3642..af5fb11ad9a3 100644
> --- a/drivers/soc/rockchip/io-domain.c
> +++ b/drivers/soc/rockchip/io-domain.c
> @@ -123,6 +123,12 @@ static int rockchip_iodomain_notify(struct notifier_block *nb,
>         } else if (event & (REGULATOR_EVENT_VOLTAGE_CHANGE |
>                             REGULATOR_EVENT_ABORT_VOLTAGE_CHANGE)) {
>                 uV = (unsigned long)data;
> +       } else if (event & REGULATOR_EVENT_PRE_ENABLE) {
> +               uV = MAX_VOLTAGE_3_3;
> +       } else if (event & REGULATOR_EVENT_PRE_DISABLE) {
> +               uV = MAX_VOLTAGE_3_3;
> +       } else if (event & REGULATOR_EVENT_ENABLE) {
> +               uV = (unsigned long)data;
>         } else {
>                 return NOTIFY_OK;
>         }
> --
> 2.25.1
>
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
