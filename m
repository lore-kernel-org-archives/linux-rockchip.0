Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C659C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Aug 2024 11:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Atpo78A4zqr3ypcMEruXZO0SIL327TiByQu25OZC0ck=; b=H6QbfndQpodHM6
	j0UeTaGc6NEUbeH2mJIfdoQ2LZRHfFJwLHh3QgH8toFSVXGl7eUuHcpqP3Ke6AhYDB25ZL705xtpC
	y0XKnLIpQMrFG5l5gM6d8QLJtMOKRA1kLHzvTkJXkyA3vbOvG0fHSDcZjVBVWJfq8EK+/YCS2MSB3
	c+IZ6wOjpYyx90hINa+sImMqB9MCEFZcAnYGvgacA/KakLRjZAw3//QebYul07wsrHNc1C/TxsfIi
	4CSZ2romxPP8A6dwTIU5QCsSCbxcO6O3mr0jNlAlHZhot494nkGXH4cinHG8S/lWL/LNzZd/G/fMZ
	XfQvEKcU/tNamtXsv5UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg0hM-00000001FKW-3iQH;
	Mon, 19 Aug 2024 11:37:20 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg0gf-00000001F92-0Iau;
	Mon, 19 Aug 2024 11:36:38 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-530e062217eso5589910e87.1;
        Mon, 19 Aug 2024 04:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724067395; x=1724672195; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=78zmWX1R2MuUu3oiZjb6yXmGNi5evk9tkG6fthqDCQk=;
        b=RmRJ/Gx7DDn6qSUcBbcDwK9Fl8r7EuU0BgcecVs1+ypMnqp7uoGxfLTmHLQj1j2gkq
         jkwFl5ajtnmDMqMY4VB6JpH8MtEjC75xQKuTFRu2Twtu2Y06kSgD/b29p11CD/z6uJZD
         P2mdqKHbi7Y9dR/Wvonr8kMQ6jhEfT4wXFjtTJpzW0d86y/Vg/U8V+IRGD2hZ47VJ5+3
         nvB6WdzjtsbqNYq3jzJjGHUFinflXDcSI8T/xeyQs/CRaabdMPT4wgg2B5MEJ0Ml7yTP
         IscSCMgqQWdlaVHt3il8gVVGjzLlGZwcVXyheCcNNOitkBUw3Silekua3hOyA16v2ngm
         Kf+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724067395; x=1724672195;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=78zmWX1R2MuUu3oiZjb6yXmGNi5evk9tkG6fthqDCQk=;
        b=PMgSAEC7GWEgcG9KeeBhkpI7zlYEatBxrNsmLyG7l7V0rG+EpbiUU6AObP1GWSkIwh
         52E1BI25WqCA1IJsrqieP2SVpwMGkGU8sGWhGB4S6enn2qiMoEInqlmr/Ccoyh3jPxL7
         R3Asc0FKBJTudHagFs4yOna/osD1DE6sdR/0LBHbSvNtg6efBd1LC3G57DbREuTV50cz
         d2Uk9J8gBhK2KFg+crGAAW8/AL/92CGyTDoHSS1m5LiHxSCOJj5LzwM6n+YMnopwi9cQ
         Jn0AmkDl9LqRVipAJMZ0CKAwu3XovkBvQsU8SNcUieUjqCuSizQpZ7HD0qM5B1riHo92
         QsRA==
X-Forwarded-Encrypted: i=1; AJvYcCU0oFBlG7z/edyXmfS2N6l2c7T93CTE9mIrviecwcxVnSIyjRooNX93H9f3bmRKV2d9jDKrqMrRifX5dccNTDSz@lists.infradead.org, AJvYcCXl67r2jPJExmUSFQABcQIcacmz6kCWlGu579bxDvZYCSzFeOD9wPErzIzrT9KyyhmNJ1QvrLmNyAVRkbBFd4Q=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw2dipZJkxJIQJlb9drZDznCsW4BcHXLyUnGDc/B34sx3ZRtXVh
	p9pjk9mPxzEpGXKF1rWDZVpMhso/PDuO7jPXPL7nnXrlAkSRGzX5
X-Google-Smtp-Source: AGHT+IGke4g9LG82CUNKo1MIdeBQBLiC7DEdwsR4e5fBnnlRlr1KhhwfUBeUlTP2WItRZy2ABzDO0w==
X-Received: by 2002:a05:6512:1096:b0:530:daaa:271c with SMTP id 2adb3069b0e04-5331c6a1a7bmr7372071e87.16.1724067394331;
        Mon, 19 Aug 2024 04:36:34 -0700 (PDT)
Received: from mobilestation ([178.176.56.174])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5330d3afc45sm1469525e87.44.2024.08.19.04.36.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2024 04:36:33 -0700 (PDT)
Date: Mon, 19 Aug 2024 14:36:31 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Charles Keepax <ckeepax@opensource.cirrus.com>, Richard Fitzgerald <rf@opensource.cirrus.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Heiko Stuebner <heiko@sntech.de>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Magnus Damm <magnus.damm@gmail.com>, patches@opensource.cirrus.com, 
	Elaine Zhang <zhangqing@rock-chips.com>, Gabriel Fernandez <gabriel.fernandez@foss.st.com>, 
	linux-mips@vger.kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH 1/5] dt-bindings: clock: baikal,bt1-ccu-div: add
 top-level constraints
Message-ID: <iszw753okcfn6nximo3rovz7plbeo6yrcaoai7mb7x5blmiilw@kean47lp6ipv>
References: <20240818173014.122073-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240818173014.122073-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240819_043637_134515_99678AEF 
X-CRM114-Status: GOOD (  15.88  )
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

On Sun, Aug 18, 2024 at 07:30:10PM +0200, Krzysztof Kozlowski wrote:
> Properties with variable number of items per each device are expected to
> have widest constraints in top-level "properties:" block and further
> customized (narrowed) in "if:then:".  Add missing top-level constraints
> for clocks and clock-names.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Serge Semin <fancer.lancer@gmail.com>

-Serge(y)

> ---
>  .../devicetree/bindings/clock/baikal,bt1-ccu-div.yaml     | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/baikal,bt1-ccu-div.yaml b/Documentation/devicetree/bindings/clock/baikal,bt1-ccu-div.yaml
> index bd4cefbb1244..30252c95700c 100644
> --- a/Documentation/devicetree/bindings/clock/baikal,bt1-ccu-div.yaml
> +++ b/Documentation/devicetree/bindings/clock/baikal,bt1-ccu-div.yaml
> @@ -134,9 +134,13 @@ properties:
>    "#reset-cells":
>      const: 1
>  
> -  clocks: true
> +  clocks:
> +    minItems: 3
> +    maxItems: 4
>  
> -  clock-names: true
> +  clock-names:
> +    minItems: 3
> +    maxItems: 4
>  
>  additionalProperties: false
>  
> -- 
> 2.43.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
