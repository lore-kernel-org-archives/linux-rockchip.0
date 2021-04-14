Return-Path: <SRS0=TltV=JL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05652C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 07:32:09 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B4A2F613D2
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 07:32:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B4A2F613D2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ycdg6FEzLa+Hd72QkMLnbGcSpdGBfeGKStkbSf4txwI=; b=iO3TWjm/pl4uEIyRxEzuESKfJ
	715BVeZ1ABxiHvklPQiBXWXbNxFeqpmEUBfR+45w7VXuU/rCLZpZzw8TDMCTlOtdwJpGixZc5j+nD
	7JTgAdNUDatWeLqRS0+/sogl/8SUuDWN6lthPqwy/QNvWrcAmz5X17cYOxju9ydgPDDNHq3eps3fj
	B6kWr0aHQcgIQ6iGU0Jcmv9kMfTxHDeC26ZSz7XrkZpdXbAu+71iKqDvgl6KyY2uMtiUbNrcDPORE
	zSS+vlonFtjOGHKHVaLxhcJIhRUywY/u4XlOpdHTLdIOPSI0DDwRNSRQfm/VtMMT8YME1GPNplEaJ
	AqTQ1UY1Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWa0H-00BqeC-SY; Wed, 14 Apr 2021 07:32:02 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWa0C-00BqdJ-4J
 for linux-rockchip@desiato.infradead.org; Wed, 14 Apr 2021 07:31:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=WbCJhOcWDmYj1qwZOide/uEYp2/QdqUGeqpK7gU5Mw4=; b=ei+2Dib0VlzbQZqq4KdFYN1YYB
 5YJo5B5geDnmgN5D3Q2AGIHGDZNiHWacqDhAaI0BF5D5nUqDSTHT8fJpKM+kxCzy30LMaVbWoNJ48
 +RLn7Vezfv7j1ZWV7aE1Arifw9FaowavA1cjm5i+BsHqxe4B8u0UscGbRQLszej5OAPjDZyzFnfc/
 zb88OIe4YF+q6RnOGo06R22MIAt51sNtI0VwoiUfINtqtygq1IS8cilDbeM6VRklruxwVi49L2ku5
 eRQ7TVUf6jAwiXv47nLqe9A4IKOjuHvm3Kc0CwrVVE1B6SmhDknvDNqR51zzwY1Egw1C7LpWAIe5W
 pZOwjnJg==;
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWa09-007Zcs-N8
 for linux-rockchip@lists.infradead.org; Wed, 14 Apr 2021 07:31:54 +0000
Received: by mail-lf1-x136.google.com with SMTP id x20so1233371lfu.6
 for <linux-rockchip@lists.infradead.org>; Wed, 14 Apr 2021 00:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WbCJhOcWDmYj1qwZOide/uEYp2/QdqUGeqpK7gU5Mw4=;
 b=UEkmCzKGaJsazs6mmRY+VabK8/Mt9QdsrWewnyGmU/499iBWgpxw0SmuNEDaJYScqL
 qjz0GyeonwO6xs9t6BZGNTs3psxvAqUSz3rRVAtD0VuDcwG+7LJQrwaZDaK9r26gCmLl
 y9yLY5BjZSMToDNtEaemSSKvxhIBXFY8R8PS+FjLvKCRg+skOPMSsbXZpnXpqtLdsZZt
 Ivn95tjtP0HVzu9A0ipZ51sQQwbID5brQ3f1R/0OP9ttzaPDzr/aR3Ew7atZiIWmOCYr
 /Z/wvwSC7H5X441g2Vx7KdnjI8n8hUe+kCGwC7/5VqhqWEU6d0uqgoRepl9PE4K3quag
 z4Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WbCJhOcWDmYj1qwZOide/uEYp2/QdqUGeqpK7gU5Mw4=;
 b=HTdoTOLjMuMTqlTxz0rU3W0o733bApB5ZarUgIBENx807zVqhoPw894y9I1nlfGngW
 Srm8CwbxOc7KQUaqPns5L42CXZuP1Op24vD4YwtihPZSMhkG2m/Syui/az12eSSkRnqv
 n9oXjTvorURiUexC/eTHNB7Lx0mlzW3zTx7UyFMZcpBIKrSan4zm0rJ+O9CTBGi85QMm
 GNuTsYrcdKQ31YPYY7ybLxicd/gOLHvGTmb4Sb1YGM4UZSi+hM2lYi/HPmgKV6nk/oeO
 3b17rCfvtRhCRzlZ3GmhAb2jWIA9Uu9k7UUCZ1Kdj3rtaUUatNBzKf38psKlEUptXQom
 eMWQ==
X-Gm-Message-State: AOAM530RZabTKSKC3WJVkKArd5yO33pQJsTwwuL1orxGp45ocrwTeRjr
 x3AQZZWWbnhktnGCJQJbUPpypzIurg1t4wzPHQ2xYg==
X-Google-Smtp-Source: ABdhPJx+x7TylnXD2B+09y1EGeE+oRsHE7gssBzHshrKllUMut6lAV5p+osKaDALXEQRm5rFs1CBztB2Y7kU6U8eBkg=
X-Received: by 2002:a19:ef19:: with SMTP id n25mr17307222lfh.157.1618385512254; 
 Wed, 14 Apr 2021 00:31:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210304013342.1106361-1-jay.xu@rock-chips.com>
 <CACRpkdYYpgFWH9pVOT=o7unWXRqVeHtvsJgbByNGZ170CZ_FXA@mail.gmail.com>
 <CAMdYzYqk3k0UqCyFwB+W1tKKKTg39Mx0Vdsrj+eeC58nARaumQ@mail.gmail.com>
 <3262311.AJdgDx1Vlc@diego>
 <CACRpkdZeZuHe9kFywrdQxcNMfAcBCJVAhJjfyD6ahLinT0hvmg@mail.gmail.com>
 <CAMdYzYp80DdEp8LM7YkEUqmu-7WwhyTvFU4QAfGu9uimsE6rYg@mail.gmail.com>
In-Reply-To: <CAMdYzYp80DdEp8LM7YkEUqmu-7WwhyTvFU4QAfGu9uimsE6rYg@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 14 Apr 2021 09:31:41 +0200
Message-ID: <CACRpkdaYJ3qpwr6e+W-6141=tkERB3YGV9tzpazOj6R8M+Bt8Q@mail.gmail.com>
Subject: Re: [PATCH v4] pinctrl: rockchip: add support for rk3568
To: Peter Geis <pgwipeout@gmail.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Jianqun Xu <jay.xu@rock-chips.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_003153_779825_767D3F90 
X-CRM114-Status: GOOD (  10.60  )
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

On Sun, Apr 11, 2021 at 5:40 AM Peter Geis <pgwipeout@gmail.com> wrote:

> Thank you for the responses!
> With a bit of effort and a quick build fix, I've successfully rebased
> the gpio patch set to the latest linux-next.

Ooops maybe I should have been clear, since I need to merge it
into the pinctrl tree I need it to be based on the pinctrl "devel" branch.

Sorry if I wasn't clear, no maintainers work on top of linux-next,
only individual developers do...

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
