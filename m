Return-Path: <SRS0=5mPC=KV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 291B5C4708A
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 15:15:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DDD68613E1
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 15:15:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DDD68613E1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OmSNdodPDQJt/hsaOG4e1eMyAkUbdgbyR3YQSCfoigI=; b=biBqiq/oiqAxqVWuWfP4gzNPW5
	7uZtco1RK6v6l4O8tNLajQjT07eewaEsj47SykzL1wcVDHex05MY2rStBIcoXUJnWtsARnt1A0EMJ
	jb8rqCxw2DghsV1fzp2U0w9+WMkMwRiShO+LHzOadQYbourhMrvUYDzhAOpS7jjCCg4LPHOmpzm4z
	Kn8sMvZH6anfdiUkU4E3bditvmIaiw+3sfvlXhdE24pravxIaa728ZVM9027Yzw57nbWXiV30+t1z
	3DK/AbQHKSASo7Dvrw6ZLRWa5Q64kbpHWmU3sWDwR2lcL3tLctNuMyiWyYFDTQvRW+xV6W3TEDCMj
	0jlg2LYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llvFQ-00FGPx-L1; Wed, 26 May 2021 15:15:04 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llu0X-00EdNI-G3; Wed, 26 May 2021 13:55:39 +0000
Received: by mail-wr1-x430.google.com with SMTP id n2so1306975wrm.0;
 Wed, 26 May 2021 06:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=TU3P0IKFMilt8ibVl4VKMuJHkoYIAn/qixm+CzZt3XY=;
 b=T+HcjrsEUXOWGUaWTnZju5AIaSnH3PqjPOwPYW4ipUV9yRsxBetzMULBBoAT56Qtpf
 H/M3FCtNPj8Iwtl2jeHEFPrmL/YVEhWJC+Q3TI00deH4ryOMAcie/C7EJpO/dF3jMS6i
 8eMb0/A2yCsXyQFkjK22XArq2m4ne2dnuCxkwBWln8tZ40wLcaPxyeBo7fx5/0Qj2Ulk
 ZqVpUlFcSWiIxmmiBpq/dvfLyuNDZEeLU749VaEK5j8EcbkbW9uHJTqGbpIPgjAgLHY+
 Favy5rTCkaS96KEiLjFbk0btiPUpw4/dgL4n9SAGqMUVoeRP1HLKcEY4wgmIk2qe89nP
 iXnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=TU3P0IKFMilt8ibVl4VKMuJHkoYIAn/qixm+CzZt3XY=;
 b=VQCRl9c4j5WpxGywPgeppsw2Q8HBT8Fk4ndQI4MDBCcJHGYMVg2JQJBqMD3Tb+RQUJ
 pHyUY14VcPEWAG95cs3Ks/pA9ltp066InvQ/x+gBVxM2zaP1210b78c1g1Z0G+5pOZq9
 KM3hoLhcs2oF1Kw65zYBF7MvpHuDaNxBlQxXuP2TIXInfPk6HCxnGMHZNEIgHJoN5zHu
 J8fYvXrgoeq9NPbVWXA2XK414AfH/qeT6Sswv6ONT5MDg8SY/9mfqZ5szdFsjkpgNhCZ
 sNmPHrq02fpThGi/SpkcLo5GWbgVrLyFC6fjnPHVMlf9HySxjRexaeg2U4t725b6bsFs
 1gSw==
X-Gm-Message-State: AOAM531OJgEhd+wKMHAxy9f/Q6SMkLJZXxH72oOB8nYM+ebT+7mmFiyc
 FavE7vpdTbe+h4cMv5h/9pI=
X-Google-Smtp-Source: ABdhPJycBxK7z+PqUyXbcZFcoctpc91ER13IQRbQetENRae626IdwcBDhfNknbM4cqForIgAI2dTYQ==
X-Received: by 2002:a5d:6c61:: with SMTP id r1mr33494342wrz.309.1622037334799; 
 Wed, 26 May 2021 06:55:34 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:1950:35e:cae9:5bed?
 ([2a02:908:1252:fb60:1950:35e:cae9:5bed])
 by smtp.gmail.com with ESMTPSA id l188sm2272741wmf.27.2021.05.26.06.55.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 26 May 2021 06:55:34 -0700 (PDT)
Subject: Re: [BUG] rockpro64: PCI BAR reassignment broken by commit
 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource flags for 64-bit
 memory addresses")
To: Ard Biesheuvel <ardb@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Cc: Punit Agrawal <punitagrawal@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Leonardo Bras <leobras.c@gmail.com>, Rob Herring <robh@kernel.org>,
 PCI <linux-pci@vger.kernel.org>
References: <7a1e2ebc-f7d8-8431-d844-41a9c36a8911@arm.com>
 <01efd004-1c50-25ca-05e4-7e4ef96232e2@arm.com> <87eedxbtkn.fsf@stealth>
 <CAMj1kXE3U+16A6bO0UHG8=sx45DE6u0FtdSnoLDvfGnFJYTDrg@mail.gmail.com>
 <877djnaq11.fsf@stealth>
 <CAMj1kXFk2u=tbTYpa6Vqz5ihATFq61pCDiEbfRgXL_Rw+q_9Fg@mail.gmail.com>
 <CAMdYzYo-vdJvT_MPNTYvdveG3W8na7qMVEZFL4AjyQWqcLZi=Q@mail.gmail.com>
 <CAMj1kXEBePfKDOc6eo9yjZPnVeFimX-zxR+R3As+2pP9XnZkuQ@mail.gmail.com>
 <CAMdYzYrH_M92Pc6AqTgagtATr1TPq7Pdm57hadZeAmMBF2f0nA@mail.gmail.com>
 <CAMj1kXHsGgFedbhW2CiS5gveK3=ZxhXQ5siDeHJyttkOVKBQrQ@mail.gmail.com>
 <CAMdYzYruNYtJ8hwKPBUHPed1-=tV=CWDd_oSQtRmr4BJHp=YxA@mail.gmail.com>
 <CAMj1kXHLCJbzRpic-kkdWh5wKTE=6fqkesYbB6XoeJELKn93tw@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <9b99d520-e4b1-ae44-44eb-93c2e3d0c0cb@gmail.com>
Date: Wed, 26 May 2021 15:55:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CAMj1kXHLCJbzRpic-kkdWh5wKTE=6fqkesYbB6XoeJELKn93tw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210526_065537_631189_E8188364 
X-CRM114-Status: GOOD (  26.26  )
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

Hi Ard,

Am 25.05.21 um 19:18 schrieb Ard Biesheuvel:
> [SNIP]
>>> I seriously doubt that this is what is going on here.
>>>
>>> lspci -x will give you the bare BAR values - I suspect that those are
>>> probably fine.
>> lspci -x
>> 00:00.0 PCI bridge: Fuzhou Rockchip Electronics Co., Ltd Device 3566 (rev 01)
>> 00: 87 1d 66 35 07 05 10 40 01 00 04 06 00 00 01 00
>> 10: 00 00 00 00 00 00 00 00 00 01 ff 00 10 10 00 20
>> 20: 00 10 00 10 01 00 f1 0f 00 00 00 00 00 00 00 00
>> 30: 00 00 00 00 40 00 00 00 00 00 00 00 5f 01 02 00
>>
>> 01:00.0 VGA compatible controller: Advanced Micro Devices, Inc.
>> [AMD/ATI] Turks PRO [Radeon HD 7570]
>> 00: 02 10 5d 67 07 00 10 20 00 00 00 03 00 00 80 00
>> 10: 0c 00 00 00 00 00 00 00
> This is a 64-bit prefetchable BAR programmed with bus address 0x0
>
>> 04 00 00 10 00 00 00 00
> This is a 64-bit non-prefetchable BAR programmed with bus address 0x1000_0000
>
> (https://en.wikipedia.org/wiki/PCI_configuration_space describes the
> meaning of the low order BAR bits)

Sorry for jumping into the middle of the discussion and to be honest I 
haven't fully read it.

This looks a bit odd since on AMD VGA hardware the non-prefetchable BAR 
is usually only 32bit, not 64bit.

But this hardware generation is rather old and I'm not sure what the BAR 
assignment for that generation was. I would need to dig up the register 
description in our archives as well.

Christian.

>
>> 20: 01 10 70 3f 00 00 00 00
> This looks odd. This looks like a 32-bit MMIO address poked into a I/O BAR.
>
>
>> 00 00 00 00 28 10 20 2b
>> 30: 00 00 02 10 50 00 00 00 00 00 00 00 5f 01 00 00
>>
>> 01:00.1 Audio device: Advanced Micro Devices, Inc. [AMD/ATI] Turks
>> HDMI Audio [Radeon HD 6500/6600 / 6700M Series]
>> 00: 02 10 90 aa 06 00 10 20 00 00 03 04 00 00 80 00
>> 10: 04 00 04 10 00 00 00 00 00 00 00 00 00 00 00 00
>> 20: 00 00 00 00 00 00 00 00 00 00 00 00 28 10 90 aa
>> 30: 00 00 00 00 50 00 00 00 00 00 00 00 ff 02 00 00
>>
>>>
>>>>>> Also, if <0x82000000> (32 bit) is changed to <0x83000000> (64 bit),
>>>>>> most of the allocations for the dGPU fail due to no valid regions
>>>>>> available.
>>>>>>
>>>>> But wasn't the original problem that the resource window was 64-bit to
>>>>> begin with? Are you sure we are talking about the same problem here?
>>>> The rk3399 in the original report has a 32MB memory window in the
>>>> upper end of the 4GB range.
>>>> The rk356x has a similar layout, or it can use a 1GB window available
>>>> at <0x3 0x00000000>.
>>>> Rockchip's default windows are defined as 64bit.
>>>>
>>>> The rk3399 doesn't have enough space to reasonably define two windows,
>>>> one 32bit, one 64bit, to work around an allocation bug.
>>>> These are the defined regions in the rk3399:
>>>> ranges = <0x83000000 0x0 0xfa000000 0x0 0xfa000000 0x0 0x1e00000>,
>>>> <0x81000000 0x0 0xfbe00000 0x0 0xfbe00000 0x0 0x100000>;
>>>>
>>> All you really need is a 32-bit non-prefetchable resource window: any
>>> BAR can be allocated from that. A 64-bit BAR can carry a 32-bit number
>>> (just add zeroes at the top), and a prefetchable BAR can happily live
>>> in a non-prefetchable window, with a theoretical performance impact if
>>> the OS actually does use different memory attributes for the
>>> prefetchable window (but I don't think Linux ever handles it this way)
>> So is the IO range necessary as well or will it be automatically
>> allocated as well?
>>
> You need one I/O range and one 32-bit non-prefetchable MMIO window at
> the very least, even though the I/O range is rarely used, even by
> endpoints that expose I/O BARs.
>
> The translation is tricky to get right, and confuses some drivers, so
> it is better avoided if possible. If you do need translation, make
> sure to translate in the right direction.
>
>>>
>>>>>
>>>>>>>> I am happy to put something together once I understand the preferred way
>>>>>>>> to go about it.
>>>>>>>>
>>>>>>>> Thanks,
>>>>>>>> Punit
>>>>>>>>
>>>>>>>> [...]
>>>>>>>>
>>>>>>> _______________________________________________
>>>>>>> Linux-rockchip mailing list
>>>>>>> Linux-rockchip@lists.infradead.org
>>>>>>> http://lists.infradead.org/mailman/listinfo/linux-rockchip


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
