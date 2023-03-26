Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A51D3C74A5B
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Mar 2023 14:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JtIqH5enmCrnXI6q22A2io6QqXZeGJ8fqlfx+YJ40Z4=; b=yN8KtTuubBHBEN
	A//hT79DOFz0kVzI4FnMWcdX5Mkvc9BQowZjqtOnCWGg14yYRG+2EKljs1GKqRJ9qW7qYCXT14rXL
	OpCb2W80OJcKKvJjG4ceQpnkQIPXwU3EuSI6GFVgGBamVfK0QIZLe/mLlt3kgkRTUl964Aw41FjjQ
	d4akjE2ZBt/YD12Gx6BvL/qX8WpGNnXMLPJc685bby2YFpYzC1nr2Wo4QY5G4fHO16AAena6TB03L
	fBZBPvQ5Inj2CpgpuDg6vQBHGpCxoP1wAVp9O8ExmRyL1hoUjoevbNU89BP++ky73GCyAfxwDwcyy
	u96e+DHGHivwC/TrSVgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgRiS-008fhs-2O;
	Sun, 26 Mar 2023 14:51:28 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgRiO-008fgu-2O
	for linux-rockchip@lists.infradead.org;
	Sun, 26 Mar 2023 14:51:25 +0000
Received: by mail-ed1-x533.google.com with SMTP id eh3so25762123edb.11
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Mar 2023 07:51:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679842282;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+s3tOPmxxPboBBurR7XBfM3D4IM5gZJk5nXyQfbhXWA=;
        b=VV3VHfKT0tKRtfSuq1Rx1WDEMfmt5m3GN3pbM2oW15Tzukx2Knbj3499bEBkXsDUtQ
         BDkXYusPEcYPXotjc9VSlPx1av9BzbaQEA75cQbM0yscfHxXEzgL6B5MBnKShiDFQUGi
         XrqNzDv+6co7pGe8VcvBlLmCPL+Cdx47NkKoApuxP5A0xDjyc8zeSgnXlM3ghWa0XUZY
         t6RiwIcfUUKZUjJEXmMDFTdwuStKfeql+CPO7C04H84jMcNPUibsO9v9xvk7ikdLvaHu
         apHmzANpy5+e2gsL/C1z4af7ZA67JAPvjP4A/7g4apuPvRWxqBm/6Ay5GEeWNFaiBNR7
         MzWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679842282;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+s3tOPmxxPboBBurR7XBfM3D4IM5gZJk5nXyQfbhXWA=;
        b=VcPYSxUKwDLqbkEp/57gzMHcqhgdE35k9S48rqsQ/TAC3HG9iKcYuQKb8rGgb9U04s
         58K2E3LQ+RjjlI84hVlAgQRg0YEMTyfnVHwWMSbXdslCmeT/UdYlPdecBtexckKXG1jE
         BwAps87jFRPZHFcpTgnPP08GX2Ds9Mfb1This3YOto/IBO6hPZy/p801FtRgTGgMh7Tp
         in4UBINJIWkBy575N0Dxpr6mZHkWjudZ3BKTC3CPdXgquHP1uudKLYAaozu29RpMA58t
         KLEOzZ4AVuveZ8BFebRQjWfEnvu2Z0pnwCQL3HEOvFSP92t7XS17nBl2+az2a5uRgzBs
         skcw==
X-Gm-Message-State: AAQBX9fWoAi2uBCigH3ueViTWsKy5GR19hv/jRzvUbluj48LLnoZHOQc
	eOt3duP02dBuvlFsJLZ/aH7W1w==
X-Google-Smtp-Source: AKy350bvB8YDMFh/w+j6qkDcaEMKOOIcdpCW4jkZGkTENqR/6Jo2c1CXyvQbB5dL7I1kRbH4gI7eAA==
X-Received: by 2002:a17:906:5010:b0:92a:77dd:f6f with SMTP id s16-20020a170906501000b0092a77dd0f6fmr9990766ejj.73.1679842282329;
        Sun, 26 Mar 2023 07:51:22 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:eca3:3b8f:823b:2669? ([2a02:810d:15c0:828:eca3:3b8f:823b:2669])
        by smtp.gmail.com with ESMTPSA id hf8-20020a1709072c4800b0092b65c54379sm13035392ejc.104.2023.03.26.07.51.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Mar 2023 07:51:21 -0700 (PDT)
Message-ID: <1b9c8e19-10f2-824d-9b50-51e7a9287bb1@linaro.org>
Date: Sun, 26 Mar 2023 16:51:20 +0200
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
 <10930783-e1dd-5e75-a2cc-a09af862d949@linaro.org>
 <CABnpCuCzdbWTTp1Gc6wWPsB80J5GYw1QzKtZzzyEYU456E=1JA@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CABnpCuCzdbWTTp1Gc6wWPsB80J5GYw1QzKtZzzyEYU456E=1JA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230326_075124_775957_91867BBE 
X-CRM114-Status: GOOD (  17.36  )
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

On 26/03/2023 14:02, Shane Francis wrote:
>> Please wrap commit message according to > > Linux coding style /
> submission
> 
> Will do, I haven't submitted patches for a while totally forgot the
> wrapping guidelines
> 
>> Unfortunately the reason is not good enough > for ABI break. Replace
>> vendor boot uboots with open-source one or > just correct them (it's still
>> U-Boot so even for vendor one you have the source).
> 
> Replacing uboot is fine for this case, however I can foresee that can cause
> issues further down the line.
> 
> 
> 1. No uboot source from the vendor, we all know no everyone respects code
> licencing
> 
> 2. Secure environments (like android tables), this chipset will likely end
> up in android tablets that have the secure boot chain enable. These will be
> unable to replace uboot even if source is available.

So mention this in the commit msg.

> 
> As this SoC is new to the Linux kernel (not even useable for much it's
> current state) would it not be better to aling on this so vendor and
> mainline DTS "agree" now rather than possibly have to address is in the
> future ?

Then commit msg should also mention it.



Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
