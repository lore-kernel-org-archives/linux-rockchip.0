Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80B95C76188
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Apr 2023 21:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t5QZX+B0YH1Xh73Wtey3BW9O/QgebNJu3QzKiuOrf1g=; b=nU8PLUGZsAY5gs
	u5k8gIXdnbSmI/sNu0BGpLjkYyeq9t/gmhJ0kEFK3qffIVf9BtQ3tZaif4aX7R+smUMFNRrJVFdhi
	ZL5PJDdfF4ZVNDw5YDfrVn069oQQJjf7qGlgTl2VIJRBQcBetTk0EfeF5sXOWQkznsUXjtJ875L6v
	cWXPtsPbtbifREveCjtZ1ActqEKr9ERfEF3Fr7FyuXZ4FxvGKqmWJKAwWNmCbyzfAtQmxg9yZyUYb
	KdciP6Tr8dtGtH/MepwpJAbd26tA3qiBbaDfRnQzxZnGiqw+PQhkiit2hVHp7gYK4i/fSSDua/dXu
	80M5NNocIw06hJf7xftQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjRzg-00Gxil-1f;
	Mon, 03 Apr 2023 21:45:40 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjQxT-00GgE1-2t
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Apr 2023 20:39:21 +0000
Received: by mail-wr1-x42d.google.com with SMTP id y14so30690620wrq.4
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Apr 2023 13:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680554354;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8W33znYIAl2DMyLncbJoqCopj/H6Dvst/McCNbNede4=;
        b=aqN6rHZLCar/09kDSX23dhRO9TE6+zp5ZBhXizjjLoiA2bJ8NgApcvuPz1q2WwsZrD
         2kFRTjggRG1o9yQaYJuN8bOA10f3SiClaNt99XjI5bWqN7GyPlCf+JjsN7om6K3+lRHC
         v58+eBgq6Dy/iUV4YZOdWEWbPIpGUlaii/2QSbIuafUr9uJH1s2VaDHLv2xRug/yB69u
         KQ01ulzTWkt3yGK+I7CRag0Zo/a5tz/L7JFav860fGdUj9GK6wEJ4oxS9j0DANQmBL/E
         8EDSid2M8ryO4aPHomrjVUF97O8amMTeBRrBai12ixdDITAsCMJ/honqoFEZjsXKi0jw
         Owug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680554354;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8W33znYIAl2DMyLncbJoqCopj/H6Dvst/McCNbNede4=;
        b=4fyKaCX61IrAq3bpl9iltonDzA4QGr7vquuqplqxBMKm9mzuaCYBqyIqkxkMsRK7RH
         P6kF5jSvzAaYITUAJuqn42oxQOMM6VkIivj5a+mq7PLx30qR9P6yZuRUGbN0lZ+3ACsB
         URitY+ret+aXIsZGUoOqIOsdvs6AMp58H4xg1s8s33A0uCt7Yw2hcrw4VRx0hd/tuKMa
         vGiAO7aYbc7sVmusWIl/1j/k1Mn2TaXi5t+nsHbayphA7Kz8A5jqutgU8vhc6tzxYbFF
         jO3Y03TKvjHK9V/GOp+oIDaslzwdLT0TSqiNEXT7+kLpHVHk3cV+iDuXvCGq5Ed2Q+RT
         5F2g==
X-Gm-Message-State: AAQBX9e1XGVh9mgrCSMQ8dr3waFD8M9IjLuTrrnMYrJIzYlq+B/UQ7ze
	m3jHGfQ23T7YqCtq97+7loGTJA==
X-Google-Smtp-Source: AKy350YyFexgg+NYJQCh9I/uLB6xaL4WoSYOUrK8XcxLQm3830fqtBhPHXAE9Y7PxeJU7wWXoNVzhQ==
X-Received: by 2002:adf:fa4c:0:b0:2da:75c5:e127 with SMTP id y12-20020adffa4c000000b002da75c5e127mr25515578wrr.23.1680554353766;
        Mon, 03 Apr 2023 13:39:13 -0700 (PDT)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id z6-20020a5d4d06000000b002e6d4ac31a3sm8183664wrt.72.2023.04.03.13.39.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Apr 2023 13:39:13 -0700 (PDT)
Date: Mon, 3 Apr 2023 23:39:11 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: mturquette@baylibre.com, sboyd@kernel.org, abelvesa@kernel.org,
	peng.fan@nxp.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
	kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
	heiko@sntech.de, linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org
Subject: Re: [PATCH v2 2/4] clk: imx: Remove values for mmask and nmask in
 struct clk_fractional_divider
Message-ID: <ZCs5bwy63l8E91AM@linaro.org>
References: <cover.1680423909.git.christophe.jaillet@wanadoo.fr>
 <187a2266c3a034a593a151d6e5e6b21118043b5d.1680423909.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <187a2266c3a034a593a151d6e5e6b21118043b5d.1680423909.git.christophe.jaillet@wanadoo.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_133919_933170_286FA378 
X-CRM114-Status: GOOD (  13.58  )
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

On 23-04-02 11:42:05, Christophe JAILLET wrote:
> Now that fractional_divider clk computes mmask and nmask when needed, there
> is no more need to provide them explicitly anymore.
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

> ---
>  drivers/clk/imx/clk-composite-7ulp.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-composite-7ulp.c b/drivers/clk/imx/clk-composite-7ulp.c
> index 4eedd45dbaa8..e208ddc51133 100644
> --- a/drivers/clk/imx/clk-composite-7ulp.c
> +++ b/drivers/clk/imx/clk-composite-7ulp.c
> @@ -19,10 +19,8 @@
>  #define PCG_CGC_SHIFT	30
>  #define PCG_FRAC_SHIFT	3
>  #define PCG_FRAC_WIDTH	1
> -#define PCG_FRAC_MASK	BIT(3)
>  #define PCG_PCD_SHIFT	0
>  #define PCG_PCD_WIDTH	3
> -#define PCG_PCD_MASK	0x7
>  
>  #define SW_RST		BIT(28)
>  
> @@ -102,10 +100,8 @@ static struct clk_hw *imx_ulp_clk_hw_composite(const char *name,
>  		fd->reg = reg;
>  		fd->mshift = PCG_FRAC_SHIFT;
>  		fd->mwidth = PCG_FRAC_WIDTH;
> -		fd->mmask  = PCG_FRAC_MASK;
>  		fd->nshift = PCG_PCD_SHIFT;
>  		fd->nwidth = PCG_PCD_WIDTH;
> -		fd->nmask = PCG_PCD_MASK;
>  		fd->flags = CLK_FRAC_DIVIDER_ZERO_BASED;
>  		if (has_swrst)
>  			fd->lock = &imx_ccm_lock;
> -- 
> 2.34.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
