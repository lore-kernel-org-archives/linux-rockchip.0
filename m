Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FD6CECAAD5
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Sep 2022 18:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R/5P7aKw/I4eVTsDvcp5EfzMvBeC5krtrnbFVgA57ro=; b=HhlYdrrXaRRLqE
	WN6CJqScSKYiQ7K4xYtBIP9ly8yng4fKnrn62rUDHLxr8ft/7SMMIvB7sx/E4LnLv6uGzDKfwmo8I
	97KT9nbI+Caea+St/K1dcBppl4Ngmx9IUmcgF4BjQwwF6BCfhPJtLZuDMU4nJME04qXHx7NS+lzcj
	sCOizHcbO94sYbqMryQ8z3THRkK2FO5nuLbErVsjSQd1j4xE4Zxg2Ux/buaQhS33uMokRnsyTKpwB
	Lyq/NXrkgBB8bIFS/fiYzZLFyDy1Aic/qX29VEuEuKNWQIEX7o5TBB6s3fzZQn/2DWJ5yBwJ0ljwL
	T/KlLNXeU5wsGow6HJgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVGxe-008VzJ-9M; Mon, 05 Sep 2022 18:36:42 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVF62-006x4y-0W
	for linux-rockchip@lists.infradead.org; Mon, 05 Sep 2022 16:37:23 +0000
Received: by mail-lf1-x12b.google.com with SMTP id g7so13763389lfe.11
        for <linux-rockchip@lists.infradead.org>; Mon, 05 Sep 2022 09:37:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=vHhwCsZCW1W87izzKoQXEtZDJidSbg39faSi++Jz1EA=;
        b=Hs76dSqDWe4kvl6c/fDGzDD8lGCDDYfDRfroTV+KRedKvrHF8xcixnkpJZO0m+tbVG
         BD0/RDf4H3CKQqYg4ClY/wD3YsrS/YaY4GrkykGkg6zCEkAj746s1rLOlHyMCbRroD3T
         E0ZcwcY8qV1rHkc8hqApjyZyYOvYcUgWGTflcD0Jq1RQItH/op/+f89wf9YpWJ+fTnw1
         lqeu2yFF6q/1PolM+sSJRQlGHTdA7JZ7o+AtTFyvF6j+Hc+DGo89ZXDgFgjJBsj53H5Y
         rnzuk/MLK/iliwBXG9yvSCMdoLDGN0OTJpay8kfrj4e/UGbxwVh175RS8DhNa6J9BuJO
         9s4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=vHhwCsZCW1W87izzKoQXEtZDJidSbg39faSi++Jz1EA=;
        b=g70hbMZQSRUX06eI+5lKnYTJ6nwAuwZyBqQvuvCl8banpEQ236H2xgCbG8H3r6fUOQ
         XbCNtJJUMPRCfuAtwgIVhzYvkn9X+0breUYTinqZg1MXLjhjxKFHNJ0SQar8drpVtDtC
         9FXJdYusPN3fl2u+BcrEvk4KSOIlZQUJkPS4mOApdUN4/Ez8BrJaRrJgROr9tuwxmJOy
         OeQXZd6shi1fnUUDB612JnEi5MYxRq0d4FvJuV5f3ozbgXNv2lr6GDxuOX9Pq1T7HYGB
         IZKS22ZE+AafIMnbzVuQjOBm+cpFrbjeIc+0cL5qobrSeWAip0x1XNVgFeq0jU46R1eu
         so0g==
X-Gm-Message-State: ACgBeo2nYGdtvkSt8neWj6u5FuAykXAdveH4igkjENUN9WoXFLWQ3n4K
	K/k/5xiqEyy47EPHR/ZqCbW409fHjXtXBg==
X-Google-Smtp-Source: AA6agR5lJ+DfGwA5ugZIl+OLFvF4PHHsMPJLqsjuYjra9J+uDYhTHC7mRvCPUhR2Xqgbkgw5bH3eEg==
X-Received: by 2002:ac2:5a09:0:b0:495:79c7:f2f9 with SMTP id q9-20020ac25a09000000b0049579c7f2f9mr3203290lfn.422.1662395831506;
        Mon, 05 Sep 2022 09:37:11 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id bg34-20020a05651c0ba200b002618fbebbbcsm1474151ljb.47.2022.09.05.09.37.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Sep 2022 09:37:10 -0700 (PDT)
Message-ID: <bbfc49ab-bc55-c6d0-fb0e-1938ea13abb0@linaro.org>
Date: Mon, 5 Sep 2022 18:37:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v3 09/19] clk: rockchip: Add dt-binding header for RV1126
Content-Language: en-US
To: Jagan Teki <jagan@edgeble.ai>, Kever Yang <kever.yang@rock-chips.com>
Cc: Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Finley Xiao <finley.xiao@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
References: <20220818124132.125304-1-jagan@edgeble.ai>
 <20220822181009.GA80526-robh@kernel.org>
 <CA+VMnFwE8jBxXwQPVEzEUosxjuEVMNGB9NnBuHYDw_360qJztQ@mail.gmail.com>
 <3175969.jE0xQCEvom@diego>
 <CA+VMnFw2FSr4OfaZfxGcDcMxQHM1_=sPPRyJq+qd6mduwBY8yg@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CA+VMnFw2FSr4OfaZfxGcDcMxQHM1_=sPPRyJq+qd6mduwBY8yg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_093720_208450_333BA58A 
X-CRM114-Status: GOOD (  12.08  )
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

On 05/09/2022 07:27, Jagan Teki wrote:
>>>> Dual license please. Need an ack from Rockchip for that (and not just
>>>> on this one).
>>>
>>> Heiko or Kever.
>>>
>>> Can you comment on this?
>>
>> I guess this is more a question for Kever,
>>
>> @Kever can Rockchip allow that dual licensing for the dt-binding header
>> (MIT as second license I think - at least like all the other binding headers)
>> both in this patch and also in the other header-patches of this series?
> 
> Any comments on this?

https://lore.kernel.org/all/510d1180-bc8e-7820-c772-ed7f35447087@rock-chips.com/

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
