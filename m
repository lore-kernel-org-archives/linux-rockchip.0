Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1748C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Feb 2022 16:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=87zkaAKsg1haOweLNGzlrXLWMUtiCyIQZCRbd7V/9ts=; b=FqRrzHdnPuM9DQ
	TyDzcCF8aK1CIuvASj4XDPtHcOLLs9mmvm0z0B8m7uc3EhW/igzzfZsM4xSmbzJRwxelXql/oglFG
	3vVWO36k+ebCNp40w3aUaQBiBBjaIUFn0I6NxJISZPsV2hcidT2ZvnGdz/4sdeW4WguEnVakU+9vS
	5st94QtAyeJZfUecoC41+89cUcfNz0EadvIqybG8+XjMfyH/gPkJgfpJvLxFtj4/nG1Fr3NWxN1qX
	YIuglZLd++jnDEBXw7pJn1uE3BW0CcP7nhu0jeuCtfBDivGGd4xyNCIsvX3D086XzNy8P+uxgRyCt
	htZ5Wpki5oXkuABC8h1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNd90-005owA-DI; Fri, 25 Feb 2022 16:08:34 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNd7t-005oSr-EY; Fri, 25 Feb 2022 16:07:28 +0000
Received: by mail-ej1-x635.google.com with SMTP id bg10so11805254ejb.4;
 Fri, 25 Feb 2022 08:07:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=ts+FkTbShV4Wpp+wSNsd+uKmnjaetMFa029W72HjYZs=;
 b=hRJtnxCADcNU3McONXvS4XWl7ATSSCg+T4M+vqVitzVmwhCTl6UxDXVwSfiDMTQbby
 EH3CSYEa8Nklkze+TivabDlc+a6no0MmW8K5IMHF0u0qP3GrNbKpnXwH2G/2/Lbi4W48
 NixueKemw0g/HvdGUfVCPXDA5J2P0cYf4YG1/Rraa8Ai2ltQ/gmLwZd2WWI9WmRmcqmF
 nD6LnRE+MEyoBHgyS9RCkPbRkc5F2V+eKLqspIwdoDa36llbSKDVNtIM7hZMn6J+u4MZ
 gS6kyR5GklbmcnkKEV2ANMOleSJ+7BO5ahwkhcP9zTOwqx9RE2N/f+6jNqntSz66Dpd1
 b95w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=ts+FkTbShV4Wpp+wSNsd+uKmnjaetMFa029W72HjYZs=;
 b=HO/3xJ4FoNkn0A1/y41sDbv3FacL7klD0etRVz88jB7An1biXwNWfpS0O++xNojs63
 QFxRM3AEAfomAVOxktkFd+s6jVCH2jEczrKLV6LeI0VasGP/zq0Bc8mcWZKB5yLHsu9u
 2WkwUxl14bujhVGCM4noQ2NQyrSEhpXZ/9NUDFQhrfgHpJazGC1ZhTVsTp3cHgH/iPhs
 Pyef1M2AqX9HO3NCZkVzmB5zQGJr3lkVhFwhSMrqT0gDCxFfZGX48vtOsbMuz8BHMiZN
 WgMCT6GAsHX50Qth/fB0QoN0gXBcw8ZAtewiUxslsZ3fVVghNH5zODpoSMEkyq/jn576
 vo3w==
X-Gm-Message-State: AOAM531gkg8j3apo4NIv5h8rUovUB8sMvspxcNfvGw5Zqb8oQxhUlFq3
 K+z4dJ+yOmsdufQzgDQzofg=
X-Google-Smtp-Source: ABdhPJy9Rv6QkaL/cuO5EzUsXPf5Sxhe48gGqhncSPETom7hz7UYhj/+YcJrExMr8MC2rYnKRker8A==
X-Received: by 2002:a17:906:a046:b0:6b9:20c:47c1 with SMTP id
 bg6-20020a170906a04600b006b9020c47c1mr6459495ejb.615.1645805242584; 
 Fri, 25 Feb 2022 08:07:22 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 q10-20020aa7cc0a000000b0040f826f09fdsm1506921edt.81.2022.02.25.08.07.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Feb 2022 08:07:22 -0800 (PST)
Message-ID: <5cca79dc-619c-a162-e850-b3efd4dc746d@gmail.com>
Date: Fri, 25 Feb 2022 17:07:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v1 2/8] dt-bindings: usb: dwc3: add description for rk3568
Content-Language: en-US
To: Peter Geis <pgwipeout@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Michael Riesch <michael.riesch@wolfvision.net>
References: <20220225145432.422130-1-pgwipeout@gmail.com>
 <20220225145432.422130-3-pgwipeout@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20220225145432.422130-3-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_080725_575724_329D4182 
X-CRM114-Status: GOOD (  18.55  )
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

Hi Peter,

Lots of USB series all of a sudden.
Combine possible?

On 2/25/22 15:54, Peter Geis wrote:
> The rk3568 dwc3 controllers are backwards compatible with the rk3399.
> Add the device tree description for it.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
> index 04077f2d7faf..e3044e81cc72 100644
> --- a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
> @@ -30,6 +30,7 @@ select:
>          enum:
>            - rockchip,rk3328-dwc3
>            - rockchip,rk3399-dwc3
> +          - rockchip,rk3568-dwc3
>    required:
>      - compatible
>  
> @@ -39,6 +40,7 @@ properties:
>        - enum:
>            - rockchip,rk3328-dwc3
>            - rockchip,rk3399-dwc3
> +          - rockchip,rk3568-dwc3
>        - const: snps,dwc3
>  
>    reg:
> @@ -75,7 +77,10 @@ properties:
>      maxItems: 1
>  
he
>    reset-names:
> -    const: usb3-otg
> +    items:
> +      - enum:
> +          - usb3-otg
> +          - usb3-host

The use of reset-names is "sort of" only related to the rk3399 legacy
node. Still using this sub node DT to not to break older existing boot
loaders.

https://github.com/torvalds/linux/search?q=usb3-otg

It's only mentioned as comment in dwc3-of-simple.c but not used:

 	simple->resets = of_reset_control_array_get(np, false, true,
						    true);
core.c uses something similar.

	dwc->reset = devm_reset_control_array_get_optional_shared(dev);
	if (IS_ERR(dwc->reset))
		return PTR_ERR(dwc->reset);


Up to the maintainers, but I wouldn't add another variant/name for the
same thing as it also optional(= not required) and no longer needed.

Johan

===

Maybe drop PCLK_PIPE as well to reduce notifications.

See example:
https://lore.kernel.org/linux-rockchip/20220225131602.2283499-4-michael.riesch@wolfvision.net/T/#u

>  
>  unevaluatedProperties: false
>  

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
