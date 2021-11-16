Return-Path: <SRS0=A1uQ=QD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA5EDC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Nov 2021 09:13:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9A11561A4E
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Nov 2021 09:13:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9A11561A4E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=monE7xAbxYrqZ2eoAn8M5QAEf7KRMT9DchfVUa0sB88=; b=fPApMT945xdNzw
	5ytZIKQjDlcETGSPI/+Q5J+fQEQH5o/irvJHnRrC+8b0MNYv2OQGF3lFo7SOrdD380IQYT8YKxico
	WUeFFzDmCPU+zlkNXbs7lr5k5wmpI3S5cnBTU7i9kubaxo+IpjZCeEF8V3KLu8iwi4PqinSUWbywO
	T1A0T0jgcciI6YB0V3eH8+oEqC0vBOMgdfiGj0DQ8l64EPbZ6YJlUfKI2U0UgNQhy7P/7wqrl0m1b
	588mx6oC2CDr3Unc6eqJaTi9VMnfw7ZX1EA0/AkvEUvS9xymjca1W1L7zaUeDQLR45I5Qp110U88e
	lF4395wC/9/YX+M7OddA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmuWp-000ssf-Gl; Tue, 16 Nov 2021 09:13:23 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmuWC-000sab-8L
 for linux-rockchip@lists.infradead.org; Tue, 16 Nov 2021 09:12:45 +0000
Received: by mail-ed1-x52a.google.com with SMTP id x15so84712457edv.1
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Nov 2021 01:12:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qKVkYLH3mOowH9ihjxmK78ep8UuW+0rWvJVOqRYNCN4=;
 b=7kGEMByJoCTKLzBecErJpTJcSpp8TYNs47ih0FIsR8BboXBXDTVrz9X2CHpFsqCjAQ
 plsZumoB6V8NrmfWB1JsyuJXZnWAbzNtxDSNpn/0gfRd6V8sO3jemtgvSY4Px/Qc6YDQ
 yAQXq3KXBl17GyClcDfBnOL/5SWTW5Hi6jMbaEbSrID6AQDpQlWj+n5gvEWFykrk4g0G
 +qvZJGNrHafjgBIcO6zXohiXQAcaGBWM6teeU6CUBHznIvnWv2WlBvEpieT8TvNL2twO
 FkwDw11qnsNrKe2jvJTP/t3yO3TlQYFJ9ZyM77EhuwtbAwTqTAnVJ8DOGqTQEJoqWE30
 6Ifg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qKVkYLH3mOowH9ihjxmK78ep8UuW+0rWvJVOqRYNCN4=;
 b=cmqr1wLhhMw73C0yuFWAFXbawng8dhz8u2vtQzuYw6i9+2NAtYI6kivrSJFENtQqQD
 mhcBk+M8qnefLpDbzImPvQkcNllvcchIGaR3ooZ0gBkffKD100fJLvlNPXzBxfUKy8n5
 GyEu07yve6Erls1hIh5WZJhTKOIOfctJfLiPC18cJYbSNNpoP0vSnR9h57aIv+KFXrtp
 krCjTR4QJHPjimkXftcSSikHnFvbfU/1y9PZs8VyRWzTlwaOCsQWuCfoDEQrqrCdc3xv
 ft+mOIehisQjPGv0cAP8tpgf3I7txDBDCqnt+nnd4AJ/hqGOUBZIeYkpRsjg/u20epGX
 rN+Q==
X-Gm-Message-State: AOAM531QpXIVlMg+kQFPVbC0/P2B9zP1g4q9BAr1AsJkDAB+V9S00BxX
 8+G4K18qDwtonH8cw7kjsdcbmT/u+bH/T9ATseG7hA==
X-Google-Smtp-Source: ABdhPJyN+4pYB4ITOLCCI2vxwYTJycQb5pex8bjnakGV8Kf69ptx0Ib7k3LjS+VYdVHfNClgN8lvQe15xzC1yaFSyIw=
X-Received: by 2002:a17:907:75f0:: with SMTP id
 jz16mr7942096ejc.77.1637053960836; 
 Tue, 16 Nov 2021 01:12:40 -0800 (PST)
MIME-Version: 1.0
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
 <20211105124242.27288-19-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20211105124242.27288-19-andriy.shevchenko@linux.intel.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 16 Nov 2021 10:12:30 +0100
Message-ID: <CAMRc=Me20whtwS--+Zy2NLDGKH+wvxVtXFGMXj+E-ANun2U=qA@mail.gmail.com>
Subject: Re: [PATCH v1 19/19] gpio: mockup: Switch to use kasprintf_strarray()
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Jianqun Xu <jay.xu@rock-chips.com>,
 Linus Walleij <linus.walleij@linaro.org>, 
 Sai Krishna Potthuri <lakshmi.sai.krishna.potthuri@xilinx.com>, 
 Andrew Morton <akpm@linux-foundation.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Bamvor Jian Zhang <bamv2005@gmail.com>, 
 Andrew Lunn <andrew@lunn.ch>, Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, 
 Patrice Chotard <patrice.chotard@foss.st.com>,
 Michal Simek <michal.simek@xilinx.com>, Andy Shevchenko <andy@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_011244_343730_0DD72F5A 
X-CRM114-Status: GOOD (  18.88  )
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

On Fri, Nov 5, 2021 at 1:43 PM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> Since we have a generic helper, switch the module to use it.
> No functional change intended.
>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  drivers/gpio/gpio-mockup.c | 23 +----------------------
>  1 file changed, 1 insertion(+), 22 deletions(-)
>
> diff --git a/drivers/gpio/gpio-mockup.c b/drivers/gpio/gpio-mockup.c
> index d26bff29157b..8943cea92764 100644
> --- a/drivers/gpio/gpio-mockup.c
> +++ b/drivers/gpio/gpio-mockup.c
> @@ -491,27 +491,6 @@ static void gpio_mockup_unregister_pdevs(void)
>         }
>  }
>
> -static __init char **gpio_mockup_make_line_names(const char *label,
> -                                                unsigned int num_lines)
> -{
> -       unsigned int i;
> -       char **names;
> -
> -       names = kcalloc(num_lines + 1, sizeof(char *), GFP_KERNEL);
> -       if (!names)
> -               return NULL;
> -
> -       for (i = 0; i < num_lines; i++) {
> -               names[i] = kasprintf(GFP_KERNEL, "%s-%u", label, i);
> -               if (!names[i]) {
> -                       kfree_strarray(names, i);
> -                       return NULL;
> -               }
> -       }
> -
> -       return names;
> -}
> -
>  static int __init gpio_mockup_register_chip(int idx)
>  {
>         struct property_entry properties[GPIO_MOCKUP_MAX_PROP];
> @@ -538,7 +517,7 @@ static int __init gpio_mockup_register_chip(int idx)
>         properties[prop++] = PROPERTY_ENTRY_U16("nr-gpios", ngpio);
>
>         if (gpio_mockup_named_lines) {
> -               line_names = gpio_mockup_make_line_names(chip_label, ngpio);
> +               line_names = kasprintf_strarray(GFP_KERNEL, chip_label, ngpio);
>                 if (!line_names)
>                         return -ENOMEM;
>
> --
> 2.33.0
>

Acked-by: Bartosz Golaszewski <brgl@bgdev.pl>

Feel free to take it with the rest of the series.

Bart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
