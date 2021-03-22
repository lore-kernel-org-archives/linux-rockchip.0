Return-Path: <SRS0=HfFp=IU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71AD2C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Mar 2021 12:57:25 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ECE6060C3D
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Mar 2021 12:57:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org ECE6060C3D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vPWvwq754oXZ0WxdcE6bU7wGtArg/CkivQzkhL7fR1M=; b=Hite29DGiZszamxI94JAlfzLa
	Pt1+8i4Ns4lZ8aCfFY77KxlJgcv4TbsOk1e4bRR9FOOYpnINZoOphpGz0cxjtPrmL19VnNCT0yOb6
	AfAPDBk6KxpXAGERraWZW3axXtszQWIC3nTOm4AdITc8LL2fyzyGe6E7F5X8r60nQbBFzWpWPOp7T
	nPWApD1/QTGMgmSEkqBsRuVU+O0SIkNlPvAyUMIekWWJQHSqyVnlCVyGAwC3xqnilBFOnPNvfRIoY
	XYR66wgco3NFVvzLbw2n646j1oghJ8Rf/ednS7KiknRelyIVGpMuAJIAGJUNXUHOu25Hym8XzBr0s
	9l6bd10bg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOK7O-00BdPG-TP; Mon, 22 Mar 2021 12:57:14 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOK5K-00BdI4-3X
 for linux-rockchip@lists.infradead.org; Mon, 22 Mar 2021 12:57:08 +0000
Received: by mail-lf1-x12a.google.com with SMTP id m12so21096094lfq.10
 for <linux-rockchip@lists.infradead.org>; Mon, 22 Mar 2021 05:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mnA9oqrE8mMJYoCBDJE689jPEwqppMfcVdTwmK1Y6c4=;
 b=n1pVgCkpBLa1kMa1KiIgCjcDVkCR4X+ABv0SyuXhNa6CsGJe4PRjotxnGsIx1+Tkkp
 nZXsJim9146CFhsE3xX1UhYmVdts9rm2AE4ekDq2ayt7/ZAcFxIlg7fDImuKmdZEX1Ay
 +bu1cKnRyzzEQXZDDPNEk105wMb/MjbmyIb0DvCHARGmhuOY/O+Ea80NZTBw0uDl5eUx
 WKwCCtQ6EwskuTYXPQ4j34sLaMZAEit27wOsph9TkU4LAHoUa7kE7EDny1RzvnEj/Q5D
 ndVA9F3CGJeD2iDweki+djev7HqcnwB36d6UAyqdkHeYG+711PAfdTINgEb0snO0FGEV
 dEHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mnA9oqrE8mMJYoCBDJE689jPEwqppMfcVdTwmK1Y6c4=;
 b=FIAAH7Uigff64ak1Zmosr7PTVLDokYO/8YH0nCvFIBU166KOsOEt9sLmcYwteA4LYH
 Z284xwcz3fee92ldehZBMjuWS+MVuctt7k0JPHLPvtQM+HBngU7QL3rF9K0WTY7eUuxZ
 Pt9fgsWeH6covTmSFn6kEtAcewrbvYuIaA9i/iiqSUlh93B6Yp4kXhTK1TtNwQ/ZvvhY
 TrBfPpHtXf3pS72ysWNJ70NBpW30vrvi5esc+P5DiUeY6PG9c+RuEPYmBR0j8DBd79gL
 N1sXub+g1bpGY83VgjUdT5Nbo4ShJotk6RxmU5MoN25RjA5r4kFLGuUSNgO8ptZwywZe
 vweQ==
X-Gm-Message-State: AOAM530NIcaXz7UJuqsZk/dx6Mbl4lbLDZ64+b4RGrqgtenlit8tWQaV
 WmtSauXsj33UCBYacUy6xBtnM51iPilOZSZO6cscCQ==
X-Google-Smtp-Source: ABdhPJx3MFZzaOpjYIZ9eD4ths32f1hidLiCA7SjBnnrDvWS5qELc5wEBqHK0GqShtNiGcSCy6geo82WMHAJqaPQ7KI=
X-Received: by 2002:a19:548:: with SMTP id 69mr8998765lff.465.1616417705151;
 Mon, 22 Mar 2021 05:55:05 -0700 (PDT)
MIME-Version: 1.0
References: <20210322104310.863029-1-jay.xu@rock-chips.com>
In-Reply-To: <20210322104310.863029-1-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 22 Mar 2021 13:54:54 +0100
Message-ID: <CACRpkdaskju7vmfVaooPi6qkiF6dO-q_MB-NSTPHYS0GBO3KyA@mail.gmail.com>
Subject: Re: [PATCH 0/3] gpio-rockchip driver
To: Jianqun Xu <jay.xu@rock-chips.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Cc: Tao Huang <huangtao@rock-chips.com>, Kever Yang <kever.yang@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_125706_500710_AF247486 
X-CRM114-Status: GOOD (  11.91  )
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

On Mon, Mar 22, 2021 at 11:43 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> Separate gpio driver from pinctrl driver.
>
> Jianqun Xu (3):
>   pinctrl/rockchip: separate struct rockchip_pin_bank to a head file
>   pinctrl/pinctrl-rockchip.h: add pinctrl device to gpio bank struct
>   gpio: separate gpio driver from pinctrl-rockchip driver
>
>  drivers/gpio/Kconfig               |   8 +
>  drivers/gpio/Makefile              |   1 +
>  drivers/gpio/gpio-rockchip.c       | 650 +++++++++++++++++++++
>  drivers/pinctrl/pinctrl-rockchip.c | 909 +----------------------------
>  drivers/pinctrl/pinctrl-rockchip.h | 246 ++++++++
>  5 files changed, 924 insertions(+), 890 deletions(-)

This is a very nice change (separation of concerns!)
I'm just pinging to include Bartosz on this patch set so
he knows a new GPIO driver may be appearing through
the pinctrl tree (and he may want to take a look).

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
