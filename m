Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C902CC4345F
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 May 2024 10:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0rNkg3Ytghit1Sgi38pjA/MGaqddR6vufd0/vbsZ8oU=; b=0TWADctRi1Mdaq
	C/gjqrzVaSxNsg6FNduPPqn/tzMPxY953SAwFGqvpLoYIVlszxAczySFs5Ewj4i7XqmEf2Vr8Qv5e
	pVO7T8HZJ9hyu/ZOc+vdl/jZOOUPhgXXwE9vDRtUdtDhWtLDPIHYLfZa2nEJYt6aPPnotu9tMR0bT
	SOaTvO/aks0HSAmE+vytgFfze5YbT5U5P7Rytznktg5UXIUwhFWzFUClum/IphyRmgo3rh+Q1sd7J
	ccVHJyENS/0nbjG0SB7PbwO9TJrCmcbpJFXaVGfXTySks/JOlUzajZ2yOTAE2MCJGw80+VizsC03Y
	4qWRBvcEksGX4p5cuFsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s27S5-000000097cS-0jgt;
	Wed, 01 May 2024 10:44:41 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s27S2-000000097ax-0Ats
	for linux-rockchip@lists.infradead.org;
	Wed, 01 May 2024 10:44:39 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-346359c8785so5452748f8f.0
        for <linux-rockchip@lists.infradead.org>; Wed, 01 May 2024 03:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714560273; x=1715165073; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SYmuLFK3BGv9NhdBLgDNFCQmHdP6DRQ3PI9eDeKznd4=;
        b=r5KIYYpUIwqndOixWfpQrXO5wzLw3+KZVSHOqBTupuzl+lHfWGIhkd91w9voavkt4r
         bmUBQu2cmWOCr2WPbZkY3iOA9VSGxkyoOpfNdaWucpjKVZoDk4f/xf1UDVEDTfeZ9zj5
         jCqaJfdgvG2hWQukFhJeeERgEubtDDTMNIx4krsK8DXs6hU4NZHadXABUs52QTuJCuLz
         Gjse+EPmJw/KWAVeEUO7eg8PqTj3mNGd3KJgWT5jHhqz1uwr6QYJQPW4+Ii4CEKCtGee
         WPDwAa642COoRnARBfRpJU237SQpsMAkoAHKzkWrFuHdVsrI34VOz0FjFFrdktOKyqu1
         B2KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714560273; x=1715165073;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SYmuLFK3BGv9NhdBLgDNFCQmHdP6DRQ3PI9eDeKznd4=;
        b=qgdmNagfVh9XSx1DO68ApirRx/e6gT79P1whn42bQ2Kvmxr4/ZEQja6itBMZmIeG5e
         khUs6mDqsaBOzfmYIHKLVajQ+DXv6rn43aqXgAisXV/m/PZ+QSOKMhJEvmsM2WKkTn8a
         TPtzuqzL22QUnr8pv2nTO32NDCqZXOC1pxSxoUoo1n6szQof5Kjop/+HmXSV/0IDd41d
         pzJ5jRquAKyha46H1eigHu9Mv+PPeSeygpk08sOZKOMv3zgkeOI5Y8NNrEEiBs/1RiwG
         60JXGk/pOqyulEDmDmp73dMiL63ufe4qLqB7tPOjWPLF4X3We2XFglDQutQi00+Whyyn
         EeQw==
X-Forwarded-Encrypted: i=1; AJvYcCXy7dMPsY47XY620xTon4K6iF+xTJJmahONofK2JV23fEycbRfNgzwJEJ9URZJwAa5qFivshVsyacGfNFrumZUrjVkPeeM8O2h0ixTZTKSSZ9Ut
X-Gm-Message-State: AOJu0YyC9XK4hIaDiGBVugUkBmZK7+8mbzuXxsvJz5mzP6ctqVgvs54n
	9sWsiuRs9ftqbP8xWJGIdXbu1hWqpqtluoN1cAYakcUprhuu0bofZ2KKgU0/o9c=
X-Google-Smtp-Source: AGHT+IGkxuY4dhK1o59E+WzYjdOhu0VVa0wkXzXcFXoTG3txAyFGqsjz9Wd91uyD57Er84He7gVn7w==
X-Received: by 2002:a05:6000:128a:b0:34c:c9dc:ccc5 with SMTP id f10-20020a056000128a00b0034cc9dcccc5mr1636807wrx.28.1714560272686;
        Wed, 01 May 2024 03:44:32 -0700 (PDT)
Received: from [192.168.0.102] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id f1-20020a5d64c1000000b0034d24477662sm3562035wri.8.2024.05.01.03.44.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 May 2024 03:44:32 -0700 (PDT)
Message-ID: <e4703eb2-dda5-41b1-bd47-8dd4d15dfb9f@linaro.org>
Date: Wed, 1 May 2024 11:44:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: Add/fix /memory node unit-addresses
To: "Rob Herring (Arm)" <robh@kernel.org>, soc@kernel.org,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Khuong Dinh <khuong@os.amperecomputing.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Robert Richter <rric@kernel.org>,
 Chanho Min <chanho.min@lge.com>, Avi Fishman <avifishman70@gmail.com>,
 Tomer Maimon <tmaimon77@gmail.com>, Tali Perry <tali.perry1@gmail.com>,
 Patrick Venture <venture@google.com>, Nancy Yuen <yuenn@google.com>,
 Benjamin Fair <benjaminfair@google.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Orson Zhai <orsonzhai@gmail.com>, Baolin Wang
 <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-actions@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, linux-tegra@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20240430191856.874600-2-robh@kernel.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240430191856.874600-2-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240501_034438_121153_B645F524 
X-CRM114-Status: UNSURE (   8.39  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 30/04/2024 20:18, Rob Herring (Arm) wrote:
> +++ b/arch/arm64/boot/dts/qcom/ipq8074-hk10.dtsi
> @@ -16,7 +16,7 @@ chosen {
>   		stdout-path = "serial0";
>   	};
>   
> -	memory {
> +	memory@40000000 {
>   		device_type = "memory";
>   		reg = <0x0 0x40000000 0x0 0x20000000>;
>   	};

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
