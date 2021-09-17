Return-Path: <SRS0=N4HT=OH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1327C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Sep 2021 23:30:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8655561056
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Sep 2021 23:30:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8655561056
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CWCwjEPbNuan2Nd9on6EjGdSD8VL83gUI8+tHtAIfRY=; b=yQ2I9A7XluONxi
	T8CIxyEyXeNEbkK6rr6HsM7cP+o1FAUHnAQUWqMvPBjOOWoUAIMQzCJ920AOocSqQ/RzCg0D5b5Bo
	0RGG4ksqpMbi6FZkKcWGYJjVIUXkEM7bmCqMVId+mI9Fz+C/v05lnYRXVbGAgUdj4yo6kwRfA4IOB
	fS4Km6wnEwT308etVk+SXiz61f8GrnThC4ZprLL6VLEVp+dI27GyIrarjkD1UQujHDRdngw6KQGYp
	XstMB7yF3A/T3WZ50WzBbgz3ofXg01ayz/OT3DJbdvvkuOgj8O5EGB7t5WpymQzAk9UI613MpzAHI
	jTGC7xJXjgcIoDTK4hMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRNJe-00F7ya-3v; Fri, 17 Sep 2021 23:30:46 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRNJS-00F7xM-IS
 for linux-rockchip@lists.infradead.org; Fri, 17 Sep 2021 23:30:35 +0000
Received: by mail-lf1-x134.google.com with SMTP id z24so12983307lfu.13
 for <linux-rockchip@lists.infradead.org>; Fri, 17 Sep 2021 16:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cpnSJMR29KAOxGqlXqlxDiInk1Lq6rehAogLugRUoe8=;
 b=J5VPAEh1xGS3X/v/0MYXeaLoKImveKzwMsHGOu8nHDMw7OjmFS9Hou2DcQqHis3bJR
 yeTxXrd2Yct2FZWJCtE/OJyzjAS7gOjNaJ1UfrT8m/IKfIR6Ha/pRB3ns7pjoh3ffDGW
 6Q9a//cKO492bBwb6zzZLKHO3x2SuphfCZ9u5nxYZhNdpp86UwyCIR1Ee2QEwZ3Nyg6a
 mAoQ37zUuuOTzNHmvZaRH76EnvVXZW6hjBMaA80gH0WQOraP8EPskOPfoiLmDdY8GrdA
 5DT3P22RheTshOqWiZJnCGjltGh7klLb/bfCxIAFjrxFAjY9Zfs3oLwOr6k/m4B+mC+m
 4BGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cpnSJMR29KAOxGqlXqlxDiInk1Lq6rehAogLugRUoe8=;
 b=3NxuURDZtT1exYRD55fPLAhZ6NCBeOCRsbJwXaVJqbrG1Hdzv8MlzFyRlv71uDgqv7
 FNummTJ/XhQ4ELyrM3XwmGg/cOkE2YSwZiyDQuLWHhXUfbW1frpRcsNe3s3SsmWJ9NQz
 5VDKK5RMt8CyQPU5LTjygUNzVokXq2W/14pmLWnszGl7KSzS9zg3Dz04PVnmOKZaF2e/
 Xgy1DIMGq36eVkAdSVJEUWnWl0gxp1wcGiHEGCQQpb0SLeAF+ScLolTTbdhuqfp3uIRm
 qdwJTyY67//wR0lvGLFrqHYkY4vZK7h4KpdmHCfU3eoiVueo6E9rzSpf4xySQyNInRdF
 RtBw==
X-Gm-Message-State: AOAM533o1B07lGPp/vKdBQc21R+40M3DbNHbcEiKeIJ6zYtRMhAG/z61
 4FClhWQeVI6YR3yWk+Z+2KU4ryzImy+o+FyXaHvlPQ==
X-Google-Smtp-Source: ABdhPJyz8i7tHc9BbXGhfKFUhzwRCGvX190zW4oQ4YvwUaz8bQwCLLvxh0LMZ/w9bzt9ovtFB9KZDI98BNQ3BoIYc9E=
X-Received: by 2002:a05:651c:11c7:: with SMTP id
 z7mr11406831ljo.288.1631921432572; 
 Fri, 17 Sep 2021 16:30:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210913224926.1260726-1-heiko@sntech.de>
 <20210913224926.1260726-3-heiko@sntech.de>
In-Reply-To: <20210913224926.1260726-3-heiko@sntech.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 18 Sep 2021 01:30:21 +0200
Message-ID: <CACRpkdbcHi0+pe3jC6AkdBfZZv=EhA1prV1XAXfQKfi4fMtg+A@mail.gmail.com>
Subject: Re: [PATCH 2/4] gpio/rockchip: fix get_direction value handling
To: Heiko Stuebner <heiko@sntech.de>
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Jianqun Xu <jay.xu@rock-chips.com>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210917_163034_687882_B571C4BD 
X-CRM114-Status: GOOD (  10.36  )
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

> The function uses the newly introduced rockchip_gpio_readl_bit()
> which directly returns the actual value of the requeste bit.
> So using the existing bit-wise check for the bit inside the value
> will always return 0.
>
> Fix this by dropping the bit manipulation on the result.
>
> Fixes: 3bcbd1a85b68 ("gpio/rockchip: support next version gpio controller")
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
