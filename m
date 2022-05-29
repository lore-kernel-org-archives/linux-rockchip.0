Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A5EDC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 May 2022 14:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2kLcOoS74S6sx3CiTcwiW6Xo7Z6nTG6BO4V19487gGc=; b=A417KCjleUdsPJ
	YaUC4N8jLDQxM6vVM4TGNWAMRBj/3UlBYMpyQlHw64dcL6aucn6S6Td9wpEuGkj36VXTWB7g+qhHW
	C8QgDtNyZSMbef6w7sQj17j6KSetf8gKfNuMu6YoYp1JuKgLAZOdHDeDcHUIOLztyWL/ZHJoyHlA2
	/CyVgdNHDODNk2/9ppAHrEtSJHORUjgHpZDOCipQQ/VBqPB5cdyKLNQmKDGdD0Uxcbac3EtpgqHaj
	A/EAt4+UqsjuR00XulbLkEnZStTCAUBQbdxJqxkDIwQ2SwUnySx1WsyOUnSFhiORezw+vUGhHaO16
	sD9WdUol+NvqxUHeDPyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvJp7-00422P-SM; Sun, 29 May 2022 14:23:17 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvJp5-00421f-Ha
	for linux-rockchip@lists.infradead.org; Sun, 29 May 2022 14:23:16 +0000
Received: by mail-ej1-x634.google.com with SMTP id rq11so16561405ejc.4
        for <linux-rockchip@lists.infradead.org>; Sun, 29 May 2022 07:23:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=UJb4UDxzCMKxbf1CmD5HDQoIHrHBHy8/Ie4zmOsAWXA=;
        b=FT84ta8Yc+hWvvT79Z/EotgnhlCoMR/OVwCUPIcEFFM9M4v1BVvGqveMxavRNr5CmD
         /6Zt4vFAjSX9EqtxuLO9e3G1siSkcdvv0zot9hpX1hZA6Dzia+4OTFEP73ZZb0gR3xcg
         2dzF/atPOO9BE18dUZ2nhoQfJ555/XxBWRQhdjYf44S60Cn94N67QQ2d4MPTFeL8hta1
         gGJlEqXS525lItHW2cEshkDPK59W624fuOQi/w95SBBtEfxmg/bFtL72TDdF7Bzs9ac4
         +bA2xtkFxrw4UPjRvWnPJ9No/zNPHLyhcbO8Q1R5jOgzK/CPFyc1vrZeOYVuFZT4j95b
         NuRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=UJb4UDxzCMKxbf1CmD5HDQoIHrHBHy8/Ie4zmOsAWXA=;
        b=rQ6SbRTQajaf9M2RVImY0Rt7hsiOu+6HO+WAaMyGfPx0Un735SLqJYekgqx5aazW6I
         BmxnV9lfizCHuHoc1M0yFlutKg+zOsNlSF+nTQp9cHb02uqQEO6quwLYsEvgLdxsyF1F
         pEm3CG47vlm1lOk9eoBKXAwCRiKvw6estj3mgIS1+T2eRSW71ULeO6kP4GhFo+c0B+9E
         uDn/1wunNTfWiN12Rceg4uJw7B9iAogj/Ib/SBKse10UWBfHOsTwAWdvlSLhIF9KT8Fy
         bftNGUOp3xIpnAMKnezNI3U0vrdNSx3gc9DTB8nTlerSur7t6Q1ezVMbuNZYk67p5ihT
         mPeA==
X-Gm-Message-State: AOAM531Y5fqwh3WI58qSWeXEjqP+0cnJ8L2V55Ntmj2u1H8e7sTvC4LQ
	WCkSHsxjCN+6az+PVw3dajcWDg==
X-Google-Smtp-Source: ABdhPJw+XHJUIyCFpb2k4yaW9AsZyRMrdw/FOfP9vthEhZF1TwTLqKEs+OUv+NI5FuJxjhuKSVnhnQ==
X-Received: by 2002:a17:907:6e11:b0:6fe:feaa:bb04 with SMTP id sd17-20020a1709076e1100b006fefeaabb04mr26911341ejc.187.1653834194008;
        Sun, 29 May 2022 07:23:14 -0700 (PDT)
Received: from [192.168.0.177] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id u10-20020a17090657ca00b006f52dbc192bsm3201856ejr.37.2022.05.29.07.23.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 May 2022 07:23:13 -0700 (PDT)
Message-ID: <66d655bc-f08c-c6ea-8fc6-260f215a8b4c@linaro.org>
Date: Sun, 29 May 2022 16:23:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add PinePhone Pro
 bindings
Content-Language: en-US
To: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Samuel Holland <samuel@sholland.org>,
 Ondrej Jirman <x@xff.cz>, Martijn Braam <martijn@brixit.nl>
References: <20220529031705.278631-1-tom@tom-fitzhenry.me.uk>
 <20220529031705.278631-2-tom@tom-fitzhenry.me.uk>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220529031705.278631-2-tom@tom-fitzhenry.me.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220529_072315_675487_1F320D07 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
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

On 29/05/2022 05:17, Tom Fitzhenry wrote:
> Document board compatible names for Pine64 PinePhonePro.
> 
> https://wiki.pine64.org/wiki/PinePhone_Pro
> 
> Signed-off-by: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
