Return-Path: <SRS0=fRcm=IG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A63CC433E0
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 17:42:22 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3888365228
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 17:42:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3888365228
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V7Sj1rRqUzmDkh+3n3lcuUh6DVGGew1IoOW1n4ai9UQ=; b=dpoy2XGBGH68ufgM680dchkpQ
	0FHHjX6W2hHstVUG54MZ5Wlwmi+JMkngBd7PZARnP51m6V0uy/GPbLCkMAgKY9VsJEoUHRfNki5S0
	JHXkhdOm9CDwjjkViS9kki6R76bYm8g4vecs7xgkPdT0AflMqDwJfKnLNwC/FYwct0lMyqDgeB/lA
	l2yxmRu13Qz9IYnk8gZl/xdnUFwcGOLqUF/8SYbQSNWDpvJhyB/Ke9py7sAW+T5GROLl7n3AJwq/3
	Rf18NkezKRxpUm3vFlsc4TAMxu+gdF57iFyMhZEzYb+jCvCtUlJLj2EtVaq2iZ0gzTcYpUQtImyub
	IBibC8akw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJJtZ-001UK0-4j; Mon, 08 Mar 2021 17:42:17 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJJtR-001UGC-Ce
 for linux-rockchip@lists.infradead.org; Mon, 08 Mar 2021 17:42:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1615225329; x=1646761329;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=ohLGmNuUkGlwwRVSqsoQifV5unVmEWWGUhedStY0U9g=;
 b=BMBp5FxDZaOLWyFTCz04wQp1VHdyCamrSifCZbBwOgXoyPN1Q8vHCc23
 PF8yFCDeAPlRJJ7TSWcmuE2JmQcCEHl1Wc2NNRrKsF89+wBiRvRFRoZU0
 97WbBSOiB3Y4BpbEf4b0nrrvO6TotZj3GAZevxrVgxk4sFUh82omXp7Gn
 /cvkl71KNGlSrGKvmqgCYYPaEiVarvJo3bC+S6i3fogpQO9HjBd7Hk57t
 CNK/eUoLt70C4xuRcQDfwbFbsHWJi3OpKCxW3jh3X/edHdLwMK2OpPmuc
 A91yM+JGSzi/CqU06PGj2lhbp3ka+R0Pe3a/uA6opVV2/PosqWC9fXZRI Q==;
IronPort-SDR: SYTwmdk/DE0R/nc9YjT9Nfa9jIa+X2iOrKlD6jjynqafwQttl9lygdhhV2gU2HjwWT3M2fpvcw
 OPwxdJAz9wzM1DTWBy7GkuDypHiZH8DsrFHTlU7I3C7fdxo3quwaJkhZHG8Cn5x1A2Ikh2HYAO
 PJ/BoGswezlUoq5N40oq0mhnQeNkXPTrU5ObK+MYEVwFM6zzQ7O84lSbtVNx9yyCvo5y9jkHW6
 mDrZauMu1eJIwbLzloKiMyYav7SBUMunbopfcLiuUbX2vK2KeZXaVN5PNhJ9dMkYDx9O3ppXWQ
 Rno=
X-IronPort-AV: E=Sophos;i="5.81,232,1610434800"; d="scan'208";a="109172385"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 08 Mar 2021 10:42:07 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Mon, 8 Mar 2021 10:42:05 -0700
Received: from [10.171.246.58] (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Mon, 8 Mar 2021 10:42:03 -0700
Subject: Re: [PATCH 7/7] ARM: dts: at91: sama5d4: add vdec0 component
To: Emil Velikov <emil.l.velikov@gmail.com>
CC: Ezequiel Garcia <ezequiel@collabora.com>, <kernel@collabora.com>, Philipp
 Zabel <p.zabel@pengutronix.de>, <linux-media@vger.kernel.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>, Nicolas Dufresne
 <nicolas.dufresne@collabora.com>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>
References: <20210305183924.1754026-1-emil.l.velikov@gmail.com>
 <20210305183924.1754026-8-emil.l.velikov@gmail.com>
 <915739c6fc01f17b00c4fac8b7fede1f25396286.camel@collabora.com>
 <CACvgo51peuKsuqx-NwZSWU4Ys1q5MuXb=BRx7GLo3tkWH+vb0w@mail.gmail.com>
 <2e921a53-def3-ed3a-6240-b81ea3ddf946@microchip.com>
 <CACvgo52dNRyiLDGDf8wQMKoxsCUyn3Ro=hHL7GAMtVXRdC_19A@mail.gmail.com>
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Organization: microchip
Message-ID: <5d6ce808-7353-be95-7d68-a56d01833dbe@microchip.com>
Date: Mon, 8 Mar 2021 18:42:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <CACvgo52dNRyiLDGDf8wQMKoxsCUyn3Ro=hHL7GAMtVXRdC_19A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210308_174210_227039_6D021994 
X-CRM114-Status: GOOD (  15.09  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 08/03/2021 at 16:57, Emil Velikov wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On Mon, 8 Mar 2021 at 13:21, Nicolas Ferre <nicolas.ferre@microchip.com> wrote:
>>
>> Hi Emil,
>>
> Greetings Nicolas,
> 
>> So nice to see this support! Thank you so much for handling that.
>>
>> Little comments below...
>>
> 
>> Nitpicking: I would use "microchip,sama5d4-vdec". We tend to use the
>> microchip name for new DT bidings and compatibility strings.
>>
> Should i use Microchip (instead of Atmel) only for the DT bindings or
> throughout the series?

Yes, everywhere you can (Kconfig, explanation text, ...). Only keep 
Atmel/atmel where you cannot do differently or if it would require to 
modify code or move file just for this purpose.

Regards,
   Nicolas

>> I'm fine with having a "staging" component. Maybe add the hantro vdec as
>> a module instead.
>>
> Ack, will do for v2.
> 
> Thanks
> Emil
> 


-- 
Nicolas Ferre

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
