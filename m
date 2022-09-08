Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B919C54EE9
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Sep 2022 15:39:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2X2r75GTtuzPdOqrGPEXpmDjLIbIO5uBtBKSJviMyEI=; b=LMlnowpxFqWAVY
	jcrCRki8/wZGmK3kPToyF550RxQxtlDV5g/e+jdKaKos5LzdwrK2qYrXXBwHAIM6yanKWIkd5kCSw
	UAxDqrT41toQOWGsMOuTEBV26e/QdfEy8YEuURYAjT0pT8y4c68b9ToUu/Nkc0ujAz47+2PNk06xT
	ap71Goq7YNfVqtaGpnrOEZHGBJz5Bcp2M0rWpoHTllvFiamktnO7kztj+azhOO9EusXYEcGSGo1Yu
	d9nmHp/mcU9tDzAvev8rvK2s+g9LRhZkQcC9JQnRl8UZvbhdobH0V5MaJSqmYhKNocQFIZKzW1WvD
	Zzirpk39IZZtqZ2HGG+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWJcN-005JDN-73; Thu, 08 Sep 2022 15:39:03 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWJSE-005Ckg-3Y
	for linux-rockchip@lists.infradead.org; Thu, 08 Sep 2022 15:28:35 +0000
Received: by mail-lf1-x134.google.com with SMTP id z25so28367975lfr.2
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Sep 2022 08:28:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=4i5CLL5zXNm8xAxFuL3WcPaDXJBLZrrT7gdqgJWsssM=;
        b=zTRaEBM8h/AgHiP43wRrK2eOvAhRe/F6UVkH7Us0KM5pGBJwh6gnpMRabZsbFR1PpE
         l+2qclNxfjXdvhEoOaKViykvcrnPUncG4G2/sycriPDrfmeLDVaizgLHRxRGny2lwmr4
         1tKttNWHXT7q5d2Yfwq2a7MhRZmGgktP/YPGKBG38Ged+lIxQm82obdCnOlMF8mbR8zm
         iAz/SCLyLQBsD1kHVumD1hsB4xSdBxRPrgBEdbH1HOMLAAGzm9Pbu3+owyiszQSHPHme
         uJfepAr2Sq8RFVoSMQ3RrrxCRiZWZ/LNFSKidz2TMVXTjPf2QV7Pa1Zof9cXcMc27cAc
         HyOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=4i5CLL5zXNm8xAxFuL3WcPaDXJBLZrrT7gdqgJWsssM=;
        b=TnD4UP2yUCqk59jJu3/yNTq2R2KyE3rLpfkdiuCF6P/vJbQkobBx1YwXuPHHqL26Ql
         KNKXwAu4dGljaWN7VilORFKE7IWTlgkusTatnEW7QtH6oeCwDBYj4WIfgzbIHVuPCzRU
         D7rxErmkAxd6AzOvIX6Wou6+05QECTLwi1icWmiLCokwjoSZr86nQKj0Le5pRwdsJUSy
         WEx9EavWVD47yE0Bv2plMnfdLcLCcVqEv9JDwZrVQUNSIqpdr6UwQ3U8wje3Ir50xaWU
         vgQRsM4xmBqdEkAOucObA6DkudpR51C6oNQ9tYKnpXYwisMXrTC8yxH7zmaLBwr0xJ2X
         RDfQ==
X-Gm-Message-State: ACgBeo3qon7gu8SOG7gVpdVtoL48Q0ZcQcgWBY9UxTP18umtd59pZg+f
	WzGTSG3+qqP1y5kZEHlFOMue7dpx12vZLQ==
X-Google-Smtp-Source: AA6agR5nuVkUg8vPgHt4g1SIgYv4bRvUoTVvbvAyY8N9q6d7yOOuKKJanXMI+72+uSgRSg908eTvBw==
X-Received: by 2002:a05:6512:a8c:b0:48b:3e1c:c3ad with SMTP id m12-20020a0565120a8c00b0048b3e1cc3admr2960257lfu.678.1662650910246;
        Thu, 08 Sep 2022 08:28:30 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id x13-20020a056512078d00b0049759682c88sm1761246lfr.190.2022.09.08.08.28.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 08:28:29 -0700 (PDT)
Message-ID: <d1b0360d-f32c-6311-5078-370c36f40ad9@linaro.org>
Date: Thu, 8 Sep 2022 17:28:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 2/8] ASoC: rockchip: rk3308: add audio card bindings
Content-Language: en-US
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: alsa-devel@alsa-project.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>,
 Chris Morgan <macromorgan@hotmail.com>
References: <20220907142124.2532620-1-luca.ceresoli@bootlin.com>
 <20220907142124.2532620-3-luca.ceresoli@bootlin.com>
 <aeabc681-9416-d25d-693a-30ba99f1796d@linaro.org>
 <20220908172016.6e23df8c@booty>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220908172016.6e23df8c@booty>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_082834_160917_3CFA2206 
X-CRM114-Status: GOOD (  16.32  )
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

On 08/09/2022 17:20, Luca Ceresoli wrote:
> Hello Krzysztof,
> 
> thank you for reviewing my patches.
> 
> On Thu, 8 Sep 2022 13:49:34 +0200
> Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
> 
>> On 07/09/2022 16:21, luca.ceresoli@bootlin.com wrote:
>>> From: Luca Ceresoli <luca.ceresoli@bootlin.com>
> 
> [...]
> 
>>> +properties:
>>> +  compatible:
>>> +    const: rockchip,rk3308-audio-graph-card  
>>
>> Is "graph" part of device name or you just put it there because of other
>> schema?
> 
> Indeed this comes from the "audio-graph-card" compatible string.
> 
>> The compatible should reflect the device name, not some other
>> pieces in Linux or in bindings.
> 
> Would it be OK to rename it to rockchip,rk3308-audio-card (i.e. drop
> the "graph-" infix)?
> 
> Fixes for the other comments you made to this and the other patches are
> already queued for v2.

Yes, either rockchip,rk3308-audio-card or rockchip,rk3308-audio


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
