Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D629C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Nov 2022 14:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+0QHGBG+dTNLRKdQR9ROJfiDms1Q1qymH/5R7Qn8RXM=; b=aK8nWad4folcw3
	1a+fa6LMN1veaFI6EvidPLjOt4Fs3FMRmEiyACssLjZ3TQAbNxTV0njGZRyD7ftso/HjTK9gnynbk
	Q5lmrnWRhM7dESs0xhnkHv7eOYUXCH+Cx85Laihb23FQeb4g+iMuCqqnYVj9kNYtdIj4vtlCtAx6S
	0XpKGi5J3TiQoWZU9OpyE5yBqrXzJZclEGCUoqfr8scqVcwc99VVwjJOi09CtcXakBCP9itJn/9fQ
	iNXQKHtEtbTTffZrEYdDg7d7MgqJXPcUlGZg8bP6i3GwQqWXjC5lZASBjd5yY3d+SryWR6t9RBuFW
	RTWoH9opkYXnZ5QevRZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxqX1-00HXxf-9R; Wed, 23 Nov 2022 14:15:19 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxqWq-00HXrJ-CC
	for linux-rockchip@lists.infradead.org; Wed, 23 Nov 2022 14:15:09 +0000
Received: by mail-lf1-x12d.google.com with SMTP id j4so28387632lfk.0
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Nov 2022 06:15:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TINdZmgbDrPzV0ASdfCG6s3LtrjTdjbG7XRFv55Do+s=;
        b=T24d+0jcR5lA60i/hDr9pxlj7VcTDNIPxCLYpkwLfYreAl4zRdvR4jE0/1a9wGaBqO
         cBFImhmg84zHF+FWgR1HvdD837KljLtuP8taD1ogbB6N6wHRTeDaoBD54vMZLepU8T2G
         V9PAo7UA2ycJzMbGt4ET3Iquont2aQb9PbJJkJtz0siQvSm6GfajIj5qKHgxLuVs8ZYr
         wPrZV9eNTQV4WfLwDFIY6B+t7vw2FyGpP9fnJDjCC0QmNaiUtEfzxQ7geqbfT2P0lqrh
         RoTN0KPftTmsKoc1Db+91yiCcJmEJRvcl7IwEzom3oC2GyArUbuJ2BlxU8cJ5PUB3tEj
         lklg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TINdZmgbDrPzV0ASdfCG6s3LtrjTdjbG7XRFv55Do+s=;
        b=ORybMhzN/35fb+DnyUbXrRWICFGNREA+/eaxtSpNi3G8gRldvV8/b9JkBQnjW0h1iT
         hkVxso1qZXx6BDYeIvjRsX7Cx/2iAZe1/dtqchy++k3z8u6ZSt+7wxmg0wznDFxpfIyv
         nRRTvRcMzWsvrEcdGQjCDyEynuqHWGTJb8ZlI0KR6cOL/nzwl9B88MAWtYxeLprGOBb2
         cug0cNvjZZLj9YZStb8H3OwI8EWnnQcHmxIhLExUqpXAYnYEq/UdQvfuptSxuh5k7rr6
         04eW1SbTtDWLePJBT7bE5GN8Qwbumc8xyeGIyz3kV7VwKOitGh5bWt+l/oBmbhxI1Er/
         jI2A==
X-Gm-Message-State: ANoB5pk/+LAQCtVjRAJWKdO4o81Fx2hOrDSmjcrS9q8wHLDaL7iqNUfN
	ypHKGVgNaTOWXbvO/w2NIgU+WO9+mR0wpyGy
X-Google-Smtp-Source: AA0mqf7us62BlfklbhRWa1ceYpuYyxgP15LQsqJEK1EMlwdIuyjDEP2y6HR/i+RboeD7kufOfcfTtA==
X-Received: by 2002:ac2:5f49:0:b0:4a4:7db1:b853 with SMTP id 9-20020ac25f49000000b004a47db1b853mr9118798lfz.562.1669212904435;
        Wed, 23 Nov 2022 06:15:04 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id a25-20020a056512021900b004a9b9ccfbe6sm2930656lfo.51.2022.11.23.06.15.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Nov 2022 06:15:03 -0800 (PST)
Message-ID: <3df1e707-929e-b0a0-441f-61f1a185aa44@linaro.org>
Date: Wed, 23 Nov 2022 15:15:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: increase spi-max-frequency of
 nor flash for roc-rk3399-pc
Content-Language: en-US
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
Cc: Robin Murphy <robin.murphy@arm.com>,
 Chris Morgan <macromorgan@hotmail.com>,
 Markus Reichl <m.reichl@fivetechno.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com,
 Da Xue <da.xue@libretech.co>, dsx724 <da@lessconfused.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>
References: <20221123094827.250657-1-abbaraju.manojsai@amarulasolutions.com>
 <20221123094827.250657-2-abbaraju.manojsai@amarulasolutions.com>
 <4981984.iIbC2pHGDl@phil>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <4981984.iIbC2pHGDl@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_061508_470689_756C9D5D 
X-CRM114-Status: GOOD (  10.07  )
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

On 23/11/2022 15:04, Heiko Stuebner wrote:
> Hi Manoj,
> 
> Am Mittwoch, 23. November 2022, 10:48:27 CET schrieb Manoj Sai:
>> Increase the spi-max-frequency of nor flash from 10Mhz to 30Mhz,this improves the
>> flash raw write speed by 0.9 MB/s to 1.6MB/s and the time taken to write is
>> get reduced from 36 seconds to 20 seconds.
>>
>> Signed-off-by: Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
>> Signed-off-by: Da Xue <da.xue@libretech.co>
>> Signed-off-by: dsx724 <da@lessconfused.com>
> 
> who are these other people? :-)

moreconfused.com :)

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
