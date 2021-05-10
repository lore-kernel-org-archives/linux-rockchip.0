Return-Path: <SRS0=2pai=KG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33330C43470
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 May 2021 09:37:39 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 79C6361927
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 May 2021 09:37:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 79C6361927
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=vanguardiasur.com.ar
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VXSQ1qJLSvVFEYKb5NQHRekFNAXxN6SqudwoNCLbq68=; b=TWVDJLKNojYCBwmFpXhrevvPf
	ZM2yH6wb/CbotC0g5gyxQOHqxtc9PpTCXYLMw1lCsE5RoN/y0Hf5dnaESZ6buLiVFSHlxCMhUKmTA
	yqgkXkWyUYW3yCYlaFHW2NtqEEfcyO7zQV+uFVIrujUtwEZsFuQ/1nBEwd59B1f4vZ4LsusDF3oDu
	lPO+3lOKcddqg+417Oqa6Xwe6dGLj49OcKnBY2nH38e4ewrpvfJ309qGQEIZhjKiBZtYz+vVN9FPZ
	LCrTECbuJuCas4UOXmRfIQARnVXX4/Z7x9dI3rvg6FgeNu4B/AitypSE9BluLOgWyd4TE1wbCJ1CG
	Fkmff5wQg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgOpX-00GiwE-82; Tue, 11 May 2021 09:37:31 +0000
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgECu-00Fnvf-Tn
 for linux-rockchip@desiato.infradead.org; Mon, 10 May 2021 22:16:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=9FT7OOp2mNRaZwmV8uqw34o87uK18modrlSvUxsdB2g=; b=4q05A0Xj+n4I/ORe8i+/jR+zGD
 wnwdKvksNJwmg2P3aH8TsGM7LijYnkFImsWqEPy3CpE7G61g8yNFXG61dWmSSulOxO09iaGsYur82
 CvsfPhjFXCN/gs9YJJb1GykGIbSQDg/dZ7zWI8MCO5P1zaFBeeyZxOIWfheeXROsIqpK5s0P2xf8I
 2BIb3E/O7hR9AfV0IP5uL2kvxJ7+exoCm/lJ1hj6TOGRra++rouwEydU7M9TZWoxHcLA1GrA/OmGT
 z+YmI/Paatdsc1jXNANDgwPB1S+XwUjW9vJUsP1n1Q2ttpp++Y7LS6ohaAjksRXyUsiDbbNHEHEfa
 vy6Mdq0A==;
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgECp-0099WR-6h
 for linux-rockchip@lists.infradead.org; Mon, 10 May 2021 22:16:52 +0000
Received: by mail-ed1-x529.google.com with SMTP id n25so20533954edr.5
 for <linux-rockchip@lists.infradead.org>; Mon, 10 May 2021 15:16:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9FT7OOp2mNRaZwmV8uqw34o87uK18modrlSvUxsdB2g=;
 b=jqGgixAXgAqIPbBvpRxTE0B2SlH4qGvYnHvbeYPN/kRHlQqGSBBfX9yn9bUGfWN+56
 S/LHcpb/NV3RIWvKptaEXETeRju5nZ+JbogaZSpdLtuTeB1MBBVRpS9h3vCTJTa6nmRh
 nvc6HG6kyCWF/iy3yLWMKDlj4YApgcfb3J9G57lERFSZmnVc47Fe4ryl0jdviATmnZyA
 n2i9hZT6RAdVI4AdBTL78dHKc1keFH1nlmmi+1VI8twSvVclUKLG2sulUIekeiHB4B3M
 kJFVwHydwel10Ggy4sWK7qAvmnKtgh5wQgEJwnnANm4dOzPoUw6QHoWlJqHzyoobIZ4n
 nwMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9FT7OOp2mNRaZwmV8uqw34o87uK18modrlSvUxsdB2g=;
 b=qQ5IlvTLIlscfs9UXz2hvTTHJdDjPPgabf5LGz7m+sXXDchFW87S9jQxNUMGFOdLHK
 0c6YPs+55F64Lak8ExOTv8TnKELXU5dLN7cJyXl+1eV54LsT/JzDpPvNMg8V2eSdL6mL
 KVzR2Sm/oG4HpKRxi3PTEPKRDIskT9/YE4Pq9sATs8Co6ZQRnqigQb34wX6W1mf2E0Q4
 8USiWzELG/QL+X05ydvwk1xIxQU2ja/Zna3LH0y4+ZMdalv9Hm5zZJ4qs5CMF1PTAXQm
 78uxYoA4b1mczQo03/JuyvlxnnWZdVQrE7/nk6Z4t5Uc+rJkhMrkdvajHLlBAWTG4NrN
 DyzA==
X-Gm-Message-State: AOAM532rYnY2WIYeweISCp1Zb5SQnKo+GFvlZ1qkCJgKOtZJs/mYlzoq
 Usq3++ghhB9y2jTsmchoiW5gD7pnvTBRx/NW6hUJGA==
X-Google-Smtp-Source: ABdhPJwPdqIKi2LpjqLfCEP5A3HFu4dYZ0gssJOP1M+PS8nuRTfDoMDWXLhxTA28S0a/8WBh01bU0OskwUCj7+oV06k=
X-Received: by 2002:aa7:c9c9:: with SMTP id i9mr32256185edt.17.1620685007258; 
 Mon, 10 May 2021 15:16:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210510063602.505829-1-jay.xu@rock-chips.com>
In-Reply-To: <20210510063602.505829-1-jay.xu@rock-chips.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Mon, 10 May 2021 19:16:36 -0300
Message-ID: <CAAEAJfALROYg5awL88Uux0yXyMxBthbFjRgJCyhvu4hWioSO2w@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] gpio-rockchip driver
To: Jianqun Xu <jay.xu@rock-chips.com>, Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Heiko Stuebner <heiko@sntech.de>, Linus Walleij <linus.walleij@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Peter Geis <pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_151651_412456_3A7DEB44 
X-CRM114-Status: GOOD (  18.07  )
/bin/ln: failed to access
 'reaver_cache/texts/20210510_151651_412456_3A7DEB44': No such file or
 directory
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_151651_412456_3A7DEB44 
X-CRM114-Status: GOOD (  14.57  )
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

Hi Jianqun,

Thanks a lot for the patch, and for pushing this work forward.

On Mon, 10 May 2021 at 03:36, Jianqun Xu <jay.xu@rock-chips.com> wrote:
>
> Separate gpio driver from pinctrl driver, and support v2 controller.
>

Usually, we expect to see a changelog here, with some information
about the changes from in v2, v3, etc. Also, note that only the cover
letter says "v4", and the individual patches are missing that. You can
use git-format-patch --subject-prefix="PATCH v4", and then all the patches
will get the same prefix.

However, the last patchset I can find in lore.kernel.org (or my
mailbox) is a v2:

https://lore.kernel.org/linux-gpio/20210411133030.1663936-1-pgwipeout@gmail.com/

.. which was sent by Peter Geis (so you should have Cced him).

These are just some friendly tips on the submission process,
for you to keep in mind,  you don't really need to resend the
series or do anything else.

Also, I added Bartosz the GPIO maintainer in Cc.

Thanks!
Ezequiel

> Jianqun Xu (7):
>   pinctrl/rockchip: separate struct rockchip_pin_bank to a head file
>   pinctrl/pinctrl-rockchip.h: add pinctrl device to gpio bank struct
>   gpio: separate gpio driver from pinctrl-rockchip driver
>   gpio/rockchip: use struct rockchip_gpio_regs for gpio controller
>   gpio/rockchip: support next version gpio controller
>   gpio/rockchip: always enable clock for gpio controller
>   gpio/rockchip: drop irq_gc_lock/irq_gc_unlock for irq set type
>
>  drivers/gpio/Kconfig               |   8 +
>  drivers/gpio/Makefile              |   1 +
>  drivers/gpio/gpio-rockchip.c       | 758 ++++++++++++++++++++++++
>  drivers/pinctrl/pinctrl-rockchip.c | 910 +----------------------------
>  drivers/pinctrl/pinctrl-rockchip.h | 287 +++++++++
>  5 files changed, 1073 insertions(+), 891 deletions(-)
>  create mode 100644 drivers/gpio/gpio-rockchip.c
>  create mode 100644 drivers/pinctrl/pinctrl-rockchip.h
>
> --
> v5:
>  - change to devel branch
>
> 2.25.1
>
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
