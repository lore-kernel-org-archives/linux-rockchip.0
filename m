Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C2F0C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Nov 2022 13:02:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SyZfmoCM7cdWGDJRbO6B3nMcr8EZ/m6//Nk8I9V5I0k=; b=T5Oe800OsGHB7K
	gQDNYdMLPcNDlUWG4wGzvXalygO2ojNkp+hU+NKmRFJja+JEhLEP8XP55NKt8nT+pa73Vco6Rm27V
	w9k0lUiJKZR0B6mMWzjt8X4iq7MB7ZU0RybpngljD+7TjkNd/62yapjsnCH4G6pDEcv7dgzABXXRi
	Jd/e54/HloTxYAxFO2mgTFqsTNPTMf4pdbneXCKLzLCTddTLyj2mvHes/CRFJfqc9Y4/7Al3c7FRf
	qOGddgPzK6Y4aLfMOFM+C0iWPK/dNVxHWhNW2NfjSCFIxlSULd6zupEmmGlK8ZnvAS2lU2IZ7tnpX
	haifNnZRsiJM7zOrQCug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow111-0041Y3-20; Fri, 18 Nov 2022 13:02:43 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow10p-0041UR-AO
	for linux-rockchip@lists.infradead.org; Fri, 18 Nov 2022 13:02:32 +0000
Received: by mail-lf1-x12b.google.com with SMTP id j4so8164996lfk.0
        for <linux-rockchip@lists.infradead.org>; Fri, 18 Nov 2022 05:02:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cwwjinAwnI9JP7ipWBIl6FuQzSRiSFJbqcKk9ONdIpQ=;
        b=obPz4JjmPLeKv2oww2oR7ZLdXYLjLv2XxsQO9UxHebHp3oh+VdB1163aABgipfa3Vh
         X05N/8dS0AsPadRJwlMwoHwlfnOHow88Me0ghANAoPFkFUDsPAHSM+IJG0G5LEpbM3b5
         erjJ+lPbNCVqKHnLcXbYODFo2IUJYq35ylTV1HoW56UVYLtxe68oJ+Gz1x27IvRfaohY
         XYOTQwgZ3rS/gH9z3OJhUUH5Png5T1zWdB2pVmo4GobT+L82BnUn3q/SJjcRpktx/QYO
         dz0fAUaOjeV9yHuNfe4sm0kqX455N+rGglD3+01u05D1XES/iUlJE3V4ps39SHFQGZL6
         HTPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cwwjinAwnI9JP7ipWBIl6FuQzSRiSFJbqcKk9ONdIpQ=;
        b=B+wvZwEdIrb1A2xkBx8Yh9itRn51Zu8iqyDIQwr6PhxqTDuWeZCyRg8Z+lWRSA+rRK
         WH3RexCcopFQEL8xOlr+aw/rZl3nVXiMMycebviZWrsPb8OYLdMq2xc5gNTwcVZ4OWZg
         8060BRp55ZtiqC8qR/Ro83graXLKKIVeJ8QTD3Wt6jN7g9YzYj3rklWNvezAReA6v0D8
         hdrz2wfcqEzvF1hiijEe1TTplglR12XTvlX+iPiJoscVYPugklL9c+jZdf5Yaeg2dQm8
         wFJlXUTHfoAyFCxwSLkOrz+4cGyGhoB91MfxSggBm6XniRNpkFQ4+QSicr6+X4lhkZnG
         xqrA==
X-Gm-Message-State: ANoB5plOVRX0Iz/ZoIdk4mUwHAY1uBuJ+wveeSjUBX1ZWAhq2NgQF1ZT
	nU7ci1b0L/0yAuMF1JT5jO1cgA==
X-Google-Smtp-Source: AA0mqf5iRqFuX0lxx+NC9PbVCESfhII3uH8SJo25riWa6ALefKjdFE/nEDLQvFCDKiQ3DjJbBr/hlw==
X-Received: by 2002:a05:6512:23a8:b0:4a2:4df9:4cad with SMTP id c40-20020a05651223a800b004a24df94cadmr2246808lfv.429.1668776549574;
        Fri, 18 Nov 2022 05:02:29 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id d5-20020a196b05000000b00499b1873d6dsm648454lfa.269.2022.11.18.05.02.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Nov 2022 05:02:29 -0800 (PST)
Message-ID: <feb97479-3c1b-9fd8-ffd7-f8e95151d8fe@linaro.org>
Date: Fri, 18 Nov 2022 14:02:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 01/14] dt-bindings: media: rkisp1: Add i.MX8MP ISP to
 compatible
Content-Language: en-US
To: Paul Elder <paul.elder@ideasonboard.com>, linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221118093931.1284465-1-paul.elder@ideasonboard.com>
 <20221118093931.1284465-2-paul.elder@ideasonboard.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221118093931.1284465-2-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_050231_399039_0D53E873 
X-CRM114-Status: GOOD (  14.41  )
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

On 18/11/2022 10:39, Paul Elder wrote:
> The i.MX8MP ISP is compatbile with the rkisp1 driver. Add it to the list
> of compatible strings. While at it, expand on the description of the
> clocks to make it clear which clock in the i.MX8MP ISP they map to,
> based on the names from the datasheet (which are confusing).
> 
> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

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
