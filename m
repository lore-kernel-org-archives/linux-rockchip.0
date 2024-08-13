Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9ABFC52D7C
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Aug 2024 08:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p7lujUL9poOaIEhIFQeiGdFHqJ4ZOPYpqt2upmp/esk=; b=CZ0AcbpH4d4++r
	Vx389bJdOfq3BxXk0N6kC19dLjpkpMqdvlCBYpTmI2RXkue6bHTRbDWn69GzFeyLUkjn00Hg25+Mv
	deQ34AXmsJ7Am/9MfquWtf3xQeK8TYNO5n0G+gp9d663hq/ew0Eclur5bH4rnrHqS11bZU1OglMTH
	H4r6eOZ61/EE1k+USxYze22t9eW/6IUtmC38wXBD47buvJ7ZZSydwo2Tdm86mD13jZBxQeFeDEo/j
	brxPpcevJcaI2ZaXV+S9LutpJCp8/+zrOaEueHwVwLw1aq1DeKCuzpbq4px+Sghuvnh5QpBeXzEWo
	ueM5qXewWapJyHnqeNqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdn4R-00000002wZa-1bBw;
	Tue, 13 Aug 2024 08:39:59 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdn4O-00000002wXk-0y3T
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Aug 2024 08:39:57 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-58ef19aa69dso5119795a12.3
        for <linux-rockchip@lists.infradead.org>; Tue, 13 Aug 2024 01:39:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723538394; x=1724143194; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=oTf8oFxhmSaVUMNVK/xng6hSRJlTYmoDoWZvc08Nw3c=;
        b=E9Zq79EMykXja5JVoKqdEFBPWSZd+c2JkqJY8pfEPQs6ihzaD4qEMYqKS5uoRFTVpb
         k9UldzL46epeWhuxYTMqd1FVenx8Z8TXYfq1E+QA6YhCfv+7RAOTCy0AD+EM2wfKoq6Y
         5MLPAzht8ZK+MuESyz+qlyVH3GW/DyVFC2ppbt3+Lrpm9tlRgzYTU6Po1zNTbJ5ZDwVt
         0VZwItstl1GUSaQoP7L5TGMGFd300i6Pu0uEMy28VzF15MgsIwmRtM53TeQNE774Dr/E
         cb2kzxqj7BrgbIAZ5CxqdRZ7/s6FLGKzS4kzvyYyX8evU+ywilOd2xGfH8Vuvl1HIQk1
         Ufjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723538394; x=1724143194;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oTf8oFxhmSaVUMNVK/xng6hSRJlTYmoDoWZvc08Nw3c=;
        b=iBF4sK8ur2fSj90OKXRk34oYeTmVgR7PK3M7/irSiQb07i9NeMVGXW0oqXNIvgDwJi
         eD1KWVTA2vx8IqAYA1M115R0hcInKcgeHZY16aq+5r0rKZ9+sPz3fAYzHONqGyFQ1+0N
         BG4UDN8m7T2K/5RBYiXpnlJYqeTJiHe5t6g4Ab6ECoOUYwHMvXOlaVn8hTowX3Na3dM1
         68OHNZdQsrPT4RmCiQa4OkHYZlY7cw5LnJSjjQcdED87B4UThWSwyfr4sco24/arAv2h
         lbFKeo3vqtXiUDAxmyPwvViSo5kUSzNTEX+agHC6P8Z2zwnQzlMvPW2Tv3pWGjPHOEHI
         2PXw==
X-Forwarded-Encrypted: i=1; AJvYcCXnlc1nNd1XuWw84m/lRcY50dx/xBNGUMKehDHKBr+B46P9ZEXomRfww8q1hS3gAlWx3aZM4cT7g3ynJh4wJ391b7CAF2WU6ic9Cam+8EhbANNb
X-Gm-Message-State: AOJu0YwcSBOUnhBQg9FcARfNPL0jt0EYGSJtHyUK2jMKTC7vyYhaw/7p
	P09sp/nfnAQkZf9fCpQoqIgKZHMAIYagEf/k2RutZ5A4Qv4cGZPVZG+XnWoZvQ+ooTyB8Fbf4qk
	8
X-Google-Smtp-Source: AGHT+IEAISzUiCOds/ICHDuqb2Wg1U0SD2h95imMEZXMycvgh2dBBUx487K40KRCSb3e/s8OAKAtMg==
X-Received: by 2002:a05:6402:35c8:b0:5a2:6e1c:91e9 with SMTP id 4fb4d7f45d1cf-5bd44c14c71mr2070891a12.7.1723538393982;
        Tue, 13 Aug 2024 01:39:53 -0700 (PDT)
Received: from [192.168.200.25] (79.186.29.241.ipv4.supernova.orange.pl. [79.186.29.241])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5bd191a20fcsm2980340a12.36.2024.08.13.01.39.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Aug 2024 01:39:53 -0700 (PDT)
Message-ID: <7f441532-cee2-44d8-bab2-11097a080c64@linaro.org>
Date: Tue, 13 Aug 2024 10:39:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: DeviceTree for NanoPC-T6 LTS
To: Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
References: <d99fcb81-d864-4336-afe0-046c2136a4d7@linaro.org>
 <2a7e3b2f61822dc8426b7aa7e5108c04@manjaro.org>
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Content-Language: pl-PL, en-GB, en-HK
Organization: Linaro
In-Reply-To: <2a7e3b2f61822dc8426b7aa7e5108c04@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_013956_315272_D0897014 
X-CRM114-Status: GOOD (  13.53  )
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

On 13.08.2024 04:41, Dragan Simic wrote:
> On 2024-08-12 17:36, Marcin Juszkiewicz wrote:

>> I bought FriendlyELEC NanoPC-T6 LTS recently for some development. Got
>> Fedora 'rawhide' running there with Linux 6.11-rc2 but got hit by some
>> issues.

>> I have spent some time trying to get DT mode working properly to find
>> out which values I need to change for ACPI mode to work. And got to
>> the point where I have a question:
>>
>> Can we make rk3588-nanopc-t6-lts.dts file?
> 
> It's certainly doable, but it requires someone who's skilled enough
> and willing to do that, while they also happen to own a NanoPC-T6 LTS
> to develop and test on.

I do not know much about DeviceTree internals (more of ACPI guy) but 
know a bit about how to tweak it. Already took nanopc-t6.dts as a base 
and started experimenting.

Added GPU node so 'panthor' kernel module loads. I did not checked yet 
does it help as I run minimal image now.

Now trying to get USB ports working. Have to compare with Rock-5B DT as 
it made them working (when booted with it on nanopc-t6 lts).

The good thing is that most of things work already. SD, eMMC, PCIe (I 
boot from NVMe and use one of ethernet ports).

Getting SPI flash recognized is also on my list as this would make 
firmware updates easier.

Will submit working version for review.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
