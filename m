Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 748B1C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Sep 2022 09:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NUpEhP77rhZU48i3fmfuAjnkCttBXBB96vsCF4q8NQ4=; b=UOYUOWfSDctuPU
	g9rna73n0EJChM5h8O6NeIz/4XznAuebarf8GfFDDnTbqNkEe5Id7JY2fuxlTjXdKTqQvcl2SKtQG
	pmsBFnIzdaupPOZJYN+6hzqTTlCOIwJizOPlpCoQdS93MsMhW7GmNXSa/tZCPq3bDHy3hy9vci8vj
	oDl3242BaVzGPCjucZjyiFxfZx/+BaaLAzz/fUVwExQhpw1vI01VtQJOICXHYKCM+QMwxLqxlwDmk
	Qr5VtR17h+7m4cOCwJum/rVt5eEiOUp3BHZZcqBXFCcv8bGr5dxd6TPwTkk0UxJvLPR+qaujEOghf
	mmHM6mI84B7IJujiEtGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeC9z-008JRf-4G; Fri, 30 Sep 2022 09:18:19 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeC9w-008JOO-W6
	for linux-rockchip@lists.infradead.org; Fri, 30 Sep 2022 09:18:18 +0000
Received: by mail-wm1-x336.google.com with SMTP id ay7-20020a05600c1e0700b003b49861bf48so4680474wmb.0
        for <linux-rockchip@lists.infradead.org>; Fri, 30 Sep 2022 02:18:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=9WRmE4in3u5pyi8z579i3uor5RQvXVZ10ZhoptEyF5c=;
        b=qqy4TKeesl9A9pjmjB/Y5SSgqMsFgPGsXwN05GdHJdwrQ1QSXirMbRB71N6i8Dxq31
         /F5zY4j1xZe2sLLhhOSZPPRZ4abEjVqpQI3x+RReRPAPnELUAeRUKUEwJYn6ZXKC8qQC
         syi0CdCOJy/IaFo6WJIKxTbz9bJnm+/fSXSp1CPwuudmZNTs0Ls3uzjziObMtIO1EeH2
         QPTWx+iihEgkqSEhDPdNKCou4oIB5ErpfUCj9DpztcM1Hy6L1u4NtLxg/b9u+dDFj3Wd
         9xr1zbwDDOqYAY1IWK2HmDrxx/QtF5fsGzPvAt2V3kmVgixfyccKGrQWOIV1CvaXcA1O
         qK+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=9WRmE4in3u5pyi8z579i3uor5RQvXVZ10ZhoptEyF5c=;
        b=p+j7ii6jMjC9ckUhUvRfU/n6K+FDijXRecr87Jxx9XIiH7tte4hBn9PlvhrrQBYExQ
         /RPl1N+7hsUeKoOQviRsnWsxynmqrtwW9f0o0GtzQtE0Elj64kTve0wCotwsK/H7QqNP
         6XBw4/KC0A2IHmejIp8KhiINx86srTkz5WZP7S3IYvPo+jt4iexCM3CIDS1joUKWTHOz
         GdKOw9TqGv6GZ68V44FOYQ8pYhl2teWcyuXbT7ZRDdFh89oLMaBjPfHT544O292oaQBe
         sREDCdCqt6//sN929vhDuvO8koVD+eOK5jIIjPBGxl9yu+gNvnxCGtBcI8xyS1F1Ez6f
         sQDw==
X-Gm-Message-State: ACrzQf24DAEwngJRONxVTZ+arroseQg8nYOMGMJRwgKU59tizdPLC4sz
	PwJSSS1Vdh9nD9sUoEB0LU3dsvMKG5O8B1Zc57oiNA==
X-Google-Smtp-Source: AMsMyM7QTnAQI2J2Un6+5Mdkw5g+w2atjOOxZGlyfDOBACiqBnYBg5F0I6da0T2OyrweBxdPlsBfrPUd2stnSBIxmoY=
X-Received: by 2002:a05:600c:4f8d:b0:3b4:9f2f:4311 with SMTP id
 n13-20020a05600c4f8d00b003b49f2f4311mr5008014wmq.17.1664529488130; Fri, 30
 Sep 2022 02:18:08 -0700 (PDT)
MIME-Version: 1.0
References: <20220920103108.23074-1-jay.xu@rock-chips.com> <20220920103108.23074-13-jay.xu@rock-chips.com>
In-Reply-To: <20220920103108.23074-13-jay.xu@rock-chips.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 30 Sep 2022 11:17:57 +0200
Message-ID: <CAMRc=MdjFbzjiLg==ppX_e7cWVw7s1B+Dd=OvrYsnL4ZC_daMg@mail.gmail.com>
Subject: Re: [PATCH 12/20] gpio/rockchip: add return check for clock rate set
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: linus.walleij@linaro.org, heiko@sntech.de, 
	andriy.shevchenko@linux.intel.com, robert.moore@intel.com, robh@kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	lenb@kernel.org, rafael@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_021817_049326_FF27CCA4 
X-CRM114-Status: GOOD (  15.49  )
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
> Check if the clock rate set for the apb clock is successful or not.
>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> ---
>  drivers/gpio/gpio-rockchip.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
> index e36cdbd4bbef..511e93a6a429 100644
> --- a/drivers/gpio/gpio-rockchip.c
> +++ b/drivers/gpio/gpio-rockchip.c
> @@ -199,6 +199,9 @@ static int rockchip_gpio_set_debounce(struct gpio_chip *gc,
>         if (bank->gpio_type == GPIO_TYPE_V2 && !IS_ERR(bank->db_clk)) {
>                 div_debounce_support = true;
>                 freq = clk_get_rate(bank->db_clk);
> +               if (!freq)
> +                       return -EINVAL;
> +
>                 max_debounce = (GENMASK(23, 0) + 1) * 2 * 1000000 / freq;
>                 if (debounce > max_debounce)
>                         return -EINVAL;
> --
> 2.25.1
>

This cannot happen, clk_get_rate() can only return 0 for clk == NULL.
We're not using an optional clock.

Bart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
