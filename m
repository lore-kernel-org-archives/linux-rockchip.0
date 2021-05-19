Return-Path: <SRS0=17rj=KO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D91CC433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 23:18:56 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CA889611AD
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 23:18:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CA889611AD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RgNRW1Uh4tlu4Dr+wzTSSRw1z1+LkA11iNAxoF+Asxs=; b=CjQqqCC6dwGVQq31n5wGA4r4Z
	bHFmaO7IYIc13hdu6r/k5zumS6nBRLaYxXwMYSwhuBXpOQ1bux53xWnv5bsF4xTy8Lo7KTQzPKpyH
	hT2BoEggQy17tOs8AU2+G3gy/BrBpjXRD0mj8MT2wo+Vw3nHQpH7JtkLivClDj89P3LMKUJzt0qrX
	SwYszjECI5oVW9HFlD8ZBIgKDFkwqUCifOZbok663G/yDVLPgadtJiU+RWLIls/6rnQ71jJs4c4yQ
	xr9YkTyb7sMFr/2xpmEIQ1uzXs/4FQl7b2rpuEtBZZwsjo0MGHikOrgHVJrufSvnKeUbiMXoqGibj
	39AD7i/pg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljVSi-005KCG-O3; Wed, 19 May 2021 23:18:48 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljVSe-005KBn-HS
 for linux-rockchip@desiato.infradead.org; Wed, 19 May 2021 23:18:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=F+8r9AtPlzZj+9/cRqukpg3AdDA3FSYfxc2gkenh29A=; b=QSlhJItMJYBewRpk1ll34jl0Ei
 /WSq7ERVzaeB4Bf0kNHOzbJhFPUWxzBFV1/DSFj0S2ZDezMScqDT6iVg6076uqGU91zdhb09+t4G+
 sTS59Bqeni1Ejrm6OeHg7t6/BmF38OWxI/xoXel/L4TsmU35+mIycZ0JYP1Tn6zRY052TjagxXpal
 W/SXI7xcEu2XzhVKO2tWd3J2eJWh73purmsBZyY0PsxpGuD6LxVolZnR3cuXVyUWmGpbLmf8B4J8q
 8lGHNwl5qkmtwimy+QOyzz/AEVLAPXwtYVDkr5uPurI8Aj3zj5ee/W9n3HywzMpuXhXMytclk/RGd
 glrhgT1w==;
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljVSb-00Fq5n-NS
 for linux-rockchip@lists.infradead.org; Wed, 19 May 2021 23:18:42 +0000
Received: by mail-lf1-x12d.google.com with SMTP id z13so21602235lft.1
 for <linux-rockchip@lists.infradead.org>; Wed, 19 May 2021 16:18:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=F+8r9AtPlzZj+9/cRqukpg3AdDA3FSYfxc2gkenh29A=;
 b=WvOd79n8o4q0G6YzVMJuOJ+x3g042hRVyBYLTk4sElhutqNTtCy0pl/WC6F1WZ3+jq
 JDAd9fX6qk4tvQDgR1fWDNUedqEvDqoCqHOClM4vkAbOajn9LRYuMUcSh7hMf6hndhEI
 bV7KyzRCzLiwhgyjQHbvh2pdZCEeyxg5K2qfAXKQTPYxW+1g4zqoktYgkUvjMkwOyacz
 +PGs9dW6MoJUhpyN1I9sZ18QcjL6m91zKmwHInSIg2hAZR9E/wJGzyLJJjkmBql7IP3w
 uWmpzE8h/KL15o/imfoVGTt1QUfyL9rWKb+wwaLdxvk6sQA2f/M7gnpz30Hrj3e4LE7q
 QpKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=F+8r9AtPlzZj+9/cRqukpg3AdDA3FSYfxc2gkenh29A=;
 b=lbiLtYFMMoS5GYjlMywfITRZBfmGU11GqCNZJUuOH6JVuXrgcAlMbqR5vrqQIR3ik+
 wIKaULRTV/PTWk1UJSwXU20t0QHXARLjs2MUlnF84o98YmtsbksuvooMI95HHCbwVe18
 bcxR7co9+oy2IrwL9NfuCR3tN4syxotUQHYi9deJJMJZkXG/2Y1sp4R/59WR4dhhLQ8t
 5wZrrxa48oqSOTNuqRaqd8y9nUfck+BnysKFI7YbCAzlTgC2qY+Zn30K0fqj5KWxOmTc
 hsY2bCL7hUREMUirZWtBGSFUgADSB14F2U/vpGSiCzyfgJuEXDZm/zSFoT8qoQPFVddf
 52ng==
X-Gm-Message-State: AOAM530F9AQXXD/838Nk2PfY85pwWyCXp+jNefyO5yvS0kvqhQEeWxAw
 9EiKK//xtB10hHiJD1CQ5nxrZxx0g6wO+n+1TEy4+Q==
X-Google-Smtp-Source: ABdhPJwoRGeMvc0HB7Ita61Vbufx14BhMJonsMgYo6AgL9tBerER2OwNehn9mXrmS55JmIhaZwgfna9MnK8gb6f9B0g=
X-Received: by 2002:a05:6512:1185:: with SMTP id
 g5mr564130lfr.586.1621466315389; 
 Wed, 19 May 2021 16:18:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210510063602.505829-1-jay.xu@rock-chips.com>
 <20210510063722.506009-1-jay.xu@rock-chips.com> <7622756.lOV4Wx5bFT@phil>
In-Reply-To: <7622756.lOV4Wx5bFT@phil>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 20 May 2021 01:18:24 +0200
Message-ID: <CACRpkdbRONGkiukppCROFFLFkCz+vDJFj_OGC=8MSR4JpZaXrQ@mail.gmail.com>
Subject: Re: [PATCH 6/7] gpio/rockchip: always enable clock for gpio controller
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Jianqun Xu <jay.xu@rock-chips.com>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_161841_789751_82CFCB6D 
X-CRM114-Status: GOOD (  10.75  )
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

On Thu, May 13, 2021 at 10:49 PM Heiko Stuebner <heiko@sntech.de> wrote:
> Am Montag, 10. Mai 2021, 08:37:22 CEST schrieb Jianqun Xu:
> > Since gate and ungate pclk of gpio has very litte benifit for system
> > power consumption, just keep it always ungate.
> >
> > Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
>
> I do agree with the reasoning and as an added benefit, we
> also drop all the clk_enable calls that don't do proper error
> handling right now ;-)

Heiko what is your general stance on the rest of the patches?
I was thinking I should merge them soon if you're not
against.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
