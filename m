Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACE28C5472C
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 22:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4BdZq23hoArMlFVk6FHTwjdhksrRNvgzqdjAsqapsao=; b=YiVlnEDf7y0F7o
	i8M+HGQqmamcdcZIl2PawtRYfhf8WhK7XDFCwuAeSOI67LGvgRgxUJr6dR7QaQNR/vjVuRq4Z8ALt
	MQYi6JGL0toe1eM/Fpvm10sp7cq8UVoXC+8+9DvUPMoNjV0eAeESOIg5pZ6iH7mOKbPVtlu8nKyXY
	0EmxJJBWc9lC6DbXzpZ9bieWbmdsDFqlLvqZMm0CQRUAFbcLKZh+w/OieHWwJxxxY5bWCqhf7RQik
	mn/Mi0oEYilsHaAwzhaJuHb/Xg4CUzIbbf4owRp7OnsaStuk5fZmc1k3Ii5PohMK/cZ3dBKAQYc0u
	OBOatt6xwuc0tONf2Jqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siiC5-00000008zzf-01uF;
	Mon, 26 Aug 2024 22:28:13 +0000
Received: from mail-oa1-x2b.google.com ([2001:4860:4864:20::2b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siiBG-00000008zif-0vvB
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Aug 2024 22:27:23 +0000
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-27045e54272so3185683fac.0
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Aug 2024 15:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724711241; x=1725316041; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TSaDBvyq/bFcO3OcsC5ci/zFSviUd1t2kxCPPZcFB+8=;
        b=VPKTSJmvac6s0tp9p0igBD6TfzYioB3VszII2VvxfanDuFCc1Bfy3kZMRMW8CELpj0
         tblVls7smJqO9cx1oiNeJXOn+57NVGB2Os7lYTqgMrkbxdGXAI2gVtMiPRYzok+Txn2k
         rl6oCaRvF1kYCtf73SZL3GVfH1D6HtXBsXwZc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724711241; x=1725316041;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TSaDBvyq/bFcO3OcsC5ci/zFSviUd1t2kxCPPZcFB+8=;
        b=u/DGxizhgYXT3hxHgpsaD7/+/RBFVYw/guXUCu9hLoPqERRh/YAt4Jefzi0VuJHjxE
         3krF2Q8Jkz4WWuaNbnyZyFoSYekRihdLyvpq4BHP4vLDlQoOwJKWsUAOYn/UFRmzlOkk
         nP3wHqV/8KgLpDUsENOdqmD6IUBZRINJDwGSiUNndYnJ+OgfMNQqGbQB//KDdGQxOY9M
         lbyYpBWKZqNayyJhkR0htYBh3bT0B8rmKcAiwCD1YrpIyT4qajI8dT/XacrWl3aOKEJ6
         0Lk4q555IloOx6FGYCoY/1Z6oDQgLa3iiOukAn3gGu5fdUi50DD/lp45CVqQuyL40t2V
         q79g==
X-Forwarded-Encrypted: i=1; AJvYcCVzM6ZGHNiFGCvmTgqUjNu/VuwuORZ5KrjN4/xt4d8CgzIiR+/ncD/RV9vHBQnvGnSpSdYxag0uUo2ilnjEow==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw+NwQkAeEiSnS+7vq8v/5koMEOZS8ltyQ9m8YcgVT+F1rvGp6T
	ayUDs27GT/+TTaWCXGsWAiB3MkL/M8rOcFyfeZ7xLL5sGwFGBAC2RB3DBi5R6w==
X-Google-Smtp-Source: AGHT+IFUHF3HtJhxNyKdeJjkwJ+tECgitLmEFbmHNSQGwUUS7HccdzeehXGx7JgW5MXroG3lwlDQqQ==
X-Received: by 2002:a05:6870:2108:b0:260:df8a:52bf with SMTP id 586e51a60fabf-273e64697eamr11748626fac.2.1724711240763;
        Mon, 26 Aug 2024 15:27:20 -0700 (PDT)
Received: from localhost ([2a00:79e0:2e14:7:7e40:430b:848a:1da6])
        by smtp.gmail.com with UTF8SMTPSA id 41be03b00d2f7-7cd9acddb57sm8107858a12.54.2024.08.26.15.27.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2024 15:27:20 -0700 (PDT)
Date: Mon, 26 Aug 2024 15:27:18 -0700
From: Brian Norris <briannorris@chromium.org>
To: Jon Lin <jon.lin@rock-chips.com>
Cc: broonie@kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org, linux-spi@vger.kernel.org
Subject: Re: [PATCH] spi: rockchip: Avoid redundant clock disable in pm
 operation
Message-ID: <Zs0BRsNdZdI69aXM@google.com>
References: <20240825035422.900370-1-jon.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240825035422.900370-1-jon.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_152722_269935_BEBB2CC8 
X-CRM114-Status: GOOD (  23.44  )
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

(NB: I have several nearly identical copies of this email. I'm replying
to the latest one I see.)

Hi Jon,

On Sun, Aug 25, 2024 at 11:54:22AM +0800, Jon Lin wrote:
> Fix WARN_ON:
> [   22.869352][ T1885] clk_spi0 already unprepared
> [   22.869379][ T1885] WARNING: CPU: 3 PID: 1885 at drivers/clk/clk.c:813 clk_core_unprepare+0xbc4
> [   22.869380][ T1885] Modules linked in: bcmdhd dhd_static_buf
> [   22.869391][ T1885] CPU: 3 PID: 1885 Comm: Binder:355_2 Tainted: G        W         5.10.66 #59
> [   22.869393][ T1885] Hardware name: Rockchip RK3588 EVB1 LP4 V10 Board (DT)
> [   22.869397][ T1885] pstate: 60400009 (nZCv daif +PAN -UAO -TCO BTYPE=--)
> [   22.869401][ T1885] pc : clk_core_unprepare+0xbc/0x214
> [   22.869404][ T1885] lr : clk_core_unprepare+0xbc/0x214

I appreciate the snippet of a WARNING trace, but I'd also appreciate
some actual explanation of what the problem is, and why you're solving
it this way.

> Fixes: e882575efc77 ("spi: rockchip: Suspend and resume the bus during NOIRQ_SYSTEM_SLEEP_PM ops")
> Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
> ---
> 
>  drivers/spi/spi-rockchip.c | 57 +++++++++++++++++---------------------
>  1 file changed, 26 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
> index e1ecd96c7858..043a7739c330 100644
> --- a/drivers/spi/spi-rockchip.c
> +++ b/drivers/spi/spi-rockchip.c

> +#ifdef CONFIG_PM_SLEEP
> +static int rockchip_spi_suspend(struct device *dev)
>  {
> +	int ret;
>  	struct spi_controller *ctlr = dev_get_drvdata(dev);
> -	struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
>  
> -	clk_disable_unprepare(rs->spiclk);
> -	clk_disable_unprepare(rs->apb_pclk);
> +	ret = spi_controller_suspend(ctlr);
> +	if (ret < 0)
> +		return ret;
> +
> +	/* Avoid redundant clock disable */
> +	if (!pm_runtime_status_suspended(dev))
> +		rockchip_spi_runtime_suspend(dev);

It seems like you'd really be served well by
pm_runtime_force_{suspend,resume}() here, and in fact, that's what this
driver used to use before the breaking change (commit
e882575efc77). Why aren't you just going back to using it? (This is the
kind of thing I might expect in your commit message -- reasoning as to
why you're doing what you're doing.)

And in fact, I already submitted a patch that resolves the above problem
and does exactly that:

https://lore.kernel.org/all/20240823214235.1718769-1-briannorris@chromium.org/
[PATCH] spi: rockchip: Resolve unbalanced runtime PM / system PM handling

Do you see any problem with it?

Thanks,
Brian

> +	pinctrl_pm_select_sleep_state(dev);
>  
>  	return 0;
>  }

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
