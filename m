Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4ACE8C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0LTIr6KNxyl7PXEzbkArZ1GzXljooja0p8LNbhW93qQ=; b=PmRNb99e6uv095
	JklFXFt7bzdvkbfUBIFe7VfuRsCiHVRllBfnb4M/DRiFgxQfWyyaD3YpLwfiYFfyureYNwcl5Cf3G
	RhmfJ4inWF/GOLBQ6OqSs1cf3mkkKaocprXeNsijIgbMibB2aEnD6dJ7qPkeGp/zz4q1/leXrAmWd
	1uweLujmJpYrk9m/juF5bn+37mBkgz9ID8+1EBmERWKFNOtrHU5Wuz7d5js47smrrW2K5CfLpbgNR
	BslzR9PS7CuuT2GZuuE54Dd92FvLrhu2INIPYLbfB56xua6mIjlR2yP9xNRGQelD/t90DXnS0MjuQ
	rdXsIae7sgUSolBT7DLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj37Q-00AnDp-UT; Mon, 25 Apr 2022 18:07:28 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj37O-00AnC5-8Y
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 18:07:27 +0000
Received: by mail-ed1-x52e.google.com with SMTP id z19so6165712edx.9
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 11:07:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=O9XRVoAwaLqAz0VKvjdeTs+/WnNOyWkzSBKJjr1GgWI=;
 b=KoaLI3WM6grOMDa/FBfYgJOEeXjsYzxUTObsQw6bUlLEy23Gf6/trLsbjs4thc5+om
 +oRP1e9jWYmCno0y3RYw71REOH1VzySgtXbWYkfwyoSB+WY7Ow0JSEVGLl+Nk5JdmeIz
 JVaDGhJVztFjgYH8uSq/Ol6LzmnrYjBP81l9D2loWzb0nCDaam5BfqCLB6Vjzez9+3s3
 cAfL3MZBIHHvit45pXqWwVz1sq5EFA38dbnXLCvbqJno3yJE55Hgwr60XhF7wL6dR3FR
 yrEeHORCoPqGl5xWPogNLGmRsUqh4gT7jkpMgtJPZcJbKfe4bMSvwXWLV60CTLXqBu2f
 JDTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=O9XRVoAwaLqAz0VKvjdeTs+/WnNOyWkzSBKJjr1GgWI=;
 b=QG4XdLX/Mml2XUVzmywPzsP+8wNtevDSvGjCNAtMrJCnXv2cuV4BTfy5rhnEY/nmuK
 mEk4pAYLqfXXRP2/LPOsI2jyNzi5k7Uy2UVLSVLxiVPamBgjJwaELrk9WvMlYinDyssE
 /JnYc9sA2wRVtyP0PaSLab9ishi0OH3lJvzVzdPxz2PYn6oXGmXvLRcEm1yTMrYEE5k5
 afwFprauex0sb2MLIrFHG6W247QVuamQ/bpr/uWLSZPFdNZG+JxWnK9fSG+LfCbosZyP
 ax7YRSkT+nVeodMwAbW5q4ewoeFmSsk6tUF8oHR+SEi9q/dj4Nt/VO26VUH4My0p+EMu
 zSpg==
X-Gm-Message-State: AOAM533qlQgXdiSEkix9Zi3Owd8AIzunMsk9BJva8cRDvPcUUZ29ryzX
 0h+XiizyTdzXZNigxoSm2tJFUF1r8YAfXw==
X-Google-Smtp-Source: ABdhPJwa+byKv5S02qlMuGalcgKB61+HRaH8VosHoz/v2tW0VkTTVPLO8+wiJ+jqDrfpL08r3LJcwg==
X-Received: by 2002:a05:6402:4253:b0:423:e4e0:fdd8 with SMTP id
 g19-20020a056402425300b00423e4e0fdd8mr20208800edb.193.1650910044403; 
 Mon, 25 Apr 2022 11:07:24 -0700 (PDT)
Received: from [192.168.0.244] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 d11-20020a1709067f0b00b006f395247b5esm1414114ejr.84.2022.04.25.11.07.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 Apr 2022 11:07:23 -0700 (PDT)
Message-ID: <2c347033-bd63-05a8-94fb-2eb467e63e76@linaro.org>
Date: Mon, 25 Apr 2022 20:07:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 1/3] media: dt-bindings: media: rockchip-vdec: Add
 RK3328 compatible
Content-Language: en-US
To: Christopher Obbard <chris.obbard@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20220425123215.1055251-1-chris.obbard@collabora.com>
 <20220425123215.1055251-2-chris.obbard@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220425123215.1055251-2-chris.obbard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_110726_366562_2314FCC7 
X-CRM114-Status: GOOD (  12.91  )
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

On 25/04/2022 14:32, Christopher Obbard wrote:
> Document the RK3328 compatible for rockchip-vdec.
> 
> Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
> ---
>  Documentation/devicetree/bindings/media/rockchip,vdec.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> index 089f11d21b25..ce06835e8d61 100644
> --- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> @@ -20,6 +20,9 @@ properties:
>        - items:
>            - const: rockchip,rk3228-vdec
>            - const: rockchip,rk3399-vdec
> +      - items:
> +          - const: rockchip,rk3328-vdec
> +          - const: rockchip,rk3399-vdec


This should be rather an enum with rk3228, so:
- enum
   - rockchip,rk3228-vdec
   - rockchip,rk3328-vdec
- const: rockchip,rk3399-vdec

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
