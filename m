Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB631C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 11:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yj3m7wczZPLhnKoaBmxwUp+Ch1LYweTia8U61AoVPfQ=; b=rODjivTTPMF1jo
	SWPYCY7J890on7WiewszH9Vn0aJv4BwU1npEBYVs2kdnaAHcL+HnVX/MEC/IFQmjbkRbRnOPfMYkk
	KFXMtkXyqfJowpatMKik+bfUu3PdAokI3LSMSxNa0SPYbMTNo4AYdoSP0UCkoyGXUcOhyDnqOYy5m
	hCV9bvp5KfPuqFm8g+OVVI6hEZ3mGFco9Tp/IdnJR1xx2sJqiVhVATwK7PDb7Ygbsnuveug91+PG6
	3p5r25v/NYFu8BOAY8YbNSXpCEvMSMYXIyPrkOheWUyWbCazTYr1hvDFyvveZTwvJBkIAXvz9QEev
	+xVJbA9WCBcKUD7kr53A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nixET-009McG-De; Mon, 25 Apr 2022 11:50:21 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nixEQ-009Mai-3K
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 11:50:19 +0000
Received: by mail-ej1-x633.google.com with SMTP id l18so2457063ejc.7
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 04:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=j8svVughDOBZ2P/XjS6mK4PtOs0lB8r9YN3eWypl6aM=;
 b=lA9lstVnDtxLAlJcYCNGVAbIGwlziHLahMIi9xl0o9+llGUjMl1GZQ1B3Dwl2/uNIk
 BtbM8AMdlMhe1qBPW/46NrvIM3mGdCU3As0nsJP4eb4QKeXvzQuyFgJ9ctZZJgR3iSS1
 tB3haFobvxFjdn4Aq2RKaBKshPlYmg+HCaSaI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=j8svVughDOBZ2P/XjS6mK4PtOs0lB8r9YN3eWypl6aM=;
 b=rjmxBmfuYWMk4NLz3JL/BqVURsYLhSjg6T/TdZYOx/jNkSG2WJx+utzD86q/cVO8I+
 mITsFhlnuZMhS9bTREmvO9QAWApLssrKa/V6RnL/emT7pVTA5BeRlhsQCyawSRuIqvcg
 80PFGIl6MW84yFMf98FAGr3h2bS1M+/VUS5Qo7ZOdKaQAtarysmdpLswj6p2ZV1Q4Iej
 tt27r5lZNAa+nCgUgYTmusvkikaqoiHNdnHN8B5k2OsXr5++PVaeb2xfEewOStYhufmm
 qyNAbQp7j79WaLuZ064gmPIKbnGsVol3I2nLuFs20yYOJ4HJQHk1w9LzBiK3ycHDh+mx
 yTGw==
X-Gm-Message-State: AOAM530yCYPs/rNiqE+/5+8amkWFKQvmGyAzXZOLOgTt6X9YsLgeZvuV
 QfdHqbKlpK1hIIEf2ke9Fvm1pw==
X-Google-Smtp-Source: ABdhPJxLLgmy040UtHw1/VP91Ezr2FKxY1a+d/nSD3B0WbAK+qyjikLqJmuKsR/SOellcC0BVo/5Lg==
X-Received: by 2002:a17:907:2d1e:b0:6f3:6717:5f38 with SMTP id
 gs30-20020a1709072d1e00b006f367175f38mr12462910ejc.732.1650887414779; 
 Mon, 25 Apr 2022 04:50:14 -0700 (PDT)
Received: from gmail.com ([100.104.168.197]) by smtp.gmail.com with ESMTPSA id
 u26-20020a17090626da00b006e7cb663277sm3545470ejc.90.2022.04.25.04.50.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 04:50:14 -0700 (PDT)
Date: Mon, 25 Apr 2022 13:49:57 +0200
From: Ricardo Ribalda <ribalda@chromium.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 18/21] media: rkisp1: debug: Compute max register
 length name dynamically
Message-ID: <YmaK5XHQbKkfH6uR@gmail.com>
References: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
 <20220421234240.1694-19-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220421234240.1694-19-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_045018_190270_370D5339 
X-CRM114-Status: GOOD (  19.17  )
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

> Don't hardcode the register name maximum length (used for alignment
> purposes) to 14, but compute it dynamically. The small performance
> impact isn't an issue as this is debugging code.

Not sure if we want this. Different files will have different alignment,
which will look ugly if we cat them.

Besides that, the code looks correct.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Ricardo Ribalda <ribalda@chromium.org>
> ---
>  .../platform/rockchip/rkisp1/rkisp1-debug.c   | 21 +++++++++++++------
>  1 file changed, 15 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> index 2c226f20f525..28a69323cb38 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> @@ -11,8 +11,10 @@
>  #include <linux/debugfs.h>
>  #include <linux/delay.h>
>  #include <linux/device.h>
> +#include <linux/minmax.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/seq_file.h>
> +#include <linux/string.h>
>  
>  #include "rkisp1-common.h"
>  #include "rkisp1-regs.h"
> @@ -32,22 +34,29 @@ static int rkisp1_debug_dump_regs(struct rkisp1_device *rkisp1,
>  				  struct seq_file *m, unsigned int offset,
>  				  const struct rkisp1_debug_register *regs)
>  {
> +	const struct rkisp1_debug_register *reg;
> +	int width = 0;
>  	u32 val, shd;
>  	int ret;
>  
> +	for (reg = regs; reg->name; ++reg)
> +		width = max_t(int, width, strlen(reg->name));
> +
> +	width += 1;
> +
>  	ret = pm_runtime_get_if_in_use(rkisp1->dev);
>  	if (ret <= 0)
>  		return ret ? : -ENODATA;
>  
> -	for ( ; regs->name; ++regs) {
> -		val = rkisp1_read(rkisp1, offset + regs->reg);
> +	for (reg = regs; reg->name; ++reg) {
> +		val = rkisp1_read(rkisp1, offset + reg->reg);
>  
> -		if (regs->shd) {
> -			shd = rkisp1_read(rkisp1, offset + regs->shd);
> -			seq_printf(m, "%14s: 0x%08x/0x%08x\n", regs->name,
> +		if (reg->shd) {
> +			shd = rkisp1_read(rkisp1, offset + reg->shd);
> +			seq_printf(m, "%*s: 0x%08x/0x%08x\n", width, reg->name,
>  				   val, shd);
>  		} else {
> -			seq_printf(m, "%14s: 0x%08x\n", regs->name, val);
> +			seq_printf(m, "%*s: 0x%08x\n", width, reg->name, val);
>  		}
>  	}
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
