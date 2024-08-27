Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4B57C54735
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 10:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sY7BIx+EmeRYnGBjl9dlTYx1TuzX91ojZ5jFglB3xtE=; b=PKvUrGoSgg34hu
	UVUJ4HSzkuVXtNnJd39jHJdtMzylxsCc6TdyILTXbUNcq5cuh/YbjG/dUEPtd3k4UD2LliITb20AU
	YCdz27iBFvyFN4GqUcLxev65JjweWZ1i2ny14upfKx689u6ULDnch+TKJq0D7NcDHTvv/HRtR/XZR
	yYTSiEkgfVp1TkNrJI738YkHwlDyTaqcPolPIq0wFL6Lt8qQRidY61GrDsZ1tUpuj2xcIt9SaM9gK
	vnYj1nII8dhAnZhJds0CnJvTHcupFIBw2BenwaUtD2qvistoxoL5bi4a6LybNfyfzz91naSnnluGb
	7H0SEjBkeI5pCQxsuLnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sitTs-0000000AoqG-0rid;
	Tue, 27 Aug 2024 10:31:20 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sitT1-0000000AoV5-3E7z
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Aug 2024 10:30:29 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-42b964d7526so2262125e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Aug 2024 03:30:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724754625; x=1725359425; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=W3VBFYpmaqRCs+Se9LeU7unsLD0EFFfpK+JC6xNu3vw=;
        b=TNIvHH7y+lDCq9mW3N9bnJqFoSzOiwRtNz1ONMKjBzethoQKc+w3HhobsovIObChOk
         U5p9Xdoa1t+TUduv/juyr10TJnpJgPpL2sP+/fQEgf894TA+1JYMU38257YhokPfMXOt
         VK5fFEqylWAKklOYSMR3JCBJ3aA+OLy84Q0mV4l7E1VXvkvpXZyI1GlzOzLXvolUFvhv
         4ZO4gUsRSNIUni+GpfPPwnA4K4bib8/wie8zd7scz6QvssDQdSO0c3lDWLxfEzatC5WM
         kSArDlKUVJ1DbLYIRQXoKx8S+W+qK9GDl5rZG2tquMkClLbD5+3wHOgcdE9nPIY07nkv
         wWQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724754625; x=1725359425;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W3VBFYpmaqRCs+Se9LeU7unsLD0EFFfpK+JC6xNu3vw=;
        b=XazpJ4YWpdZ2fJ3iqq7edBT2DDJxil9DRcrFObZtPOI0NIjxV95HfV6IKrm/Uq38sg
         dSLcpJ34+UmlGON6lNa6PH/V+V150dPPwBsNzTdp0eyNwGSamD+wBZNi3s5v5ojWFwJX
         gBNvdZP68YLvMadhAGWFX4MQs5d4TYDtWNloj4iwH0Qa8KF6NNvb78MqrDMX+iptvV6t
         rFzW0ohSBltl6CdjTdSBvqg8eQByzye4KL8sBf990uPOzJJh3vlWGLkO07e/8tXZ/6Tc
         t1waEmLjkLaxwqUJWIN/3e9Ua/nY6i9WI9JtYvJTW0qDVk5KvMuxpHVRhILMcBpFZOut
         xGJA==
X-Forwarded-Encrypted: i=1; AJvYcCVs/A6KYGW6XPoMnF/IbZKa5feL1jUIRK8lZLlAl+O27MBFTPCOe0hCG4cEXB/GrVyVz3v09eeOOr2X3MPVGQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwA1Tz9Y6ky7kZJBlfkeyuCb6mqNrv0Be0PPyu5SWafWOjstuKO
	98Q2zH+bDp+V/4ioVn8wnwn4eJhRurp2Ld+3E+OcGlY7GQ6uupWjDsiCzB9X/tk=
X-Google-Smtp-Source: AGHT+IE1vEOGOGSPbk8DqUrG92QCcaEHUw1sMQDEkeJAs2xvcYkh9LNNcDwEqw3hyc/tlUYAgEF6sg==
X-Received: by 2002:a5d:6c6f:0:b0:368:4e31:7735 with SMTP id ffacd0b85a97d-3731191ea94mr5120606f8f.9.1724754625456;
        Tue, 27 Aug 2024 03:30:25 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3730810fb76sm12879587f8f.8.2024.08.27.03.30.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2024 03:30:24 -0700 (PDT)
Message-ID: <6f2c976c-2757-43c5-805f-e67724328b65@linaro.org>
Date: Tue, 27 Aug 2024 12:30:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/10] pmdomain: rockchip: Simplify locking with guard()
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org
References: <20240823-cleanup-h-guard-pm-domain-v1-0-8320722eaf39@linaro.org>
 <20240823-cleanup-h-guard-pm-domain-v1-2-8320722eaf39@linaro.org>
 <20240827105927.00007ac7@Huawei.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240827105927.00007ac7@Huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_033027_851240_FB47F0D3 
X-CRM114-Status: GOOD (  19.79  )
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

On 27/08/2024 11:59, Jonathan Cameron wrote:
> On Fri, 23 Aug 2024 14:51:06 +0200
> Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
> 
>> Simplify error handling (smaller error handling) over locks with
>> guard().
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Musing inline.
> 
> LGTM
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> 
> 
>> ---
>>  drivers/pmdomain/rockchip/pm-domains.c | 5 +----
>>  1 file changed, 1 insertion(+), 4 deletions(-)
>>
>> diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
>> index 5679ad336a11..538dde58d924 100644
>> --- a/drivers/pmdomain/rockchip/pm-domains.c
>> +++ b/drivers/pmdomain/rockchip/pm-domains.c
>> @@ -910,7 +910,7 @@ static int rockchip_pm_domain_probe(struct platform_device *pdev)
>>  	 * Prevent any rockchip_pmu_block() from racing with the remainder of
>>  	 * setup (clocks, register initialization).
>>  	 */
>> -	mutex_lock(&dmc_pmu_mutex);
>> +	guard(mutex)(&dmc_pmu_mutex);
>>  
>>  	for_each_available_child_of_node_scoped(np, node) {
>>  		error = rockchip_pm_add_one_domain(pmu, node);
>> @@ -943,13 +943,10 @@ static int rockchip_pm_domain_probe(struct platform_device *pdev)
>>  	if (!WARN_ON_ONCE(dmc_pmu))
>>  		dmc_pmu = pmu;
>>  
>> -	mutex_unlock(&dmc_pmu_mutex);
>> -
>>  	return 0;
>>  
>>  err_out:
>>  	rockchip_pm_domain_cleanup(pmu);
> 
> I wonder.  Could you use a devm_add_action_or_reset for this and allow early
> returns throughout?
> 
> Would need to take the lock again perhaps and I haven't checked if there
> is any issue in dropping and retaking the mutex however.
> The block logic is non obvious so I couldn't quickly figure this out.

I will take a look, but as you already pointed out it is a bit further
from trivial functionally-equivalent cleanup. I might mess with the locks.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
