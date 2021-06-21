Return-Path: <SRS0=N5vj=LP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CE44C4743C
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Jun 2021 11:58:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 288C3610C7
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Jun 2021 11:58:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 288C3610C7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+ZmR5XpVFFdCnSedC1WLl09b29zf79dIJBURVkxI4ms=; b=UQtS9xg+iU5gBgiyOyCRzcKxAN
	0UNJI8jRdakteIFpNgAF4kT6RZ2XJXc9AyyhtHRhvv5Y/jOvhqc3mwF22bswSXc19AqqBjxAAPWOG
	n5JBgMI0PkWB2OWHD1YnA8/ZnXSAvuyd9At1KSvnntVvauAp0P86B8CXpZBR6AF4qOZCLKXX6FSfV
	AItVRsSOUL544OSHdlAqrl7ZYdErTkjVAWpq9Z7VOdvrm6EKUCeykgYz6O3oB2Aq0ZRxfRpuz2BYR
	lMbgd12XlkxgNthfOkkeB63u8DrbL2rvKmjUAl2qif6EUyQIkpJhDNQUbvmx00d+CVJhD6m9RTcur
	ShBZgwaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvIZU-003Ptz-FE; Mon, 21 Jun 2021 11:58:32 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvIZP-003PrX-CU; Mon, 21 Jun 2021 11:58:28 +0000
Received: by mail-wr1-x431.google.com with SMTP id e22so15772343wrc.1;
 Mon, 21 Jun 2021 04:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=80v3QdK6lvkTa+Gv+j5089kh4F58fian+x7X/sqsWnc=;
 b=P7V1sZttRDo+gv7B209QjtKRej8sON6YfC+dLoFsoPq4CA8F251j2apZkqH+4pB0+2
 m/cAVl7BEp+juNm9dbQIhvfxcfFQXhdNNbvQGXk+DtCEr8lmkBuzpBIMCG1uE5y37sCY
 CexGSEG9dMFHFVYLdP2D8pGVsI4wPuy10J6ZRYidmtSdouQYEjbOj4COwiCqYTzlIyvR
 YS/X/Dfm2oOhhci3ykaiyHOxSfwZS3XdezDqJc7VyJC/A2l/WHlDw6Jr6UVV/zanW2v9
 ufcT0/Q34EPzXx9geuhVC3JI3cs+OUNPQ69Tlbj8Kz/TkV0OAPdM3S4fGBRJ5syZ/swm
 C9gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=80v3QdK6lvkTa+Gv+j5089kh4F58fian+x7X/sqsWnc=;
 b=AiSRpwoRDhox2AS4srwo+EpZSjVBSVb9ADz75+NV79cEtomeRXXuHr9gvozwVAhF8g
 u5/i+ffb2mlAJmpuuN+EW0C/R89S+7bPlo7fK+qKv9xBBiUD1YZwgVVfbXXRHvzDleJG
 YNhr5AEiNIgPbE6gElkprhQBUP8qH9pLXHKUg5N9PY2X7JpZYBOwu1J9ezWEbt/XPSVM
 HfGGdKN3Fuv1bCar/on5Tqxw8fggICS1qiiF1AUCmkOtunDhMHGQKYSDg3at2PSX0KsY
 apguSBJxMw0NeBMrCvLB8zVYAuYt37A3uLLaSZ0Xx5V7B520jOrdZcaNEi14m8xl957o
 OWnQ==
X-Gm-Message-State: AOAM531h6Avc5OaF9JW9k/M0l5j0rUR0l+/Ns1t6B80FcFCzuzTDC5On
 ygSWczuY1HCHoQTbmD7TdA==
X-Google-Smtp-Source: ABdhPJwFdShnzZcO1ddX2RbzeMUujpzXbXQzvHgGwyV+ILWRbHfPAIAbkr+xMsp7hH+KNcVvOyogDg==
X-Received: by 2002:a05:6000:89:: with SMTP id m9mr27342835wrx.8.1624276705168; 
 Mon, 21 Jun 2021 04:58:25 -0700 (PDT)
Received: from [192.168.200.247] (ip5b434b8b.dynamic.kabel-deutschland.de.
 [91.67.75.139])
 by smtp.gmail.com with ESMTPSA id j17sm7254661wrx.0.2021.06.21.04.58.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 21 Jun 2021 04:58:24 -0700 (PDT)
Subject: Re: [PATCH v2 08/12] ARM: dts: rockchip: add power controller for
 RK3036
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Ezequiel Garcia <ezequiel@collabora.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210527154455.358869-9-knaerzche@gmail.com>
 <1dc782cd3956598b2eb5f89ad0680d2ce38ffd54.camel@collabora.com>
 <3783580.yKVeVyVuyW@phil>
From: Alex Bee <knaerzche@gmail.com>
Message-ID: <b7650d04-bfaf-696e-c492-e53c9a4408c1@gmail.com>
Date: Mon, 21 Jun 2021 13:58:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <3783580.yKVeVyVuyW@phil>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_045827_505130_2BA9E664 
X-CRM114-Status: GOOD (  17.57  )
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

Hi Heiko,

Am 13.06.21 um 18:22 schrieb Heiko Stuebner:
> Am Freitag, 11. Juni 2021, 17:58:58 CEST schrieb Ezequiel Garcia:
>> Hi Heiko,
>>
>> On Thu, 2021-05-27 at 17:44 +0200, Alex Bee wrote:
>>> Add the power controller node and the correspondending qos nodes for
>>> RK3036.
>>> Also add the power-domain property to the nodes that are already
>>> present.
>>> Note: Since the regiser offsets of the axi interconnect QoS are missing
>>> in the TRM (RK3036 TRM V1.0), they have been taken from vendor kernel.
>>>
>> Can you take care of the device tree changes (patches 8 to 12)?
> sure, I'll pick the power-domains now but need to wait for
> the vpu nodes for the driver parts to land in the media tree.

Looks like I'm too late for 5.14 - just in case you didn't follow or 
didn't receive a notification:

hantro patches of this series have been merged in media_tree and vpu 
node patches (please pick from v2) could get reviewed/applied now.

Thanks,

Alex

>
> Heiko
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
