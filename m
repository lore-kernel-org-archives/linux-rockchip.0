Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD3B4C54E58
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Mar 2024 08:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GqMJ0icRbP3Q91apMZBjIO0NRe6aenviB4Y5gwTiAsw=; b=2deVCuKTjyR7Rn
	9BKESLaES5PB1G7eKqXkVU44YN/TS4y5U6qaRJajeMOEUfdeTDR9JGBOjRvhhXMF0ilKeKL4S4wWy
	UPbyJOemq0OxXCVVFV6i8VNTlRXGe2Ry6DMAOgNV0X1b9NqFvdI7LcIiAiclXDaG3gH3Pgiszwfu0
	MeWopyS6nP+YhHvCnEJh7nKD+rWOWc1obv9tutz67ghK6RuB0saXTM0I2Q5Mbz9WMRltovgY7LZrS
	q5+eohLpdylvd8B3pNygwz6pGB8lU8tp8UurkIFq4/u/vLcNfo8/spc4bkdfnxBtL/k0DhitwE2f+
	qQh4if91hQUguH/lkVvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnDZy-00000002Gxw-3qF9;
	Thu, 21 Mar 2024 08:15:14 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnDZf-00000002Gjs-3Ux7
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Mar 2024 08:14:58 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-a46dd7b4bcbso87409166b.3
        for <linux-rockchip@lists.infradead.org>; Thu, 21 Mar 2024 01:14:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711008894; x=1711613694; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=bumbK4Iq37XZI7PAaRcKjKb4r9QAOyHdGVrz+smI1ho=;
        b=Figtj9TCpZPvzTuo+JubQmRh6cuLJHILNUQzA9FA0XcAr7qvFSO6GkHTQz0fv2VEg+
         XwoGcFy1uBSVddaxnrFz9QlqSmyWdQrMFEShT9KYBwh0tcbbGn1GFKfhSu9cca42Rs+E
         Dxl1wiTeY1RKv2rIjLtWkeyYvhU3ed+j4gKIzyn/Q/bewLLVgHQ3QC/NTXc5xLmbheie
         MkBLICkwkYmA86ramon0OT0xrD8swlnByMz5Nu/Kko26O1+OGOi1Q0D+atiPDecdfZEO
         zpQ++8k6AmmmUHdpJd6bhJcorPfaeLpWRbKZUjvBjoWGo5/MqPJT+wqR4Ltg19/OGX8R
         k+nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711008894; x=1711613694;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bumbK4Iq37XZI7PAaRcKjKb4r9QAOyHdGVrz+smI1ho=;
        b=pseKkVb97+5M//9tkqyKc5F+nPcGfvTiMbSweX3DyUbuSQu8Ktj7YUcyJE2LE9w2pI
         QtMkUoLZq0nEc7mtULtQs7KqijpNxqbJow5tn4hKNUqgz3jZHgytw0tTjxlZ4acumoOR
         n6l3HEoFZs3Cz8m2+DJMIXVqunXytn43P4EQRa7i7DIH7WazVJVK+Dxsubtua/PB6S15
         CBbWjF6xUPJGAsBMITvAHZRieJpQaMve1QgLKsEV5iRNwTLNjPKzpcnA+7qDjhSLkolc
         H5yfHG0m15XcXAYKY4pUBOtJxKJKMl7lY7qBLOivWMhI/0AYqgzua9loqzCFD7gVF5pO
         JJTw==
X-Forwarded-Encrypted: i=1; AJvYcCWu7pxxaPbIwAH5rDO6x4DBz2KzGlIPjsRT/55iUXdqLKay3TOE7nL/pV6bafOWYgerCAPyayrLVSFWWzrDSCsmKqhOA9+buxUeadV54u7H9z2E
X-Gm-Message-State: AOJu0Yzev+oAKzPhFi3MbqrwSyoujQYyuBwmfyP83iqmJ7mCQco/z0Hg
	lUUWV/ao+Zh5JeVXuFKp2DJDFJXGCSC0AFlKE9ZW0MgyjU3mk+6AROgC24CERlw=
X-Google-Smtp-Source: AGHT+IHnQrPGnZT2/iidhGyn8HX5rcqqkqaLrfSr6V+AeAqqQrXxfQKRJGbNVs83QEsinhw56m91Kw==
X-Received: by 2002:a17:906:2cc7:b0:a46:2e1b:a11f with SMTP id r7-20020a1709062cc700b00a462e1ba11fmr718296ejr.31.1711008894227;
        Thu, 21 Mar 2024 01:14:54 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id en6-20020a17090728c600b00a465a012cf1sm8283979ejc.18.2024.03.21.01.14.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Mar 2024 01:14:53 -0700 (PDT)
Message-ID: <4c05d3c0-aa79-4ce0-918c-7d0967ace520@linaro.org>
Date: Thu, 21 Mar 2024 09:14:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?Q?Re=3A_=5BPATCH_2/4=5D_media=3A_dt-binding=3A_media=3A_Doc?=
 =?UTF-8?Q?ument_rk3588=E2=80=99s_vepu121?=
To: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>, linux-kernel@vger.kernel.org
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Dragan Simic <dsimic@manjaro.org>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Chris Morgan <macromorgan@hotmail.com>, Andy Yan <andy.yan@rock-chips.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux.dev
References: <20240320173736.2720778-1-linkmauve@linkmauve.fr>
 <20240320173736.2720778-3-linkmauve@linkmauve.fr>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240320173736.2720778-3-linkmauve@linkmauve.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_011456_042883_D9859D78 
X-CRM114-Status: GOOD (  11.45  )
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

On 20/03/2024 18:37, Emmanuel Gil Peyrot wrote:
> This encoder-only device is present four times on this SoC, and should
> support everything the rk3568 vepu supports (so JPEG, H.264 and VP8
> encoding).
> 
> Signed-off-by: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
> ---
>  .../devicetree/bindings/media/rockchip,rk3568-vepu.yaml          | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml b/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
> index 9d90d8d0565a..947ad699cc5e 100644
> --- a/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
> @@ -17,6 +17,7 @@ properties:
>    compatible:
>      enum:
>        - rockchip,rk3568-vepu
> +      - rockchip,rk3588-vepu121

What is 121?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
