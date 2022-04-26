Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06B1CC433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 07:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bpy/wGzTl3iXTTgVvaBm+ftSvfM0RNDpmOLXVgDkDwE=; b=5DWALhg0Vxd4ix
	stccCZMLMxhcP1twTJ2wGUS+qgc8+5wurwWuLxyVQ/X9YNqAVWMOPpv46tvF8+wXLAu4Rp4u8AmvG
	ByNkrL3cvwmFTZwHw959FT91pPe9RZ0LXyz/X+LKanSSRcZty8InGKC+pI3CBpqxxZ1Qby9LLPpQu
	p4uPwZFgSRtPKKU58YGS6OWtJNoinSHCiLrVpAt/2JPAHnQVL0QFGbrHZBVIFsbfA6T0oHtAwO7HO
	nqHmBFzzUV9txDT38bK2jVSI1GALFZV3MoESpFSEpb/UyNBs1y9mGJJmZxxXux9ZZOhkYlFmoMpTa
	iLR7HzUo+WVszTeH7STw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njFOA-00Ctt3-7N; Tue, 26 Apr 2022 07:13:34 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njFO7-00Ctrp-8C
 for linux-rockchip@lists.infradead.org; Tue, 26 Apr 2022 07:13:32 +0000
Received: by mail-ej1-x62c.google.com with SMTP id i19so2472996eja.11
 for <linux-rockchip@lists.infradead.org>; Tue, 26 Apr 2022 00:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=796okj7fUhfEo6Z+Bxk5e2KE1IFo6Dc7db5MBQ6gCi4=;
 b=Xg8xaGl3qOynNGE6l19Z5REqd7o4IHyJY6pnHNqA2NQsZ4xuKKdM1MOZnQkyw5w+VL
 uY9s5qBh0MgEdIl6r8Yf0gT9CeJpbE4TX73rynqCDd7GkJBn5mhNSyDDHlH4B0qoXJCw
 SHZFY47RNajDkrMT+nMKMGyjSNdEg1lJ7Iun3uHI0FfbdgbQpXn7tZrCTC5VDWguNnGY
 Cv4Kms5dcMhE0XTNVOEN1OYATjIVXwBS0Zc8qsFuuIgal5KQHmx9yrWxDSQbXwbXPGBF
 /gI3vMXFNJrnUlR3CxzLcvIOswGFemjF+HqCsOBWXAomC1nyc00/T4tB4Oedxl77m/w4
 IDiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=796okj7fUhfEo6Z+Bxk5e2KE1IFo6Dc7db5MBQ6gCi4=;
 b=a+Hw4jKG6LpsN1Z6m07iduJtjsT/fDgiColPnOA0p56Y3HJewuZKabX+rtZptwuEX1
 sSvx5KBw8ICZFi7YHvLnyPio76LBSv1dDGl3MI1fG/2238OkQI8qR5Zqh0lf80A+uswn
 EhT8PX9KIRuInFmueNNSAeLUBFUYs0fXHiAu6dylQ3BMs/K2T0uqErL5uQ1vNo3p2o2F
 3CMkQBbtrZ4dgoja7klHWd17cfqicQrR2hLG91gbaDzS+wn3sjUFn5e8qI0JWnPXDA40
 BPb9DMfNIBd1xq4uJVz22gocrzs0Eq44Lwj0fq3H89o+C+8urWWI+LFA0OWyzUdfpaSc
 qEDg==
X-Gm-Message-State: AOAM531LgKPkTVPbmdEXxH51FFes64hIGrr1IduA4xaw1xmblVa1swTs
 rJNPwzqbYLiDt+u0X8pPtYwWFQ==
X-Google-Smtp-Source: ABdhPJzX1cqLrcHhd4KQ3AKjehHP29V8LYMhJeuJd1XE420U3ovR0yd62G4tmz9dpqk/GrepN+5mwg==
X-Received: by 2002:a17:907:c243:b0:6f3:953d:6e2 with SMTP id
 tj3-20020a170907c24300b006f3953d06e2mr8363720ejc.506.1650957209401; 
 Tue, 26 Apr 2022 00:13:29 -0700 (PDT)
Received: from [192.168.0.244] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 kx5-20020a170907774500b006e1382b8192sm4499892ejc.147.2022.04.26.00.13.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 26 Apr 2022 00:13:28 -0700 (PDT)
Message-ID: <ebdc9fe8-f54c-9b11-a167-54219b124cde@linaro.org>
Date: Tue, 26 Apr 2022 09:13:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v6 24/33] dt-bindings: crypto: convert rockchip-crypto to
 YAML
Content-Language: en-US
To: Corentin Labbe <clabbe@baylibre.com>, heiko@sntech.de,
 herbert@gondor.apana.org.au, krzysztof.kozlowski+dt@linaro.org,
 robh+dt@kernel.org
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20220425202119.3566743-1-clabbe@baylibre.com>
 <20220425202119.3566743-25-clabbe@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220425202119.3566743-25-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_001331_355600_A087BA8D 
X-CRM114-Status: UNSURE (   6.97  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 25/04/2022 22:21, Corentin Labbe wrote:
> Convert rockchip-crypto to YAML.
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
