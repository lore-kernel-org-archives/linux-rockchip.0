Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74362C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Nov 2023 12:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RZFc+8CSS+lEAnRAy/0rFj+rB0BVQxQzeVQ7RY0u6Ss=; b=N+4PUFu+gHfegF
	cCx5H33t1sRWoFivZlWQI4dEGNOT8mN4/nXMlXLPPD39z9BY+LE3NQW+uSaBBlDzycM3mRO0ac1Wa
	11KxkxmAZ8S80T4YDCDzNwxNPQbsz7fl1STr1piYwAv5FhbreslMehaUK485uxmSno+Oe31UzMJ4J
	tIVqvAvGIqVsm1ZZeuDOXGpNVVKFYzv4jHfoXgeykbxHbGUe9efOuU4HR/hD+H8VTQBnKU664XaA/
	uXuTIaoxTcFjMbT5+MHmpFTndMx59Eas4RpNR0kBaTTpTyyElACFDBaIovFuqm36lGAe80m6hjlx8
	VDSFsmXZowstpIeZ0zMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0hQY-003knp-2t;
	Wed, 08 Nov 2023 12:12:58 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0hQV-003klT-0T
	for linux-rockchip@lists.infradead.org;
	Wed, 08 Nov 2023 12:12:56 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-9becde9ea7bso150780566b.0
        for <linux-rockchip@lists.infradead.org>; Wed, 08 Nov 2023 04:12:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699445569; x=1700050369; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sJVgrec/1Dk121wZtbJlx4BtNg2X7nZzXaaCAUZMs8g=;
        b=GWFQZ9BCVlxQuB1zzlb3Al6FsHIlnIOGmvHmJOGpt6bH/dCth29t2ut4ds86Fj3gbl
         mSpgeETjqejuwmc6bnpMLhiEGLHC9ImbYyiPci8NCvKlFTDw8gs/bZ4uG3K60J1zwXrz
         HC0iM2ZboYpQTzoo7RCYDfVIkvJcuIH60f6LdGTuWE98uKsNG+rExNwMqkbpwGwxNXoB
         yW8CTIqo4q9cMll7N7zQWo8ObJYrI8xZyS0ztqwtbLnJlFgZngpXngcjUWo8MU60KMXM
         ziD9ZeX3CNuDzEhA0tqKSNErbL2BB4Ds0DgpKB8IjJiPcIN1GiFuHf8hQU2HTqnRRNmB
         ErbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699445569; x=1700050369;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sJVgrec/1Dk121wZtbJlx4BtNg2X7nZzXaaCAUZMs8g=;
        b=NSOkG/j/btEQHd33dNHMrMqrZjcPiSFhRI8xmpMbe3Kdf0PbuEFhpFSd+CGwTaVVEn
         LrQeAciLketC6PB+5DOXTTl0RynLBWHVEPM5XvOumS9gbCxtIBsfEx6QlxEMNHHbK3TM
         qxxGwdfU+gmWmOrG5VhFrTIg3jS12LAbUHn/pEj7WEG40fRuN7dLRhkOYKPe+aCSfU5U
         mtdALZK02wpBoJqeFtv+aTVmRCqyrzIVOhylm46NPd/ATJCGaC2O/Gor+TRySOJpkMp9
         CjahgQ8mITo618rRpQiNN9httiqZzLHehXIZ/a82Y+wO1klLoD2AUI2TF/F2dEU35uzN
         qXcA==
X-Gm-Message-State: AOJu0YzM+yKa4D6svGOPkZlObWChvMBFCGrXmUKPXl/pZE/IWVmhjg+T
	JjXDqhBUXdgVUOP7wZ7KO6cpRA==
X-Google-Smtp-Source: AGHT+IHoT69iLwX4AuDuQh/YICySUXvYA5Wo/yYozzA3garsHeGHKAmZm/8Mak7gAmMvJDs/ppPJYg==
X-Received: by 2002:a17:907:9303:b0:9a1:f1b2:9f2e with SMTP id bu3-20020a170907930300b009a1f1b29f2emr1425533ejc.2.1699445568761;
        Wed, 08 Nov 2023 04:12:48 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id gf23-20020a170906e21700b009920a690cd9sm945593ejb.59.2023.11.08.04.12.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Nov 2023 04:12:48 -0800 (PST)
Message-ID: <211178ae-295e-4e99-bd08-4cd887bdfadf@linaro.org>
Date: Wed, 8 Nov 2023 13:12:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/4] dt-bindings: clock: rk3588: export PCLK_VO1GRF clk
 id
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>, Elaine Zhang <zhangqing@rock-chips.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, kever.yang@rock-chips.com,
 heiko@sntech.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 huangtao@rock-chips.com, andy.yan@rock-chips.com
References: <20231108061822.4871-1-zhangqing@rock-chips.com>
 <20231108061822.4871-4-zhangqing@rock-chips.com>
 <20231108-donation-uncertain-c4d0f560c420@spud>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231108-donation-uncertain-c4d0f560c420@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231108_041255_192889_0E9D88FF 
X-CRM114-Status: GOOD (  13.12  )
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

On 08/11/2023 13:01, Conor Dooley wrote:
> On Wed, Nov 08, 2023 at 02:18:21PM +0800, Elaine Zhang wrote:
>> export PCLK_VO1GRF for DT.
>>
>> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
>> ---
>>  include/dt-bindings/clock/rockchip,rk3588-cru.h | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/include/dt-bindings/clock/rockchip,rk3588-cru.h b/include/dt-bindings/clock/rockchip,rk3588-cru.h
>> index 5790b1391201..50ba72980190 100644
>> --- a/include/dt-bindings/clock/rockchip,rk3588-cru.h
>> +++ b/include/dt-bindings/clock/rockchip,rk3588-cru.h
>> @@ -733,8 +733,9 @@
>>  #define ACLK_AV1_PRE			718
>>  #define PCLK_AV1_PRE			719
>>  #define HCLK_SDIO_PRE			720
>> +#define PCLK_VO1GRF			721
>>  
> 
>> -#define CLK_NR_CLKS			(HCLK_SDIO_PRE + 1)
>> +#define CLK_NR_CLKS			(PCLK_VO1GRF + 1)
> 
> This definition is part of the ABI, if it is safe to change it, then it
> is safe to delete it.
> 

+1
(and we already started doing this for some platforms)

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
