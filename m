Return-Path: <SRS0=lIs5=KU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83300C2B9F7
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 02:58:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3CC6A61413
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 02:58:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3CC6A61413
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w1tzw7jIKkVVBZpYRFYqL29HTw9Eh4AzHgvVRVJw/+U=; b=XT8NSqFbrgdsza
	mryUQoXEeraSH7n4zrDackG0DJ4u1xKD1MGzi3euVdbF+QjnnIb7hViEnKTNExxY7EqvlxnRIEQ0d
	+btQ6Utt8L+nuoRLgPtqL2VL9EGD9Hh9PiqNDF4bPZpZtO7ztQDFPqJcoewIXDCJzEhoWud8bDgBq
	A29wZGcVw/Z0faR5JtBNat440Pd56bCl6RqieyB7wQVry+kBXoNy0WtrFYowT+9iEttKBeRS0TRRe
	35XSj9p6I2uoMpU7wyX+KRvYODS2DyxSeaxhVk9sTKY9CejS17lYUNDUg1x9vDUDWMkppOjp+wpeX
	nNoiEQXe3rvvKMs5SshQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1llNHS-00326l-3a; Tue, 25 May 2021 02:58:54 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1llKb1-002TD8-DF
 for linux-rockchip@lists.infradead.org; Tue, 25 May 2021 00:06:56 +0000
Received: by mail-lf1-x130.google.com with SMTP id i9so43132309lfe.13
 for <linux-rockchip@lists.infradead.org>; Mon, 24 May 2021 17:06:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kMpOljGnfPeM78kPggxibkmCL00Y57PzO5ZmaEV0BXY=;
 b=MewdMHu8pSiz9xtZOKCGO2UN+t5TiiRcBHH1a51nLZOQ930DNpl6gJPaV2XGMGRFVM
 e/50I9+o6cNImkcNqVmAHX1IG1yNlF+DM2eszkohBGYtUWYHCehhn6ipxRJhfR/9wxcu
 yp+JYSiP05pJjGHOkI4oqCGDNxIX+rKjQWIB2oIlP8QoqW7i9RYKKn76Ir0HgL2Vkyol
 qZ8LWSZkflFyvnqM1aEJNpem1C1r3uEIL83lAtsZ+Qs1MafIqT6TVc99DPwYyg6+YxgP
 n9xGP/9mCT8suXOUCn2J9jmJLenG4SLFB9g1rhAIWDXz8kpASz65DzXqXMLjzllemIH9
 menQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kMpOljGnfPeM78kPggxibkmCL00Y57PzO5ZmaEV0BXY=;
 b=rPsfRGHNk80IZlrcyQPPCXOjzhKLegkcNR6UaEbQQ7NtGzZtEOmlrVBs1aBCWR6m2K
 7My3X2a57LSenVcHVf5snf0tgr6FOPIr99h0x66FEijOHny65IZ/GYm5N/DTrECUpKFl
 Sp28x82Zqmch3dpWeKZYQA6+p4ewyZBnMPr+QY0AtsgMI7UdQatgSDr2B9pFv4++NlWl
 xoXvSdeohwrUh87G9uO/HLd/U9tjcMUc/AYh++BrM17AXZhzte1Hw00iR08YBTmgE4jc
 CyFq1Q67OTMoK2z78RwPEW2oEWoed00j+kL85wj/qqag2LraeX2Wm9yPFtHvaOoVRuk3
 fQcg==
X-Gm-Message-State: AOAM533QjQoDacoSUYHPUohDQ/5VTJhmSWwNJ50A8BMX5F07+gJcT4M8
 aM5A40WNLF4bqM0d8iTVn1jU2cfkSJeQY9ri3iaukg==
X-Google-Smtp-Source: ABdhPJx94W96U3rvN6Jk3W8XwfHaYZxs8wqy2iOgobL2N4vLXoIZf9tS5BonEJmR9TdQKSwTD05BGaGxDwMtobVK2RA=
X-Received: by 2002:a05:6512:1185:: with SMTP id
 g5mr12286057lfr.586.1621901213604; 
 Mon, 24 May 2021 17:06:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210510063602.505829-1-jay.xu@rock-chips.com>
 <20210510063602.505829-4-jay.xu@rock-chips.com>
In-Reply-To: <20210510063602.505829-4-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 May 2021 02:06:43 +0200
Message-ID: <CACRpkdaZ=3AsT9NiOKrwEDWXReDX0w_PsdgwC6fqSb4Yecry-g@mail.gmail.com>
Subject: Re: [PATCH 3/7] gpio: separate gpio driver from pinctrl-rockchip
 driver
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210524_170655_520045_61393618 
X-CRM114-Status: GOOD (  12.57  )
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

On Mon, May 10, 2021 at 8:36 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> Separate the gpio driver from the pinctrl driver.
>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>

Overall this is very good and should be applied.

> +#include "../pinctrl/core.h"
> +#include "../pinctrl/pinctrl-rockchip.h"

Please explain in a comment exactly why you need to include
these files. I think it should be the goal to get rid of this dependency.

It seems that the driver can be further simplified using GPIO_GENERIC
but we can deal with this later, once it is separate.

> +static int rockchip_gpio_set_config(struct gpio_chip *gc, unsigned int offset,
> +                                 unsigned long config)
> +{
> +       enum pin_config_param param = pinconf_to_config_param(config);
> +
> +       switch (param) {
> +       case PIN_CONFIG_INPUT_DEBOUNCE:
> +               rockchip_gpio_set_debounce(gc, offset, true);
(...)
> +       .set_config = rockchip_gpio_set_config,

Can't you just use gpiochip_generic_config() and rely on the pinctrl
back-end to deal with this?

> +       .to_irq = rockchip_gpio_to_irq,

Normally this should not be needed with GPIOLIB_IRQCHIP but
since you are refactoring an existing driver it is acceptable to
keep for now.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
