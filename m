Return-Path: <SRS0=N4HT=OH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2A50C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Sep 2021 22:35:15 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A9E9260F92
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Sep 2021 22:35:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A9E9260F92
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ryqPR3xjbyuj7NRg2WN/jtEe2wMee+1t3SZ0WJL6Klw=; b=usVNLNKOSCWRpO
	Zffefky/5haCHKc5YoTUd5CihwP9+LMa3ilWkbcL+TOJ5beoyHmk9qHKc2gvXjLxyzKP/efCTLUHU
	Q5Tbqp6BwFSzn7fGjtrI+A3fbC0aMA4xPnLOJUpKvYtGQaa7ORTEW8pjn6xAsb00JqXxsuuEs08W/
	3b0EV7iNNL4+SeKqv8m7HQ7MPyaiYqzUxG83+hBV5HTG0t9eP3xhBVE4LqGLHAbokk/JQiB7eenX/
	atoX0Pb6rANUUGX/TtUk9QOqX4fLTz65AxJ6mGKlFXfi0xbCZ6nyDqO2fTzFA/QPPAlWv2/MnXuHt
	L0psnhNdOPlL2PWkhwDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRMRq-00F58z-4e; Fri, 17 Sep 2021 22:35:10 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRMRi-00F57i-5C
 for linux-rockchip@lists.infradead.org; Fri, 17 Sep 2021 22:35:03 +0000
Received: by mail-lf1-x12a.google.com with SMTP id c8so38700114lfi.3
 for <linux-rockchip@lists.infradead.org>; Fri, 17 Sep 2021 15:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gXiGALIBXJHuI6xmyac3EY3aPT5ycKco2OHFCbsywNE=;
 b=Iwi25YMops4Fmva5SMYK9N2ZZvpq0vTvGG1mOZDPShDLAFmJRwvjUmyaBQq3xdy+Ed
 1axjrbdlsU4TPN4zRNWSwKzClPgzmpxOySjix+X7njTv1p2vGVdAIuUxBkZELPvUCRhD
 Op5+FAJaOrkDYCdgzARHqnv915gqxYvX0MglO9xagVl+g53HWeySaVg1ZKyClwZIe2pl
 gqZCRDHOmWDMcgYvF+rC9QExMKqwvK6zg39zyRii/jrl0os7/wBPiWRw3780/IPgqvsA
 Kp0FCnhzX9XIWRmgrJop9dNDUklKFVEHgoifa8C4VSLjeGr3VgeSxfON95nPxaKXgUUS
 hmRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gXiGALIBXJHuI6xmyac3EY3aPT5ycKco2OHFCbsywNE=;
 b=d1W9IL4pg5ZGL0Q1frlKJUc2f6T+pzhSeAPyr88C/15aDjvWf9Y4MxXnasS6qX7TnD
 bWhPTinhwn0+MfqkQRwNfxSKYKGjQMCa3FCwtOP488MrpEZV7wlVv5f65L6TthOUrvHV
 3MFKbHNqfRVQjHYSSBYNTydOcXnC8vIJEiDnFyM80UxcduJiQJPG8GyYiThseZgYeOyk
 c+YXDSNDFPkSxMkFmcKw5HvsLQu6631ctd0IAQgincr+kVeaMYNkI83hfu/vvoTcP6hr
 doIBVCRJnempcCxg3NrEhvZPNvLFcb3HCuiOnwKHmMG1nZfTO8BXVRQ22ZEiEriYWz34
 rhwQ==
X-Gm-Message-State: AOAM532dgV1RAReDE+s68vKWqRU9Um4pNUUtZMQ1rMeZktUs41n/DOGa
 OvwqwmtCGhBsVrJHqvPzxV0sv+SNRFo9J+hIaP9LZg==
X-Google-Smtp-Source: ABdhPJxnXIcJHvzJCDEfKvO96DDVOnEjALfnFCxyXo3w5ywzjEWk7+CQHA5Fv2Q0E9JnPHkLVI9VUW6ZkRl9/aMEDjg=
X-Received: by 2002:a05:651c:11c7:: with SMTP id
 z7mr11241326ljo.288.1631918096195; 
 Fri, 17 Sep 2021 15:34:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210913224926.1260726-1-heiko@sntech.de>
 <20210913224926.1260726-2-heiko@sntech.de>
In-Reply-To: <20210913224926.1260726-2-heiko@sntech.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 18 Sep 2021 00:34:45 +0200
Message-ID: <CACRpkdZQLxpk5XYOnD3p5s6xAsNbUjTJ4PsMq1bvxVjdMepf+A@mail.gmail.com>
Subject: Re: [PATCH 1/4] gpio/rockchip: extended debounce support is only
 available on v2
To: Heiko Stuebner <heiko@sntech.de>
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Jianqun Xu <jay.xu@rock-chips.com>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210917_153502_271992_282558F7 
X-CRM114-Status: GOOD (  14.02  )
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

On Tue, Sep 14, 2021 at 12:49 AM Heiko Stuebner <heiko@sntech.de> wrote:

> The gpio driver runs into issues on v1 gpio blocks, as the db_clk
> and the whole extended debounce support is only ever defined on v2.
> So checking for the IS_ERR on the db_clk is not enough, as it will
> be NULL on v1.
>
> Fix this by adding the needed condition for v2 first before checking
> the existence of the db_clk.
>
> This caused my rk3288-veyron-pinky to enter a reboot loop when it
> tried to enable the power-key as adc-key device.
>
> Fixes: 3bcbd1a85b68 ("gpio/rockchip: support next version gpio controller")
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
This can be applied by Bartosz to the GPIO subsystem.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
