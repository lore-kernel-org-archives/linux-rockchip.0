Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7932DECAAA1
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Oct 2022 16:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RgZxue5crS0E6k7RZTRLi3t4odw2G7Me17KvP0yN/y8=; b=3dXc7m1Ea9NJaa
	Y9wEr0FErJiua6Q9EvXQsda/CAX6LsV44JWvAyCpEl2VGK7GJ6SFmZTdwF+Kc3Lv1en/gso5s4iBU
	iuLZqy1DH43cq5Ki/iMDaaluNlL0vFjhK2MbF8IqUsMpopBHtCC62ls6hyuygx+ZvDmAAO+L72lls
	KUi/L02sP9UmR6MxHt0991wnzF7bCwoxt0/h/r8Mxd0IYwWx5jwGHZC31uUdzV8CV4qkjblEZ3PHP
	GHBU1S4GJ/0JSqXTF//QfHBHX+YrqTMz/ll9Pvah+XYSjoXFONIn71lkJEdvaXGzl85xlDtoM/wm3
	dUrldftO+cJ/0ZG0X/oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oo5JH-00E9QA-7U; Thu, 27 Oct 2022 16:00:47 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oo5Ix-00E9GO-He; Thu, 27 Oct 2022 16:00:29 +0000
Received: by mail-lj1-x22b.google.com with SMTP id s24so3301878ljs.11;
        Thu, 27 Oct 2022 09:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2Q+FhdFfWXCodxANna05rQkLf68c4F7yR8oJG26j/8I=;
        b=PGhAtJg71umuNe9hEDkN5++IWfnmk90PX9PuHKnYfJDitaKwi+XWXt1BYwOnouqeQe
         MLjN8Vaze98KOrxnWYSiJCJBepFyDI3fdtZ+udiIzikucdrQ5qUmUu0o7qE1YIG+ndAn
         7p1F0m8d75SnJfpHtJwSjaHlbMJSEcqZq3Hhy9uKGT11fp8FzH8NL+WMxSQutGN0thUy
         eY5S8irzdDq21hifbgPF1r7UjvYaMTuUnFG3WKaYIagd1WTNJ7OGdIh8ni/st2UEaIS6
         2RWfUfOcB5/PyK4rEbHde9A5llS2KvSzpUAuU2KaJ93pcveQm+7BbNIFpkn/L2OyPojI
         sVgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2Q+FhdFfWXCodxANna05rQkLf68c4F7yR8oJG26j/8I=;
        b=IThKAQgbGxLiH1tqpgwoaNGEsV6Yr8MYUYGkdDM93xUkHf9pOLy7NPMLkbodaXc8PE
         YheByJtLOQHwPN4o+Tvid0bvhAiv0P31j66OnYCKZPmMfZMUkTIm3qP6RV4cdIP9iA8O
         LGQ6Zgr20+e7AMffadZwoc/J+H8JzSv5g8wV0ZqDiuZDEWcJuRsBJ88u+LpKPEM7uVWN
         ENwVxGTCD6nuUKLk3ME84pgRzUL0E5LyuWVYK7IU7mHILg56Sbb0dlO0YgQwsIFBkz4I
         1MTIYAVSeCoy3QJd7C4phvwzrMv7wG2q7whtFAmqqRG3ZaMDgZaiCAPlJnINYqBPplL9
         WG+w==
X-Gm-Message-State: ACrzQf2LL+pKytEhCCs6JrVp5xbJWdD1W/gxbyXjLMSnGnETHwoQcNYd
	qE81Y3nNhBAwVKigfYSg/SxR68cXlg8=
X-Google-Smtp-Source: AMsMyM4ha8qSxDMf4y7djfvLJtt8clxvlapNvWVxOlVc0diAa5i9x+gJDUkbUa+ez2Mup3R/WhFL3w==
X-Received: by 2002:a05:6402:5483:b0:45c:1336:6d9b with SMTP id fg3-20020a056402548300b0045c13366d9bmr46426634edb.100.1666886404555;
        Thu, 27 Oct 2022 09:00:04 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id f1-20020a05640214c100b004623028c594sm1214536edx.49.2022.10.27.09.00.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 09:00:04 -0700 (PDT)
Message-ID: <f5e8193b-8671-6b9d-2290-cea1962848c4@gmail.com>
Date: Thu, 27 Oct 2022 18:00:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v1 1/3] dt-bindings: rtc: convert haoyu,hym8563.txt to
 yaml
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <f7127f87-05fd-5e20-eb2d-a3fd04674229@gmail.com>
 <2a09aec9-96c3-0ea9-a2b5-4a04c9982bb5@linaro.org>
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <2a09aec9-96c3-0ea9-a2b5-4a04c9982bb5@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_090027_658771_036D62ED 
X-CRM114-Status: UNSURE (   9.65  )
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



On 10/27/22 17:00, Krzysztof Kozlowski wrote:
> On 26/10/2022 18:58, Johan Jonker wrote:
>> Convert haoyu,hym8563.txt to yaml.
>>
>> Changed:
>>   Add clock-frequency property
>>
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>> ---
>>  .../devicetree/bindings/rtc/haoyu,hym8563.txt | 30 ----------
>>  .../bindings/rtc/haoyu,hym8563.yaml           | 60 +++++++++++++++++++
> 

> https://lore.kernel.org/all/20221024165549.74574-7-sebastian.reichel@collabora.com/

Ooops, didn't see that one...
Needed it for the rk3128-evb board to pass without notifications.

Johan

> 
> Best regards,
> Krzysztof
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
