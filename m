Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1702C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Sep 2022 09:23:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Qb6hfzR1fp4suXZOq6cNMwER4LS3wTq0F94tq4LXP8=; b=ldVXd1wGRh2aCR
	AhLoPv1/1mPvG8UfjNIDiTwhC8lvgVjurwHbDi7xbyuVR9iLMbFV5IMPhrINuEGj1Xj7JT//5t+Fi
	khup5h89JtQzX+PXZJBmwFty+92yoAkGOVhtWngskW9gA6ayg1lEbAyxKDNuXsRkYiD6yxbslenUr
	FJ3k/6a+IfFquuDN3MSoFw0GYMErzwW8inpIw2tUxrxyDTpTHI27XPJV/m0my7vqUbixcFy9ZHWG1
	BqUazzCQGl1EgjXOj8i0xDZCRGkMGab9LTnCpzGz6tsgdxrvA1ipwUeGYHiLIW5pgd/PEyN0RXBwT
	0DU6MrxRX93JzaskK0Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeCEy-008Khv-Nv; Fri, 30 Sep 2022 09:23:28 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeCEw-008Kgl-TX
	for linux-rockchip@lists.infradead.org; Fri, 30 Sep 2022 09:23:28 +0000
Received: by mail-wm1-x32b.google.com with SMTP id e10-20020a05600c4e4a00b003b4eff4ab2cso4666220wmq.4
        for <linux-rockchip@lists.infradead.org>; Fri, 30 Sep 2022 02:23:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=nwlBl3WOkWLYbhwBjRVN6J+CiBOcKIf/v3V3IeAcAlc=;
        b=MTorrQUAx1IYO4kxQkmj7WvYivInhFhB8vf6WREOiadarHTPrj0ixugxIsFm/dR8yc
         ZrGE/0Sid7ajP4qzyqs04hw9Et4+8i7MqkxcQ55Wdq4K8YcrXahfZqz7FJqLxhtC7XFS
         NvB/noDUb/gRUkB+RCR8FVgr4trWos03RHFQi0F9f1IBLGQHI6NJY9bxWBW91rPmSsPO
         tsUxvwqoNJGg0RlbK+QVMbPQd6eNmDATGtjyjxSir52l4ao2qDCDtcZeNabHAfQpplO2
         k3r8Uk8SPUgdPy/RicsezGiaW+w9WG9m+dyO1tXGlcI3cPWW3K+K3RdUkcfP3cH8DUXv
         pjRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=nwlBl3WOkWLYbhwBjRVN6J+CiBOcKIf/v3V3IeAcAlc=;
        b=a1YOHh9q6/7snL+q4UbZGM/yxVH5nMgJ9VbAewOUgl81tCVEnsjq3ncj7ZzbJs1EV9
         C07ja1jWiWzUmxY1kwS7SDyIMkKBl9S++w9M9VVj6ioDEAbswIKSuNH5F2yG5Fc2JIpi
         NJ3Tb3rEnqrfPuQ8tjN5czHhVQI7i6mg0vGp08N3qXETRhJTN4GXL6ZxHajH/xerXpM5
         2hHl3qs1fE2qA2XaVq8Y33nEjSAh+cMw+x2TmAa6SThCjg97vBf2KcdQFXs4K5m6k0OA
         078qU8SKwu9F6bVFOa0+U9MmlORGowLmieTEJQUXjq+2rxA4HZRdZcMPE2g4dJ8mZgVv
         3GDg==
X-Gm-Message-State: ACrzQf0FaJRHoHCAi5bbUQbDWXoQqOJuxufa2n/iTMI1rrHPZgmBvn20
	BfwPgBO1m13DOoLh7XPkfYcibcOvcD3Gwj0RI1cCGA==
X-Google-Smtp-Source: AMsMyM7hZgvnLQUTJbSF5GKcGr/+Z7KDuVSmXLaw2NbCT4ELsxprkIBVb+XVrJTCNVy2yMc/Fs+8PhMEwFrMsWbUiBc=
X-Received: by 2002:a05:600c:b42:b0:3b4:7580:a995 with SMTP id
 k2-20020a05600c0b4200b003b47580a995mr13825515wmr.30.1664529804145; Fri, 30
 Sep 2022 02:23:24 -0700 (PDT)
MIME-Version: 1.0
References: <20220920103108.23074-1-jay.xu@rock-chips.com> <20220920103108.23074-14-jay.xu@rock-chips.com>
In-Reply-To: <20220920103108.23074-14-jay.xu@rock-chips.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 30 Sep 2022 11:23:13 +0200
Message-ID: <CAMRc=Md9Bzjn16eU73SOKeRnBgk3Fg_wNXjpnG_xZJxy6i08SQ@mail.gmail.com>
Subject: Re: [PATCH 13/20] gpio/rockchip: disable and put clocks when remove
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: linus.walleij@linaro.org, heiko@sntech.de, 
	andriy.shevchenko@linux.intel.com, robert.moore@intel.com, robh@kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	lenb@kernel.org, rafael@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_022326_990913_D6327899 
X-CRM114-Status: GOOD (  14.88  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

On Tue, Sep 20, 2022 at 12:31 PM Jianqun Xu <jay.xu@rock-chips.com> wrote:
>
> Match to the probe, do disable and put the clocks when module to remove.
>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> ---
>  drivers/gpio/gpio-rockchip.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
> index 511e93a6a429..1a800f972594 100644
> --- a/drivers/gpio/gpio-rockchip.c
> +++ b/drivers/gpio/gpio-rockchip.c
> @@ -757,7 +757,10 @@ static int rockchip_gpio_remove(struct platform_device *pdev)
>  {
>         struct rockchip_pin_bank *bank = platform_get_drvdata(pdev);
>
> +       clk_put(bank->clk);
> +       clk_put(bank->db_clk);
>         clk_disable_unprepare(bank->clk);
> +       clk_disable_unprepare(bank->db_clk);
>         gpiochip_remove(&bank->gpio_chip);
>
>         return 0;
> --
> 2.25.1
>

You're putting the clock before disabling it? That doesn't look right.

Bart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
