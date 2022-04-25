Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77A38C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 08:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i2uz0dkADIeB5ebwUKVKO7JDqgK1dzkqib7v6KTOFK0=; b=RjI2uR55C1j4+j
	VIGjDLDJNgJndo4a5+WPlLU2SNWFf3xIAqdoZ9oKKP0Q5FfVly4A94LuS5egcyl4OBPB3oI7MVzOu
	sNWVFIWK+2N8i/YBxZRa417DQ7fjSK5l+87hpr3kcNOPHjxrV+ccmH3zxhm9ruUN3ZuDdyhp6Tgnw
	VVEP2M99X8Ze89ZkPATrGGjqGvMCP45kzpNGK+ScMZgR55j4kP0yMHsMZc6aD3Jroj5hGOPynyH3J
	ooDNRkg91h+55MTy8KAQaasEWiB7HUoeZYmiHIr8ws8BL+XicadoNlLcGPcf02hyX6p5SFMuJ5oBW
	cKfrwjUqMq/6I/Q3Glhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niu7a-008knA-5S; Mon, 25 Apr 2022 08:31:02 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niu7S-008kku-LQ
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 08:31:01 +0000
Received: by mail-ej1-x634.google.com with SMTP id m20so7410657ejj.10
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 01:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=gnEdxr9X8NJjJNHgkQBJ5Veaftqebxp4EvxRefbL6GM=;
 b=X+Yg3/qKc5x6pHewyS523tJIwP98titiTvYPWJxIa+eCetW9DessPSWPBESUDBRbDY
 1SJ+BKbQjcm+JyCNH+QfQ5GVD52KK6L5FOXikG626ut8mWopj0wN4w4tn4WTXV8k+QAM
 Qe3K2J3jMB6wKuJPvX66DNSWoR+HXNL5BlFGU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gnEdxr9X8NJjJNHgkQBJ5Veaftqebxp4EvxRefbL6GM=;
 b=1Mp+FSut+YjSIzduc8dpUU5g6TGjfAvLtlKl2/G5vyl/e4pyeWNh4x65GCsvDHCls8
 RYO/L5/C4WsEqqNgaoch+ytTDoo2hgX6AsyPwo0EdhoXOkYjUOUQtWG0RbOuUdaiQyXj
 NwEBGdPsQqjJNBZk2oZOZJ9xmRAXKu88DLQCq0j7VssSDLmGvKHdPBpLmm7AWDmUQOSH
 E10H6Z/j702yYhouOjS0rLLdXTQKsgaKnO//m+1kxds4FaRgx1C/oH96luhG3fyifC6o
 W2LnPHb+DlzZ+b5Dr/GQssKhEo8l8iLYPO19rE0WDr06w4aX9fJr30qpiJh7AlyHit5b
 R1Rw==
X-Gm-Message-State: AOAM530WPqn4qfBs8AytEWFRt57s0bOV8wVYvGaQVjNQpCvUmkg6xkWB
 GkitQ1lkeUG2834yJuquT3QZng==
X-Google-Smtp-Source: ABdhPJxyYu+Z3n2rkMqDJY6jjyOmctct8egEfLGvmptcyIAdeUw3oQopaI1mgY+e2RfD4Wqg6GxFOg==
X-Received: by 2002:a17:906:824a:b0:6f3:a07b:2568 with SMTP id
 f10-20020a170906824a00b006f3a07b2568mr1070812ejx.84.1650875450972; 
 Mon, 25 Apr 2022 01:30:50 -0700 (PDT)
Received: from gmail.com ([100.104.168.197]) by smtp.gmail.com with ESMTPSA id
 jl7-20020a17090775c700b006f38e51ec81sm1230637ejc.129.2022.04.25.01.30.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 01:30:50 -0700 (PDT)
Date: Mon, 25 Apr 2022 10:30:33 +0200
From: Ricardo Ribalda <ribalda@chromium.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 21/21] media: rkisp1: Drop parentheses and fix
 indentation in rkisp1_probe()
Message-ID: <YmZcKTa1oqRT1bMU@gmail.com>
References: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
 <20220421234240.1694-22-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220421234240.1694-22-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_013055_153588_1DF8A481 
X-CRM114-Status: GOOD (  17.35  )
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

Laurent Pinchart wrote:

> Fix a small indentation issue to increase code readability, and drop
> unneeded parentheses.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Ricardo Ribalda <ribalda@chromium.org>
> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index c7ad1986e67b..97d569968285 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -486,9 +486,9 @@ static int rkisp1_probe(struct platform_device *pdev)
>  		return PTR_ERR(rkisp1->base_addr);
>  
>  	for (i = 0; i < match_data->isr_size; i++) {
> -		irq = (match_data->isrs[i].name) ?
> -				platform_get_irq_byname(pdev, match_data->isrs[i].name) :
> -				platform_get_irq(pdev, i);
> +		irq = match_data->isrs[i].name
Shouldn't the question mark be in the previous line?, not complaining,
just asking :)
> +		    ? platform_get_irq_byname(pdev, match_data->isrs[i].name)
> +		    : platform_get_irq(pdev, i);
>  		if (irq < 0)
>  			return irq;
>  
> -- 
> Regards,
> 
> Laurent Pinchart
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
