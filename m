Return-Path: <SRS0=kcRh=JJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C10EC433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 11:05:16 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0B1926100B
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 11:05:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0B1926100B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7RwNpYXYx41l9IKnvcaFhAlbOWsqAM56KsfFHTsvv3A=; b=NiChT7ChZvkHWsYheoBrPeuAY
	LhWhACWYxu7nvyP2wKpF1lXDVWMymMDb0FgjrUgOMXFc7Tb8AXJTeYNeVpCaZ1R7roYhLKoPRdOfs
	q4qPDT6i00AHfgk0LUXacORT/h2T3gW3pJXXG1YSgKpM6M3supOslj30xxTGK/o36EIIgzt1TVAY7
	HfH62zpOfHlYDuaEDLA/nhDuYLb2v01jpjsdUVGmpPbgrO1HjnX5hd2YFvrC/zIpoDOOfOIlCGQzO
	Ir4kbxkmkDOBzWVYbX4hLkkAy3gW89uia9IkQAgZNrvFeUNN0g6mAztZ0iMFKqoMtEYkIUS2R2vkR
	BQiuR1bvQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVuNQ-006Uis-Ij; Mon, 12 Apr 2021 11:05:08 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVuNO-006UiS-RA; Mon, 12 Apr 2021 11:05:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=V5dAFJoIeEivVJOccQwSPrrQGKQJ4TPKYt0s4Azreuk=; b=g/qEpk5bas+8V8dwpGSyhb1q4o
 DUiWVN8cqqiJff+G5bt/TCWlmJ8Zoss4v9uGc0LxRM7prH5RT747ou40e98flKQlaCtKCD4GVjSO6
 7IHq2xVtCBBVmRx8nmWhf/5Pmd9hX6ZfqIzPI674ZQ0BDnH1EtdDXpMOHwclV0fvc5MbUKHuDPkqV
 lQdLfkphdcImFTsgLCGchrWeyvzP1nQ255uItm2hwvtE5N6Z/u/w2mEz2F5OUz3RoAKVAvpKAoojq
 pB/uLeWO882p3myKZrkMeMeqhVRUXKVnHMk4FIvxB/KuFgrr7BF1i1XrwhVYpQbck8pfqm2q8R5E5
 13biQCrQ==;
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVuNL-0069rN-H2; Mon, 12 Apr 2021 11:05:05 +0000
Received: by mail-ej1-x62a.google.com with SMTP id g5so12864838ejx.0;
 Mon, 12 Apr 2021 04:05:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=V5dAFJoIeEivVJOccQwSPrrQGKQJ4TPKYt0s4Azreuk=;
 b=WpZOT4czFb+ue9BhLqO4BESVZOKjpFHKWUuMOcecZg/Zux/ABOGfnDTuefIrNX4e1z
 e07IpVVvfD61lTV/eywC0cIkd42hFcy1gQ6rqxf8YxsszKXU+zvU942Pnyt7+QlUrrP2
 G+CHfI2pK1x9oXCham+hXnZyV45UjSuIxRuwxeN/AxTtdFTEwFycJRw09wTUrlryB1VK
 mhC7ISCEIX6pWyFg91bHeQpZ3ig/qjHOnzpBJaL2aN3rn0MT83TN/zHkFOOLBcqWE5vc
 dyLcCZBebyEdNHG8wVRtuIXxpi642tHJekUW4v3N/9s3BXl2uhy77Z+9E838TIrhDcxG
 bO7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=V5dAFJoIeEivVJOccQwSPrrQGKQJ4TPKYt0s4Azreuk=;
 b=HwCWDwUjmZHvVZ7RZjsyH1K/VL4NcVA5TQZOP29Llebo20SRHXP51skDWKL57BBerg
 dRUuY7Ts/JQJIevm+3+nkSzS0DjVBTSb0MnlN+UND5z/Y+e3TCIEbuWJMuaNe5dSqwhC
 bem7+2qIfw85sF+tnkxMKduhWK39pY/GufsflNkjBKGPgfut1hoqSZlO3TOtszbb8SYr
 Urzf+rbi/75L7HwKfUoP2ra4KxRZ7KBGdJmhza+4NkZ0WWpmsZA/lndpLdos4es52b3B
 +aoUX3Mk1TGAjc6jfDOfCKuzHdwoTeTO9KeoOnAM4soRm/U4pIoVCaF3m6pAWfSKY1y+
 N+1Q==
X-Gm-Message-State: AOAM533UEwwFFdJdG+kjCfid87a/dTEO4demuFAR+CYnmX0QeiZHItNt
 pVBFiPOpINpzHPlQnmq0hdd7tOc+dRRPPw==
X-Google-Smtp-Source: ABdhPJyrVvWEYe2udlW1YYznobtl8vNAIfN1JQMcOPAuk2XUccouqVMNk50JwIdog8Ndgw2sIaLukA==
X-Received: by 2002:a17:906:5487:: with SMTP id
 r7mr26039455ejo.550.1618225501490; 
 Mon, 12 Apr 2021 04:05:01 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 a9sm6327241eds.33.2021.04.12.04.05.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 Apr 2021 04:05:01 -0700 (PDT)
Subject: Re: [PATCH v2 3/6] ARM: dts: rockchip: remove interrupts properties
 from pwm nodes rv1108.dtsi
To: wens@kernel.org
Cc: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Lee Jones <lee.jones@linaro.org>, linux-pwm@vger.kernel.org,
 devicetree <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
References: <20210411131007.21757-1-jbx6244@gmail.com>
 <20210411131007.21757-3-jbx6244@gmail.com>
 <CAGb2v67s7a4GARfAnROKS40kaYQpdW_qWX=HX6GU09jV9wrbXw@mail.gmail.com>
 <31b5ff50-afe5-b446-7d3c-943d148814d8@gmail.com>
 <CAGb2v65+A402jCPVRJdDBdxqAEYOJmFTkKB4LJCvnW89hXb8QA@mail.gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <20b7c702-9412-93b4-3174-e8633bc413d7@gmail.com>
Date: Mon, 12 Apr 2021 13:04:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAGb2v65+A402jCPVRJdDBdxqAEYOJmFTkKB4LJCvnW89hXb8QA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_040503_617182_D5BE0BF0 
X-CRM114-Status: GOOD (  31.39  )
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

On 4/12/21 12:33 PM, Chen-Yu Tsai wrote:
> On Mon, Apr 12, 2021 at 6:03 PM Johan Jonker <jbx6244@gmail.com> wrote:
>>
>> On 4/12/21 5:15 AM, Chen-Yu Tsai wrote:
>>> On Sun, Apr 11, 2021 at 9:11 PM Johan Jonker <jbx6244@gmail.com> wrote:
>>>>
>>>> A test with the command below gives this error:
>>>>
>>>> /arch/arm/boot/dts/rv1108-evb.dt.yaml:
>>>> pwm@10280000: 'interrupts' does not match any of the regexes:
>>>> 'pinctrl-[0-9]+'
>>>>
>>>> "interrupts" is an undocumented property, so remove them
>>>> from pwm nodes in rv1108.dtsi.
>>>>
>>>> make ARCH=arm dtbs_check
>>>> DT_SCHEMA_FILES=Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
>>>>
>>>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>>>
>>> Given that the interrupts were specified, meaning they are wired up in hardware,
>>> shouldn't the solution be to add the interrupts property to the binding instead?
>>>
>>> After all, the device tree describes the actual hardware, not just what the
>>> implementations need.
>>>
>>> ChenYu
>>>
>>
>> Hi,
>>
>> The question of what to do with it was asked in version 1, but no answer
>> was given, so I made a proposal.
>> The device tree description should be complete, but also as lean as
>> possible. If someone manages to sneak in undocumented properties without
>> reason then the ultimate consequence should be removal I think.
>>
>> Not sure about the (missing?) rv1108 TRM, but for rk3328 the interrupt
>> is used for:
>>
>> PWM_INTSTS 0x0040 W 0x00000000 Interrupt Status Register
>>   Channel Interrupt Polarity Flag
>>     This bit is used in capture mode in order to identify the
>>     transition of the input waveform when interrupt is generated.
>>   Channel Interrupt Status
>>     Interrupt generated
>>
>> PWM_INT_EN 0x0044 W 0x00000000 Interrupt Enable Register
>>   Channel Interrupt Enable
>>
>> Is there any current realistic use/setup for it to convince rob+dt this
>> should be added to pwm-rockchip.yaml?

Found:
pwm3 combined with ir uses a irq. Keep that as it is for now.

https://github.com/rockchip-linux/kernel/blob/develop-4.19/drivers/input/remotectl/rockchip_pwm_remotectl.c

> 
> Well, the PWM core has capture support, and pwm-sti implements it with
> interrupt support, so I guess there's at least a legitimate case for
> adding that to the binding. Whether someone has an actual use case for
> it and adds code to implement it is another story.
> 
>> The rk3328 interrupt rkpwm_int seems shared between channels, but only
>> included to pwm3. What is the proper way for that?
> 
> I guess the bigger question is why was the PWM controller split into
> four device nodes, instead of just one encompassing the whole block.
> Now we'd have to introduce a new binding to support capture mode and
> interrupts.
> 
> In that case I agree with dropping the interrupts for now, as it just
> won't fit. But I would add this additional information to the commit
> message.

Will wait with adding "interrupts" to pwm-rockchip.yaml till someone
makes a solution for the whole block. Convert only current
document/binding to reduce notifications.

For Heiko: patch 3 + 5 can go in the garbage bin:
[PATCH v2 3/6] ARM: dts: rockchip: remove interrupts properties from pwm
nodes rv1108.dtsi
[PATCH v2 5/6] arm64: dts: rockchip: remove interrupts properties from
pwm nodes rk3328.dtsi

Johan

> 
> 
> Regards
> ChenYu
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
