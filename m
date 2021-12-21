Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7C29C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Dec 2021 14:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CiQG519Jlsc+mluItvLCgL3YYXG+yHSPduO2VOmoVXw=; b=aa117czD/ZLKsR
	r4jZVeOAObA3ucpb0vBLVxjhNEbopSARsIGYhNBTq6UgtlsIaGETlBWJNDTmUG0Dkez/x12jVfcsw
	/jTxf7UO0l1+bfOZTaUjUekMtvS/rGhWzZFqGAa8a8ocUJF1m/BQ9tZn9diFfm96IBCawb6XYsfS8
	ymzl+Rb7ks1QuTDCplvurZuoMbLGiVxDEgPq+hERfH9iVbemO873uM8oji8aaeREn0jg9Irl4+aMa
	tSs+hOcNxnQUfBb08gdkyFolN9KPXUgfLMfjMENjaUpIOcg+Goam/zJu68V+7d6quSr5lE89J84MW
	l/DM1pWirFM/fHKKkrqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzgB6-0078Qu-JB; Tue, 21 Dec 2021 14:31:44 +0000
Received: from mail-qk1-f175.google.com ([209.85.222.175])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzgAr-0078N3-2J; Tue, 21 Dec 2021 14:31:30 +0000
Received: by mail-qk1-f175.google.com with SMTP id f138so1228517qke.10;
 Tue, 21 Dec 2021 06:31:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZCiw0bZKYIpEoDjhVNnDiHVYSk1x/IQUJgn5e6PHxuI=;
 b=jz5jvQQoMfeV2tYsjdYdGb0mbYd4Vi6+FQIyuVE4MO7AU1cXNZhrP0yrYURhU381YQ
 GaaAoloQRteGMFJfrnL1Dam13kNBuRcDZjaCJ/Hx7S8M3jyxN1zWu/LmC9YzvBS9UaHP
 MSFc+Ek9Nn+Dh08FC4HkIjbdVcjuMsnqBbzjqM/EdC4T/pzTjL35fFozA2emKUAU5eDx
 +xnQ/DGcgQ885/VHjSONjU1rQFwX91qsRAvYkBBCIwRGrp+w1krj/MAifvUfhCfRJKaL
 rCjGWgzKGsQ15IQCbIRt2daAr97wMwjRKn4O4LGVK5fK7yl1mgkZXwyLUkF8k1v7ALBl
 46ig==
X-Gm-Message-State: AOAM531kApamug0Uu0HmXmbjdvlxMScyW7KUscHTI2subQWP/5NpLZgz
 vluX1ZdqPaaMmMJKw2uhH/6HAzUhj1gI
X-Google-Smtp-Source: ABdhPJwbiZg2cLWCqLWG6kO5T5YieBNWdxELfhYlFtD+O7MYmC3zikpr/lWeCSO3xNhRskwxyCeFrQ==
X-Received: by 2002:a05:620a:470e:: with SMTP id
 bs14mr2147958qkb.210.1640097086038; 
 Tue, 21 Dec 2021 06:31:26 -0800 (PST)
Received: from robh.at.kernel.org ([24.55.105.145])
 by smtp.gmail.com with ESMTPSA id f8sm17586444qtk.1.2021.12.21.06.31.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Dec 2021 06:31:25 -0800 (PST)
Received: (nullmailer pid 1358250 invoked by uid 1000);
 Tue, 21 Dec 2021 14:31:23 -0000
Date: Tue, 21 Dec 2021 10:31:23 -0400
From: Rob Herring <robh@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 08/22] dt-bindings: display: rockchip: dw-hdmi: use "ref"
 as clock name
Message-ID: <YcHlO/m/tGEEMnX9@robh.at.kernel.org>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
 <20211220110630.3521121-9-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211220110630.3521121-9-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211221_063129_159329_3D5A7738 
X-CRM114-Status: GOOD (  20.12  )
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

On Mon, Dec 20, 2021 at 12:06:16PM +0100, Sascha Hauer wrote:
> "vpll" is a misnomer. A clock input to a device should be named after
> the usage in the device, not after the clock that drives it. On the
> rk3568 the same clock is driven by the HPLL.
> To fix that, this patch renames the vpll clock to ref clock.

The problem with this series is it breaks an old kernel with new dt. You 
can partially mitigate that with stable kernel backport, but IMO keeping 
the old name is not a burden to maintain.

And given RK3399 is widely used including by me, we should not be 
breaking compatibility.

So allow for ref in addition to vpll if you like, but only use 'ref' for 
new users. And add a comment in the schema to that effect.

Rob

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../bindings/display/rockchip/rockchip,dw-hdmi.yaml        | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> index 6e09dd2ee05ac..3b40219e3ea60 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> @@ -47,11 +47,12 @@ properties:
>        - enum:
>            - cec
>            - grf
> -          - vpll
> +          - ref
>        - enum:
>            - grf
> -          - vpll
> -      - const: vpll
> +          - ref
> +      - const:
> +          - ref
>  
>    ddc-i2c-bus:
>      $ref: /schemas/types.yaml#/definitions/phandle
> -- 
> 2.30.2
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
