Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33C61C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 20:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mrQkhgibWo0BwxgG591YaZmLUOzHywS55eDrAVMQcm8=; b=oH7QGo3zZqQOgX
	msPV3ZQwDLKk1V6/D/PBFXsdm/hdS86o9uHgYdSMt6Vjcykm+/0yiHgB+gFGxmHQn2NnDc1mJsU4j
	pWAaEkr0eghWWbtHobGWxGw4rETokwSpds+as0dtqHNpuUaBYNQqO3oJdHE0sdEfhxaPSRmmKqzmu
	grMoH/Bz1H+WLTXmwPbepi1/UbSeRPM5j2x/7tpOBkcWxOAyJwCx/ILPwmzN6hxy2slTnFyc4evF5
	ZWx+M6y/hjYBznMuYBTkPhpyo+r/thkogm0xc0KSOYWRl2k8mpAo9+aqQqivO8fhVBml8lU3syGtW
	ZNj2qn+bT7rAiGLXpZUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1wGy-004Bj9-5s; Thu, 16 Jun 2022 20:39:24 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1wGv-004BhR-GV
	for linux-rockchip@lists.infradead.org; Thu, 16 Jun 2022 20:39:22 +0000
Received: by mail-pj1-x1032.google.com with SMTP id k12-20020a17090a404c00b001eaabc1fe5dso2831311pjg.1
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jun 2022 13:39:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=pkTlqBCv4kkUBzXfdE69AlbwDzWnDXPmq1X/ctwZ1RI=;
        b=ROZn+y/7o3WKT8p5stMPNJszpKJne4D3/Za9voE4D9qs7VwnFgZTseD6+HxsBnKHov
         rlTxbyYs4W0Iquvo4qHE70ivqOFlD9BOvwBoC+2PAKOw5Li1rI5SuWzQIMoZoQdgMPQQ
         xeKSWDr237Bfr3p2GiCiYStFm/NkPc/o4cp4Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=pkTlqBCv4kkUBzXfdE69AlbwDzWnDXPmq1X/ctwZ1RI=;
        b=hhN3tTsFgoB0W7heobKYtSIYBrGzJeyWLkGCs0JSZE+dGoKLrCV3sZNPUPTjgfKqWF
         wiZCytcx5rFPobUkneBwqXilbEKwJ9r/NJ7YYIUaC6TlWRrv3ebjtl5Sb/iPFl86Z91Z
         QuuGXQZpLKHnNYVlWmw0XbP+epKx5TFt7WY30k8LK++S0ovLLbKDOKmtvwZLSzl8EW2d
         2jmIbBmAf0uu5ByYZZPApQ9zZ053pZWegf4b6kRjEmx0IxTyZ3X7RLrFHX5smAOebyPR
         5M7cCimuYi2s3s9yelBjXMGlVw4t+/mY/NlO9ciPzJzh14oI9Hwta0XruC296EQaZUxO
         9gHQ==
X-Gm-Message-State: AJIora+672YiQkQmYRbY4lP6PG0LGCozgmE0iksQa/YCX23kLwbh821o
	m0pyuNwNVIPpIMe42pqYNfN4RQ==
X-Google-Smtp-Source: AGRyM1uRzdYi2h3WMgzsyG09F2s9/Uo4CiVLNg4n/tohSEwV59gL8BG6VgxVEBMNWkC3PEFczoXGPA==
X-Received: by 2002:a17:902:a609:b0:169:a8b:7c3c with SMTP id u9-20020a170902a60900b001690a8b7c3cmr3281133plq.67.1655411957916;
        Thu, 16 Jun 2022 13:39:17 -0700 (PDT)
Received: from google.com ([2620:15c:202:201:4709:a407:1ca6:24ea])
        by smtp.gmail.com with ESMTPSA id jh17-20020a170903329100b00168b9093a06sm2038204plb.243.2022.06.16.13.39.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 13:39:16 -0700 (PDT)
Date: Thu, 16 Jun 2022 13:39:14 -0700
From: Brian Norris <briannorris@chromium.org>
To: Judy Hsiao <judyhsiao@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>, Chen-Yu Tsai <wenst@chromium.org>,
	alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] ASoC: dt-bindings: rockchip: Document
 pinctrl-names for i2s
Message-ID: <YquU8hN+9ETu8tB2@google.com>
References: <20220616155836.3401420-1-judyhsiao@chromium.org>
 <20220616155836.3401420-4-judyhsiao@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220616155836.3401420-4-judyhsiao@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_133921_603839_02683963 
X-CRM114-Status: GOOD (  16.04  )
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

On Thu, Jun 16, 2022 at 03:58:36PM +0000, Judy Hsiao wrote:
> This patch documents pinctrl-names for i2s.
> 
> Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
> ---
>  Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
> index 5ea16b8ef93f..af1069278623 100644
> --- a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
> +++ b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
> @@ -61,6 +61,13 @@ properties:
>            - const: tx
>            - const: rx
>  
> +  pinctrl-names:
> +    oneOf:
> +      - const: default
> +        - items:

I'm far from a YAML expert, but I think you have the indentation wrong?
You want the "const: default" and the "items:" schema to be on the same
level of indentation, right?

If you haven't already, you might run through the 'make
dt_binding_check' process.

Brian

> +          - const: bclk_on
> +          - const: bclk_off
> +
>    power-domains:
>      maxItems: 1
>  
> -- 
> 2.36.1.476.g0c4daa206d-goog
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
