Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76BCFE7D26B
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Sep 2023 08:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X+LIE0V3wwbdPokDHrpUPBgt77gw3ECEKnoPfyZcfkc=; b=Myu/8nSE6+u65F
	XisYD0CBY8G9FXZRnXPbjqNVUFogq6bMvFiUOkzTWQ5PAx+0XcSzp5ASjezo7o1ZO6aPyVi6OKFM7
	THUyoj7jqNS8E0PzvkIF5hO7UsLyQoVnvuy9jCNWs3yNBCULwPXUvjpmj1gaUUAto7WCluM4IpSv3
	mBkyC2FzIslczq4ggbAWammeriwvSKp32B3NjxbKoahUWoZLqprVe1N4HJnbxfNa4kJ0nLf2nqF6C
	5C4ayUolsFd0C84y7+ds2RCSIfVpW9ONU80WTdoYb/0DzGB4AmM6RuhXY8fLE7vt4DqcVEycHrncL
	ClJ+1J/GmynaI4yvwYuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ql3ur-00FvAl-2Q;
	Tue, 26 Sep 2023 08:59:37 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ql3uo-00Fv9V-0D;
	Tue, 26 Sep 2023 08:59:35 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2c16757987fso50187721fa.3;
        Tue, 26 Sep 2023 01:59:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695718772; x=1696323572; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RDxyIanx1EgUP6RwXNa3/gfvrl1yPz037Py9AOoQmr8=;
        b=ZSFSKy4rkI1u9mE6yyOzRijCCp1E5d0nmU+6KIQbfKwTVdzRImx8igUk01DXOeyRHc
         43LjECTb/OH2oucTSM+LuPQ5ldSJLLsPJ5ME7ey5WiZLUQ3SRcCq97IOybd1ZHZsqIjZ
         BmD/ITTwzkkvtqGuoXUbJOeul5OBMCVGJ1OfrjaK0hvI3A5DIBXMNsAE5U5ZFdYf+nbi
         ZrdXa5ZDPifEU8sMe5A4huokxJ5YAzQ84ARcosDxvCF/KBcr1Xi78K3aqKa0gJOBjPBl
         QURzc8+/e66Gg3MGrn6TpCWFSCi5ImroA4S/mH0RV0k1a9i0mpuIwUcUTHUNERCWMcYM
         YKwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695718772; x=1696323572;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RDxyIanx1EgUP6RwXNa3/gfvrl1yPz037Py9AOoQmr8=;
        b=Y8Mbi6w2Smxz/353a3Gcs0LqRJRlXe/O7Vwu4rHsyl3a0KFcdUA99u8ZjKai8gJusw
         PeR3b71GtNEpEMpf1v6YEcdTGvOFLXLL+lTAs2EJL6MhRmpZS8ooNEf/uxc0JkDAq7ai
         6Dx/b2vM/PnRgIDECPZIZSFFDYAKp7afGCiGG4KXJL3xmek1ylcgjzdTuHUsKCw0BRDz
         /55/iGxMJUtwqfqSodaNJNZVVXNc/Rp+qEX2WIsGTE3nYabgSyJ0M8GOL9pC4WiwnW+1
         4I4BVwXdBNahmRVkTcfx1ELUMplle3dQhnDif0BsVVUU4/gwpGkevncVnEkUtJJXB5I1
         9NnQ==
X-Gm-Message-State: AOJu0Yx8J6+GhgBqsvjyUSTNzgtFr3Vd0KXEma8OF1efEopFic//RHYF
	eYncLmHMA4xFzQU+PbaLu04=
X-Google-Smtp-Source: AGHT+IFcY99Qsw63+nqFSyAl4/ZRgH21dvMnWnaxUZA3NccBZXaLNtFD9rYkablw31Fpuvzev55HJA==
X-Received: by 2002:a2e:964d:0:b0:2bf:f9b3:d335 with SMTP id z13-20020a2e964d000000b002bff9b3d335mr7914172ljh.15.1695718771564;
        Tue, 26 Sep 2023 01:59:31 -0700 (PDT)
Received: from mobilestation ([178.176.56.174])
        by smtp.gmail.com with ESMTPSA id t6-20020a2e9c46000000b002bcda31af28sm2552580ljj.42.2023.09.26.01.59.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 01:59:31 -0700 (PDT)
Date: Tue, 26 Sep 2023 11:59:28 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Heiko Stuebner <heiko@sntech.de>, Maxime Ripard <mripard@kernel.org>, 
	Chris Morgan <macromorgan@hotmail.com>, linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] spi: dt-bindings: Make "additionalProperties: true"
 explicit
Message-ID: <666tt3bztep2zapk7o7h2psx32z53leitd4sm6xicxlhxhf4pv@vm6e32xszxq2>
References: <20230925212614.1974243-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230925212614.1974243-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230926_015934_471422_19179A4C 
X-CRM114-Status: GOOD (  15.75  )
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

On Mon, Sep 25, 2023 at 04:26:00PM -0500, Rob Herring wrote:
> Make it explicit that child nodes have additional properties and the
> child node schema is not complete. The complete schemas are applied
> separately based the compatible strings.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>

For the DW APB/AHB SSI bindings:
Acked-by: Serge Semin <fancer.lancer@gmail.com>

-Serge(y)

> ---
>  .../devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml        | 2 ++
>  .../devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml        | 2 ++
>  Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml | 1 +
>  Documentation/devicetree/bindings/spi/rockchip-sfc.yaml         | 2 ++
>  Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml      | 2 ++
>  5 files changed, 9 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml b/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml
> index a6f34bdd1d3c..e1ab3f523ad6 100644
> --- a/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml
> +++ b/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml
> @@ -46,6 +46,8 @@ properties:
>  patternProperties:
>    "^.*@[0-9a-f]+":
>      type: object
> +    additionalProperties: true
> +
>      properties:
>        reg:
>          items:
> diff --git a/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml b/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
> index 28b8ace63044..3b47b68b92cb 100644
> --- a/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
> +++ b/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
> @@ -68,6 +68,8 @@ properties:
>  patternProperties:
>    "^.*@[0-9a-f]+":
>      type: object
> +    additionalProperties: true
> +
>      properties:
>        reg:
>          items:
> diff --git a/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml b/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml
> index 9ae1611175f2..48e97e240265 100644
> --- a/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml
> +++ b/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml
> @@ -50,6 +50,7 @@ properties:
>  patternProperties:
>    "@[0-9a-f]+$":
>      type: object
> +    additionalProperties: true
>  
>      properties:
>        spi-rx-bus-width:
> diff --git a/Documentation/devicetree/bindings/spi/rockchip-sfc.yaml b/Documentation/devicetree/bindings/spi/rockchip-sfc.yaml
> index 339fb39529f3..ac1503de0478 100644
> --- a/Documentation/devicetree/bindings/spi/rockchip-sfc.yaml
> +++ b/Documentation/devicetree/bindings/spi/rockchip-sfc.yaml
> @@ -47,6 +47,8 @@ properties:
>  patternProperties:
>    "^flash@[0-3]$":
>      type: object
> +    additionalProperties: true
> +
>      properties:
>        reg:
>          minimum: 0
> diff --git a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
> index a47cb144b09f..6348a387a21c 100644
> --- a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
> +++ b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
> @@ -160,6 +160,8 @@ properties:
>  patternProperties:
>    "^.*@[0-9a-f]+$":
>      type: object
> +    additionalProperties: true
> +
>      properties:
>        reg:
>          minimum: 0
> -- 
> 2.40.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
