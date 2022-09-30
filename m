Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58FD3C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Sep 2022 09:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z6QApUsEU5BfDy1LFuSl1r6iFHprfT9oh20je3rnpuI=; b=I4xfx4tyXay1BY
	An8dVmWtUwVmv4b68eM6hW8zfq164LOd0gdN7XUw7/2L8bQ5oZAQymoFdPSSGF6wTPmGPr1859idz
	pAht5yPLTFWVYvCzB2vhvCiqTaOY0zmlY4WbrytDLeFbg3K7Q6nD2BT1Aa21WghppgPc1bzf7KwR8
	41GCChaoZLdsqTmjWJiCGyNpeBquWNgP5uVz0d+PsNH10OHKQpiMrEh9WwnMWxEFH77Ttai+w3zhP
	cgd+Hrl8HSAvAOEDhOyxrPCxJEEKl4mX7DNLzA+Y2rWNZdmOAGXRXSNR/v1NnlOtBbrRAVuW/6pQh
	ue8Q5hvq9j90gEwjvDJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeCDS-008KJl-Ti; Fri, 30 Sep 2022 09:21:54 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeCDQ-008KIV-Cd
	for linux-rockchip@lists.infradead.org; Fri, 30 Sep 2022 09:21:53 +0000
Received: by mail-wr1-x42c.google.com with SMTP id c11so5880119wrp.11
        for <linux-rockchip@lists.infradead.org>; Fri, 30 Sep 2022 02:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=mhmaIVHO4ARHyotQ41EbCpRU4cv31jDVGkF//FBjacw=;
        b=0jYSLeDM1RiTMyT8C6fkEJOqd3UZa6OdbI4c3nZ9pQe/LnGX1mA47y1zQnZZN4gKhq
         o5aERGEZ3zTfhG183Wbllfk1usbP/twgCzggK58K+laxyEfxn7GWcLfvS8pwun30rRSj
         HetPXd3kLzqOWsrAPyJ7Ix6AE96hwJolrI//lVQCwSBqIslCuTOevK9308/9Jvol6x5t
         jIfilUaU0vp4fND1Ky1K+DiwIitgPEkTj9yw1kXU6T8Qw8bWKnh0BFZFLm/A1PFaiGrn
         tD1zD0IMpJSSPrN2RjHned1CvBHibTSSxh6D9TWq4jHHGntYcZP6RoE4FivmYVHd3hCu
         O0JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=mhmaIVHO4ARHyotQ41EbCpRU4cv31jDVGkF//FBjacw=;
        b=X0OyyGzrbC5JIIiXkx9jRnZI9tcvUKiQ4UhD24aF8fSUwg/qOs0rs9GSH5QrUaT/0Q
         YlcjRH45YNAWkY8+KBKFGpyBBpbEyk0zcrBfhBTeJrk92Fz8WNz2PQstKhOT82QekAQb
         ODxviZtGZMzo3flLvQQmuUass5ufy4HUe/j9jIT0mUd2auvoiN0N6r0yuTu6saAHRoTy
         tWKqEf6VrHFgSxYpO+bghpGESuchqJ7GsDYP152oHZxuhTr4DymoW6TiGbqc0G3tyCMG
         aNLoLOLxMwbIN7ppyH+5p3xKsfCuDaVVDgHRZZvzZ96venIqYILRyN0f0rl8z9UwhEfH
         HHfA==
X-Gm-Message-State: ACrzQf2JxJEc8TXa8705iMA8dt8WpMOhxg4ej4o3U94sS8JMMTA+jN2K
	5vkPPs0wr607kGryqmQ5AQQgLZMYRhur3zSliAWXfQ==
X-Google-Smtp-Source: AMsMyM7ejpz6lZ636PE6cbFSw7cIyiskE6E7ENBCjmBlQVigayBLzUohuvRiObUu4zn8nLlyAfn0qHqE/lSzOzRfYsc=
X-Received: by 2002:adf:fb50:0:b0:22a:e4e9:a6b3 with SMTP id
 c16-20020adffb50000000b0022ae4e9a6b3mr5000514wrs.467.1664529708668; Fri, 30
 Sep 2022 02:21:48 -0700 (PDT)
MIME-Version: 1.0
References: <20220920103108.23074-1-jay.xu@rock-chips.com> <20220920103108.23074-18-jay.xu@rock-chips.com>
In-Reply-To: <20220920103108.23074-18-jay.xu@rock-chips.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 30 Sep 2022 11:21:37 +0200
Message-ID: <CAMRc=MdPz8=4a=e=pcsnvGMzs5J2TyZR=mOSKatD5BcOep3RFw@mail.gmail.com>
Subject: Re: [PATCH 17/20] gpio/rockchip: print device with fwnode name when
 probe successful
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: linus.walleij@linaro.org, heiko@sntech.de, 
	andriy.shevchenko@linux.intel.com, robert.moore@intel.com, robh@kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	lenb@kernel.org, rafael@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_022152_522657_80B23259 
X-CRM114-Status: GOOD (  16.38  )
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
> Print the device probe message with the fwnode instead of of_node.
>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> ---
>  drivers/gpio/gpio-rockchip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
> index 11586d93549b..d08435619f12 100644
> --- a/drivers/gpio/gpio-rockchip.c
> +++ b/drivers/gpio/gpio-rockchip.c
> @@ -772,7 +772,7 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
>         }
>
>         platform_set_drvdata(pdev, bank);
> -       dev_info(dev, "probed %pOF\n", np);
> +       dev_info(dev, "probed %pfw\n", dev_fwnode(dev));
>
>         return 0;
>  err_put_clk:
> --
> 2.25.1
>

I would instead just drop this log message. If the user wants to, they
can obtain that information from the device core logs.

Bart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
