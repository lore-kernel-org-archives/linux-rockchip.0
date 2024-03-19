Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A05B6C54E60
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Mar 2024 12:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AIWDQUkiBXfhG9+jHJYxBqPjbsRfyajuKTLDeOlipEo=; b=OCrlng8h/ofDp7
	+UP3Yeq1pKUkcFJGikhqc2CJTbSPJTGN/nPwf+hXnwqcz9scEdyLsk+jG5bRRsJ20Xwth7j3J1vQj
	m/if7w5FI++kLBEA7SWGXX9n9SogNqBrvLl1R32mgNJf/E1DxBFd8X1kDvNASK7tN4EsqogGSE+W2
	C2KOy1AsQci5mWeQ67IQXQZAXlb7Oux1BJa1McUG9REmSBK0b2UG/+NpiL9csydXXNjv6pGQBH4ve
	BjudoPkwGxkvUc4MyJTEzCYOxb1uoqangLvCDtPGIjnKN0fYCarVXdZ1f6WVYNflS615NkKWUTGXT
	gUZpdQcV9fr7pkDYP/xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmYmm-0000000Ceah-0Exo;
	Tue, 19 Mar 2024 12:41:44 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmYmi-0000000CeYd-0M7z
	for linux-rockchip@lists.infradead.org;
	Tue, 19 Mar 2024 12:41:41 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-a466a1f9ea0so368486566b.1
        for <linux-rockchip@lists.infradead.org>; Tue, 19 Mar 2024 05:41:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710852098; x=1711456898; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=2JeFFmAxQgbjmIs+LQfatAmJVmrtvNfVCmg3meqBwCk=;
        b=gx5Tezgodd4ClEqWsGGeg4+hAah3NIHfV/tuqagTo2YmUNno+UHW2XzzWAOY8i8Bkh
         3UdRNOGmCRJbE7V/6woEYc4qFNfht+6h2uQTRm3WkBxmj2KvndoPreaLVbCrtpVNO/Mw
         QllC03tKOOwjtke4o0vEY30c/O+26Rp8IMngsrrtof3Rn6HCOo7VJspWr61bLXdTVYjL
         OuM01hMdTbLZ2n9ueDEMWtciAW2YwLJjS7ld+sjjHYBi4x8B+cVbBI/9NTp3HAA7Za12
         jaEag8+ahDGJz4M4JcVtqYDjpgehO28z1AsR+6Z5PFPlRzu1ne4KqAn2LgRV61KiLVZ1
         2oQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710852098; x=1711456898;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2JeFFmAxQgbjmIs+LQfatAmJVmrtvNfVCmg3meqBwCk=;
        b=lkSHLliKJaXT3X6BlFd+pAIjkRecPsS2Qb/92E1BmzOs0rov9JMVhlbedNonBF8Vdn
         7PshdbqG+mYHIRwjZuWg4Zmz9NoTbJ073bZv38LbcDhxLaKqxF/g3vy/ta4ta0x12UV8
         Ge6jQ41mVPuqrmkmwkS9RNPWhxYMsRsCRbVM0pE9Qc7QgzCc+lqf2ttFP+ZvOFrMfF/b
         JiFdNhHzwN4YQlJtV38MoIiO9VoYO66LbD2fhBf0rx3chRO10dMkzw1PNqH8pz2JGFnC
         NZ2qLAS27veMHw+SC6g0OeloBrp/ug62GpaN1O+dy5elPvJO4zQw09CWTALa+lKKpfEH
         8wiw==
X-Forwarded-Encrypted: i=1; AJvYcCWUPGODl1GpMTvUp93v5z0kavnIOH+baNrkTiC+PpQ/VzazbkNTnoB7fZMGueX+CC/s9NFOCW6qS4fLfERg63TCPBL+jVqeQylBHkXU7Rk+rcpx
X-Gm-Message-State: AOJu0Yzl+otNzUp7OnDZwFznrrWQ8f+BOOGs9NRNq0io22o6+dxK2G9t
	2z4c8+DHPPrT7X5tvx1jJnLfgp+xnuLaFo7xWq7d8pospf9YLxpouBl7njEnfS0=
X-Google-Smtp-Source: AGHT+IGuIcDbiRk7X0Snu8UKVjYYfiyxcuD3N8LmYYzKcnRENPQjhqfN6c00Srof0ur67+i4Oz1ssg==
X-Received: by 2002:a05:6402:5d0:b0:565:6e34:da30 with SMTP id n16-20020a05640205d000b005656e34da30mr10171630edx.21.1710852098184;
        Tue, 19 Mar 2024 05:41:38 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id v25-20020aa7dbd9000000b00568c3c54613sm3507510edt.31.2024.03.19.05.41.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Mar 2024 05:41:37 -0700 (PDT)
Message-ID: <2e992e97-b526-411b-99ed-29099da2bf0b@linaro.org>
Date: Tue, 19 Mar 2024 13:41:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] dt-bindings: vendor-prefixes: add iesy
To: Dominik Poggel <pog@iesy.com>, robh+dt@kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Chris Morgan <macromorgan@hotmail.com>, Sebastian Reichel <sre@kernel.org>,
 Hugo Villeneuve <hvilleneuve@dimonoff.com>,
 Linus Walleij <linus.walleij@linaro.org>, Tianling Shen <cnsztl@gmail.com>,
 Ondrej Jirman <megi@xff.cz>, Andy Yan <andyshrk@163.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20240319095411.4112296-1-pog@iesy.com>
 <20240319095411.4112296-3-pog@iesy.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240319095411.4112296-3-pog@iesy.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_054140_172723_8BD32EED 
X-CRM114-Status: GOOD (  12.09  )
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

On 19/03/2024 10:54, Dominik Poggel wrote:
> Add iesy GmbH
> 
> Signed-off-by: Dominik Poggel <pog@iesy.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 04505cb0b640..ffb2abb5edc2 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -656,6 +656,8 @@ patternProperties:
>      description: International Business Machines (IBM)
>    "^icplus,.*":
>      description: IC Plus Corp.
> +  "^iesy,.*":
> +    description: iesy GmbH

Just look at the code and its placement. Wrong order.

Also, all bindings come *BEFORE* users.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
