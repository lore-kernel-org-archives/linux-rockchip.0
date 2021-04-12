Return-Path: <SRS0=kcRh=JJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85017C433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 17:54:32 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2348861241
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 17:54:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2348861241
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lID9Y9l/GRFy2Nn0/GuylaxzhemQFuOfBhwrkjjYOGU=; b=QfsjuXGv/kwS+TR7SgQEA4L37
	D0SUOXE637t2TltTEJkmMx7iNhHrc7Lk6fJDstSSftdta+xvFjt1VmM29zc3K6DjFe1MiA5hQXEwn
	HUvPrdu836nSQEuBR4fj+gRfaV50Fck8d0WJNJ9pQwZ3Yaaq2MZGCngiZbrkw8wyQgXUePDEzvWxX
	M25EqjF9p/Qnx1GE+ymy8dIw0lLoadHpLF57A7AW+c0vFeEsMdNFhAlO0FxmhnUyEaJQHUqmMkssK
	iSiVuL+RInBvJTFUEHQ4S1hQUUmH336gzfLSMZqze59aqaa6G2/5peB0aA6UMOY2MKgJ3YtVEVyjk
	sjze3iIyA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lW0lX-007ORz-Ru; Mon, 12 Apr 2021 17:54:27 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW0lW-007ORp-IS; Mon, 12 Apr 2021 17:54:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=7xZ2z/REQKDHpPpudGHJDtF+j1fU3msVI7XisJ2amc4=; b=myjqzWkCfCMQfDt53ayqDJhDnY
 /S/neenhE48RR1oG5e+mgKT4nT4iDq7ykw1hWGbGAaQXdr2n0XyiRJOEFgXZj/iV1XtNiLqnr410B
 TMU0IRZaPJIS21IklM4tKfdG7yC1VFTLVGh3jwPzt/GYHJEUb280dL/2SI4l5MH47OUSxElKZcFaL
 mls9mupIB4EhJt4V5/muiUIOr9RVVc1v5wJ+0oK0lRjdzVsCxJx0evRJDm7LIArOn/eTL7puGk5eN
 TXS7s5BorBXY5xmT6ytd9/WYIl84T9ms2D/zpNvAwxGGI4lEfKSGCc1Jp/Du6ffaxY37mXONuNTvZ
 C3qw3mhw==;
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW0lU-006Sxo-4g; Mon, 12 Apr 2021 17:54:25 +0000
Received: by mail-ej1-x62e.google.com with SMTP id x12so918063ejc.1;
 Mon, 12 Apr 2021 10:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=7xZ2z/REQKDHpPpudGHJDtF+j1fU3msVI7XisJ2amc4=;
 b=UDvpB2a4GDnPlFBEkaSIRcfJMyWB2e4QNAnncdGeKlzcLUokn2c5mfaqypZdqPbzeL
 Mgf+FlNviP3AHd3CvAVEfJtY/q6YxakAF/BnOFglDXUoiyj+C7c32AEOOA9F0iLhEWRO
 CcdpFtRr/n/ZAKLasjDjtjzeWFNPP2j1akh81i+Rb3ZEI7wP+TrRBhduHH2pkpDyq7zi
 4XTOk0keAF9aQ6vSqLAt5uftZrp5PRIi2yZvhFsGniVbqN+YeLI5d+1Yz4p3anyOs87f
 UxN4fXHrpm3XJJZovc+HLoX4/DBDf11qcSXZG6UriPeE4PacTj0A2tfonbkOIIoyGX7A
 Tvgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7xZ2z/REQKDHpPpudGHJDtF+j1fU3msVI7XisJ2amc4=;
 b=D4IlQbQVC1hGZ6LYq2WyPFljaQuwltLy3FUaY7Y/PZGstSyqba1bP4UrOYMdqc7mjl
 jYx0+8f/vfLJ6yO07FBX1MxAgj1N2zb84JtY6/5k/6ux2Ehn0KD1IZmxIwh2JFlQzrI5
 Ai9eTYJmtkFUZuxcNZIPz2Ch8c+pf6pMNF61G+foVx1uNoO+xCh4b1tdMBVVBI0MC4YL
 2EXpKkLnndRgUlbq8VKtSUGpKFPwoPIqFmUwaURbQPTGqfPzxL3VrU8Ob/ElIIk7H5u/
 l3afAcUAnGUBCFluUT3HSti2n+XP0QiUjn8P989Aj5+qnticjO8HudU3LmN8TFIBiK8u
 8aHw==
X-Gm-Message-State: AOAM530Ca3dhI18utBp4hs52wxdifHDxG8bQ6JZQCqZVJ7oLnl4emoSe
 ZQkL+PRvm0w+/qWZ15sVu4U=
X-Google-Smtp-Source: ABdhPJwmIXBWKA7QOETds/BhD3661kA4UbZLfCHUrVwbpjensenk1YYVEv3gTJRh6So+ofnhWvdZ+A==
X-Received: by 2002:a17:906:3c45:: with SMTP id
 i5mr2579867ejg.368.1618250062327; 
 Mon, 12 Apr 2021 10:54:22 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 v5sm7472791edx.87.2021.04.12.10.54.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 Apr 2021 10:54:21 -0700 (PDT)
Subject: Re: [PATCH v2 2/6] dt-bindings: pwm: add more compatible strings to
 pwm-rockchip.yaml
To: Rob Herring <robh@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 heiko@sntech.de, thierry.reding@gmail.com, lee.jones@linaro.org,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 u.kleine-koenig@pengutronix.de
References: <20210411131007.21757-1-jbx6244@gmail.com>
 <20210411131007.21757-2-jbx6244@gmail.com>
 <20210412150533.GA3898302@robh.at.kernel.org>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <ba14a833-10dd-fc70-d6bd-70e8f6811ab3@gmail.com>
Date: Mon, 12 Apr 2021 19:54:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20210412150533.GA3898302@robh.at.kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_105424_213509_2328A08C 
X-CRM114-Status: GOOD (  18.66  )
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

Hi,

Sorry, made a little mistake in version 2 with "rockchip,rk3036-pwm",
"rockchip,rk2928-pwm".
Please trash. Will send version 3.
By the change of schema for clocks and clock-names I add
"rockchip,rk3328-pwm" to the "if:", so strictly speaking v1 and (v2) v3
will not be the same.

Johan


On 4/12/21 5:05 PM, Rob Herring wrote:
> On Sun, 11 Apr 2021 15:10:03 +0200, Johan Jonker wrote:
>> The compatible strings below are already in use in the Rockchip
>> dtsi files, but were somehow never added to a document, so add
>>
>> "rockchip,rk3328-pwm"
>>
>> "rockchip,rk3036-pwm", "rockchip,rk2928-pwm"
>>
>> "rockchip,rk3368-pwm", "rockchip,rk3288-pwm"
>> "rockchip,rk3399-pwm", "rockchip,rk3288-pwm"
>>
>> "rockchip,px30-pwm", "rockchip,rk3328-pwm"
>> "rockchip,rk3308-pwm", "rockchip,rk3328-pwm"
>>
>> for pwm nodes to pwm-rockchip.yaml.
>>
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>> ---
>> Changed V2:
>>   changed schema for clocks and clock-names
>> ---
>>  Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml | 9 +++++++++
>>  1 file changed, 9 insertions(+)
>>
> 
> 
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
> 
> If a tag was not added on purpose, please state why and what changed.
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
