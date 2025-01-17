Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE6C4C02183
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jan 2025 07:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zbLPm6YMywHACaK+kRVr+NDcbGWp+bwPazwPGNIvb7A=; b=HWDzTNUm/gOJVq
	z8OM35JNLniJ9m7E2J3EF3axs+bTp/RDTKKm6tzGITJSTo6DpytRbzoAKq3Zdt6DFcH03g2vQuVhX
	HjoHL57c4JAluVPyMxX11GK5grYOFC9HXIcokh4Y/Noh0R8taZbXncHtG3QOCw2+RSRW5OR2xRmE5
	mZH729w7Ww7EvXtiH4Xs7FfYL1OIa/gzj91o4iMKhbMYTdpe42pFoSMNIvrFA2YVQcJZmsHVoT6Ff
	zutMVhrCMTYehhl1qu1IL4Px42EOz2jGzMpTSYVEzAr9vfVRK7yJZuNM33suB+EF7Bgar7h8DhMm/
	Iyylp7iP6zVZIhLt5lVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYgr7-0000000HDRu-0m1F;
	Fri, 17 Jan 2025 07:33:25 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYgpp-0000000HDDR-1W1K
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Jan 2025 07:32:07 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4361f09be37so2266035e9.1
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jan 2025 23:32:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737099123; x=1737703923; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=QhnZV2qLygGGQYrfuXJ4IFopDJzf5nAynmXZ+qlJOqI=;
        b=R++qjq5NL6nVt+BSk4e15P9tY4f2HW+byV2Mh+vA4/RfgYzg7G04mxkJaJh9PhURXC
         6aNkOuTjJMgfumrM9z6Le/qdzIV/Z7WycY9SVvT1QH9LXgwQyDSyZM3yHkSKHdGDjPPT
         hsUiWhtMFxBSyIWB3gk/BiWVvetpciPl1rKemMxQk/RUU2lQe2VgVb9r3od3e2QpwEys
         tj2BEVj3LWokay67e+noJf7AHIs4vyT17horWHs3cLWG9XSRFU8ANggtSf5bY43sNvpp
         P2rZS+2IuMnpF/izGj9x538dha6T5vuo5kTomlQqUHr1HVHN7HM4IhG8RDXHq++fuT3e
         nsyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737099123; x=1737703923;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QhnZV2qLygGGQYrfuXJ4IFopDJzf5nAynmXZ+qlJOqI=;
        b=Ttx088PM7M5YLZb/YmpHsTGPjHBERb6T9F46DRoo5ar7Xf1NpjRyaRA1jbRN1AoXvV
         scQPYW8TJMQ/Oc+iQ+8z0KtrCD3yYn9ELe6hrkiExuPxSqmPFJUeXpmD7BhOEqjQ0Iea
         j+o4bCjy0IC5Iz8zqekQsxtl1wKMFDbFUn3wd3sJuIpLUq1/P4vSNP68q8v21lA6rgHg
         yPIOje5iObfGcAXa8P6QTcK1cVf29Hvpi4b+3JrG/JmBqsQkUBTa1nKuwg6yvrK3vH/A
         GWinSj56Ml30cl30XkLkglQV/3pWnykOfjfbKjC7rx1NN1UEp2GCp/YN10+mH1UudfeF
         Nfnw==
X-Forwarded-Encrypted: i=1; AJvYcCXs2Gg/LlwRux7vZLa00mCGM/1I5q3hGLFUVqVvRmJwRX+zvEPCbbhqNQnhBybOQd7F4GLa4tYOCTrxigohSQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw5hw+Q0lpJMe4DBHlMyBnsSnJyZJ2dYEyajv+SNwCsb/UxvZc5
	vDvQ8cODup9NNdTOR6g2dZlFoFfJy1oItyIh0/0F2HCICSeWFVdd8UnyB9AqDDk=
X-Gm-Gg: ASbGncsf/h74t6oQKVQUqAKDBXW+LSelJpDIPZQ6bq53a8w98gtS1yd6j/8Lp55TP4p
	+NgLG22TMprRYOjtfAI7ztvXXIQVdnKPy1cUxaYW2eANxAWMFVEAq5nN+J+EE1oHd+0Tesqh5di
	zLBduMWIJV8dqTt1w11gX7rMw092SUTAWF2LzdAcW6BDIBXIHCl4SQtMcqJJyP6gRvj/GNSGys+
	0GxnNI1Bnp/qKiHDw915P+3Bs0hzQ2PqjLU3v2D0ODG5hwKA75/oNMs1NEkaTaXi+itywjFXmmE
X-Google-Smtp-Source: AGHT+IGa9SO+65kR3fV0CVKf2Dpp0m4XXlC1sodI+HOrGtEKptb60EuOzshMaTW5d4BO54Rq0idoyg==
X-Received: by 2002:a05:6000:156e:b0:386:3c21:b1f7 with SMTP id ffacd0b85a97d-38bf56789d7mr502409f8f.7.1737099123403;
        Thu, 16 Jan 2025 23:32:03 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-437c753c60csm82333035e9.36.2025.01.16.23.32.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2025 23:32:02 -0800 (PST)
Message-ID: <3712d97e-8a2d-47fb-8f95-a9153c71dab3@linaro.org>
Date: Fri, 17 Jan 2025 08:32:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] soc: rockchip: power-domain: add power domain
 support for rk3562
To: Ulf Hansson <ulf.hansson@linaro.org>,
 Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
 Finley Xiao <finley.xiao@rock-chips.com>, linux-pm@vger.kernel.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20241224093920.3816071-1-kever.yang@rock-chips.com>
 <20241224093920.3816071-2-kever.yang@rock-chips.com>
 <CAPDyKFqYjTsWsqf-C+iHJz3x-RKdsm2-2cPm-HMeH=WBNzcSLw@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CAPDyKFqYjTsWsqf-C+iHJz3x-RKdsm2-2cPm-HMeH=WBNzcSLw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_233205_411574_72D70248 
X-CRM114-Status: UNSURE (   9.21  )
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

On 16/01/2025 15:46, Ulf Hansson wrote:
>>  static const struct rockchip_pmu_info rk3568_pmu = {
>>         .pwr_offset = 0xa0,
>>         .status_offset = 0x98,
>> @@ -1429,6 +1471,10 @@ static const struct of_device_id rockchip_pm_domain_dt_match[] = {
>>                 .compatible = "rockchip,rk3399-power-controller",
>>                 .data = (void *)&rk3399_pmu,
>>         },
>> +       {
>> +               .compatible = "rockchip,rk3562-power-controller",
> 
> I couldn't find the corresponding DT patch where this compatible is
> being documented. Can you please re-send and keep me posted for both
> the DT and pmdomain patch?

I already commented on this on 1st patch - the split of original
patchset is entirely broken and actual binding is missing. Or not
missing but sent to entirely different folks in different thread...

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
