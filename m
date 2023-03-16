Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01D8CC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Mar 2023 07:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3hSkNb37bWYEtgu8sug7lX3P27Szo/5Zpcxpt/QrufU=; b=3rPyjbD3caE6xL
	N1qfKCQSy7r3tfyPB+97TFyQ02MWmLQXg9c6rdPkJzpiaLEYMBbXJDEMpdLacK+m0C5BywxWEcIme
	srYiTvMx06B3cgW/IYQfVoDi6G5V5RSrVGIlbikhTbt2dGCcHWsSRs4S7mSx+BNtRf5cVW2ZKd3C1
	MNQ3MtZ+ygrXXh+foze9HiqfN4cik7olbBHWxq/WxZe7lZLG5Gmfe/iIoeVZUsQl5DfuhacSiilXc
	n7Y5BB6sQ9UJl3es7ZufoWKYnYHEbcXJFnOWEM5XJPtIjBDgy2ccbM7wobPL08Iq7UpvxZsUbZaB8
	bHHK55+e6evc75o0JSFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pciSI-00FZ2n-34;
	Thu, 16 Mar 2023 07:55:22 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pciSE-00FZ26-39
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Mar 2023 07:55:20 +0000
Received: by mail-ed1-x52a.google.com with SMTP id r11so4085639edd.5
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Mar 2023 00:55:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678953315;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WBhQ9rbTJ90fnrse5eGonj91bUT1fcKYtnYFhIyOD4E=;
        b=Eg5h9g1gL9TTyY6moa624kELhzJupXcGiFZPRq1WsNLd0vS+0NqVOES/AXp2gMaRxP
         W3AqYr3wvv5X6LGBpHjbd7k57Wv6zBTXC5aqmApnv8HnlDLo9sS8D8WwZy5jx8Jb5Ue4
         iOeff0HU0VRzGCmPEBRFh9b0ZzxkvgvsdNJ+1x1+cM6MJYVeSFOAQeGZB7TVIxblh/jj
         5x1urNVFRpCxYxWkxmFYZYiodWR2fX7R87WyzA9SmQVgxVUkl+F1pjSQvIqKGNguFdRt
         cUYbIX4zAlucQ1htkLN6uSrgZ9ArIX+HuhKnwPrrjQqlu6apEewrGC4xYYE+wfOYV3KS
         R24g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678953315;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WBhQ9rbTJ90fnrse5eGonj91bUT1fcKYtnYFhIyOD4E=;
        b=sU2z+FjwOxoIhBxYMyxe6Q8mVOjm+GiLvVSWSQFzrLM/Vkv7Z+vxkMi+pwh607Ozrb
         DULpnstHFwngJvBn6jiV21H97CTF3I3ZXqkFbbHw8w4Nsq1olBnpu/2nABctwy9OrUl0
         LBTSWy7RFaJjUI8tumSzoQntbSZ/aPcqdLfqzZw+etvXlWC9YOubqj3kKqmJuqCPAJHu
         qxZlMJ/Cdan/TVNlG47yQhWSywqGDhSpUr/aTByMhQovVmAF1GDXbg4Awh5CPmERJJC2
         o7dQL00il0m//GlvaY6AdVAW2RdMGQfCVAqbdBZO5HkNpWhcmwGN39ZPHw3V7vRmG7Bk
         ++Vw==
X-Gm-Message-State: AO0yUKXup9P/HvpxG80pvKOFtyfzSijJG9OgyGatCaHMnOgrumnSMmRJ
	GRql/sVJnuLhzD66QWTV+7tqvA==
X-Google-Smtp-Source: AK7set96dXWDVRar7/OG6wyOuQI1Iq7y3W+ECLittAY+3CNxxIdu0gFkxYLJsSc5KUMv/wh0zO9wGw==
X-Received: by 2002:a17:906:2603:b0:8b2:8876:6a3c with SMTP id h3-20020a170906260300b008b288766a3cmr10483022ejc.29.1678953314989;
        Thu, 16 Mar 2023 00:55:14 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9827:5f65:8269:a95f? ([2a02:810d:15c0:828:9827:5f65:8269:a95f])
        by smtp.gmail.com with ESMTPSA id j6-20020a170906474600b00915d58e56f0sm3517152ejs.77.2023.03.16.00.55.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Mar 2023 00:55:14 -0700 (PDT)
Message-ID: <66c41be5-eeeb-9b3c-9bf1-414e03118578@linaro.org>
Date: Thu, 16 Mar 2023 08:55:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/3 V5] dt-bindings: net: realtek-bluetooth: Add RTL8821CS
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, linux-bluetooth@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 alistair@alistair23.me, anarsoul@gmail.com, luiz.dentz@gmail.com,
 johan.hedberg@gmail.com, marcel@holtmann.org, heiko@sntech.de,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20230315173657.28692-1-macroalpha82@gmail.com>
 <20230315173657.28692-2-macroalpha82@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230315173657.28692-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230316_005519_025142_55837C7B 
X-CRM114-Status: GOOD (  13.30  )
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

On 15/03/2023 18:36, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add compatible string for RTL8821CS for existing Realtek Bluetooth
> driver.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../bindings/net/realtek-bluetooth.yaml       | 24 ++++++++++++-------
>  1 file changed, 15 insertions(+), 9 deletions(-)
> 

This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions. However, there's no need to repost patches *only* to add the
tags. The upstream maintainer will do that for acks received on the
version they apply.

https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540

If a tag was not added on purpose, please state why and what changed.


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
