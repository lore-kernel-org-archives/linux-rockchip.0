Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A30BC04A95
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Sep 2022 19:02:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DHQF0Z5ennXGnzFgr9FBlQNJBa5sZpp7DcC+aKldCec=; b=Xqt/fU5xf+tSH3
	XTkV4bwJnw4LWV2rp6XUhIjb76U5nPaTXzUYuVKHwb6wIDH91NQGKaqYVFrWgXZMwzY2tD3SQdA/N
	Zb59ihh9jFtmoBnow+4HhfKmWbfydq0zZMbhnL5oa4rfnINfsmYwCEVQfv/jPC0XjnGeGimzkvOoV
	gyqBrAyTuYE4mZKbADXHziCdK1NnFx7CYvMMd3sV0TKpqc9tCHUyOTLdEKB4ZG/M4nktaqS8RJF4P
	shaGV1p693U4t1CEEkcKtHKgTJ+Oap6PbRoyCDZOAIJZIw0T+816MKqxOETJ5Qj2PA4nqUoMBnWH/
	kDlBYTq7npZXt2C9Zm0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocWsz-00Fvwj-GT; Sun, 25 Sep 2022 19:01:53 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocWsm-00Fvrv-U0; Sun, 25 Sep 2022 19:01:42 +0000
Received: by mail-pl1-x630.google.com with SMTP id iw17so4470082plb.0;
        Sun, 25 Sep 2022 12:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=m9ofgECn4wQJW2nxra3yB+p7Od1ax8HHQnJpAHg7WYo=;
        b=CWp2H4vnz+6Cou0BZ9ODBck7zXwOqNE770Ukejii2ywWQkL4yvQgUzcH7uQpVc+QAd
         wMQtdFIkzNa+sERfxMx7ydstuiTIRAXI6FD/6iiyzWHBoMfwx3V4U1TAo0zMnZ/c5XT0
         z7q78jFw1fhOyXOSsY7L9o01vnyXiexf2Kxc4gAWJ2yYDI3DhD+zRoHWbh3R7wEwptzg
         D1/FWQ+hKPCtREBIYwdEVOEdWyMUhkydpj42XtTvJ6F/a/tEdMk6ln4uiUb+PX/QE6vA
         2+lr4hOwaZM9e+ymUggLW+6kRm9vXAuzsoih8Go5H6bxDAEwdzvIaLxasxBbK50bDt3R
         1WVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=m9ofgECn4wQJW2nxra3yB+p7Od1ax8HHQnJpAHg7WYo=;
        b=rqngZ6LgQdl0y41Lg8AIkeAcbBZeaAV5zPED8hC0+5bFvjhz18WdybASEkAyFpin7K
         Q/luYtmD3UvvizqJmSXWSQ/4BVfJDIqpxynjpLuMojuiYEKhgXfIS915BOLgA5cnyz42
         0JD45xBDgXdSInvQvuBs6YOFgotunxu/w9M8T+L/HxTMSQMi2pG4X6AvtneljBMVo2vV
         ZDJpUJS1fO6C74JDhEFDqjzXr7TZ//ndzaVcICLsYLJ6arRVdxWcj4jZ+eal+WQbmJwC
         3B4vSjWTkt/h5YHmeZZDrBzTuxg+IvvkOHlaL5bQ52n9eEvrMMfXCrShecLLLwX6jD2a
         7XMw==
X-Gm-Message-State: ACrzQf1+PXKJrP/xiIUjoA/50ZL8myuJYy5Sv24zk7P3jpVXE927A1oI
	RFeqgzRg9rGg55KOmWzMqMM=
X-Google-Smtp-Source: AMsMyM4cHpxSvCGRMuJKo9wKc/9wKbE/cJXimmPFgRJMPK/Oaoj7pvJ0weEAoD2wecHLpgH9lGnqUg==
X-Received: by 2002:a17:90b:3e8c:b0:202:c7b1:b20b with SMTP id rj12-20020a17090b3e8c00b00202c7b1b20bmr20870000pjb.54.1664132498910;
        Sun, 25 Sep 2022 12:01:38 -0700 (PDT)
Received: from [172.30.1.63] ([14.32.163.5])
        by smtp.gmail.com with ESMTPSA id jo18-20020a170903055200b00176a2d23d1asm9590357plb.56.2022.09.25.12.01.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Sep 2022 12:01:38 -0700 (PDT)
Message-ID: <c5addc04-f29a-1366-6513-7d3bbc306e3b@gmail.com>
Date: Mon, 26 Sep 2022 04:01:33 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] PM / devfreq: rockchip-dfi: Fix an error message
Content-Language: en-US
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <47627a29a443aedf3b36a4f72b3e1ad89933a0ea.1662819332.git.christophe.jaillet@wanadoo.fr>
From: Chanwoo Choi <cwchoi00@gmail.com>
In-Reply-To: <47627a29a443aedf3b36a4f72b3e1ad89933a0ea.1662819332.git.christophe.jaillet@wanadoo.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220925_120141_020895_D9E5F25B 
X-CRM114-Status: GOOD (  22.07  )
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

Hi Christophe,

On 22. 9. 10. 23:15, Christophe JAILLET wrote:
> There is a typo in the message. The clock name should be 'pclk_ddr_mon'.
> Fix it.
> 
> While at it, switch to dev_err_probe() which is less verbose, filters
> -EPROBE_DEFER, and log the error code in a human readable way.
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
> This looks like a cut'n'paste typo from drivers/devfreq/rk3399_dmc.c
> ---
>  drivers/devfreq/event/rockchip-dfi.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index 9a88faaf8b27..39ac069cabc7 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -189,10 +189,9 @@ static int rockchip_dfi_probe(struct platform_device *pdev)
>  		return PTR_ERR(data->regs);
>  
>  	data->clk = devm_clk_get(dev, "pclk_ddr_mon");
> -	if (IS_ERR(data->clk)) {
> -		dev_err(dev, "Cannot get the clk dmc_clk\n");
> -		return PTR_ERR(data->clk);
> -	}
> +	if (IS_ERR(data->clk))
> +		return dev_err_probe(dev, PTR_ERR(data->clk),
> +				     "Cannot get the clk pclk_ddr_mon\n");
>  
>  	/* try to find the optional reference to the pmu syscon */
>  	node = of_parse_phandle(np, "rockchip,pmu", 0);

Applied it. Thanks.

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
