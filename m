Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60C1CD1CDC6
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Dec 2025 15:04:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f0lzbbt61BdQXkI+rJYHfH9khSLE+SPn0Vh8k34eyYQ=; b=tgl/nJv4c5VzJm
	z3mf2PheEkpizT7D9jF+I4JXeSA7apZmRP9PHpjHnBSXGGn2Uu9cGDeGqNeYk5fTXX/m2HZKCdFaG
	T4ryWvidB4Tryez6FM7gRIBuhuPj3G6rsDL9Pp+yrh7M1xiO7amuwgL6QihdEhA+nDGDlY3l3hWDL
	aLXZdXqQmEZt0vO5hEC7gn5O7zK3bi6Fldn5dqf9+8/lJQ6Yxvi7C+ZvmAo0T8T89by5ouvyM073e
	cXI8AIAiAmgGiJY0Snw42R68Ae29Zl/dunQdHIjgecDHGG3b2w6yhmZrhR7lTjdx/p7GUDEdDaLJg
	bPN6L/YwVvUz4rl1+KxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSzGU-0000000EQzw-01VJ;
	Tue, 09 Dec 2025 15:04:34 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSzGR-0000000EQzX-44g2
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Dec 2025 15:04:33 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-7d481452588so443103b3a.3
        for <linux-rockchip@lists.infradead.org>; Tue, 09 Dec 2025 07:04:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765292671; x=1765897471; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PfnacZa7lQk1UkoU+10PADVx4NiV/d9RSz8Lvu845xI=;
        b=f2EL2WCeelo+kHEhO1op9LzkwolO8CD1CUr24AIC2kHmF76qp3Auv/jLCpxC/6YDmS
         GKJCzdTQ6cdYvMLTAeOFSQv4KHWmhim4MrxeuHAIZ9JarevXsJ8i5nESiSHDI+WoUyeA
         /wv56YExhcwimyHLfWJ3wPMR5L+SRRNmAuAu5tJC4pNGC99diVWrt2yGhWyp21tfw0e6
         aYyWSCaa8UyvVPfJ2ViSH7VVm81LeIOIj/2cwoAzNLkDTq00XNDLZchW7MN3EIQzw+tS
         8XHWbvvOxPcvgk26w/q+ujwv/7MNAYfdCif5/wfq4dnLmKa2wOpHTsyjgB2WW/RifCX/
         M8nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765292671; x=1765897471;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PfnacZa7lQk1UkoU+10PADVx4NiV/d9RSz8Lvu845xI=;
        b=VU+Dy9LROYPEMUi4Q0nDet8+Rc1czqwPFzmcAbl6Tmm/O1yvQdWCywTFadkn5WrZY4
         B4MBSfT38kOYX9P5iFj3vSt8l32/nJb8YUhwq3GG8pFKHV6KhlJB8IwJmpzkbYOVY8CW
         KI2wN2wFmwmJyYgwMpYJjXKz3GCJObXYQxwPUAco2wgTlFp7vJvgEdNdnUD2gVzPeRsi
         EX5cxYeDSAphX5j2sJd+gCLZ+Hbm6TWueWt5C0c9L8rpZmLJEq2r7MXR9rfrdO7MFcC7
         IALwjdPTJWtiP2s6zI9H/n6sxf34UGX8CY2du+13j346byf8oquzqK8urONFfYqsjOdP
         XpQw==
X-Forwarded-Encrypted: i=1; AJvYcCXKkvu64snLCXJwS2X+k2bXn4aZnJZAYhcFlheMMjAVEbdJi/ewjdC8mxWzmJ5ql4j2xI497TRn4LJfpMDVcA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwlDMuIknle2U1aAiHzkAF64m+7jkKRIepaDdqiqbqOJ9YEXagE
	Ey7wSZWPQjqovDlqx5SQyh5K+udZJxcAKNu0crY6Ywz7oE+ggi7M3Ow1
X-Gm-Gg: ASbGncsIwrGdz/qejnVDrI5LXAs3jwhs25gxR3xnazp/li0yYZJ+1eUf4nanh87/5G6
	Ytlz/VBav2P52/m3qmT93+rWBXwhYmQDg0uLZPmWbur2Pt52NUSYp9WKPI4tjBJ7m5dqmws5+la
	3N1Xe4UN85C2KcEfvnYBhMHOJcwn9sHIsK2HhYvCIbBS73To2USmGqC8amNZwYCUYxoST4UF/RI
	bXMnjaIdqShg1vAoe5ZqKl1qO0Jd4VjcLRjXCZua+fk7qC0xah0cgpnoZL7LcEvQc4KSHIQlici
	Pe2zmR4qub8GEd//DbZD39OAyr53RMVCIwA/TSnM6r7gSTWKSnGTXehdGXn/5rtzNPWDjXuSwkl
	ZM6lhJrANMggBRvYhhVUciGWVv7c8xvDd1OROtAPLiBtX0soQgBaI3iUSCPH+/mLrww+xfaVIvP
	2eLMDiWvI/BrIPc9P1ddE=
X-Google-Smtp-Source: AGHT+IH6fU4r16kU8MAxX63Y2MbZhh1Vkb7M4IyVPwitFIhNynOKo+wM4p1RzfclauryAhGCHkY8BA==
X-Received: by 2002:a05:6a00:240f:b0:7ba:13f4:a992 with SMTP id d2e1a72fcca58-7e8c68c6d04mr6571572b3a.5.1765292670382;
        Tue, 09 Dec 2025 07:04:30 -0800 (PST)
Received: from ArchLinux ([240e:47e:2e50:e3f:8b77:7554:2025:6aac])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7e2a0a008e2sm16396684b3a.28.2025.12.09.07.04.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 07:04:29 -0800 (PST)
From: rmxpzlb <rmxpzlb@gmail.com>
To: sebastian.reichel@collabora.com
Cc: heiko@sntech.de,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	rmxpzlb@gmail.com,
	ulf.hansson@linaro.org
Subject: Re: [PATCH] pmdomain:rockchip: Fix init genpd as GENPD_STATE_ON before regulator ready
Date: Tue,  9 Dec 2025 23:04:21 +0800
Message-ID: <20251209150421.2229-1-rmxpzlb@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <nokcp3ky37sdonx2kaqnmtr2pdqwoifrtpam7tqqygldl32tec@y2p3tcnd3bxa>
References: <nokcp3ky37sdonx2kaqnmtr2pdqwoifrtpam7tqqygldl32tec@y2p3tcnd3bxa>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_070432_016056_1CBF0C37 
X-CRM114-Status: GOOD (  18.15  )
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

>Hi,
>> On Fri, Dec 05, 2025 at 02:47:39PM +0800, Frank Zhang wrote:
>> RK3588_PD_NPU initialize as GENPD_STATE_ON before regulator ready.
>> rknn_iommu initlized success and suspend RK3588_PD_NPU. When rocket
>> driver register, it will resume rknn_iommu.
>> 
>> If regulator is still not ready at this point, rknn_iommu resume fail,
>> pm runtime status will be error: -EPROBE_DEFER.
>> 
>> This patch check regulator when pmdomain init, if regulator is not ready
>> or not enabled, power off pmdomain. Consumer device can power on it's
>> pmdomain after regulator ready
>> 
>> Signed-off-by: Frank Zhang <rmxpzlb@gmail.com>
>> ---
>>  drivers/pmdomain/rockchip/pm-domains.c | 14 ++++++++++++++
>>  1 file changed, 14 insertions(+)
>> 
>> diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
>> index 1955c6d453e4..bc69f5d840e6 100644
>> --- a/drivers/pmdomain/rockchip/pm-domains.c
>> +++ b/drivers/pmdomain/rockchip/pm-domains.c
>> @@ -659,6 +659,11 @@ static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
>>  	return ret;
>>  }
>>  
>> +static bool rockchip_pd_regulator_is_enabled(struct rockchip_pm_domain *pd)
>> +{
>> +	return IS_ERR_OR_NULL(pd->supply) ? false : regulator_is_enabled(pd->supply);
>> +}
>> +
>>  static int rockchip_pd_regulator_disable(struct rockchip_pm_domain *pd)
>>  {
>>  	return IS_ERR_OR_NULL(pd->supply) ? 0 : regulator_disable(pd->supply);
>> @@ -861,6 +866,15 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
>>  		pd->genpd.name = pd->info->name;
>>  	else
>>  		pd->genpd.name = kbasename(node->full_name);
>> +
>> +	if (pd->info->need_regulator) {
>> +		if (IS_ERR_OR_NULL(pd->supply))
>> +			pd->supply = devm_of_regulator_get(pmu->dev, pd->node, "domain");
>> +
>> +		if (!rockchip_pd_regulator_is_enabled(pd))
>> +			rockchip_pd_power(pd, false);
>> +	}
>
>It is extremly unlikely, that you will be able to get the regulator
>at driver probe time. The typical regulator for NPU or GPU is
>connected via SPI or I2C, which will only be available after the
>power domain driver has been probed. So I suppose this could be
>simplified as:
>
>--------------------------------------------
>/*
> * power domain's needing a regulator should default to off, since
> * the regulator state is unknown at probe time. Also the regulator
> * state cannot be checked, since that usually requires IP needing
> * (a different) power domain.
> */
>if (pd->info->need_regulator)
>    rockchip_pd_power(pd, false);
>--------------------------------------------
>
>I think the proper fix would be to add support for registering the
>regulator needing power-domain's delayed and then enforce requesting
>the regulator at probe time. That's not trivial to implement, though.
>
>Greetings,
>
>-- Sebastian
>
>> +
>>  	pd->genpd.power_off = rockchip_pd_power_off;
>>  	pd->genpd.power_on = rockchip_pd_power_on;
>>  	pd->genpd.attach_dev = rockchip_pd_attach_dev;

Thanks for your comment. This simplification is OK for me.
I will test and send new patch.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
