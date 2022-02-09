Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C90BC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 12:08:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JtAJUXTpa+QH2MkKG0lE7o6smCWtRTOf5Z93TD3PgFM=; b=jNIBeBOI0WXbC2
	k4coEJN61vmWNXejfYuPWHziTrfoLiN5wgJlsu6zdcKIMJmF399QUEoeAWlwWFfObSY6EE5efdv78
	26kBA4kVADBXJlCe2/VMjXIKdel7xBJaTRUOhD5/v7KnHr1DCTkgPo5yLLrxa3k3fCdTMoba8hSRu
	wwMAdMcH0GFtyVDud2MW/HW92Qy/pMXNfNMRsmNkhN3YwYBwBci1QWsttJJcMTGErpsYcATKQABFu
	zfSpbt3JkqDSXr+nbJeEASB/PXa+pIHLVI06qTS2C4fVGbGvv382mK32/CO0D2zogBOPzGApWlr9O
	vIFRRj1Qn0hrcFaZXrnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHllZ-00HYnJ-OV; Wed, 09 Feb 2022 12:08:09 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHllW-00HYlr-SA
 for linux-rockchip@lists.infradead.org; Wed, 09 Feb 2022 12:08:08 +0000
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id B02593F324
 for <linux-rockchip@lists.infradead.org>; Wed,  9 Feb 2022 12:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644408475;
 bh=pRag9cOIM4CLzsxK+XeyiBU0JF+YtVMAHEpcyJclBbk=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=eutYFcrDeQWYaWKeSxfij60ntNujIsdOmJn6dmAGzbtYz/wyAbht+ifROc2jobVXm
 ZYCXHVMRSzc0aHSDRn+ElmFe7K/Cg5QxoPRs0zLGyMlwGAreTVXTTjCBpQOUPTsfHf
 PerN3rV2uSf3nrxD/RNVLUr5Hifrb1ygENinXEfQ239kt57BEC927j/m4LEUk1seWQ
 Ze+4idO4qkUQ5aNPISo5dFpfuqLjyCksb13JHu4irO+kZ0iJbrjJ9fGQLBC/fwKCEH
 kq/N7RaR/hgJM+sN2cEwoP2vz1FQFl1gDpOfsW1l5BssQIjeT3IMADW3w3QhFJV7eS
 h8DyV/liDHzrQ==
Received: by mail-ej1-f72.google.com with SMTP id
 vj1-20020a170907130100b006ccc4f41d03so1088880ejb.3
 for <linux-rockchip@lists.infradead.org>; Wed, 09 Feb 2022 04:07:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=pRag9cOIM4CLzsxK+XeyiBU0JF+YtVMAHEpcyJclBbk=;
 b=PKoH0cIZhU3HtWrdPwAnuV9DAwV8UA1gW9/jIahRJPFPhQbKJfWWrPERbLcjrxeGRL
 i599S873WkWh46Dpbjs7rtZsGCcSIfXCPFOixcP/ex3HTM58m4+Bz84tYrPMrV/yLRD1
 qUx0Q4syxyCcsezcsue3t2YssiAq4fdbrhB3XT8+th2QJQbeEoszBi33n2KomjGrRijU
 3mXvv7PLMMrbDlZJ+0yzh7qPOj04Rj+E0kGHUCiOaVEqFs7CghK1t2cdVXAjNYvLYRYB
 Bt6auR0awLuPWIg1mmcfGZIBoEHU9TJFVFWGK75VNrrVhTmU2u4sF16SU0tZbdsJlNSl
 BfNw==
X-Gm-Message-State: AOAM531+pmiXiLzx0M8cIrA7hwK/Imw8VE5eM1N4oEjTPc8ZG6ouk26M
 Q5adrKywC9kiqAlXXjMtI2axOtM9UqdXHpR/lqpdLbhhgjYtq+lGDDZRW/SynxKDhVFjZv65ar1
 kOy2kJyJBrbh0xJ86nF8zeYYDNRWLzX65HWYVvN3QOqicuY/7TQ==
X-Received: by 2002:a05:6402:38e:: with SMTP id
 o14mr2091381edv.414.1644408474793; 
 Wed, 09 Feb 2022 04:07:54 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzp9D9NxZvABqtfCoI3O1I7fzjAY50tR61mEZ09BQntiUDHsfbJQz2CU099/mXih6rck2X3sw==
X-Received: by 2002:a05:6402:38e:: with SMTP id
 o14mr2091370edv.414.1644408474596; 
 Wed, 09 Feb 2022 04:07:54 -0800 (PST)
Received: from [192.168.0.94] (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id g19sm3119597ejd.62.2022.02.09.04.07.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 09 Feb 2022 04:07:53 -0800 (PST)
Message-ID: <d4291c95-64dd-f860-da9a-0f11d44ecae3@canonical.com>
Date: Wed, 9 Feb 2022 13:07:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2] ARM: dts: rk3288: fix a typo on crypto-controller
Content-Language: en-US
To: Corentin Labbe <clabbe@baylibre.com>, heiko@sntech.de, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20220209120355.1985707-1-clabbe@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220209120355.1985707-1-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_040807_095028_87E72E14 
X-CRM114-Status: GOOD (  12.66  )
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

On 09/02/2022 13:03, Corentin Labbe wrote:
> crypto-controller had a typo, fix it.
> In the same time, rename it to just crypto
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
> Change since v1:
> - rename crypto-controller to crypto
> 
>  arch/arm/boot/dts/rk3288.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
