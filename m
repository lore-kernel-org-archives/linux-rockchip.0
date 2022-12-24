Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A9CFC4167B
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Dec 2022 17:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=blXS/zRwEjr+kf4aZWLZSulZROJ3C+PNcGpW34kT4Io=; b=WIZ3iD+OZlZi5t
	r0de8GybT4EWG0Yi2e/+BBfxBpK4SGpYtlUh89GLR2Ix0PkRvGBKkzwgviMsiiW93jPdyLEvd9uhF
	vcPTW1Ue3FsESXcixv9J5mbvSrVm/XjmoU6dwOoFOk0IyBKhD5hsvlkkbT24tlVRAggcadC8G+XJa
	MK6qfJe9j28fYR9xaPSSP6nS/AP702uDryKAEedisLLOMjUjdcURB9gEtuCuA6nFzncuSCC3aMVna
	Zb6kSYgxTj8Hh3uz+xjnuD9De8EeUsIZ32sp80+2BL5rt8VTh1hyeOIEEI9bVPIyR5vB8l6YbWI5l
	+itFI2J0NgEnJnULCK1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p98HD-0020RI-EM; Sat, 24 Dec 2022 17:25:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p96Nu-0014An-CH
	for linux-rockchip@bombadil.infradead.org; Sat, 24 Dec 2022 15:24:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=xRkQwgBe7HWm5g+rGsBSlZ8V1FHuzygC6ObFsMxF+Og=; b=EQglZKtzCaDJ+/Ut9FG9cLBcgn
	WPi5Wve0JJtQMiSk5wIQv8h4P9SFp9+cwGkOc4KkN+BOO5bQ2OrudhHv5/oPEpm1mYCN9F2X5C4Ee
	YuDpFzBKJa1PTJ72HeSteEr1fgSUXBpos9YEkHPZWB4Uua/FDTMMlEDeb9jYJwLohUotZ+S2ddRGl
	xngMTT5/Ro1KER8R6Mc+/xI+xV68gM7DHujvUIb7cBcnkSTvPDjJojutl0Zo3Ivq5IQ9Z0AVNdoDE
	spbqp5dW4PeE3PFkyLhwtVDFSpao6RkSwqAWKTqgOTN244GYQWI68E62H2wZOIB/fJGpCsi0bUU5c
	CtE2qzbQ==;
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1p95Du-00Ec0P-21
	for linux-rockchip@lists.infradead.org;
	Sat, 24 Dec 2022 14:10:05 +0000
Received: by mail-lf1-x132.google.com with SMTP id 1so10500783lfz.4
        for <linux-rockchip@lists.infradead.org>; Sat, 24 Dec 2022 06:10:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xRkQwgBe7HWm5g+rGsBSlZ8V1FHuzygC6ObFsMxF+Og=;
        b=HSMjPsGwp90bvzU0vk/VE/jN+FuWj4+OnsqNqWZ4+5udbnEeR/iLZM3slZ/NgCsJTh
         ecFd7zSIq6GDEXYvlgQYTagDYo/os0y832LEQps5EWQ79jJd0QJeA748FdQW92ANFLnn
         Te2KTLlgKhHXE/zpWa8k6YWHZOLm/jSeXu58k55bgl9z1EHxwfeXRwBlbRMjQAXLt+Pv
         zfjF52hR+Kk/2dZfS7C/3KHFIsDeVX6/dsZrzT5aVLmyBTNUDW6nK1RFMB9ZJ7Nwi6lZ
         jNxx3CcN1Ru60nreIFCRedQgjmWxpjFzvwioSHoeDx0gETArGrNBzXvAJnroktWdXQWb
         +E8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xRkQwgBe7HWm5g+rGsBSlZ8V1FHuzygC6ObFsMxF+Og=;
        b=usCBhiEOW/gqfrwBNNPPytAe4rJIxLuteAvTOuNcfOTlFfLqgYp9//sZsQXqMYSL4M
         K3lArApMLekAeSJPjVDwEp7i0rLlyaCMdUV/UTgPwoDwgJf2icWm4XObFT0G8TVxOOxA
         NonZtZQrhDVCrzqQ8wUyeTEngfcjA0CwPfIe8z/rQc71TqGyqQBw0q1okP6uXIihWLlf
         a6eSekQKoxSnTGO9ZAQdsc29BuNYkASD9Mfr+uQkPtReCzZT/ISXHpWyEu6WRZOlF7GX
         CYeweV+HOJQHvn4LlyJviUCsdb6eG9WVYzu2kEeRyskCYu8HcjllbmmUz7i5SzwDti1I
         n4mw==
X-Gm-Message-State: AFqh2koPpoJY3fAhPHE/hMgfu3Nz4IOdxawUw1B3F8rFJuzax0DJjzVl
	sRY8R1rF41xEpueXLkA6qNc9Ow==
X-Google-Smtp-Source: AMrXdXuXxTY+4fe+gJq0r10sxB8QiRd0M+PyK8Yqf8FdgddSN8TzYACAFRfCCUoADbN1gDdMxphz2w==
X-Received: by 2002:a05:6512:1582:b0:4b6:e494:a98d with SMTP id bp2-20020a056512158200b004b6e494a98dmr4464218lfb.44.1671891001257;
        Sat, 24 Dec 2022 06:10:01 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id c19-20020a056512075300b004b53eb60e3csm690306lfs.256.2022.12.24.06.10.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Dec 2022 06:10:00 -0800 (PST)
Message-ID: <e9bcf47b-f48c-60c8-4747-36fc0f88f39d@linaro.org>
Date: Sat, 24 Dec 2022 15:09:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCHv1 linux-next 1/4] dt-bindings: net: rockchip-dwmac: fix
 rv1126 compatible warning
Content-Language: en-US
To: Anand Moon <anand@edgeble.ai>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, David Wu <david.wu@rock-chips.com>
Cc: Jagan Teki <jagan@edgeble.ai>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221223132235.16149-1-anand@edgeble.ai>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221223132235.16149-1-anand@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221224_141003_203013_D6B48A3A 
X-CRM114-Status: UNSURE (   8.36  )
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

On 23/12/2022 14:22, Anand Moon wrote:
> Fix compatible string for RV1126 gmac, and constrain it to
> be compatible with Synopsys dwmac 4.20a.
> 
> fix below warning
> arch/arm/boot/dts/rv1126-edgeble-neu2-io.dtb: ethernet@ffc40000:
> 		 compatible: 'oneOf' conditional failed, one must be fixed:
>         ['rockchip,rv1126-gmac', 'snps,dwmac-4.20a'] is too long
>         'rockchip,rv1126-gmac' is not one of ['rockchip,rk3568-gmac', 'rockchip,rk3588-gmac']
> 
> Signed-off-by: Anand Moon <anand@edgeble.ai>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>

This SoB order is a bit unexpected - who is the author and who is
sending it?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
