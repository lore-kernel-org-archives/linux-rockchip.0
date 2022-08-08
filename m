Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 044B3C25B0C
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Aug 2022 06:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iRHSHRcp0PNd4P0ekSM78hH/w4XtZv6up1mbHzeOuEE=; b=1ssPkGfm2US8nV
	8Mj2aoR5YGWX9m9TUsJhU6G+XGkMPUUghAHadkK6ea2WHaXHLA17imFQB6gtB8yLU/xfKx1RtvFh2
	gW1JLwVmF4mTiXOw/ZfX6KDCBiPVubqIFRCAaSIDl3Zt1Bs8gwJkVrv8Uzjzu7o+jGc8qvwjHy4A5
	B9+TzCxt2sUuwcRhohEj8d5yLT2qf6GHlGlLyaYFE08lh2geK7J0zDFgGipmJszUtIgZgT7ZNKGEC
	pX0GYNggi0iiEXjCqi/vaWSN31l4pyBsNVb/TxoQ1pnIMr8O3Mt/u8Oeea4U0rTEzHTycWGVcBStH
	W2Fz5l5u1lF6ZfVEQz5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oKwPG-00BtNU-48; Mon, 08 Aug 2022 06:38:30 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oKwPE-00BtLK-1K
	for linux-rockchip@lists.infradead.org; Mon, 08 Aug 2022 06:38:29 +0000
Received: by mail-lj1-x22e.google.com with SMTP id r14so8813450ljp.2
        for <linux-rockchip@lists.infradead.org>; Sun, 07 Aug 2022 23:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=tJaOlNJnvpuuVPsZGu5FsCCSJWxw4AyuPGJcjlxUqJM=;
        b=QcM0epFzISH7qYgagFl0U3HjKMvbLzNfLfjKL9vsGamNlRrxJnxeiCkKE7G0AVHva3
         lg7tcddwWBDimD4g9gJ7DUGy87M35PjrIcjRjEF0ocfo9sgBVlx8W/nEylfuWuzzU5oZ
         E+6fXw+osXINDcT+SxphuPk1pYQAxUJ7VcTMren9hIFlzVkdy+cKDhMKKhNaE9ebDM3o
         UQCxDOkuIcHkuJMyV53YpqUDVHERRM9Z7T0sJLYTzsctFCJf1XyzExmT65Z8F73zCukM
         LxPNjXrGrrPxN/kvmQ+Fbvtc2TDtlBB5+/eyqMVCf6LdrRV3APvi4P542hcijXQKoDtv
         1rww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=tJaOlNJnvpuuVPsZGu5FsCCSJWxw4AyuPGJcjlxUqJM=;
        b=ok5VHtW81z7/vz9mzNZs5neUsRPVLVV8Mm8YZYb5gGfj8O/YiMgxiRqy5FayPtcVwr
         sayEC6/Q7VCNPWM9qC5f1+BzH84XGwvLoUasW9nakjg8JA5+Kt/qgY4XnhTzlLmeMINF
         StaeWUehNJMobzuUxe0fBi13/fWhnzdGV9BnT62kfYV4YnaUIJ+N1DokQL3IySqTNuBI
         XwvzuGBphHI1oqZuTU0LKvxdHor1CPHDV2DDrIYuqSr/rM5mqMQO6NirxTABGQAXas1/
         kltQw0jyz5zAp4Uz0LPH3gZefOEZQGYD28FaxALGR4uFlTpuCRmmwq8AQkYBPD3GTYkV
         zq0w==
X-Gm-Message-State: ACgBeo2an8gtHNaKptizf+Q2zbYgYo1apFcB9UHCIDz1YtmEcHa1Lfxm
	p4tZfmc4AuH49pC/HZB/hAmGfA==
X-Google-Smtp-Source: AA6agR5AIWN6XBF5CyoMX8w9eG5KkshT9AMUozo8DvOohVm3dA7uhHirEgBpJOn+eohjxc5srQCecw==
X-Received: by 2002:a2e:81d8:0:b0:25e:4ede:6d61 with SMTP id s24-20020a2e81d8000000b0025e4ede6d61mr4960452ljg.410.1659940703752;
        Sun, 07 Aug 2022 23:38:23 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id m1-20020a056512114100b0048b27215fb3sm1321898lfg.41.2022.08.07.23.38.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Aug 2022 23:38:23 -0700 (PDT)
Message-ID: <cf320916-c88b-0c4a-7515-24318f1b85b2@linaro.org>
Date: Mon, 8 Aug 2022 09:38:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add initial support for
 Pine64 PinePhone Pro
Content-Language: en-US
To: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
 Caleb Connolly <kc@postmarketos.org>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de
Cc: megi@xff.cz, martijn@brixit.nl, ayufan@ayufan.eu,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220805234411.303055-1-tom@tom-fitzhenry.me.uk>
 <20220805234411.303055-4-tom@tom-fitzhenry.me.uk>
 <f9cbc047-f30f-e711-3213-56fcbb7bbc8a@postmarketos.org>
 <9a168a20-1fd1-5d73-1d33-bd2f054d60d7@tom-fitzhenry.me.uk>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <9a168a20-1fd1-5d73-1d33-bd2f054d60d7@tom-fitzhenry.me.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220807_233828_128123_3C5D667C 
X-CRM114-Status: GOOD (  21.04  )
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

On 06/08/2022 04:37, Tom Fitzhenry wrote:
> On 6/8/22 12:10, Caleb Connolly wrote:
>> I was surprised to see this series, and this patch especially.
>> An almost ready to submit version of this patch with considerably more 
>> functionality has been sat around for a while but unfortunately never 
>> sent [1].
> 
> Firstly, thank you for your review!
> 
> I'm not sure why that other patch series has never been submitted. It 
> was prepared 3 months ago (unbeknownst to me, at the time of v1), but 
> since then has not been submitted.
> 
> I would feel uncomfortable submitting that patch series, since I am not 
> familiar with parts of the full DT. In time I intend to be, but for now 
> I think we'd benefit from having a base DT mainlined, on top of which we 
> can iterate and parallelise.
> 
>> According to the link below (and my own knowledge of PPP development) 
>> Kamil is the original author of this patch, both Kamil and Martijn 
>> created the initial version of the devicetree. Given that you're using 
>> their work as a base, Kamil's authorship should be respected in the 
>> patch you submit.
> 
> I agree authorship is important, and thus Kamil, Martijn and Megi are 
> listed as Co-developed-by in this patch.

But you miss their SoB... Without them you should not send it. It does
not pass checkpatch, does it?

> 
>> Their original patch [2] contained SoBs from them and Martijn, those are 
>> both missing below. Both of their signed-off-by tags should be added 
>> before this patch hits the mailing list, and the same for Ondrej. The 
>> order also seems wrong (Ondrej should be last before you).
> 
> Yes, this patch's acceptance is blocked until all Co-developed-by 
> authors (Kamil, Martjin, Megi) provide their Signed-off-by to this patch.

You add SoB based on original work. When you send a patch, it is
expected to be ready (so having correct DCO chain), not incomplete from
our process point of view.

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
