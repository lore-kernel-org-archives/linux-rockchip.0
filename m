Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 397D0C07E9D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 12:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hFCFMRbu4QhC3Rsz0JixfHWtI2KuWOjEsZRP3STx6iQ=; b=UaBz8+YYBgATzd
	RHVIJOp+SAVAHvYC5dURyzbm5NazCKbyEODjez6fLcf8p3IhQBUTa2T/L0Zh/RUey5Yjoqc4Xd4Og
	euuRgACbF5UkY4EcYbCqYGnk/2fFVWb6jWdbkUXpeFTZLO0cwjLPZdJZhocC4APOk8/sY3bvOKo+1
	nseozh2eUOYy9LpW71PH4A05PPlEgur1fLTyExU/HZrUQjf5BFjonzMGQpAB2o1A5lqTmZGKtibwS
	+kj1ET8hC1em35jegfDGr7oixIFMnaIHTvvELS9DxlpO/BmWkdp+UxLMoQu0HKyuNbaZbVhcHKkUh
	LCf7yPl0O1+hsNyD87Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odAA8-00Adyk-Ca; Tue, 27 Sep 2022 12:58:12 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odA9w-00Adse-8i; Tue, 27 Sep 2022 12:58:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C0D941042;
	Tue, 27 Sep 2022 05:57:59 -0700 (PDT)
Received: from [10.57.65.170] (unknown [10.57.65.170])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 322003F792;
	Tue, 27 Sep 2022 05:57:51 -0700 (PDT)
Message-ID: <fcd5f62d-2059-6993-3f51-d8b65a9c8d7f@arm.com>
Date: Tue, 27 Sep 2022 13:57:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 1/3] Input: add `SW_BOOT_ALT`
Content-Language: en-GB
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Jeff LaBundy <jeff@labundy.com>
Cc: Quentin Schulz <foss+kernel@0leil.net>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 dmitry.torokhov@gmail.com, klaus.goger@theobroma-systems.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-input@vger.kernel.org
References: <20220922101211.3215888-1-foss+kernel@0leil.net>
 <20220922101211.3215888-2-foss+kernel@0leil.net> <YyyZRt5j180KzGqc@nixie71>
 <7add41ad-2cff-adef-08c4-dbc02f7c7c31@theobroma-systems.com>
 <Yy3qj432McMJ/5rl@nixie71>
 <953e4d00-110e-b337-3c6c-af008c843046@theobroma-systems.com>
 <YzJYZrw09dXEihnn@nixie71>
 <af9fa1c4-0db1-6776-c362-d375f934422e@theobroma-systems.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <af9fa1c4-0db1-6776-c362-d375f934422e@theobroma-systems.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_055800_436721_AE5E3994 
X-CRM114-Status: GOOD (  35.08  )
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

On 2022-09-27 09:51, Quentin Schulz wrote:
> Hi Jeff,
> 
> On 9/27/22 03:56, Jeff LaBundy wrote:
>> Hi Quentin,
>>
>> On Mon, Sep 26, 2022 at 11:37:45AM +0200, Quentin Schulz wrote:
>>> Hi all,
>>>
>>> On 9/23/22 19:19, Jeff LaBundy wrote:
>>> [...]
>>>>>
>>>>> I have this switch on the board and I want to expose its state to 
>>>>> the user,
>>>>> if this new event code is not possible/a good idea what would you 
>>>>> suggest we
>>>>> could use?
>>>>>
>>>>> Note that we already support the same switch but in a different 
>>>>> way: 
>>>>> https://urldefense.proofpoint.com/v2/url?u=https-3A__git.kernel.org_pub_scm_linux_kernel_git_torvalds_linux.git_tree_arch_arm64_boot_dts_rockchip_rk3399-2Dpuma-2Dhaikou.dts-23n167&d=DwIBAg&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=vObtDja6hUlL_kVvKRILCvaQfklw1gl7TAW7cm5_9H_Yi00zkzGV6-D3yzazR2gU&s=0Xo-7CDmMoriaTNn_hJdMwftLlcY-tgopPcgzXfQtJE&e=
>>>>> We are just configuring the GPIOs into the GPIO mode with a 
>>>>> pull-up, and
>>>>> then it's up to the user to use gpiod or gpio-sysfs to check the 
>>>>> state of
>>>>> the GPIO used for this switch. I don't like this, very not 
>>>>> user-friendly and
>>>>> was looking for something better :)
>>>>
>>>> Actually, that's exactly what I was going to suggest. What in 
>>>> particular
>>>> is not user-friendly about it?
>>>>
>>>
>>> The implementation we currently have in place for Puma Haikou is just 
>>> muxing
>>> the pins in their GPIO function with a pull-up. Nothing else. This 
>>> means the
>>> user still needs to know exactly which GPIO number is for which
>>> signal/event. Not that great. Also does not allow for a consistent user
>>> "experience" across modules on the same devkit (different GPIOs 
>>> depending on
>>> the SoM).
>>>
>>> I had hoped gpio-hog in input mode would expose it to userspace but 
>>> it does
>>> not seem to?
>>
>> No, I don't believe that is the case. That being said, you should be
>> able to grep /sys/kernel/debug/gpio for the hog node's label and get
>> the pin state (lo or hi).
>>
>>>
>>> Anything to recommend so that we can export a GPIO line for a specific
>>> function to usersapce without needing the user to know which GPIO number
>>> they should look at?
>>
>> If debugfs won't work for your purposes, another option is to request
>> the GPIO from a general-purpose platform driver and return one of two
>> strings via sysfs.
>>
> 
> This board will be fully supported upstream and I don't feel like this 
> general-purpose platform driver would be accepted, but maybe I'm wrong.
> 
> I didn't know about the /sys/kernel/debug/gpio file just yet for some 
> reason, so that's one way to do it, thanks for the info.
> 
> Good thing is that the kernel requests this pin in GPIO input mode so at 
> least that's one less possible misconfiguration from userspace. Not so 
> good thing is that you need to grep in this file and it's not that great 
> for scripts :) We'll discuss internally what feels the best to us and go 
> for it, thanks for the tips!
> 
> I'm wondering if allowing sysfs/libgpiod to access the state of GPIOs 
> requested by the kernel would make sense on the subsystem level though. 
> I'm sure I'm missing obvious security/HW-limitations pitfalls, but I 
> think allowing userspace to get the value of a GPIO input pin requested 
> by the kernel would be nice? Nothing for the input subsystem folks 
> though :)

FWIW there was a series a while back proposing to add a boot status 
interface, but I'm not sure if there was any further progress:

https://lore.kernel.org/lkml/20220204072234.304543-1-joel@jms.id.au/

Either way though, these kinds of GPIO (or ADC) configuration inputs for 
things like boot functionality or board ID are just about common enough 
that even if not tied in to any other specific interface, I reckon there 
might be a valid argument to be made for a simple generic driver for 
reporting the state of a named configuration input in a standardised 
manner. Perhaps hwmon might be a better fit?

Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
