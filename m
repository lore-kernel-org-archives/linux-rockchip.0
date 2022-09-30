Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B295BC433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Sep 2022 09:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EXiK8mFyfd7NFbHDDMzsCDjozjhWxlnpPyQ9bfAIMIM=; b=QWAVY3nMgW0bg2
	dBUjZzxwZ416bSFG26LQGc3c2rdD+HdYRl4flL/W9nS0zNWIG6nhtYMIXqlzgaijqsm8ZoOLVUQek
	+w2DpikslpCmc1hD5fsfutxi38nqv8yKD7S7uT8upnG5swgiLVYHGLh4u3fCQzFjUdNcxddw2jCi9
	Yvo09858uUj6lRmkB4o/T0XWUNSA+d/aXXPOvwbNGMUxx86qehs1V0z4H9Bra1V82zw6ZUTrhhQIt
	mMQh4NbU5fA8CStMymXLpHT+pDgcc7zlgS/k2LmKro7OmKOdV5fLNDZc1vnMTnVGEQIieUbgZv3kr
	KbB2UtSPt9GwMq5rL8Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeCJy-008M5L-Sc; Fri, 30 Sep 2022 09:28:38 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeCJw-008M4d-J5
	for linux-rockchip@lists.infradead.org; Fri, 30 Sep 2022 09:28:37 +0000
Received: by mail-wr1-x42a.google.com with SMTP id x18so5936453wrm.7
        for <linux-rockchip@lists.infradead.org>; Fri, 30 Sep 2022 02:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=h6Y+ln/AdUV/+FxfyQmPViV9sXamO/keUdsvmUY59qs=;
        b=CFz8Zd+m5KtzxZ6GIMUSBAWbhOflJDB9Rvw9+BrS7BN0SJdMeihWtvk5Dt2B72cmQ1
         CflnSVU407UPiIBjVmCKVvLc6Nhma9fdRT+tVz7Fp9ycmrg0zGZkybGqbv2cYPSTR36a
         XE8ZUw4njAvnQhpkLYrAbnVD+60qO6toJVq1lWgrNGw8H5mc7mn5V9i2X7x/CgsdGdEg
         V1nZYlLceY+iJLZ+wtBhRx6poeaQtYOcVQSFY7fjpi14BgqdKuJLqMmBmFoLM1Xf/Wby
         jAX1OQsm1ZxtbGf+djJcJmmee9vA+OsKI8uAG4/SVjstfd8HDnY22gedfac6+BTjlOby
         6GYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=h6Y+ln/AdUV/+FxfyQmPViV9sXamO/keUdsvmUY59qs=;
        b=SiXYlpnZPVEpo8mog/Xqx2CM+34Bq9c4sfVE8BC3bOcJNAhhpXEuuKOruy1wiPVy+i
         gZw2nFJRbz5wf8yNYaV8UvmGxrN+uwGAfAJ8q1PAL+kkNB1OMG/OPh9XbzLmmuv4VaNn
         UBXVkaAoDIluISMsR9rYIndZta6TTmHjbm6ScwQ0GSUo0JjxuDsoyx83vo1Afz/+QpX4
         paKcNl/m7iZ3DHiU17Mh8XbzQiMEP0tsNEjETatdfCyE9VSpzcDgY9m5EnAhiqqnmKj3
         6N6KQpJmZVONPifQwdYPjvze9Pd5Qn3IuyBEhEzC3Oy6Ti7sG8EaYfAUj3m71T+OmVNs
         MvAg==
X-Gm-Message-State: ACrzQf0uRbGqQ2UVP9TgwHcHQXOsFyv1iM3xQJjRnUmoONY3Dec00ufY
	RE54KRloBucxnrucXfOVQ/A21eNZk6fZwXSLqSYlzRyJp5s=
X-Google-Smtp-Source: AMsMyM4ID74hUk6obFHS5CG+0lfrWS0Qhz0N0x7XapUctxqBBczmx+I4mtCvy/aUxSx9DQVnvphAUH2f2VunyWQq2lc=
X-Received: by 2002:adf:f98e:0:b0:22e:393:8def with SMTP id
 f14-20020adff98e000000b0022e03938defmr723627wrr.570.1664530114671; Fri, 30
 Sep 2022 02:28:34 -0700 (PDT)
MIME-Version: 1.0
References: <20220920103108.23074-1-jay.xu@rock-chips.com> <20220920103108.23074-13-jay.xu@rock-chips.com>
 <CAMRc=MdjFbzjiLg==ppX_e7cWVw7s1B+Dd=OvrYsnL4ZC_daMg@mail.gmail.com>
In-Reply-To: <CAMRc=MdjFbzjiLg==ppX_e7cWVw7s1B+Dd=OvrYsnL4ZC_daMg@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 30 Sep 2022 11:28:23 +0200
Message-ID: <CAMRc=Md5jyvSc7RAHOQ9=d1TWhidTd0JppCmR8enK1ttPr2w3w@mail.gmail.com>
Subject: Re: [PATCH 12/20] gpio/rockchip: add return check for clock rate set
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: linus.walleij@linaro.org, heiko@sntech.de, 
	andriy.shevchenko@linux.intel.com, robert.moore@intel.com, robh@kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	lenb@kernel.org, rafael@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_022836_647753_26EF9037 
X-CRM114-Status: GOOD (  18.36  )
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

On Fri, Sep 30, 2022 at 11:17 AM Bartosz Golaszewski <brgl@bgdev.pl> wrote:
>
> On Tue, Sep 20, 2022 at 12:31 PM Jianqun Xu <jay.xu@rock-chips.com> wrote:
> >
> > Check if the clock rate set for the apb clock is successful or not.
> >
> > Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> > ---
> >  drivers/gpio/gpio-rockchip.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
> > index e36cdbd4bbef..511e93a6a429 100644
> > --- a/drivers/gpio/gpio-rockchip.c
> > +++ b/drivers/gpio/gpio-rockchip.c
> > @@ -199,6 +199,9 @@ static int rockchip_gpio_set_debounce(struct gpio_chip *gc,
> >         if (bank->gpio_type == GPIO_TYPE_V2 && !IS_ERR(bank->db_clk)) {
> >                 div_debounce_support = true;
> >                 freq = clk_get_rate(bank->db_clk);
> > +               if (!freq)
> > +                       return -EINVAL;
> > +
> >                 max_debounce = (GENMASK(23, 0) + 1) * 2 * 1000000 / freq;
> >                 if (debounce > max_debounce)
> >                         return -EINVAL;
> > --
> > 2.25.1
> >
>
> This cannot happen, clk_get_rate() can only return 0 for clk == NULL.
> We're not using an optional clock.
>

Ah, sorry actually the db_clk can be NULL for certain variants. But in
that case shouldn't we just silently ignore it and return 0? Or return
-ENOTSUPP at the very least?

Bart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
