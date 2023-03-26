Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 517F4C7619A
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Mar 2023 09:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7P+nAEEn5jpC9dkTCIjbSOuk74NzLCcrYmKqW51jpEI=; b=v3tiSkakJfZv9Z
	5eBThAzM26I7IuLnvzrGlOrBhghAlhmAZqoDeChBdCF7lhoir2BWCWNVgJrrqpb0mkDIgD+MvATwh
	c1l8WJhT4YoI8vajG51JGdUHW8T/Y5rFvdyZjMa8pq1fYAZY22TPy0pGKn58Y3eT4+SOSJODZEcXT
	1ylZGelwMUnkD3cfiInYbj4Dm7nK6Wt4TYPhJDs+kKzObknBBYFLh0DsOhDdbvZTTU/WOwNVdkPBC
	cr47CUxVNHjv/Aci5MpS3O7ihNkQPdCFQgkSOzl0Drm5FJM3GZuvnYeqO31VgtN242BhopWgz3wq6
	cK7qR0aagK+hJyOVMz+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgMoV-008FEC-2L;
	Sun, 26 Mar 2023 09:37:23 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgMoS-008FDV-2b
	for linux-rockchip@lists.infradead.org;
	Sun, 26 Mar 2023 09:37:22 +0000
Received: by mail-ed1-x536.google.com with SMTP id b20so24410711edd.1
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Mar 2023 02:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679823438;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=womt1sTjj98HBWC12qs0rQLizgn/XM7va5jl8pNY4ac=;
        b=GHkGxIaUDHD9EVehc6ie2OQuCwM40c0Sa/sF8VYs8OH+m5MpI3q68BwrNW2YOW+ipo
         cr8ES+JlIAq13MyMuLYnUBFfN4xtMwH0x+BZO/eD5KI//izd5SSS38fr7Qx44Q47Osf2
         wx3toJdDGo5LVoFftdIU24vVQIn8RpVXMhDydizeu2K+WBADhg4BQNQWFubeMA6aaztF
         KbNI93cdJebCDYh1WgyGa0VIw1YzUdWOeGLBlbOmv6u+uf3zDtGkgxXqcjiT/BdkBipL
         R5X8U6f7aLAJxgX0s6M2UAxge20lJpE3eyn0H9NF1XHvtJV0pqA9jASBh5tFolIMR0nF
         Qh0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679823438;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=womt1sTjj98HBWC12qs0rQLizgn/XM7va5jl8pNY4ac=;
        b=XmkdPhoFUSSxMbyPiCRK4ouCyJvGmUie9+48w4Hnqht+7pRmGiaqsDkF5jj1K6KeiC
         AvwISo8mwdmU3f4BCCQphR/Y96ueGow3ta/ujwkaPOmMGZq5125adsAFV9VPW6nQpxgR
         m8hOBCupTN/YDoLxRI5vhec65RsD8njaKX0/C3H3JXdR4MZw1O7j+canZmbNTF68Es43
         qEycbvxSeZBUOHGoU8QhylcSLkavzAw9Q8jMEN4a0xp7cm3lXm3YvIoV70N/XNogM8E1
         V+XLuDY1kupeRa6U7NFblg8lJa56sIa7G6UMbMg4p36DPtqq/BNiHf8q3E/+zuP16ahI
         hKYA==
X-Gm-Message-State: AAQBX9fwumHiy5cUjRFKYC/QWl4NlP139zbeEmHtNGZ+JI0e2HMCIEVN
	nwANUoDMhLukj15//sXDtCjTOA==
X-Google-Smtp-Source: AKy350aR88wKTInMhM2+4A7tNI6V5uRWI3jQ2Pt0sIPnZuOvt7Cl/gcLtj4c8VsNeo0rbho+lF/46A==
X-Received: by 2002:a05:6402:8d6:b0:502:2953:8ecb with SMTP id d22-20020a05640208d600b0050229538ecbmr5138565edz.13.1679823438181;
        Sun, 26 Mar 2023 02:37:18 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:6cac:926d:a4f2:aa09? ([2a02:810d:15c0:828:6cac:926d:a4f2:aa09])
        by smtp.gmail.com with ESMTPSA id k12-20020a50ce4c000000b004af70c546dasm13284309edj.87.2023.03.26.02.37.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Mar 2023 02:37:17 -0700 (PDT)
Message-ID: <10930783-e1dd-5e75-a2cc-a09af862d949@linaro.org>
Date: Sun, 26 Mar 2023 11:37:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 2/2] dt-bindings: clock: update rk3588 clock definitions
Content-Language: en-US
To: Shane Francis <bigbeeshane@gmail.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230326001535.149539-1-bigbeeshane@gmail.com>
 <20230326001535.149539-2-bigbeeshane@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230326001535.149539-2-bigbeeshane@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230326_023720_872450_81CF24F8 
X-CRM114-Status: GOOD (  15.70  )
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

On 26/03/2023 01:15, Shane Francis wrote:
> Some vendor uboot bootloaders use the target kernels
> DTB image to determine the target clock speeds for
> some PLLs, currently this can cause uboot to set the
> clock rate for gpll incorrectly on to cpll (breaking)

Please wrap commit message according to Linux coding style / submission
process (neither too early nor over the limit):
https://elixir.bootlin.com/linux/v5.18-rc4/source/Documentation/process/submitting-patches.rst#L586

> RGMII.
> 
> This change starts the PLL clock definitions from 1
> to correct this miss-match

Unfortunately the reason is not good enough for ABI break. Replace
vendor boot uboots with open-source one or just correct them (it's still
U-Boot so even for vendor one you have the source).

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
> @@ -12,727 +12,727 @@
>  
>  /* cru-clocks indices */
>  
> -#define PLL_B0PLL			0


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
