Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51352C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Apr 2022 07:29:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vK/t9y2OKdZB3OLYateq/XH7xrybc+j+L+lIrLfZjfI=; b=r8L6e6tp7B5vYn
	TIA2AefFXM9fJqfv/5PelCIwX0g4cHJ7fjStKJFmo4Q65X0m2Hi7fA0/g+I1etJmZfkX6xrbGYr9Q
	yfkyuUneNIaFzILdbFk0fsGzUrdUgQbHe01bb0cu5eQqe9fqi/V5A4bVeU5sz0k2D/B+ahykv9DsN
	YKkiGudsH6ueP3EgUf0OzkE0ykiRJXy0kZEGVpXQtb+qmJnGOmfCxPADz8EvBAJLo2R30/jXS8AZb
	8B0kZJNHBp+TyLHi93fNYkQPCt7zj3IlKWYvnOV+pY3+XbDOLeAOPeGV0M+FfnT4UWqOYd6hl20W2
	ev3K3KEpRf6rOuNWw6BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nc065-004TEW-9V; Wed, 06 Apr 2022 07:28:57 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nc061-004TD2-VH
 for linux-rockchip@lists.infradead.org; Wed, 06 Apr 2022 07:28:55 +0000
Received: by mail-ed1-x534.google.com with SMTP id b15so1546099edn.4
 for <linux-rockchip@lists.infradead.org>; Wed, 06 Apr 2022 00:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=zfHXA8UAAQX4RF73thwSZRYnZdelw1yPWiu9aRHf/5U=;
 b=sRlNXAIhYZfcBgj085AxwI95B959EZC2rbFo4zQvux7+LNOHdEB+J7w34JxBHYswyy
 46G/Xuam31mr20ExEuNXcjIdgmAIba/CTgpy+OiFNGBfcJelAqNjMXySngvQDRy+sX3f
 92tRLrowZxmcRbu11Iu67HmPBj7oELITbixV4rZYMaW4Ro3l7SCFi9d18JvsfVUswfTy
 zXo1UaukAl1rxUxms66ZeDhVBpObMmmvW/XzY2F+1MLZ1krD5STxk1f37Jj5nL1lPnYp
 atwhkk8fpbaNxluHgBLeTslioN3dtKT0QxwyTmN3Kj3UEq1thbwYdCC2EokLlcNCxZsO
 fgRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=zfHXA8UAAQX4RF73thwSZRYnZdelw1yPWiu9aRHf/5U=;
 b=aRlbIdxU0VIKQRwMQXbYQ0GpTcWrPFDefcIrt3TM/yiDxowV2FbQsN8U36faXu1DYR
 xvZ8ukSOEbrYHuKJaKzajWqZ1wmHA0aHapM23bsnFq+EcYq/tueBd8mMYtmqcwO4Kr0p
 ALCWdq3By108eMHVS2MRgCrVg09Z0lUiWsQ1HwCEErJGBFokTQV1XKEGDrI4fP1UHw9k
 cYi5FkClzlEBA7tNK0PqIxoE20/9qR+KtiVNbuRoejhXNPi+EMcq/P4zy+vfdaK5OJLb
 8TrfbDEX5+LZnxs7Ybacs10jnBvdt52kpfkxmMQIX8UPo4JjVkP7Ko2Vgkug+RJheorH
 scSA==
X-Gm-Message-State: AOAM530beNy+PveFK5vIbgzJh3iCGF/gyQi7MW9AsKHkCCUmo3cTMLit
 iNuOLvd23z1f13/g5jF60i5/ew==
X-Google-Smtp-Source: ABdhPJx9Kc7JEu8MNluYQlHCl+KsXiLVSaLgbOFo4Yy7DOp05A2hNUvsp+G3jvpeGP2g0JBkLL+2XA==
X-Received: by 2002:a05:6402:332:b0:41c:d2d0:d7c3 with SMTP id
 q18-20020a056402033200b0041cd2d0d7c3mr7498281edw.296.1649230131737; 
 Wed, 06 Apr 2022 00:28:51 -0700 (PDT)
Received: from [192.168.0.182] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 c13-20020a17090654cd00b006e0db351d01sm6315639ejp.124.2022.04.06.00.28.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 Apr 2022 00:28:51 -0700 (PDT)
Message-ID: <44ae23a3-c3a1-7d34-8af2-cbc8c1c9db2b@linaro.org>
Date: Wed, 6 Apr 2022 09:28:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/4 v5] dt-bindings: Add Rockchip rk817 battery charger
 support
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, zhangqing@rock-chips.com, zyw@rock-chips.com,
 jon.lin@rock-chips.com, maccraft123mc@gmail.com, sre@kernel.org,
 heiko@sntech.de, krzk+dt@kernel.org, robh+dt@kernel.org,
 lee.jones@linaro.org, Chris Morgan <macromorgan@hotmail.com>
References: <20220404215754.30126-1-macroalpha82@gmail.com>
 <20220404215754.30126-2-macroalpha82@gmail.com>
 <74f445c2-3194-80a6-6d52-21368eb6172a@linaro.org>
 <20220405131228.GA20@wintermute.localdomain>
 <ac2b29c2-b3ec-eb03-595f-b0328e40015c@linaro.org>
 <20220405135424.GA20@wintermute.localdomain>
 <b269be83-3e45-fb36-75ab-e1c20ad6906f@linaro.org>
 <20220405140428.GA72@wintermute.localdomain>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220405140428.GA72@wintermute.localdomain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220406_002854_064437_D37CB656 
X-CRM114-Status: GOOD (  18.21  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 05/04/2022 16:04, Chris Morgan wrote:
>>> The driver itself is named rk817_charger. If you think I should change
>>> this from battery to "fuel gauge" or "charger" let me know and I can
>>> resubmit. Whatever makes it clearer for everyone.
>>
>> Yeah, the property name and bindings should describe the hardware, so in
>> such case the hardware is rather a "charger" or "fuel-gauge". Your
>> "battery-cell" from DTS is probably just a "battery" (unless you expect
>> multiple cells?).
>>
>> Best regards,
>> Krzysztof
> 
> Okay, when v6 comes around I'll change it to be "charger" instead of
> "battery" to make it more clear. There should only be a single battery
> instead of multiple cells, and according to the documentation I should
> be okay with describing the battery in the devicetree since it's not
> something easy for the end-user to change.

Yes,the description of battery fits the purpose of DT.

> 
> I'd like to get someone to look at the meat and potatoes of the series
> before I submit a v6... I did a fairly substantial rewrite of the
> actual rk817_charger.c to solve for several problems and fix several
> bugs I found in extended testing. One of the major changes was to
> mirror the BSP in that I poll the PMIC every 8 seconds for updates
> and then store it in the driver struct rather than pull each value
> on demand as requested. I see other drivers doing this but I want
> to make sure that's acceptable upstream.


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
