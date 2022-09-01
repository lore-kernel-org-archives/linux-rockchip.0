Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFD74ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 13:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kjgKP50lb+tunWWtBnyHy2v5qucYCemgDuF520E+bnc=; b=eoordIMG3M/ysZ
	xGRA42jaj17gdsOwWb82+VfOQ82tN+8HLfKrTFFoENc3oUThI+cmF52Pt3fHy/mhSOq1LaJcO23AF
	QMOP7PcgJWWZ+WPRQ+gTvb/CKLibqppSXXOkwe9xW3nRVQjGgy4ZnQuTXk5uiR4DgtJ+Brs7dinrp
	8QaDSxeb35q9cfxEh5llqypPEbL1/bPXvNMDY45JnjBZ5OuNFtvTtrh/piKG4JOJVTe+TSJXXcYnP
	2hxep3gJnX8wbNKceZNjqdTFvwbO553GLPOvSIape40XfGPBlfITYO87EaJYWyy7HxbrYW+a9tyID
	zwpWEvcEpY9eL/QY7LWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTkMo-00C6lG-KU; Thu, 01 Sep 2022 13:36:22 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTkJc-00C4rL-R6
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 13:33:08 +0000
Received: by mail-lf1-x12f.google.com with SMTP id j14so14090557lfu.4
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Sep 2022 06:33:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=lOxkROm5BlJdPkNzAhb8DK30tpxtm74Zgf5BrOPOkjk=;
        b=peuXjUSnwtog8QxfPaggji++nc5Lp0DPi/OHO5FBWsyhQAvSyC+yFRq5nZFPwzpXlK
         xKfOV04BxRyfEd0T17SaPMWH7Il85PlF/ym04nxbGl87IR+nWepWSdtPicuOxBWtYYth
         75qXrtkvWzz+fumO4UhKqQ6QID8DP5kVotlsbJx0R+VHn3gJsfRtZLJ4L2gmxL92irjB
         RPYTDnnodfZr8GtDvShjHTeHl6WpKQwQoaIAXE3InlMmMUdtgNioPqiewXKyaJ51Li6Q
         73MSpnCkuA4fg31DVO5Qf6yMNKYRoPnHGyz/xO3H5yb97bE8j9Nv7O/FGGfmF826bujM
         TEFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=lOxkROm5BlJdPkNzAhb8DK30tpxtm74Zgf5BrOPOkjk=;
        b=JEQ5HbvUgbmDa4A9MthiX0IFm4e8bPCkL3pz0DMdmaVQa9Guwb9Ds2NTYlIspN+tg7
         T2uEwKV2SlktDpQF675da1IzSMyMZtxcSc4Aiu9Ruza/v4NvIMLy8+1pRqUpwz5vy1KE
         dnGLFZojKfGBNMBVQeDXVCgdy0yXf3iH9NdIeKK3PhjIP64itq3a5LkhVpvzzLFva8d9
         MFDLUiaX0BsNxy6SLUdSv0IyuS4mRfUuNg6tJY1Hp5KyU3KU/Cj6OPvxrftPoPX6iQ1w
         Fs3KJ8pUqZXx/k+8m+ca9XWbvTzASd0Ps1OCbspZdAC+4rN89HE4WGxtW7DlfPC0L1lF
         Y+ow==
X-Gm-Message-State: ACgBeo3mhuYLI0GszYHi2kRpBc812NmM9rMADbLJoHNny/CSw1STKaFe
	MdbeaEU5X5VllWS6/rGM5VdcDiCWetTcKLLG
X-Google-Smtp-Source: AA6agR4lGx3pWN3YYJj1clY+UtNqdC1Pt+tHaQfJ5z1paLpoOYGENH7MVRoYDC7wbdGJ4QYIUaNs2A==
X-Received: by 2002:a05:6512:3996:b0:492:dacb:33ce with SMTP id j22-20020a056512399600b00492dacb33cemr10101487lfu.445.1662039180939;
        Thu, 01 Sep 2022 06:33:00 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id q13-20020a19a40d000000b0049300f40c5bsm328830lfc.299.2022.09.01.06.32.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Sep 2022 06:33:00 -0700 (PDT)
Message-ID: <6840d3fa-329a-5508-7647-2b8d09272b41@linaro.org>
Date: Thu, 1 Sep 2022 16:32:59 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 3/3] dt-bindings: gpio: rockchip,gpio add optional
 'gpio-ranges'
Content-Language: en-US
To: Jianqun Xu <jay.xu@rock-chips.com>, linus.walleij@linaro.org,
 heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20220901012944.2634398-1-jay.xu@rock-chips.com>
 <20220901012944.2634398-6-jay.xu@rock-chips.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220901012944.2634398-6-jay.xu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_063304_944176_563707B9 
X-CRM114-Status: GOOD (  16.83  )
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

On 01/09/2022 04:29, Jianqun Xu wrote:
> Add a optional property 'gpio-ranges', such as
>     gpio-ranges = <&pinctrl 0 0 32>;
> 
> When the gpio nodes are under pinctrl, the property 'gpio-ranges' is
> a optional property, but when they are under root node, the property
> 'gpio-ranges' is a required property.
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> ---
>  .../devicetree/bindings/gpio/rockchip,gpio-bank.yaml       | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> index d4e42c2b995b..7a075fcea75f 100644
> --- a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> +++ b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> @@ -49,7 +49,12 @@ required:
>    - interrupt-controller
>    - "#interrupt-cells"
>  
> -additionalProperties: false
> +additionalProperties: true

That's not correct. It should stay false.

> +  gpio-ranges:
> +    maxItems: 1
> +    description: |
> +      The property is a optional if gpio node under pinctrl node;
> +      but it is a required property if the gpio is under root node.

This is not in proper place.

Does not look like you tested the bindings. Please run `make
dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
