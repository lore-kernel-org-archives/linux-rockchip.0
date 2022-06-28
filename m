Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF271C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jun 2022 08:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GikzD6ZpjgjXBVsOY8rLfwz6PFr/rcqwFJHxwvRHrlw=; b=iM/AvbiT2Zfshv
	0Y0ZUFCCIkLohd+P+60TeJcIBw/rRUDlTKdkiN0D488aKzqqfwnEGrHCqPCydDwYl1Tp1OXXQKl5G
	ERLa0xexgu4R1Vrta7cGEZpban4uxHyLpooqCUDzPuhLZTdWbw0lcUOydbGNLQkodIKdxuD8Tfbc6
	EKtHhl5WJET9ZJUKPvo2lvSK1kaBiHsOpsPTnlKRTprP6aNeQaiSIOjUToZCzGS9G6GbcOopDvjWs
	sh7lXWn2xYonXoI6KFU8TOG9IaUB/xA+ISl2OtP0E/u6P3ELposjYt/lSh/xPQQTg95yV+QhXGyJ8
	UdceGeg2AoFOg4HT9Iiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6709-005OGT-L2; Tue, 28 Jun 2022 08:55:17 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6702-005OBk-2r
	for linux-rockchip@lists.infradead.org; Tue, 28 Jun 2022 08:55:11 +0000
Received: by mail-wr1-x42a.google.com with SMTP id s1so16605946wra.9
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Jun 2022 01:55:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=6EjAImlC2cUbHKG7rZ8oJgTpb4YvQnBoZ2SzseB9Ffo=;
        b=mLNgRP60qaAq1yYogxQnVbULA1JCNwkqsJZad4alEfqNlsYIYX5ohtcL48q634cqVX
         +MMHMf6gQnX3W/zD0Dp0IQS/aCdEkDjcXXh/g8w25prT+Q4q4Tzv5ukX5FMr85YTVN3l
         Exi/oKTwYvZqi/mCUiR+7QZd9DhzyctaHQivRRGJ3ifp1zBtpKI3M6haCcEWbkn2hBf1
         c3CL5V/FGmK0cMHUsNFNmvuA67pZm90NEhU30vfSLlZnVQghssvsNWB/emmg7gulPyG3
         ULt2ef3tz8Xnc4WtgPNxZHQAwthcXO6qkoFcZ2vlwZoK1YJVHLR1nNqbvFQNw/+ox8kq
         BiYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=6EjAImlC2cUbHKG7rZ8oJgTpb4YvQnBoZ2SzseB9Ffo=;
        b=JeH7lDlLPZ2xWAtjP0XJlE3BCAXggyxGff7lfB/tNn16ebMuZb43BJByd1FsvF0s0a
         sTdqXKdaOYkY+EP5wQ7h5CM5Ds0mtB52+uj42o4dtz1afPzl7iF7AWT5xo8tkEE5NEVT
         LEPoZynmhti4+wh2JlPhYO1oJSCTBTc4kTd4BfBA8nRQFSbZcIPg2iPtCDAT3MI6LBTO
         o0hbdBmzvcCr5jbAfquDIsHxuFqwpzK6wTlS/srtKzb4bjWsIMyVvpCOuaodOgkeBcmQ
         a0GPiBL9WoWGTuYQtLpIPDIMzBefJRRwxluiMf4eus7I4mVRsitIqLHspOOW6Trsy5kq
         /pLQ==
X-Gm-Message-State: AJIora9kGQDLg6AL68LI7TcJ8RVP5RMf5cfXjCdu8vJRe06/TTCrFDyR
	6O5xnohVRp7B2qxfS7VsPQDWzw==
X-Google-Smtp-Source: AGRyM1v1XPqITrd0WKrnysbuA/X+GwRUZZO5PyygaPS4hjzjSAp1WGjBl0yzbAsL1dJMHXmfwlINjw==
X-Received: by 2002:adf:df8a:0:b0:21b:9219:634c with SMTP id z10-20020adfdf8a000000b0021b9219634cmr15875834wrl.669.1656406506235;
        Tue, 28 Jun 2022 01:55:06 -0700 (PDT)
Received: from [192.168.0.252] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id j14-20020adfa54e000000b0021b93b29cacsm15850669wrb.99.2022.06.28.01.55.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jun 2022 01:55:05 -0700 (PDT)
Message-ID: <7314b028-3cda-d70c-80a1-25750235a907@linaro.org>
Date: Tue, 28 Jun 2022 10:55:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCHv2 1/2] net: ethernet: stmmac: dwmac-rk: Add gmac support
 for rk3588
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 David Wu <david.wu@rock-chips.com>, kernel@collabora.com
References: <20220627170747.137386-1-sebastian.reichel@collabora.com>
 <20220627170747.137386-2-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220627170747.137386-2-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_015510_205261_7678CDA0 
X-CRM114-Status: GOOD (  12.80  )
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

On 27/06/2022 19:07, Sebastian Reichel wrote:
> From: David Wu <david.wu@rock-chips.com>
> 
> Add constants and callback functions for the dwmac on RK3588 soc.
> As can be seen, the base structure is the same, only registers
> and the bits in them moved slightly.
> 
> Signed-off-by: David Wu <david.wu@rock-chips.com>
> [rebase, squash fixes]
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
> Krzysztof asked what "php" means. The answer is: The datasheet
> calls the referenced syscon area "PHP_GRF" with GRF meaning
> "general register file". PHP is never written out in the datasheet,
> but is the name of a subsystem in the SoC which contains the ethernet
> controllers, USB and SATA with it's own MMU and power domain.

Maybe there was a typo and name is PPH? Like some kind of short cut of
"peripheral"?

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
