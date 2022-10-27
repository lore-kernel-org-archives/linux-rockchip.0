Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2666FA3740
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Oct 2022 14:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zcICBrjWxCOVD2QYfO1Sjg9VI3ZwkbWX+wRjuIajeTQ=; b=dxjxcf2/B1bTAN
	K+jVjt7LfWMUgn1HgjovXXtBlbSyeELuTBbFMiIAz8lr5dloyVgluwfEH1djk5PxKmDs1AdMgg5Gb
	rOXH1yZ3rJ9P2UAhSKbIxuGte7x6BUY0HXOzqgmvOtO/IBZ0pfnFbpBBeuXBrIrTo8xTkTZSGYvk/
	qPMlQDTKDWqKm/zHgoSLvRaAJYjMmWpNrBTB3v08z0v6D9E1gWqiV3ptai6KLOD3W1cI64N2D6slG
	jnvB+f7Z+lk0krQJ5ayX8GpoxVCRN7WGYtU0oROv2979gmKCAsV/jbTHy0ewIJRF8p8JuLVydeI/W
	5xeuSb4vBeUEotuqu8eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oo4H2-00DtxU-Qu; Thu, 27 Oct 2022 14:54:24 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oo4Gn-00DtpV-Dh
	for linux-rockchip@lists.infradead.org; Thu, 27 Oct 2022 14:54:21 +0000
Received: by mail-qt1-x832.google.com with SMTP id f22so1284588qto.3
        for <linux-rockchip@lists.infradead.org>; Thu, 27 Oct 2022 07:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Esp3bgczyp/bd42qH2O1nm3VZIXuQMi2cu0xsZVGq+s=;
        b=N/CCjZm3MpGvyBcgyzc5rLM02GMUIWyAFnlKPuGtsSSnW2FE8nLpElsmTEY8gt9NRG
         oKzGanNkFtGI1G9DxTjfx0/1K33r1hbq0UII3+P3OYcVAfMDj5T3iu+yqtamFLdYekGC
         IDpcyemQU0BPKpALZMjrUFTV5YKVa6ky2sykjBxRogU0pMoDDmFla4OhTR/9uHXRWx9e
         eyMKMaQF7Js/HaQLBvi5sud2DwOQLhDlE5yeTYOuX05akiEgBVac1CfwkYV53t+/X3b/
         iKSzu1ST4J0jj1t+9sAFjJOYgRec8QqHLiAYu0T7ewgeM6vEJlIQ7Jk7bqteBd7xkzxU
         o14w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Esp3bgczyp/bd42qH2O1nm3VZIXuQMi2cu0xsZVGq+s=;
        b=hmRFm5VsZu86XgLQuORsFNwbiStNim2R7M73sUUbE2U1LLkkKIXURdG6uP3hxI6N0G
         TBq37UED6FD2PoL0yFKz74h1lgcJ3R/tOiMMygjwsJIUlCsxm68W/7ZSjBeXPhrSDABo
         jyoNaAiuaP8+GkvAQNyjfypYQ7jNYBhnWKvYCAjTIPx3X2+WlolgMwrGKuvoCaaLYKjC
         /52HMp6OJf3AyUwMUmPT1RjKthUqJQDJqQ9/4WIz97DRkrZn3OH9tC4F1GetHdHwqNiw
         jNQFIteeSzllkuTqs65hmQXMHRXQntqXB8PaTHkb7U1J56MOfsMRDcVjR1LSBjbTwORx
         1Uqg==
X-Gm-Message-State: ACrzQf1BGVvyxWqSc9MvyAAfNJAFHt8iHggF1BouSIs3lZ57dFA7zadz
	eTx6qy0C6cDjV53Zc49BJUYB1zO9CCAcQw==
X-Google-Smtp-Source: AMsMyM4FAvMRQOjYBuzP0DxssE5MRDphL4DEBLzHhTJRFGW9EiSIvlE4OfLPQd15r5f3FSv7HrFpJg==
X-Received: by 2002:a05:622a:1ba5:b0:3a4:ffd9:22d8 with SMTP id bp37-20020a05622a1ba500b003a4ffd922d8mr1390995qtb.356.1666882447502;
        Thu, 27 Oct 2022 07:54:07 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id d9-20020a05620a240900b006b8e8c657ccsm1096333qkn.117.2022.10.27.07.54.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 07:54:06 -0700 (PDT)
Message-ID: <43e02cd7-94d3-372c-8091-60faf821880d@linaro.org>
Date: Thu, 27 Oct 2022 10:54:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v1 1/4] dt-bindings: arm: rockchip: Add Rockchip RK3128
 Evaluation board
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, kever.yang@rock-chips.com,
 heiko@sntech.de
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, zhangqing@rock-chips.com,
 hjc@rock-chips.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 daniel.lezcano@linaro.org, tglx@linutronix.de, arnd@arndb.de,
 olof@lixom.net, soc@kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <da1252eb-85e9-bdb8-0542-207173523523@gmail.com>
 <16afe467-7b9e-6e99-ca27-7eefce50a066@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <16afe467-7b9e-6e99-ca27-7eefce50a066@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_075409_527770_401D8808 
X-CRM114-Status: UNSURE (   5.85  )
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

On 26/10/2022 20:51, Johan Jonker wrote:
> Add Rockchip RK3128 Evaluation board.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
