Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73D8BC43334
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Jun 2022 20:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AqM2pTrcay/1Nm2kos1cMCjckYNJ1kc/Zgm/FLWAaD8=; b=zuZUruHq85hP7U
	ZJaqLIi2vEPT9CRtURAhm7/J4rHlNKyjV3m8yLggRpHqxu8UBYb2Zusb58W/EpNyM61qsdyX4oW1s
	BaIccPysoBppx/y9ebjeoyAu+deKOpwS8O6NEcsULtarowdP+g8U4wgiVa4D6wqjUV/Nwvp+Pmhtu
	z8W2qkL5RmPPgcYHYaI7VQUxiajDuTDm6zVAPRjmjiDaJhsGeUM35UUFziFKX9Da9GE1DnjP1IohM
	9IYRNT5mb33kWZl0b6/IqOsJuP7ojqblTIjH9gN7jMnlA3n4klOK9KxbDarTtEpkAKKjQl3avxbrk
	ybhAQ3EYKqEgnZ8UJaDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5YiH-00DQrB-3q; Sun, 26 Jun 2022 20:18:33 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5Yi5-00DQmL-WC
	for linux-rockchip@lists.infradead.org; Sun, 26 Jun 2022 20:18:23 +0000
Received: by mail-ej1-x62f.google.com with SMTP id d2so3254669ejy.1
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Jun 2022 13:18:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=lnbF1fjC+JvjJ15dVinDZNgoh7EJaSVwGaKHW7o0wZ8=;
        b=wW32Ek+GuFD9uwHEGLBbT+0C8MIBVLar4kXtsEkBF64mra8w7rqkWRoVkPW/k8YU/H
         7M6WNL+0rAWa40wnTM5rB+KaD/HyXE5dCJilu7P1YZAd2lyR9TzMvTjHZsufmasYkLaY
         LCOR4F1tuzGnIP7lEm//+/rqZDxzOjO5v5H97H4ZPYDQIgfOUEnmtO77oth0Jy5rp9Xx
         1M7QFSezlIsfPunkRVIiDUri06hnezyGcjJLtOZR8st+nTNaLCtXHjz040qrgFPfOMd6
         hGZWE/dx9EfCKwcqmcLT0/ogb8vOicAvxZlDbhI68G6x1BKjReBIM75XoYYc7of9jXi4
         qyfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=lnbF1fjC+JvjJ15dVinDZNgoh7EJaSVwGaKHW7o0wZ8=;
        b=CYevvY+AW0ZXjdRoxA8rOmIK68sdRg9/SOyj6RkzEhU7Ywyvyy2iMZ3m1dDHfyTP9z
         TG9ExKnnuQ98ILDhYOC42ojloYcboNuhY/uoOwX6g4RwwtYEshXYoKPClOvpl0HnvnXv
         QV+H0dkfkzucRA1y8b+p8IgOvWYxtOyIW/OvD/g3xabq/GBXcc1irFifYwm+Nlk712Et
         3isznOd1S+HVZJY0Bx4MH4Iho6gS2YLCMrRuxJyg9hv706ssz4I1BN87xj61islehThK
         cEEGQQUipwUT6sKZUxS4LlLlBV9e7k5qsrX1l1RcwNhGz9F6zEU6a9Cbd+a6B8m0q/GW
         2h+Q==
X-Gm-Message-State: AJIora/SFa7oq9/w0uXXJfuo1r5UjLQhS0Zs+YIWUQuW6MWTHrbRSZhB
	HeMubzEWuV80eRDDPNnGUsPT1Q==
X-Google-Smtp-Source: AGRyM1v0yaNtAV+Id57QV3yP/7C35VegUiMHZ3SK4snewZleCVTI+jGXtu3/rbJCqSl6AXK/2njUDQ==
X-Received: by 2002:a17:907:3e81:b0:726:9615:d14d with SMTP id hs1-20020a1709073e8100b007269615d14dmr5276783ejc.517.1656274699878;
        Sun, 26 Jun 2022 13:18:19 -0700 (PDT)
Received: from [192.168.0.245] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id c20-20020a056402101400b004358cec9ce1sm6402929edu.65.2022.06.26.13.18.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Jun 2022 13:18:19 -0700 (PDT)
Message-ID: <4fdcb631-16cd-d5f1-e2be-19ecedb436eb@linaro.org>
Date: Sun, 26 Jun 2022 22:18:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 3/3] dt-bindings: net: rockchip-dwmac: add rk3588 gmac
 compatible
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com
References: <20220623162850.245608-1-sebastian.reichel@collabora.com>
 <20220623162850.245608-4-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220623162850.245608-4-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220626_131822_063880_82A1330D 
X-CRM114-Status: GOOD (  13.82  )
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

On 23/06/2022 18:28, Sebastian Reichel wrote:
> Add compatible string for RK3588 gmac, which is similar to the RK3568
> one, but needs another syscon device for clock selection.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 6 ++++++
>  Documentation/devicetree/bindings/net/snps,dwmac.yaml     | 1 +
>  2 files changed, 7 insertions(+)

Rebase on some new kernel tree, you use old Cc addresses.

> 
> diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> index 083623c8d718..c42f5a74a92e 100644
> --- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> +++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> @@ -25,6 +25,7 @@ select:
>            - rockchip,rk3368-gmac
>            - rockchip,rk3399-gmac
>            - rockchip,rk3568-gmac
> +          - rockchip,rk3588-gmac
>            - rockchip,rv1108-gmac
>    required:
>      - compatible
> @@ -50,6 +51,7 @@ properties:
>        - items:
>            - enum:
>                - rockchip,rk3568-gmac
> +              - rockchip,rk3588-gmac
>            - const: snps,dwmac-4.20a
>  
>    clocks:
> @@ -81,6 +83,10 @@ properties:
>      description: The phandle of the syscon node for the general register file.
>      $ref: /schemas/types.yaml#/definitions/phandle
>  
> +  rockchip,php_grf:

What does the "php" mean?

No underscores in names, hyphens instead.


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
