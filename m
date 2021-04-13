Return-Path: <SRS0=BK0I=JK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85F1BC433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Apr 2021 09:02:16 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0B76361029
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Apr 2021 09:02:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0B76361029
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0ZPE1dI3SyYGeYyNwkg0CSON6KFwSWT+WK5hElhrkho=; b=U7JRnw/RYmWphwsriLHW3vzu7
	zrQGaDH/KfTDv1HDFrlTObFU9cLVDIrfrXjfGIl/aNA1NgSb9/Y1nuTMVps5cQGqR48Juq0rVzd7G
	aWlyFdbEAWYLQYX8LE+lA+7s1tiwS0t2pc9rBJaksbNlXeRxkmnX1kKzKM9Fd41bshOBb1m5yF0tw
	U5WDYm1VHU+szigrygQLPgIp3OuWE/kp5F5E8aHIbP23Lygv1dcLI4Yg3e51JgST9gngNmSb6Cn4t
	k5Q9vOQUHHPaUNC8g7XYVKztEWjC3mJE/HvK8kLQFDV22KDEd0Kgsb7jVs9Sk/4Ly9akxLAkxglqv
	nifWkYCrA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWEvw-008dCs-RP; Tue, 13 Apr 2021 09:02:09 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWEpM-008c4x-NQ; Tue, 13 Apr 2021 08:56:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=ewtIu5p3Y0Xu99ur8olSmUgiErVcImHe/VcmOukwaEs=; b=0bxjU+E29zuiw4PxCynMN4WjUE
 XCrDxtjC9evlwto2ANZXR3NbUnPptwaYFjXsA4J3xy2E+rdEyVUDJfReq7LlRVRt6HFSWtQ6FmzIC
 RlFNa0wb6JdktONgL15LvffwPWbUyx2RLMqZx84FmOMDU42X4D8kxpCfzvxIjPgw8DVZeGl1Tgwi4
 yiYd3KGzjuCnbLpvzdwj1/7jEI5e6ydomEIhybT7qbBgCjvw3ANN3DUzNIDj3fasXPIvI6B8Gu2Xn
 ixJ1MrkKXtVIQx/J1nkUl3tBpLoeQW+d2oswxfOMU4kbVU3Ra1V3fwuKonZu+nV7ivsL4LwtZPMr+
 OJiWe3nw==;
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWEpK-006qgS-1T; Tue, 13 Apr 2021 08:55:19 +0000
Received: by mail-ej1-x632.google.com with SMTP id u17so24698565ejk.2;
 Tue, 13 Apr 2021 01:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ewtIu5p3Y0Xu99ur8olSmUgiErVcImHe/VcmOukwaEs=;
 b=Cv1TjM96wPkaSAIumPZnOxI7YBMHUTN1xUGcSlLDNjw8cLkyu2Fm0FnxnJMd+SEdHm
 OQmPnMf8N5ec8Plz/9sSPs10Stcq6t1XD3/eOlqcIXPJ7FilxfIs5Efc5lm17wvAT+9T
 DbCdnpwuv/Us7hs9jtH4Tjvz8MuJUzRkP7NQPm2CYAML1ulEiJA7jkMbBMXy+UWs9W3I
 v/WKoBe3h0vcfszKWB3NG7noUJjGDKZDhySuE6MbOHb9+XMCYUEadvA/9jT2WXY3rtXW
 IwlflKhAQUIIUQWyoqKQj4c8Rck7lkW+PxMXcXLubbWdPhDA7a3Lk7xacbQRD1o5CJ3L
 3/6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ewtIu5p3Y0Xu99ur8olSmUgiErVcImHe/VcmOukwaEs=;
 b=WvdGNp/cL5Ipqdv2Zh7qj9blHs7wjnlSLkdFTbHVkU8cdo5y5Rj7nEbtqmtxoNtmin
 eJ+W30Me1Z59x0i6Nv98W1aW6kskc6FmGTizTYzS4uro1dMXgimBzsnbUpe7gxwMm8Nj
 cUPZKFbzs5Jq0tJUxNNvWbd+3ew/YsjYu9qL2UYdPMgk7NkE3N/MgrnIwG+OEPgi+hen
 D4WJ/AAGDgnzDk1cJiqz8akF15MvwAfQX0uf2Sq5GFAFNJYG2V4znE71ueT3wFWoCjQw
 Z8dS2qEj/aq2bExeQ7fdtJS6nVrYHKd/SBwblRPCmAK1c9VwkelQMCljipgUv4BxxEuq
 0pQQ==
X-Gm-Message-State: AOAM531Ql6lWHx2V7KnZABKPkF9Syw+5Xa3yT32AWMYR0jc0h0Fu2FF2
 eqKUDdBWmNz9r7LgiYZHBAg=
X-Google-Smtp-Source: ABdhPJz1+mFBiqlZivwu2ed0Bl8pELKvAdWOAjzLRzW7jC7p4OylH7FXt/JSJFA++n+ak3UZqLcBXA==
X-Received: by 2002:a17:906:5fce:: with SMTP id
 k14mr16144197ejv.9.1618304114660; 
 Tue, 13 Apr 2021 01:55:14 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 e5sm8763675edr.64.2021.04.13.01.55.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 13 Apr 2021 01:55:14 -0700 (PDT)
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: change gpio nodenames
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, bgolaszewski@baylibre.com,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel@vger.kernel.org
References: <20210412223617.8634-1-jbx6244@gmail.com>
 <20210412223617.8634-3-jbx6244@gmail.com>
 <CAMdYzYqTS-qEOaVsnWMSABpj5Z55An_GLCUoOZZg-fjMp9qi8w@mail.gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <9fa62a53-e4f2-5032-cf1b-267e470af1c9@gmail.com>
Date: Tue, 13 Apr 2021 10:55:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAMdYzYqTS-qEOaVsnWMSABpj5Z55An_GLCUoOZZg-fjMp9qi8w@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_015518_111651_43EBF034 
X-CRM114-Status: GOOD (  17.01  )
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

On 4/13/21 1:22 AM, Peter Geis wrote:
> On Mon, Apr 12, 2021 at 6:38 PM Johan Jonker <jbx6244@gmail.com> wrote:
>>
>> Currently all gpio nodenames are sort of identical to there label.
>> Nodenames should be of a generic type, so change them all.
> 
> Currently the rockchip pinctrl driver checks np->name against the
> bank->name and if they do not match it does not set the gpio-bank as
> valid.
> The new GPIO driver appears to follow a similar method.
> This will break the driver without a correction.

Given Rob's comment in version 1 maybe combine this serie with yours?
With Heiko's blessing maybe add support both for legacy and for the new
format?

Johan

> 
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/pinctrl/pinctrl-rockchip.c?h=next-20210412#n3836
> 
>>
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>> ---

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
