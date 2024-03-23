Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91D7ACD11BF
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Mar 2024 11:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VPL/WR4V4uE2dMjTm2EmiypQn8Fgiyfvw6ZufcrVRIk=; b=qvvDlDba5b136p
	ROdHJnub4woK4I12ZgHt3QKpbouKPWsDewqpoSZLAE4NSzHiJSxo0wkTQTXg0Iv+5BUb1de9GOt54
	4uZdRfjQIZMvFx+HCa933a0doVhgTkHB8aO7lJ7EhgnTj4PqI4LPWW2nN8ETQe8YK+C4US8qEs6JX
	i7WpzZg9Q3FuaZ3n6R2GOlRFY9cisSDiSxVdLg4UulUZjppNIxV3jtq8Y8ULlFjxEkXd3nK31PAWh
	TTRqmBWB4YONhiVzTxbYNMgMZTtmYTGNuIDz9IZOv2kjHUZkfj/E4bVNGumrtaaGnAB5YJdYK7KeP
	yuUF15Gdq5MVxDBHmJRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnzLt-0000000AFR1-3oz1;
	Sat, 23 Mar 2024 11:15:53 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnzLq-0000000AFQQ-3ymC;
	Sat, 23 Mar 2024 11:15:52 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-513e25afabaso3424617e87.2;
        Sat, 23 Mar 2024 04:15:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711192549; x=1711797349; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tGt+1+8Qbh/ugUeIyE1gvLzQWC5suhsgLzpxGXFTGCg=;
        b=VjagDgfCrZyFKfd0c1JxpHdbrJ70aoMzb1Tf3X6YAFicC7iRyTBaH5Wmi2ZZRWEgcs
         dmmGLnFz7yQq/p8ygk4o4KEY6ivFsI4jI7fDyqUtJtl7bFLz6KNHeuD5vL22/V1Fp+GJ
         0wygdn9pruN7dclOrcg3MuH1xgmZiICE5UBeFwDF+UAoDMc54c20ta+5pkkvmD/egFdV
         IyD64R+sZquT6fof22NWcCm6sOF58gMYSC1wocsDg8OoHZcMcgxKkfSyICrq1jdEyOCK
         +Cq2jApopKFZDUQngOaI88/qc1jlPwUwtYFowwSgnFdl8RGBL+ruX+RSGPno1HrEpeZg
         ar1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711192549; x=1711797349;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tGt+1+8Qbh/ugUeIyE1gvLzQWC5suhsgLzpxGXFTGCg=;
        b=LToHrQGi8tUiF1kSX8ORp2f2XmbUWY7+CKsChlH1NojsTtjQJGmW+iEQ9yJNSRdGuo
         fpmjyqVVN7hIk+r2cde+opFbKKiNrW7QmRGP7hAPvaPbBWrqzjzknNDRnkRnMrT6ium2
         Pb2ZraTdp8NcwVFRdEzWDOYtUdwdP4EnSL24gdZ1UZJXdn1MDJGWjTbmX9TBb/iLPnyW
         lKHX6Zqdpd28IC4+Mn9JOafarCP2ufnMfeQxFB6cvzYt0LAkozryQozB62CYdvxvjMYr
         2kVhlvD3Cg7pEWh63HrE95902SpF5GfqUY0zQ74syFBYeJ2f3kw1NYBf5vmxcdvrLoM/
         zf1g==
X-Forwarded-Encrypted: i=1; AJvYcCWl8CKo4wmgwsHkUrBZ256KQjWU2UbI600AMuAm5G8qoc67Am43QCjo79uNts1kakAXKeVYUd7ybLEHMpi3f6Pkr+MLM/HbUdagRTmj5LuuSFly/8lsJeQnkmtE4bm61rr4unN6EdwMQ9Vkhvy1ge1U1sHSJpqPHWg=
X-Gm-Message-State: AOJu0YyJ8EO3+EV0QqhMcwORka2OApQW7URqAVDSjk0nnEJhFtI3xAt/
	qFqgjBxyi6l1z4PobIHxlJ0TO1U89/+Np1O3AmnamemXROjy+no=
X-Google-Smtp-Source: AGHT+IGjVr55U4jHXGz6ZpweB8ZoYcMpl2oUuYMLI43fUq46mUuU2xCwzJ3sMXFuDeF2mrP7xizlAQ==
X-Received: by 2002:a19:8c19:0:b0:515:a25f:396f with SMTP id o25-20020a198c19000000b00515a25f396fmr883821lfd.36.1711192548444;
        Sat, 23 Mar 2024 04:15:48 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f40:4600:fbb8:7547:139d:a40f? ([2a02:810b:f40:4600:fbb8:7547:139d:a40f])
        by smtp.gmail.com with ESMTPSA id cw10-20020a056000090a00b0033e7a102cfesm4222385wrb.64.2024.03.23.04.15.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Mar 2024 04:15:48 -0700 (PDT)
Message-ID: <63c6caac-536e-49e9-aad2-a0c1f8b783d8@gmail.com>
Date: Sat, 23 Mar 2024 12:15:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] dt-bindings: mfd: Add rk816 binding
Content-Language: en-US, de-DE
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Lee Jones <lee@kernel.org>, Chris Zhong <zyw@rock-chips.com>,
 Zhang Qing <zhangqing@rock-chips.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Linus Walleij <linus.walleij@linaro.org>,
 Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>
References: <20240323085852.116756-1-knaerzche@gmail.com>
 <20240323085852.116756-2-knaerzche@gmail.com>
 <bfe79f3d-1615-45a4-81f7-7e30740308d7@linaro.org>
 <3c0d5aa2-55fb-4827-bcd4-256e6ae55ee9@gmail.com>
 <f892767c-7e01-4099-b674-0eca6edf7bba@linaro.org>
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <f892767c-7e01-4099-b674-0eca6edf7bba@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240323_041551_047680_C26B30A5 
X-CRM114-Status: UNSURE (   9.76  )
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


Am 23.03.24 um 12:02 schrieb Krzysztof Kozlowski:
> On 23/03/2024 11:56, Alex Bee wrote:
>> Hi Krzysztof,
>>
>> Am 23.03.24 um 11:32 schrieb Krzysztof Kozlowski:
>>> On 23/03/2024 09:58, Alex Bee wrote:
>>>> Add DT binding document for Rockchip's RK816 PMIC
>>>>
>>>> Signed-off-by: Alex Bee <knaerzche@gmail.com>
>>>> ---
>>>> changes since v1:
>>>>     - lowercase/hyphens for regulator node names
>>>>     - rename "-reg" to "-regulator" to make node names generic
>>> I don't understand why did you do it. I did not ask for it. If you want
>>> to rename, drop redundant regulator or reg suffix from node names.
>> You didn't ask for that, thats true.
>>
>> I did it regardless, since node names should be generic and the "-reg"
> device node names, here you do not have devices.
OK. I wasn't aware there's a difference between device nodes and 
devices. I'll drop the suffix from the regulators.
> You did not respond to rest of my comments, so I assume you agree 100%
> with them.

I do.

Alex.

>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
