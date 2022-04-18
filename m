Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D537C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Apr 2022 15:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rU6H9TJo9AzGjasgSh2TPJq0B2i3s8Rhp+H4NQrkHqY=; b=0V2t8wlfvmL2gD
	GRXjck+WQmJhL0eqmxNWUSY3DJulJWYWWsG9ghDKFovNwX0pj2zhXvzCZDadI//rZF4qFdHHf9pAd
	eGuhovSS4LJwfHI97oizyi+zoKT7S09iFuC78tnxuFkFhMnnzOTgASCg/oIx/9KPdaK7wZDrv0PaO
	w8wj44fs5vBeyeWgaF559d1dcECb49u+agwIySSYR6RLtEVQFOyCgB4naOt23fxXH4ZrR7l+DfpVc
	Mw2aNNa5GDdzLwHVZZ4JEDox9hrFL0Gm7PAYCnrhfK1DLIrZq+5YSR+AgJsjT05ef+3LZ/p0Rh32k
	i4nxGJ2XUbKDjcUyQSZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngTi9-00HYXt-Of; Mon, 18 Apr 2022 15:54:45 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngTi6-00HYUM-So
 for linux-rockchip@lists.infradead.org; Mon, 18 Apr 2022 15:54:44 +0000
Received: by mail-ed1-x529.google.com with SMTP id t25so17910444edt.9
 for <linux-rockchip@lists.infradead.org>; Mon, 18 Apr 2022 08:54:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=vExbQgWTmo9cdYRjO3lZaZafAOj+3myJ54HYnxwjwJU=;
 b=wuoq961CO62wyGxE5bgeAgujXr7zZQiAQ5NJ7ce4QC79dgFvD2vhmS3tQuQ0jzoarp
 rAlPTLhDe7CAX/VpoRcnBxqvMQfU6In9g+pE9BcRciHJmYL4niuCUA2d+HXs6VQHSJl+
 zZiNnwwYfrfCGkaYVOSESqazWzKQl48myzXFkhAqnlrCUvAFqyEp+saWlcENjnyFhmZt
 lW5n5Fc16/wwCAMqB4k6vzgVq572yFU9vk5K5C2tY3mVAxLuYI5m9S9P7JmUX13ZCKX6
 i9j2JU5yA5jOIURyyBLPevztjcqODsHGgQZ0hrqv4rw/OTNWPRte7UuQfM7lYtW0x0sY
 gHCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=vExbQgWTmo9cdYRjO3lZaZafAOj+3myJ54HYnxwjwJU=;
 b=6IS6ajZAx6ZPogKy5Wrqq0x+MtN11a9Nx2y2T5GQlseUbURpM4gXBbEhxbrG9jm4r3
 e0WwfSFKSoRFEmR08F+7sz4PhA/ifGAkHGNWg8FkC13EnEz26hQGBZa3FuPO2xqIjYb9
 4Bf66m/b6g7HGhqfi0AupUkrmyfP3E+6BNHiDw8EiShusJXrgc/V37+Tj6HIeXEX7Bxp
 h0vg+KCHl/JzRRjd/A+E8n93dsZLEfwF7awsJnbl9YcI1lFVmmSRKXEPgD8Qzw3ZKAVr
 bqvPqXUUWbuHesqIa/4zDTMrh5HYPR6jatz4WlRjzlP6+aj4f8NEfjbD+KRVgPRvWR/9
 jzSA==
X-Gm-Message-State: AOAM532HZe3oGQjxmz7HSJKD284buoIKgNYPuTW8JRNLI9HSlDAQnF1t
 dWbtOobf1mghOf+nM6BKV9eJZQ==
X-Google-Smtp-Source: ABdhPJxOU8XpoJAVWxnURpK73rhpEpQrFHR9tM8mD6DChWAt5Z1BftpA7RiDI3n7wvUfSZnXuXn8mQ==
X-Received: by 2002:aa7:ce11:0:b0:41d:5b84:eecd with SMTP id
 d17-20020aa7ce11000000b0041d5b84eecdmr12739801edv.15.1650297274423; 
 Mon, 18 Apr 2022 08:54:34 -0700 (PDT)
Received: from [192.168.0.217] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 p2-20020a056402154200b0042323822e15sm4584540edx.74.2022.04.18.08.54.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 Apr 2022 08:54:33 -0700 (PDT)
Message-ID: <02b3fe1c-12f9-8f96-a9b5-df44ca001825@linaro.org>
Date: Mon, 18 Apr 2022 17:54:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [RFC/RFT 2/6] dt-bindings: soc: grf: add pcie30-{phy,pipe}-grf
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Johan Jonker <jbx6244@gmail.com>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org
References: <20220416135458.104048-1-linux@fw-web.de>
 <20220416135458.104048-3-linux@fw-web.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220416135458.104048-3-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220418_085443_010739_90B9987E 
X-CRM114-Status: GOOD (  12.20  )
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

On 16/04/2022 15:54, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add compatibles for PCIe v3 General Register Files.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> index 3be3cfd52f7b..ae48b58bd062 100644
> --- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> +++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> @@ -14,6 +14,8 @@ properties:
>      oneOf:
>        - items:
>            - enum:
> +              - rockchip,pcie30-phy-grf
> +              - rockchip,pcie30-pipe-grf

These are without SoC parts. Are these PCIe v3 General Register Files
part of some PCIe spec?

>                - rockchip,rk3288-sgrf
>                - rockchip,rk3566-pipe-grf
>                - rockchip,rk3568-usb2phy-grf


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
