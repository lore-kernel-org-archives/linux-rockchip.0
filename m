Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFEB6C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 May 2024 08:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T4jinfz67wM7S2GMlE0E5L9xrg4Qb9sRSrjB9uk43kg=; b=TIf/yXhGUuZ3jg
	3AueJICg8hlICrHZWaSMhHVHKMckqhSVjOd966274wP5UOZiHvrrMhG865uVBZE0vk6vw302ND33d
	MgMbmQSRw7gXupsfsnEfAPIOJDa/SAHqtdjavfEgt+1BdPxUdMuXzUKLGLu6Tfzw6fiwwh0AmcBGl
	y11p8NXLqrpGfJSuiDF8RNW8sGqjIs/lSoQZrgrB6sU/6kjzytGqnEYE9p5kEXRzn8zEWApUJTCWh
	+Hc/+KERzIxSdyPCBuXxbNqfUrrbgr2SRA3it5RLpDD7vLiaEVH0qnUPkB/MM52yGfmDNaqbglSxu
	w/B6P9p00OUzs1TXLDEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2oSb-0000000Fh9t-3geT;
	Fri, 03 May 2024 08:40:05 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2oSX-0000000Fh82-2JRR
	for linux-rockchip@lists.infradead.org;
	Fri, 03 May 2024 08:40:03 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-51f60817e34so1315899e87.2
        for <linux-rockchip@lists.infradead.org>; Fri, 03 May 2024 01:40:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714725599; x=1715330399; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xd2nsty2WG6SHHF8+nkpeQv9fDcTG+0JYjbHe+PLVZg=;
        b=Gy0/vHMzlvGxaIudYQZQg4onawePTWeA8aWJUUwYj4vBI8Xn780YMFI7A7ZvOrNz6i
         IWzUIu2cA6/jE3Kd6GvtNCbzXDsgYjrsCK7IZwLk5afuea/YbRQ3NgLuFc9sK691omxt
         MYICaznHCeBM+337qc9LmchmrlFsSyGNgNDwWH+6xpyY6AzDGPsCtCWcvN6FnUHnOSUG
         JpSxc0/fHF3TOBsR7vcY1OMIhi4AOv/zIpV04PoH8zns0mLmakylZ9wd9Opd+a+WfGN8
         YwXCjH7gC3nCdv87e4lngv3KxBg0+r+ei91iTXkM/SJ5aLO3FhnAjJ00woJ8aKHnWOJI
         Sc4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714725599; x=1715330399;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xd2nsty2WG6SHHF8+nkpeQv9fDcTG+0JYjbHe+PLVZg=;
        b=Ou3RLuqrC//VT/1TgEjnTK/WfQbVYvdwhjYnmtCCb2NBXRAnhP/bqHdPZ5395zc41e
         5ZWuf9a1JoAoqGq5hFInk0cY4GoijUUhn8tJW9vzzgLx7zryNuyQ1AmXSkmZrxZu0Y7I
         D3YZ9cg7jkXYZF9RelEYoQDgwBDBbvnDZQZCskpsekL9eq4+SoQx209SxnJgfn3gFxwh
         4dQUpz8gSZ+a9GwlnM9Zy2VCptjNPbc1rol9WdbwvDYFj+jtVBhZBPg7Zjaa1YuNNw3M
         BzMKjuAafQ7k0Za12H2nyjeR/B/62Fg9nCLashxOWVD7TjnH01vgT2C6wYxyDgAUFE0j
         zaBg==
X-Forwarded-Encrypted: i=1; AJvYcCXkTsGMGP5oVusczJPKPMb6QtC2kGqfFGFQwOv17ywE1Wi5fpbQXv+pC4G137TfMh/1a3kvhSM45wuIKdJM/f3wXsaot3xfh3ztNxnJ7C123VaC
X-Gm-Message-State: AOJu0Yz0zK+3v2oMxDzfNl9KLblPCl5qlmjKLJ7NEhHlSsCj0vmUWeF3
	AJ+GNtSoNrhwA+qBvxzwt/TYoS8VZ2imKuoPdVXnWOXCUmA9XeXQGZz1WUgHaKM=
X-Google-Smtp-Source: AGHT+IF4QKcb/sXAo8+X01dOQnrnNqk2SSFq/L9I8igfxBKKMdF/CsCxYt2AjVAF4ukP/fC/AnH4MA==
X-Received: by 2002:ac2:58d9:0:b0:51d:bbb:7a4e with SMTP id u25-20020ac258d9000000b0051d0bbb7a4emr1341798lfo.24.1714725598711;
        Fri, 03 May 2024 01:39:58 -0700 (PDT)
Received: from [192.168.1.119] ([37.251.223.213])
        by smtp.gmail.com with ESMTPSA id j3-20020a05600c1c0300b004186f979543sm8674790wms.33.2024.05.03.01.39.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 May 2024 01:39:53 -0700 (PDT)
Message-ID: <7f5e3ab6-515c-4943-8678-03232fd9aed5@linaro.org>
Date: Fri, 3 May 2024 09:39:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: mfd: Use full path to other schemas
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com
References: <20240503072116.12430-1-krzysztof.kozlowski@linaro.org>
 <a2886f72-210e-41a1-aae0-c079a4d11396@linaro.org>
 <0af10387-ddfb-47b0-b59e-eeba1644be1c@kernel.org>
 <20240503082444.GJ1227636@google.com>
 <72f94454-867f-4a6c-90c8-134db2ce150e@kernel.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <72f94454-867f-4a6c-90c8-134db2ce150e@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_014001_779935_438D480D 
X-CRM114-Status: GOOD (  13.79  )
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



On 5/3/24 09:31, Krzysztof Kozlowski wrote:
> On 03/05/2024 10:24, Lee Jones wrote:
>> On Fri, 03 May 2024, Krzysztof Kozlowski wrote:
>>
>>> On 03/05/2024 10:08, Tudor Ambarus wrote:
>>>>
>>>>
>>>> On 5/3/24 08:21, Krzysztof Kozlowski wrote:
>>>>>  .../bindings/mfd/samsung,s2mpa01.yaml         |  2 +-
>>>>>  .../bindings/mfd/samsung,s2mps11.yaml         | 12 ++---
>>>>>  .../bindings/mfd/samsung,s5m8767.yaml         |  4 +-
>>>>
>>>> Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>
>>>
>>> So this should be Ack. You cannot review part of the patch ("I have
>>> carried out a technical review of this patch...").
>>> https://elixir.bootlin.com/linux/v6.8-rc5/source/Documentation/process/submitting-patches.rst
>>
>> Reviewed-by is totally appropriate here.
> 
> Submitting patches is clear on that:
> "A Reviewed-by tag is a statement of opinion that the patch is an"
> Not "the patch or part of patch"
> 
> And ack:
> " It is a record that the acker has at least reviewed the patch ....
> Acked-by: does not necessarily indicate acknowledgement of the entire
> patch."
> 
> So no, reviewing part of the patch means you Ack it. Especially that in
> git log the Rb tag will suggest entire patch was reviewed, while it was
> not true. Review of 80% of patch did not happen.

Thanks, Krzysztof, I'll keep in mind next time. I now confirm I went
through all the substitutions and they look good to me. R-b now applies
to all the changes.

ta

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
