Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E62EC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Feb 2022 13:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qF4ghSB304vpyWwu9SP8QVfxQRxtS6fmpmKjAyQNlKA=; b=Aq1cuIIT3ZhzbV
	whPztYZ+h1aZiKUa1z5lT8urUXSVfF+PcCG/GxbzebgM/NPDaInVdxt/dmJrxtfwOdTbzMmnRhmVd
	FSE4p4kQEiu9FEsFKsx8ctEAwe2dmAAT87lhanDAOfSHhDOhn0wzGgHfhKAcDzbTqWa5snS84jRTo
	NL69/L0LYlnY9Kg2bSma8MuqL0PlrGaX1+Db1df8k8qe0m3MVNDQwjeyZjWFPLQLyFCF0+J3pihK4
	O3ZHWvGNZwQh2p2/FKkbUUj6q3i1uuRRRP3NeDVpGhAN/CuZdcoCPGA5TirpxfiNr2EQ0gDVraV1B
	urqfK0QB2PBG/gAGBoHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKgje-00Ac8F-UG; Thu, 17 Feb 2022 13:22:14 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKgjb-00Ac5A-5V
 for linux-rockchip@lists.infradead.org; Thu, 17 Feb 2022 13:22:12 +0000
Received: by mail-lf1-x130.google.com with SMTP id bu29so10030326lfb.0
 for <linux-rockchip@lists.infradead.org>; Thu, 17 Feb 2022 05:22:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9EY4j+oM8cn7vYGKtEF2tzpVEZCHYXK2JURuNjwopTw=;
 b=kduzqmfEqxbHDUgUXrQclE3JtdsvXWr75nwItngZZiLOGjCqOKwB2nRX1DL5iG6r7B
 /vGvr/TNVkOLxlBxhGRGCl3glo5yvXcxU6c7dd/s+CQoVhC14Tih0jGSWU7bKCV759N9
 0QhAU4c57O7IqgStPym1LrlxNUBcMBHwnCrLGVfowoxhj3LHmQ07Z6lHOcOFTwJ5ISL/
 QK37rfZo7xGmCvkAySuKzKu/KNjYL/UkuB//MdfnmWspBpYG2Fj9t/0Ww4Ttul5XwlqF
 CCSyBF/G3XjKV7/wQW/P3dAODzMdMCuMm6eTXefuxHtbkh2iP8gHRMv2RAWNFu9+TN1/
 8HLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9EY4j+oM8cn7vYGKtEF2tzpVEZCHYXK2JURuNjwopTw=;
 b=wOFi5fiokb2J+y0AqJKbmBWCzRFoFjFN7ezS0arKU+SX9qAQ4fszPoXnpQMmpkpiu7
 MsZzR+pN6kOn8aEA09LXeschdJDVbrws7OmTDtf1T6XBEeC0Gpk5IvZCriOUEvNOOgx4
 hffOjNCv6QifZmiR8qvr/8HoEuk3FJVZd+uDDQG/JV5czYguxvzErn4qzaGI/Wv/bttQ
 rmuhVZeiN44nQ1JEEEwVAPgEVG3Y5JC+V03AozZ4NVIcXzof8VrVWHu4GZqnUoiLdwtm
 CIaMfJby6J3RmaA2mHjRrPGcI0GoJ8G0Mfbs3GpqwiNLdm60v2f2M5zr1/wOSO7GyzV6
 ppKg==
X-Gm-Message-State: AOAM5328la1JGxIfJpKHs3qFZfktVkQg7pQJyuHpi3v4p11RbF/EGFZY
 S6YT/Xk6IABKkwcpSuh6voCsxkxJUbWU6tHKpBaEWw==
X-Google-Smtp-Source: ABdhPJzafXtiHCJClXvfvyVdYWtrkRnjKKOAEEPES+t05l2rICWKILqPgTORWYqMCiCakdRFT7+ODuiTJ6cX/7YSM/k=
X-Received: by 2002:a05:6512:3604:b0:443:5d4b:3760 with SMTP id
 f4-20020a056512360400b004435d4b3760mr2018666lfs.358.1645104128404; Thu, 17
 Feb 2022 05:22:08 -0800 (PST)
MIME-Version: 1.0
References: <20220130210210.549877-1-daniel.lezcano@linaro.org>
 <20220130210210.549877-7-daniel.lezcano@linaro.org>
In-Reply-To: <20220130210210.549877-7-daniel.lezcano@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 17 Feb 2022 14:21:31 +0100
Message-ID: <CAPDyKFqY+UhY-dXN9E4cL9Me50BgUcMvCKz1_naZ7AbA_ak4kg@mail.gmail.com>
Subject: Re: [PATCH v1 7/7] dtpm/soc/rk3399: Add the ability to unload the
 module
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: rjw@rjwysocki.net, heiko@sntech.de, lukasz.luba@arm.com, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220217_052211_245331_4C0406AF 
X-CRM114-Status: GOOD (  15.39  )
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

On Sun, 30 Jan 2022 at 22:02, Daniel Lezcano <daniel.lezcano@linaro.org> wrote:
>
> The dtpm hierarchy can now be removed with the
> dtpm_destroy_hierarchy() function. Add the module_exit() callback so
> the module can be unloaded by removing the previously created
> hierarchy.
>
> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>

Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe

> ---
>  drivers/soc/rockchip/dtpm.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/drivers/soc/rockchip/dtpm.c b/drivers/soc/rockchip/dtpm.c
> index ebebb748488b..5a23784b5221 100644
> --- a/drivers/soc/rockchip/dtpm.c
> +++ b/drivers/soc/rockchip/dtpm.c
> @@ -52,6 +52,12 @@ static int __init rockchip_dtpm_init(void)
>  }
>  module_init(rockchip_dtpm_init);
>
> +static void __exit rockchip_dtpm_exit(void)
> +{
> +       return dtpm_destroy_hierarchy();
> +}
> +module_exit(rockchip_dtpm_exit);
> +
>  MODULE_SOFTDEP("pre: panfrost cpufreq-dt");
>  MODULE_DESCRIPTION("Rockchip DTPM driver");
>  MODULE_LICENSE("GPL");
> --
> 2.25.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
