Return-Path: <SRS0=2K8y=II=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB9CC433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Mar 2021 22:57:58 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0900C64FC6
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Mar 2021 22:57:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0900C64FC6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IWsoAdi+S4NEqmlwN8nHCCwqXRl5MujCH2dK/D24wzg=; b=IM8+YxiRwENkDfLomUtY02m1R
	Xh+wl0bVq0+w38fssMeszAdM7H0IAczS0pl7LEu3oSzV4E5QHGz+M6c4yu2p5c5vqvl029EZpVyYI
	tEF7Ejq9iZOJlYo7GuC6YV04qDH4c8jpocmR1e/0T7KF1PvpzOI0aBapBRmwxBB6WvsOKQC2b5gDY
	kHKKA2jEqd1fzn7Xba4OXtkwSIAxEvU2fw2NwRi2n80ELxH9m6vEi6fgZqs9t6un/BxXCmnrz3tZc
	GQnjqJTUclVd1SP6joGBWIC9JBeal2eTHjawJfuOp8AmIIN/uz9JUgDEzBwJASOE6e3p6SzXIh4CP
	KDb71aQrQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lK7m4-007wqo-Cr; Wed, 10 Mar 2021 22:57:52 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lK7m0-007wqJ-UU
 for linux-rockchip@lists.infradead.org; Wed, 10 Mar 2021 22:57:50 +0000
Received: by mail-lf1-x12e.google.com with SMTP id r3so28231368lfc.13
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Mar 2021 14:57:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d2/T7lC+TgI1noDB/pMmyFyVPYA1l5MlMJCzUb0Ud9A=;
 b=CGBOyR6lxd9bsulbOoTafTqqLQjjXRzQuOVaS5kFuCJtdt5IdIkAYtQS/+loOCTgXM
 hmIMX8PIVF/4+ctZM6soZUnGMalaoJUXcBMT44YvohN48vtxV7lRiByVJ1rJT6OjgsJn
 bX0NZ+kEjhv7BgWWmEzVDbpmYEM216ldKC93nksg/vDDb75s+SGV2rq6ZJSsyLpvDSqY
 PzOLNKAlxLi+wTUeUtCGALn+iz63DjKr7+I+6VhOYJA+j2aOkOTQB4p6m4VamhJwm/8A
 KIBK5e52WiZqWxSI6RXp3IzNgdCkCUOj96INhjiwzRQ0vNc5Wwke1tJi5WyP58vV3F8A
 tAYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d2/T7lC+TgI1noDB/pMmyFyVPYA1l5MlMJCzUb0Ud9A=;
 b=o0mCN0NklVWubwbvYAlYDigtw/VJPn4HgQ1AjNM2vweSwXOE+P5fi8jG8WUAx22/KL
 JLRmhr4YSqipyOaNs634IoU9x3QDHRdUobsrWFJfdaKU7F4oxKyAQghtrI+HbPj768Tu
 1HkjA7+mpGPYIauIsjSVcuTkHbQP8BJvMvSrFn1ia/mHzmrcqJkOUWHkcsF6d8bZv7IR
 pUTymMnQhS+XhGB5g9FEn3UQUnKLhvViRA19nA9prpVpm2If2TyOZa7wSZU4tMzXJ4FI
 PuFWwbPb5t9ghZlTfVcGxF2I5OwHIN3ZAs6DrOnFd1eZ+X+TMVA0d+0JOvZfCOnMUKpm
 PcKQ==
X-Gm-Message-State: AOAM532i4A+q4/7Rt9RC4FvwkrfAlpwCe3+AJnWZ7v6sHA/qYjpMpyFo
 pfA469RePM7KCvzPkUSJxoBQ4H7xRVu+Ry+v7ENHSA==
X-Google-Smtp-Source: ABdhPJy6mJfwWioqliBKauWWA3snsEiRmpsS5OlCAOSeEeE/LycC1E1udAEzj6ZkO1j7OJ0PtV/KBxxcqbGummNnUVk=
X-Received: by 2002:a05:6512:74a:: with SMTP id
 c10mr456530lfs.586.1615417068054; 
 Wed, 10 Mar 2021 14:57:48 -0800 (PST)
MIME-Version: 1.0
References: <20210305003907.1692515-1-jay.xu@rock-chips.com>
In-Reply-To: <20210305003907.1692515-1-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 10 Mar 2021 23:57:36 +0100
Message-ID: <CACRpkdYcKPehB2ugpDsD+mZ81eOey7ciK76BEJT_wECH_O1zGQ@mail.gmail.com>
Subject: Re: [PATCH 0/2] make rockchip pinctrl module able
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_225749_154609_85255E60 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
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

On Fri, Mar 5, 2021 at 1:39 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> Make the rockchip pinctrl driver able to be module by unselect
> PINCTRL_ROCKCHIP from ARCH_ROCKCHIP, then modify driver module define.

This patch set fails like this:

ERROR: modpost: "irq_gc_set_wake"
[drivers/pinctrl/pinctrl-rockchip.ko] undefined!
make[3]: *** [../scripts/Makefile.modpost:132: Module.symvers] Error 1
make[3]: *** Deleting file 'Module.symvers'
make[2]: *** [/home/linus/linux-pinctrl/Makefile:1440: modules] Error 2

Probably this function needs to get exported. (Send a separate
patch for that.)

Yours,
Linus Walleij

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
