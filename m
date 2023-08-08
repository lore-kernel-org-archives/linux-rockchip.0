Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 726CEC001DB
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Aug 2023 05:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yvt9AnbyGaNAI2CXv79se4gnvX4xnxj3+5ciD7ydBwY=; b=in7RD0zBKRekon
	iSVDcOT7aRYYTxe4SRpjvch3kFj5j+ycVbZUpOplvYsuW54ncGwFkJxFO/rEeSz/p2C9TE5iPnjzo
	K+WUH/fBc2fQz3/L5MD/F8lolWWsAwRKH5XEbOvJ5F5XV+LVtDxMEPRvjL+HztLMBASXs32iZnmKz
	htRj3VMax33ZbpnuWj8IpUD/4pAIw3XuGTpZCqq3Dy8ceNKZUKKdkJM43+sP5LcQDZ0To3DwgRl8h
	uouyQWGpDS9FhZcft6i2OQuSYStJHWV6gR0UDvco44AHXhYO1R461YQZegSSEsz7bxnIi9D6JHPFB
	kGARi/yGzLAomOiFvi2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTFjF-001mFG-0j;
	Tue, 08 Aug 2023 05:58:01 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTFjC-001mEa-3A
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Aug 2023 05:58:00 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-99c0290f0a8so687128966b.1
        for <linux-rockchip@lists.infradead.org>; Mon, 07 Aug 2023 22:57:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691474274; x=1692079074;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aScjTZP/j4eF5nEY5ptSyTPcH9eKHlG6UgnJ/+6xLjo=;
        b=YiGtqPzYgzlkJ8m/ZIv76Bj+m1kDxfgb+RabcLCmL+DQ8sM8UuejJrbOmHtzEGHK3f
         d2YhIehfQK335gEZzLCXst9QCqgGhdL32smmeNVXv5/OTx/FM343Z5WykfaEpq730Ros
         3Er7AQlhhya65gNFHb8jEW88pHU/Hq2Ag9TODks3GPE1XacVU01/FZj5unaVad4UZz81
         M+2FKwUqmGZLI+khd9Dn6Ds0PnBGRDZLTNoDj/kmRuC6D0ue7+SXK3ilKjf54dtER/Rb
         FYB7pUb+FBg6Q61SmblOLfwmlO/Myqz738SEaO0KEyT4jESx99eKW38V3tpqXLhLI09j
         CRyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691474274; x=1692079074;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aScjTZP/j4eF5nEY5ptSyTPcH9eKHlG6UgnJ/+6xLjo=;
        b=b8BfZ+TTpqK/pqPN6EGq6Qp8t4rUNxLnwyHcv7lnhnfAT9i2QW+FxY28mUPfClPSWi
         Hq5/3wZj2va0T88lj5LEW/fdvVIKhYqjCFeAYqiNNqq0dKnpSmDEKG68nDo0He9O52oE
         YraLI7gh4lxIqkYiLNxElxAxc5DxgeXCPG3gmY8HRlQbLXIDkXaiwemzq84WYN6V3nU6
         NBU+sgY/q9WePMD9rk2eqKhyctysbzE9KlfQsRPFvc8dYSX0A07EKvwFMeeOTf05R5uy
         /txCq6q04Eg3hzokV2EUtE6Tsu/58A3GOyuMdx37PIMvpoXFuI5Rj3PVtdEi0a8g9e/5
         CeKA==
X-Gm-Message-State: AOJu0YzuqQ6OqHiYb1ZIVkhpMc877zaGxx/GpDbdddk0sIR7GvWOlrkm
	iIpQhlr/YS0KnU/dRvLRoztXrg==
X-Google-Smtp-Source: AGHT+IFUhtTnBdD3FE71/pNMOY1Y6z9Jbo+5Bg4ogyJrOop4Rz6UyiKZoppLw28xBiaeF1YEdhU0VQ==
X-Received: by 2002:a17:906:3f4f:b0:99b:5a73:4d09 with SMTP id f15-20020a1709063f4f00b0099b5a734d09mr10065794ejj.43.1691474274417;
        Mon, 07 Aug 2023 22:57:54 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id gs10-20020a170906f18a00b0097404f4a124sm6146765ejb.2.2023.08.07.22.57.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Aug 2023 22:57:53 -0700 (PDT)
Message-ID: <d28cf9c5-b914-053a-76df-c15e191c042d@linaro.org>
Date: Tue, 8 Aug 2023 07:57:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add NanoPC T6
Content-Language: en-US
To: Thomas McKahan <tmckahan@singleboardsolutions.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230802051441.3106-1-tmckahan@singleboardsolutions.com>
 <20230802051441.3106-3-tmckahan@singleboardsolutions.com>
 <f49a803f-9ff4-794e-265b-a98e3711cca8@linaro.org>
 <20230808002751.00001385@singleboardsolutions.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230808002751.00001385@singleboardsolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230807_225759_061269_53745763 
X-CRM114-Status: GOOD (  11.53  )
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

On 08/08/2023 06:32, Thomas McKahan wrote:
>>> +
>>> +		regulators {
>>> +			vdd_gpu_s0: vdd_gpu_mem_s0: dcdc-reg1 {
>>> +				regulator-boot-on;  
>>
>> Boolean properties are not first, but last. regulator-name is the first
>> one. This odd style...
>>
> 
> I agree, however it seems the norm in Rockchip devices. This will
> become an outlier in Rockchip but fall in line with the general case.
> I'll put it in V2 with the other mentioned fixes unless a conflicting 
> opinion is expressed. 

OK, no need to change then.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
