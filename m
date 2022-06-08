Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31A5AC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jun 2022 14:25:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+HStols6ApWTxTA63kuKrosB/+H0SW/yq/F1OxvUi9c=; b=kd75mv1Oxj0RnR
	o5sxp5+Fb3Vs3ALUJTn5NYEQfHC9wzw/UYoqBDNtjVjJDnFvAnVDkvy2otIFnCvVrVZiVdWOxE8eI
	eeVk4s+5GLYHE7lUqF88W2+FattfC0w9Tb0ndId+OA9pU0nJE3SBZBlkY1phF+qNeNAmujVytcxNw
	DW/zm9f5no4r8RD0Ey23sxFlU3p4Qf1RzWJkWuEJaa/IpliTJrkvykWp/22x7VGWbtkbXt9oLf/hi
	g9DGvBUJrJlCTeuNxrCYdzzVm7kCh5P8ZGte45bIVAmISdSg7y2r1cyUQsbzk161Gpt9kvJLd6w/T
	yzzWEl3zM9Bt21JJdN6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nywcy-00DhGX-Id; Wed, 08 Jun 2022 14:25:44 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nywcv-00DhFl-MN
	for linux-rockchip@lists.infradead.org; Wed, 08 Jun 2022 14:25:43 +0000
Received: by mail-wr1-x431.google.com with SMTP id s1so5494008wra.9
        for <linux-rockchip@lists.infradead.org>; Wed, 08 Jun 2022 07:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=pAzotkayrPfifnELjI7up7pZW4ty8QpI9bAYjnJ3DJA=;
        b=AtQm5R+cHC7C4IVjpxwiEYnrpW3HnoghqPO5egNxtajXkzq+05zw/3EvVx88hirng/
         gVPQQkEUCgpIVWNwJAGfdRmYZX7LESZGYhtXlYJvp9wEG1tPHLrExTL/t4MNOtfKnDtq
         Y24pPRpvV2l3dYZQ/kVTeDxdv2SYx88bHwFRrdYwXwF0Z8GTeO+Wk4UgpXyXb1Xp+/wK
         u8J5m5cPn4kt8JVL+4KIwdcwHxGMHiCDMKQO5I7p7MUGHjpA+Sfxl6fi6BC9iqtYu+qD
         utT/TFb0bWoBQ3M/KeqPK7mXNJTxiYYliVfNO1UkVxlayeaZsfZXZi8KyObVYM9xwlU0
         Kb1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=pAzotkayrPfifnELjI7up7pZW4ty8QpI9bAYjnJ3DJA=;
        b=3YpEHHFiuVi+19Qu+ni2Oli92qJ8BYv2H0gAV04YDIRNdTgUkoP5axP6SUz0jS7Ih1
         NUSmmgihb9Q1Rl8JEifTn19rX8H9u7OJfQhop008K3fa4PeIfsSel3ebsDxn/r2ZjAyO
         sg1h6EhFA9eccPl9vL22diAZxNws87vcyJbAjS3Mjn1Fma14M49lymVFzCxOyLiBwgha
         VBIorzTP5vBJvfUgOzzi4JZJfeSpZMrA0RvWEu1Fq1LXv9ek54jbZ0ihLzQxTQqQxEeu
         5RqN/WYj6wVewhwDsLJdlbAIsCJzYXu8ONTgVBHvXrfiJDAW/AHeo0aLFIDeKBQi4iud
         EIlQ==
X-Gm-Message-State: AOAM531bewKEDlboTcKLmvytBgObv7VrjcW67xvu9T5wHKFlvSqbQ1IQ
	nRIkVZmC+HgFPnPJ9m+QsAg=
X-Google-Smtp-Source: ABdhPJz1MZa24Md8FAPv7aCsYSjFMzNm8JMj/XzLOOesxzqt6Tlr0+Fiq0OuBJTyA5mWxdYV/3MAfg==
X-Received: by 2002:adf:ffc7:0:b0:210:2bba:f431 with SMTP id x7-20020adfffc7000000b002102bbaf431mr34100825wrs.495.1654698337491;
        Wed, 08 Jun 2022 07:25:37 -0700 (PDT)
Received: from [192.168.0.14] (cpc141996-chfd3-2-0-cust928.12-3.cable.virginm.net. [86.13.91.161])
        by smtp.gmail.com with ESMTPSA id h1-20020adffd41000000b002103aebe8absm21538093wrs.93.2022.06.08.07.25.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jun 2022 07:25:37 -0700 (PDT)
Message-ID: <c328e7e6-8d22-2480-38f0-f05528c548dc@gmail.com>
Date: Wed, 8 Jun 2022 15:25:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH] media: rkisp1: Don't create data links for non-sensor
 subdevs
Content-Language: en-US
To: Jacopo Mondi <jacopo@jmondi.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 dafna@fastmail.com, heiko@sntech.de, foss+kernel@0leil.net
References: <20220606225149.2941160-1-djrscally@gmail.com>
 <20220607164125.oabtqz6kh5bo6k6v@uno.localdomain>
From: Daniel Scally <djrscally@gmail.com>
In-Reply-To: <20220607164125.oabtqz6kh5bo6k6v@uno.localdomain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_072541_804874_6130E1E0 
X-CRM114-Status: GOOD (  21.61  )
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

Hi Jacopo

On 07/06/2022 17:41, Jacopo Mondi wrote:
> Hi Dan
>
> On Mon, Jun 06, 2022 at 11:51:49PM +0100, Daniel Scally wrote:
>> With the introduction of ancillary links, not all subdevs linked to
>> the ISP's v4l2_dev necessarily represent sensors / bridges. Check the
>> function for the subdevs and skip any that represent lens or flash
>> controllers before creating data links.
>>
>> Signed-off-by: Daniel Scally <djrscally@gmail.com>
>> ---
>>
>> This should fix the issues that have been noticed, but perhaps a new flag like
>> MEDIA_ENT_FL_HAS_SOURCE or something would be a better way to denote subdevs
>> that need data links?
>>
> I agree this a bit fragile...
>
> I noticed ancillary links are only created for subdev notifiers,
> which have a populated 'sd' and consequentially an entity. Could an
> helper that walks the links of the notifier's subdev links and checks
> if the subdev at hand is already linked, help ? Maybe with an optional
> set of link flags to match on ?


Or maybe just check if the subdev's notifier is the same as the rkisp1's
notifier? Like:


if(sd->notifier!= &rkisp1->notifier)
continue
That's a bit less clunky than both other solutions I think
>
>
>>  drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>> index 3f5cfa7eb937..e90f0216cb06 100644
>> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>> @@ -134,6 +134,10 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
>>  		    sd == &rkisp1->resizer_devs[RKISP1_SELFPATH].sd)
>>  			continue;
>>
>> +		if (sd->entity.function == MEDIA_ENT_F_LENS ||
>> +		    sd->entity.function == MEDIA_ENT_F_FLASH)
>> +			continue;
>> +
>>  		ret = media_entity_get_fwnode_pad(&sd->entity, sd->fwnode,
>>  						  MEDIA_PAD_FL_SOURCE);
>>  		if (ret < 0) {
>> --
>> 2.25.1
>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
