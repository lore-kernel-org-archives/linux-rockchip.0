Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B72BC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Mar 2022 01:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CPm2ND7T8obh8VQZx2JZmSRNJNJcUrUaxOh7skzKAk0=; b=TKBlpFEjToUCEA
	twp1F3o0CpeibBRVYzmb+S8ZIMm9it98M9M4OcpflU/9SQ1rQaJmcvtpy1j+VUki8QcpG+Tvl0SMT
	5GoeIBbf9TteRh4Z9aGuvwteiYTMsXY5fwSa1tgZN8poKA29w0CA/SvESXsGLKT392uU2aysdio0b
	uVy96ONLhQ3kWl4r4SV7RscbBaGEl02Yb5+K7Ia6qduTu6n2fFZv0EvDIwU1iUzHxN6tCy8eJ4WFV
	GvRpkCFhEVXOk9hUzarAgu4J8uxdIXRqqx2z5dWmwkkwc3Y8ZWCBFD/EW/9KU1Z5Aq5XF59rQqAlW
	2EzJOYUTvJCknxAkZNwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTvmt-007Spc-HM; Tue, 15 Mar 2022 01:15:47 +0000
Received: from mail-yw1-x112e.google.com ([2607:f8b0:4864:20::112e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTvmq-007SpB-PE
 for linux-rockchip@lists.infradead.org; Tue, 15 Mar 2022 01:15:46 +0000
Received: by mail-yw1-x112e.google.com with SMTP id
 00721157ae682-2e2ca8d7812so123531537b3.13
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Mar 2022 18:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pC8Myz4YlofSUNcp3puZ1GbZJ/dg5VjQ7/yDmBxn+eA=;
 b=wmyEINKwLaGLsp3Ki3JguAJ/jOLaUneOi0kPsR2pL+v6EaMLHOoMDz9cA6K5Lc2X5W
 sfmbgGis3Vx0uYHa5kqRjH3IcpQUGPDl06rOagZXNTO7SdPjHTOQhtnRHeKoM1EUmM/a
 iKY+yzu8gmjwlmzQTifk5pteyiYOt/LBpFsMPg0ev7WLHKZkBtJFTlPa+8uCsyv7j1V5
 KrU1fhvFBWRYQk1C9ii7yZW7xCspc98HtktJpcdz3NVfNMLBq6IrpDHmwiFQIhKJNcn4
 +p+bS0ePnhxd5oqB2Y8ni+/a0/pjTsi72lE/DEt/MtnGc1UTMumCO+2vH/ehWr3CbpAX
 C9Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pC8Myz4YlofSUNcp3puZ1GbZJ/dg5VjQ7/yDmBxn+eA=;
 b=2kIwMWLlPci8KUCEKrxhTUj6AXllBITmF4M5XMK8xgY0HmkiP8YCo9E0rMJBgjmPM3
 ZQ4cUhJO3QFZnUYYnvAKqe6nuj4EngB0gXM5jVBaRBxcC+4y99LP8dyFpG10nUwYCQ/+
 NBeVxbAcnhFXC5CJMICO7wAXoIa5kI4Rz0YdLf7PDcfPqCNwA0g41qLhmzr8XFSYE+vj
 +GWnUCFwBPnOnW4sKGOpnx51Bc5sM1mU6BcEP2QQMAxSvF8zFScJll/AAJeH8XiEwHc5
 shBkRTSMjGAVyN8LywZ0Tj0NUNLdE7FvWCr0oqNw9ci+hXVHjtFPBtnfFs0MuSu7ATy4
 SAIw==
X-Gm-Message-State: AOAM5335vSET3kiIuF7riV0tNYzrOKClyFhV2hXUtMwrLdAZY5CQmExE
 Rr2ZVd8AWcKk3Uk4FGtXsb4qHEn1LkbwpmIygYl0RQ==
X-Google-Smtp-Source: ABdhPJzJLFed474ofr89/LlN3suZJUh4S1f4LeorbhqHJKNv59eiwl+mQqd+K5WDPpoHwHT8u9koqgcq/TYVH7Oh4ww=
X-Received: by 2002:a05:690c:9b:b0:2e4:da22:2a71 with SMTP id
 be27-20020a05690c009b00b002e4da222a71mr15948649ywb.126.1647306943903; Mon, 14
 Mar 2022 18:15:43 -0700 (PDT)
MIME-Version: 1.0
References: <20220303062211.1378883-1-jay.xu@rock-chips.com>
 <20220303062211.1378883-3-jay.xu@rock-chips.com>
In-Reply-To: <20220303062211.1378883-3-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 15 Mar 2022 02:15:32 +0100
Message-ID: <CACRpkdb1366vp6nK3K20kenLkwiy_1ebT8Wt+S93vdQ_Gjd_-g@mail.gmail.com>
Subject: Re: [PATCH 2/2] gpio: rockchip: get pinctrl node from 'gpio-ranges'
 property
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
 linux-gpio@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220314_181544_856145_42088B39 
X-CRM114-Status: GOOD (  13.19  )
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

On Thu, Mar 3, 2022 at 7:22 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> The dt nodes for rockchip soc designes as
>
>         pinctrl: pinctrl {
>                 gpio {
>                         gpio-ranges = <&pinctrl xxx>;
>                 };
>         };
>
> Currently, we get the pinctrl dt node from parent of gpio, this patch
> try to get pinctrl dt node from 'gpio-ranges' property.
>
> After this patch, the dt nodes possible to be
>
>         gpio {
>                 gpio-ranges = <&pinctrl xxx>;
>         };
>
>         pinctrl: pinctrl {
>
>         };
>
> then the gpio driver could register as platform device itself, but not
> populate from pinctrl driver.
>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
(...)
> -       if (!np || !pctlnp)
> -               return -ENODEV;
> +       pctlnp = of_parse_phandle(np, "gpio-ranges", 0);
> +       if (!pctlnp)
> +               pctlnp = of_get_parent(np);

GPIO ranges can be several and point to several different pin controllers.

I understand it does not in your case, so I guess it is fine if Heiko
is fine with it.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
