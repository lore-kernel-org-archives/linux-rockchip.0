Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CD8AC38A2D
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Oct 2022 14:52:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1JwAHXzja0/R2EAtN++/Ts8aiqfawV/xv8Zs288KQ8w=; b=0+UIUqEDm0Gf1r
	UTSeGC1Z7uR2poR9YRMyzYqWj6IC+WeF1GPuzw7hw4mpSXtDQA5DgCaMvjmkWGMdL1/NkQLW9cLb+
	8tyRbMMN2HvBzBBks3NlFJj3tsQpSFVPQh+XfggyRi5TcDLKI8pJCSDtTUfHm7SjR0DUqiC/Pb/k2
	N5wpqGEHCwv9F0QWfJq+KEnLmuMgDFM99Ar+i2OD30Vll/sZWU6JDXRl/oG07iw03fV7YfYVpc9Mf
	DdaM2Vx1DNVQsQWCpvJv3kABPfJMU/KVsJeV5u9dTQupHZTOue2QexNbGEKbDjTEiT17IPPulvXon
	QQPKWBdBl8YlJ+jDJY9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onhlL-009kJS-PR; Wed, 26 Oct 2022 14:52:11 +0000
Received: from mail-qk1-x72b.google.com ([2607:f8b0:4864:20::72b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onhlJ-009kH6-7c
	for linux-rockchip@lists.infradead.org; Wed, 26 Oct 2022 14:52:10 +0000
Received: by mail-qk1-x72b.google.com with SMTP id s17so10656576qkj.12
        for <linux-rockchip@lists.infradead.org>; Wed, 26 Oct 2022 07:52:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BRAVl/jwTcV9oATKPy/gFpDCwVtUOLelijvTTaSWnGg=;
        b=AjSJc8sbeB9AS4fvGTqF5hOSH88uRNxiEUF5cwc8f9rtlcA+g5xOJ96dOFLewJ8sg8
         zUIKdFb7J90tDQ+DtAV5ExRVljW7NOqNlKX0FFoy031GHB5Psunydm1h6jpp60PvuyNm
         /8I7o1Ql7yZHIPSp/KaWj65QQO6FB5WTgS2ZMng0KSNHlltE5wkrAbp76Y1p4GP9hPsH
         FklH1IiwWTSdfWTYPrs2XxLPnt/KMENpJ63JsNLayK2m27hW5iCwQcMdsnTsRzRa/swM
         an/gCOX2pr04x8U4hSLxWwQwzNOfT0yu+DM8WFb+ddYZT3N4D3coduusPPA5dmgzgrWC
         N5Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BRAVl/jwTcV9oATKPy/gFpDCwVtUOLelijvTTaSWnGg=;
        b=CKcVlPoxoKk42bkr/noaCHOPE1V1FC5SBp2NTrs8q3qawGzuYa3PDNr3pXLn+Qajwb
         526UzKh5cKWycTTSL2ijBOExwKnp7VmxU1j8zRVJ2F4IpcqtpU21HBk/vpo/zTWBXY0D
         yKyy3Uk/4/ZsfuuyLBiSIpfhDX67me04RnzRW6cSYZkevkfiQKNiMW1TmLZBL0Gaj3ZI
         XS9pWuMgLidzFG6yNvVsgJwbBqAIiWXiVmD7p4mCXNFgENMuTUwupQ61Gb5FZdqMlL4S
         zx2WRvUfx84bv3JFQmVN67wV0xBMT5/++5M0Ai0WN+ummwYLgH9ttnX+NKr9He5/9+fo
         15Fw==
X-Gm-Message-State: ACrzQf1PCbf0kF6i5RRHuFAMLu+sXoJ6aOsoFuwva2tlp4H8IEZSiSNM
	d7oIJ8IlKO9N55vxQsrD6Dil2A==
X-Google-Smtp-Source: AMsMyM5iwidwgAruSNa03zv/AGhLCmH/0fY2+r/Jj+TasH9LX4SwHYqK8c3EVcZjjuFFc5SdGMeeaw==
X-Received: by 2002:a05:620a:4385:b0:6ee:7b48:202e with SMTP id a5-20020a05620a438500b006ee7b48202emr31725350qkp.306.1666795926065;
        Wed, 26 Oct 2022 07:52:06 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id u6-20020a37ab06000000b006bb2cd2f6d1sm3885523qke.127.2022.10.26.07.52.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Oct 2022 07:52:05 -0700 (PDT)
Message-ID: <895ab493-dcf2-c9e9-7850-3a6aea9a97ee@linaro.org>
Date: Wed, 26 Oct 2022 10:52:03 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 1/4] ASoC: dt-bindings: rockchip: i2s-tdm: Make grf
 property optional
Content-Language: en-US
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20221025124132.399729-1-frattaroli.nicolas@gmail.com>
 <20221025124132.399729-2-frattaroli.nicolas@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221025124132.399729-2-frattaroli.nicolas@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221026_075209_306718_13FC0373 
X-CRM114-Status: UNSURE (   8.92  )
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

On 25/10/2022 08:41, Nicolas Frattaroli wrote:
> Turns out most things don't require the GRF, so making the property
> optional is the obvious move.
> 
> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
