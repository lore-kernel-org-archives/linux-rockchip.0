Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27166ECAAD5
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Sep 2022 10:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1sRUM/t0wifCBqO3GRL6Vhsuu96Iyw7bSxJSS6A/mDg=; b=oYc/KANhjrfnV8
	369DA5ADpg+xPyVTEzYP74x4i/wuBUwuvFa1oFt4RjGYbwfOPFRQA6kUpgrZALLOJByyDAuQ+luA/
	8pMmSLqsw18+HgTo8FhdMco4sOFMMGgmP3v2YpPslRZZji8dtRfohx++Lfe1vZ9qsAJIvhbplKDtA
	sv9Cz79gdJ25guQndjAh37F3j66s3W3sXkSP0zeEmDNxzmO+rk7ilTpkKw2TSf+AVy3WNmqJdEWZF
	Ms4DBhAdnyXeLOIWv2mnuQiAvL37PZ0NYCPVEfDzwtzkIqWxtJcpc+9gIOpHvyHnU0Jy1gJyJVpx1
	lW4llJCkCf8ms/PUuhuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWFEW-002UdL-UE; Thu, 08 Sep 2022 10:58:08 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWFEU-002Ub9-Pj
	for linux-rockchip@lists.infradead.org; Thu, 08 Sep 2022 10:58:08 +0000
Received: by mail-lf1-x133.google.com with SMTP id z25so27116084lfr.2
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Sep 2022 03:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=antfYS9CLMVQjoxq/t8g85oFIDvnTn3dzLrv3hZENl4=;
        b=Ntkh6WCu0pxXWpACDQuiRU5VFkn8LBrt/pLT5MPHvHa/AwSfwVkuB6PORbKnR4bA9G
         9+YMccu0nvkshOnU3uICq+UaoMcC8Fx8gmw8fLpBa+X2oshWlUL7W9pPcFT8caQbK3JB
         VIRD9ynibkix+K2u33yoTdHKsVXdFbVgfjMDht8+4Q1wwLgv1r6NOlqV57NT9RbKX+z3
         ZvmY8eagnKerJ2voJgW2VD/70jDVPz0B6G/qX14xBgSDaTq0F0yoWRb0+v75MIbHDteg
         VGHAnigqH3WE8FilG+oj+xb9JYQi7kuvOEWeaeUzJFbPreXwWUNLFrQY9Cs5goAmsl/O
         rtAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=antfYS9CLMVQjoxq/t8g85oFIDvnTn3dzLrv3hZENl4=;
        b=aFB+vEhBWayweHTbwi4Yy6kSNLzvEuStOhNQB1XILcDmjyPjAJGKnQo7xJ3++YP/Fs
         6MAseglHEwXTEVB5IiWga2oeNjgW855Q5j0yNeUedD1pykNh/Tl5u1S6zSHvttUTjV9W
         44/+u/F+8edbphIgfBq3SQsWddxQ5yXGYTs1Ep2W5QtrERKqr1V3Q1/P+m9H8ov87SR2
         cfK5e0GU4wT0i3BVvK1VW+XtsYXruxCD/oVhRP3jv+sOMAogN/FibGkMRKB5kO2UWXJo
         KPhBlK747I3TolBMrKSanSEEQ98SxEQ+pGU50nSBrnuFvqWaJdAG78FFw7RoT1TZSux5
         R5+w==
X-Gm-Message-State: ACgBeo1TiPNb9JmJORsWWY74fOtcBpwTgCQywxQ6ZBamxUGFxb3HQSAn
	bctpjgTJ/tA7dNLQjNOOkU8ajA==
X-Google-Smtp-Source: AA6agR4I706BLfaiL+d2jUeE+l8ZvCBicR6HGvKGkJFxogWGEMMiEug0S/q1OWf4gErFrUPjIV1zIA==
X-Received: by 2002:a05:6512:258b:b0:496:fadd:55f9 with SMTP id bf11-20020a056512258b00b00496fadd55f9mr2836471lfb.356.1662634682929;
        Thu, 08 Sep 2022 03:58:02 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id p15-20020ac24ecf000000b00497a3e2a191sm1171992lfr.112.2022.09.08.03.58.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 03:58:01 -0700 (PDT)
Message-ID: <be1c2903-c2af-74b3-b34c-5f8ee4935fad@linaro.org>
Date: Thu, 8 Sep 2022 12:58:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/2] dt-bindings: gpio: rockchip: add clock-names
Content-Language: en-US
To: Jianqun Xu <jay.xu@rock-chips.com>, linus.walleij@linaro.org,
 heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20220901013101.2634480-1-jay.xu@rock-chips.com>
 <20220901013101.2634480-2-jay.xu@rock-chips.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220901013101.2634480-2-jay.xu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_035806_867310_52C184EE 
X-CRM114-Status: UNSURE (   9.61  )
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

On 01/09/2022 03:31, Jianqun Xu wrote:
> Add 'clock-names' to the gpio dt node. so the driver could get clocks by
> a const char id, this patch names the clock-names as
>   - 'bus': the apb clock for cpu to access the gpio controller
>   - 'db': the debounce clock for cpu to set debounce clock rate
> 
> Since the old dt nodes may have no clock-names, this patch not make them
> as part of 'required properties'.
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>

I see this patch sent three times... version your patches.

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
