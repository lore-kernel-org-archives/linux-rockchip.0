Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6968AC46CD2
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jan 2024 06:41:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t48zi83yB7r42PlnkveOvRDHtxrywGGb6PkwSPCIrSE=; b=N8x80Wi2IFxt/n
	msgLIxpKpy5eKc5C9z2x67yykCRSE0oJdabcIWnAP2+qCqvpP+CvyE/OEB40plbQfKPQIHz1o6YDv
	rR93GhDnLmzZelpZ+svcfGuEurQFcuicFdxx69+9xdoLCdwwUCfvpn5+5hv4QR3hEuehk4K4FOuq/
	ifD/i0Gvxr4yX1sX42OAYHK/nogLN33jIDYDsuwi1g8nxtNIxYBcWfT63Px3Hh/PnOD7m07oScXS9
	zCJo1h/GaXix3AUkk+k3TpAW5hVubrX5OE/vkjZI/1sUAJm8VOcxzkXwYsqvpt1WPET5IubQ8J0HR
	ycHc1sNAcAiPYaLd3IUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSWwr-001lFj-2N;
	Wed, 24 Jan 2024 06:41:21 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSWwo-001lEx-30
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Jan 2024 06:41:20 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-40eac352733so32379525e9.0
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Jan 2024 22:41:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706078475; x=1706683275; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NICHSAxySmTg/Sua4/M3hT6SWOneHkLtjqfL+d3zPEs=;
        b=aib+qnpL5R9Zzbq1JKQkjGRlu63h8MNsw5VsG0UDtsr4lw3R3COJn4FnRbQeSBgbvA
         RQ5meC0QzLIk9Lnu0KjsCIihCGuVVimKV5XoiybQX8G7Jj/V+2+XphmvmRNBflrcYdup
         AsKpWTND6kJuovprQQ1uUv3xIMM1KY+u1pJzuPjz/x3NNK8rfVfjZxK+7zrwj5/KTfah
         E4ZEcw2VJ1e0PTdbnirT2lxDhcHWYqiFAj5DMsSPFL8gXBw/1MK+Yn+KBIz7GShwDRmx
         mIdRvtOu2GH7rRgh1UlT5OD+e0KtRD6qNYgs3Dlt1fopBUxBp4OwuqdlzfJTcAs2ZxGt
         SfTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706078475; x=1706683275;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NICHSAxySmTg/Sua4/M3hT6SWOneHkLtjqfL+d3zPEs=;
        b=wFD5+TFs4vuHQF/SbLfQYaIQTOC09AyVQL9KhrNPk9B3OHVf7f1CY2sDmCrkWnxQ4q
         oD15Rlyyr7Wf/9bSqfNZl5g7TABLADm3SSWJOov/VU/bqpKnFlRhuVhi7FNDNuchQ06F
         1a3JMgHCjFzQ8vVmVbLkk6sR16Wu+l179FaKMXCmYQwkdibnCaAQYKB9gcBPhv9qUQ61
         x5OoOJiBVwuL1W55sY9+SfnV1cZD5Tm71ofdvqSjHz3SSfmffSUGgeRGs7/39y8CxWUA
         mWwql9MNb34v+gMF4pTcJ/kufCRfXpanCmrokmts843YKnteTv8QLwMLhfcPtbMDkveE
         j6HA==
X-Gm-Message-State: AOJu0YzS67sxYaNfpEGHHJ4uS9jzPfMeSqimO741ODZOZ87ECyWJEx3x
	22KQcJrvlj1+cFKABC2sC8v6e0XB8BTh/mBk7kAuEw2kp++cxQvv94Tz595U/Mk=
X-Google-Smtp-Source: AGHT+IG2lAirQg7KABvIuPVQXVnqopvRb++dw1CeP5mrw8zUq+fwtC07UQlQZVP2Ozux+wr31P97Gg==
X-Received: by 2002:a05:600c:4f4b:b0:40e:629a:b7d9 with SMTP id m11-20020a05600c4f4b00b0040e629ab7d9mr772251wmq.121.1706078475314;
        Tue, 23 Jan 2024 22:41:15 -0800 (PST)
Received: from [192.168.1.20] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id bw12-20020a0560001f8c00b00337cef427f8sm15589455wrb.70.2024.01.23.22.41.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jan 2024 22:41:14 -0800 (PST)
Message-ID: <90d6d947-48ec-444b-81bd-d829ec16530d@linaro.org>
Date: Wed, 24 Jan 2024 07:41:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] dt-bindings: arm: rockchip: Add Anbernic RG-Arc
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20240123212111.202146-1-macroalpha82@gmail.com>
 <20240123212111.202146-3-macroalpha82@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240123212111.202146-3-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_224118_989708_1B5F568A 
X-CRM114-Status: UNSURE (   7.72  )
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

On 23/01/2024 22:21, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add the Anbernic RG-Arc S and RG-Arc D devices, and consolidate
> all Anbernic RK3566 based devices under a single description.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../devicetree/bindings/arm/rockchip.yaml     | 31 ++++++-------------
>  1 file changed, 9 insertions(+), 22 deletions(-)
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
