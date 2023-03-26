Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DDFAC74A5B
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Mar 2023 20:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aqo8jXOo5PL5PVPjGck66X+jM5dRPlONIrhpw6BDhgw=; b=nDxyJ/u78dgo7M
	yPLt2GVfGok+hKy1q9On0L9lCmWpI4Bs3wv/p2X7EGwF9yFp0d6wU5nnqPY85j4KnT5k5u5IXMpN3
	2nib0bhOpkM9deCiW6dYINyGHP6facTH5KZP/CIgGI0iSJTo7+RHZRsWAnXqCpMWfnV4id5ws2fbK
	8imTnLx/AVUDB7IQxUbJLJYnrON0eu8oCuoXeDigDQG6h8qz47QSI+rwECtJGDMNUfZmtIIwvURTo
	f8JSKGxOTpugDwvogrEgapqcRB8sIouM1gLieviAmvVlziG6IW2ADKs8yci8+fxn+q9nhrbCFVF1q
	8+SlF/0xmwdqf51NS6+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgWbD-0098eZ-1i;
	Sun, 26 Mar 2023 20:04:19 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgWb9-0098bc-16
	for linux-rockchip@lists.infradead.org;
	Sun, 26 Mar 2023 20:04:18 +0000
Received: by mail-ed1-x52c.google.com with SMTP id y4so27780454edo.2
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Mar 2023 13:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679861050;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hJ2zmqBiWF8xNxlF2DpfPiHluVhEuG/NqmcIKEjOERw=;
        b=aA1Pja6WvB4X3aGFSLK6pweg7xRHG//dRUY2v3rdNu5Y1ZhUUSYy/RgXn22Es92AQZ
         2q7dirvzy+f8ToVEzoojz08UmnKi4yFzH5wN14F6odYDjT+ETB3pBIcscVN7ZBkmhIdr
         dkNjOK/KYVWX+rcZAjjQ6p1Jz1g4DNSpvBsUStPqHPXhP6BtqrM79oCJ4aLpeFtnE5Rd
         79Xtglom4SxxEjG9X9nAsz5CvV8YfEbvZSzh2Z3sbC7qoxzojxjpHc7+wS4018IHgdL1
         9vtiLa7PMS87L+cTAlM3z1pd+pWSlOFiO7RFQAtOHx/krweFaONZ5xYFmmBA9LS1JiQi
         E4uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679861050;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hJ2zmqBiWF8xNxlF2DpfPiHluVhEuG/NqmcIKEjOERw=;
        b=NCeExAhza9uC+vD7q1tcam1dVEeqMT7FIR7RMSik9tablH/y8HcHF3gJ6KSFgDjz03
         Ly74CSviNXzUm42KHrC7oVIpvsCwHZ2VlONF6hE4I16sqYq+kn/W47nDpHvbIw+qHPqn
         +7eH4mSjoqNvYWfFLoFZfUNADk0X26dK3n0v3+YljfUmYMu6ArrCs+caviwCYO6GHDd0
         BoW4tXmAa9n6utODZW7wBVluT4a1+vxyhb7EUAzQLJW8ve4N5cvidZNXFORIFlQENx8G
         pfIL06oG4BYoxzQj4ddiZQjKK7r+pRVSHbDvuLRgF7FSQBdr87Ym94AlWOzJSaCBHHFk
         bTgQ==
X-Gm-Message-State: AAQBX9dlb0vozKqteG2Va9BaBnUbeuQ0C6zjSxadE4jSA6aou3Dk0JnN
	UvdglnLejm0/YBySOT86t4Wy1g==
X-Google-Smtp-Source: AKy350Zfn2lQrBVjODwHJamrQ0D0o0vR3gzPm6WK58ij2lWqCQGKKtUZrfYQZlXrfdUA9IXOarxj8A==
X-Received: by 2002:aa7:ce0f:0:b0:502:24a4:b0ad with SMTP id d15-20020aa7ce0f000000b0050224a4b0admr8629955edv.4.1679861049845;
        Sun, 26 Mar 2023 13:04:09 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:6b51:4748:3f3f:ffcf? ([2a02:810d:15c0:828:6b51:4748:3f3f:ffcf])
        by smtp.gmail.com with ESMTPSA id u22-20020a50d516000000b004ad601533a3sm13970070edi.55.2023.03.26.13.04.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Mar 2023 13:04:09 -0700 (PDT)
Message-ID: <0711b320-6c36-6564-70d2-35fc76ac1ebc@linaro.org>
Date: Sun, 26 Mar 2023 22:04:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 2/3] dt-bindings: clock: update rk3588 clock
 definitions
Content-Language: en-US
To: Shane Francis <bigbeeshane@gmail.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230326001535.149539-1-bigbeeshane@gmail.com>
 <20230326184040.33008-1-bigbeeshane@gmail.com>
 <20230326184040.33008-2-bigbeeshane@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230326184040.33008-2-bigbeeshane@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230326_130415_378482_A98F2184 
X-CRM114-Status: GOOD (  14.66  )
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

On 26/03/2023 20:40, Shane Francis wrote:
> Some vendor uboot bootloaders use the target kernels DTB image to
> determine the target clock speeds for some PLLs, currently this can cause
> uboot to set the clock rate for gpll incorrectly on to cpll (breaking)
> RGMII.

Do not attach (thread) your patchsets to some other threads (unrelated
or older versions). This buries them deep in the mailbox and might
interfere with applying entire sets.

> 
> This change starts the PLL clock definitions from 1 to correct this
> miss-match
> 
> This could be handled by uboot bu updating mappings in that code base
> however not all devices will have a replaceable uboot (in cases such as
> when a secure boot chain is implemented)
> 
> Signed-off-by: Shane Francis <bigbeeshane@gmail.com>
> ---
>  .../dt-bindings/clock/rockchip,rk3588-cru.h   | 1442 ++++++++---------
>  1 file changed, 721 insertions(+), 721 deletions(-)
> 
> diff --git a/include/dt-bindings/clock/rockchip,rk3588-cru.h b/include/dt-bindings/clock/rockchip,rk3588-cru.h
> index b5616bca7b44..d63b07d054b7 100644
> --- a/include/dt-bindings/clock/rockchip,rk3588-cru.h
> +++ b/include/dt-bindings/clock/rockchip,rk3588-cru.h

We did not finish discussion yet, so sending new version 50 minutes
after your last reply does not give me chance to respond.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
