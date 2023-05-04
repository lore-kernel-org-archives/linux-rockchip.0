Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17196C77B78
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 May 2023 14:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ULtH9TYAu8PooR2L2GH8E+vTR0A7Ssou+SyrTCmtzmg=; b=uHUkQ8GvBhfhEB
	zAEZ0wzQsbAxMuvxKFN1sSXRHHo96+rDl823OGW759SNjnaKmSj07NM99vdnSZpco0SD8Hq86xMaM
	9nv20ng8NqXWcHeMkm4lDR7BSJVIapcD0ws1uXxiILO9ksxlLD+EQ6MIcea8fdUDyzeT3/SEl9Bg/
	Wm7jozdqfn+CMn6/YUagSVE+R6DhCjVj4w0/6yhotboFV1iZ9sxMVMlS6D0xQY84O8OECM8fTLk7X
	BIw4XWs4Brt6Mx7RS0UQO1h8g8xtprirfSl+mGTQPDL1BnxC9o/pWcRsdImNsqOcfSeJsQU3ZKeXi
	7bMpnKNw6HZGjkg88ftQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pua7M-0086wV-0R;
	Thu, 04 May 2023 14:39:36 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pua7H-0086us-2g
	for linux-rockchip@lists.infradead.org;
	Thu, 04 May 2023 14:39:34 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-50bc040c7b8so915938a12.2
        for <linux-rockchip@lists.infradead.org>; Thu, 04 May 2023 07:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683211169; x=1685803169;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RtHFIOyHUHDm6OwF3/rRw5NdicRws7FTGgdEZwPjkL0=;
        b=B2ywh6muaT5cNRLxTdpb3TEH/PiIrCqdXYixzvXno5GZTT0ZscAElKb2bmGGt2PxHR
         /OudDMGAa+SYwMxo5fUixcqCVy1/Malqex3Hr8MCOIX3wHyzpLbAXr2kovOg6hdJqacT
         W8CjMqQZMpaV1oSgry9csxJq6ob8N+tHo9oNEqVJ1Fff8skrMNxBl/rZcVK5MDTOi/TO
         /ZjkXUFVBynZE2GU7NA4iNZ/iFfAJlEhz7hCm1xOYo/DdETSzbBaFgS2oAroY0CtX0ry
         17lAR5bXcJmJK1qpPq/p7NaN8h8NZ8vi5flVyaEx6ACgn9Z0apLJ1a2+GFHftIjAHWTh
         br4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683211169; x=1685803169;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RtHFIOyHUHDm6OwF3/rRw5NdicRws7FTGgdEZwPjkL0=;
        b=HB7rDobsTaFLPqkH5dR+YhGT5ssvD1AgQSHLEGZYJ/hyqMKVJYG+/6wsMZBmy9VjPu
         v2oTF+yT0GsrSiY6xI6ppuyer58PFx7alyLSBJQi/3KI8I5kVD9v5ytQQ4vkLOSPWJCO
         OpVLcF21xUX8catnu1N95h48+6YLVTqhFNhXqCJOij9C+HgK5j6K23Wqw34Gp/apxtcb
         pJAGU04HCiXfZyEhmCEpRwMmy8Ndd8hZL+6w4hhD+epNQfKAhE++ytVUdQDXA9Q70V03
         8y0DMgzHWFYp3GMYE8nwFgUTpmB6VGmEa6donLWk9Zzk8P47053nPM4zop6ju58yzgjg
         BeYQ==
X-Gm-Message-State: AC+VfDzrTAmTDvHSFtv5HhqGhTqhBzRTtTrTKMzbU44ieklYh1q5748e
	x8TOLUcNeomY8DUzpVywM7QgWw==
X-Google-Smtp-Source: ACHHUZ7Z3L26zZEhzBRypzDcsBcd1kRVAs82E/aA2e4syMmGyPokB7NYew5voOG/UPvwcxk9Hlq1gA==
X-Received: by 2002:a17:907:9693:b0:953:9b27:8f00 with SMTP id hd19-20020a170907969300b009539b278f00mr6645560ejc.74.1683211169112;
        Thu, 04 May 2023 07:39:29 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:cbf1:e7ef:fb81:e912? ([2a02:810d:15c0:828:cbf1:e7ef:fb81:e912])
        by smtp.gmail.com with ESMTPSA id d1-20020a170907272100b00965bf86c00asm302384ejl.143.2023.05.04.07.39.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 May 2023 07:39:28 -0700 (PDT)
Message-ID: <2490f7dd-9b6b-2865-4e44-37808b167c11@linaro.org>
Date: Thu, 4 May 2023 16:39:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 2/8] dt-bindings: nvmem: rockchip-otp: Add compatible for
 RK3588
Content-Language: en-US
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Finley Xiao <finley.xiao@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230501084401.765169-1-cristian.ciocaltea@collabora.com>
 <20230501084401.765169-3-cristian.ciocaltea@collabora.com>
 <0678c24c-33ae-7e99-7bb6-d15dc5a7ed76@linaro.org>
 <a5d4a5be-b658-d9fe-59b8-69199329446d@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <a5d4a5be-b658-d9fe-59b8-69199329446d@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_073931_870407_2D692A74 
X-CRM114-Status: GOOD (  12.51  )
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

On 04/05/2023 16:14, Cristian Ciocaltea wrote:
>>> +        reset-names:
>>> +          items:
>>> +            - const: phy
>>> +
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            enum:
>>> +              - rockchip,rk3588-otp
>>> +    then:
>>> +      properties:
>>> +        clocks:
>>> +          minItems: 4
>>> +          maxItems: 4
>>> +        clock-names:
>>> +          items:
>>> +            - const: otpc
>>> +            - const: apb
>>> +            - const: arb
>>> +            - const: phy
>>
>> Keep the same order of clocks as in older variants, so you can keep the
>> list in top-level place and here only minItems: 4.
>>
>>> +        resets:
>>> +          minItems: 1
>>> +          maxItems: 3
>>> +        reset-names:
>>> +          items:
>>> +            - const: otpc
>>
>> Shouldn't this be phy?
> 
> It seems there is no reset for PHY, or at least I couldn't find any
> reference in the RK3588 TRM, nor in the downstream driver implementation.

OK, just to be sure that this is not the same reset as rk3308 just
differently named in consumer.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
