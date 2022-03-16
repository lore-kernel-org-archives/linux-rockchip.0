Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27C17C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Mar 2022 07:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YEmKxxGm0ANShCqWNSyKltjEXDmRH58srn0wGBL3LfY=; b=2ep08oca1Q3oR2
	4r+cUIUeOTreRPolE34PrOeNT7M0j8rCXR4St9pOLPMD9je4FKq2go74rqE7ArBkIYB5fdQo2ll6T
	hhSiGPtPaccQvuszNre8nASv7/7fPoSvEeH8gkz9Fehz0F74SNL6luxOrpWm4b0MF3nY+E/iou6EF
	dFX2d2ncNDMo3Ixk9/Ml3MfMqZJp24C+5NNVhp+sCZRqn9SW05+H72K101uuVZopzxHUi9PYMXQzF
	Msei9x/iMp+8lYMYTQsiy2tWVeLxF5EltSCZqVanMeob/xNWOhLmosTaO+DOWZZI8qKioM9E4zoUA
	jXQwEG9W3GA87jThoW2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nUO01-00BusE-Ti; Wed, 16 Mar 2022 07:23:13 +0000
Received: from mail-m17662.qiye.163.com ([59.111.176.62])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nUNkL-00Bn42-7i
 for linux-rockchip@lists.infradead.org; Wed, 16 Mar 2022 07:07:04 +0000
Received: from [172.16.12.93] (unknown [58.22.7.114])
 by mail-m17662.qiye.163.com (Hmail) with ESMTPA id ADF58140228;
 Wed, 16 Mar 2022 15:06:56 +0800 (CST)
Message-ID: <08c411b1-fedc-26e3-894b-f5721662a284@rock-chips.com>
Date: Wed, 16 Mar 2022 15:06:56 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3 1/6] rockchip: move ROCKCHIP_STIMER_BASE to Kconfig
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, Jagan Teki <jagan@amarulasolutions.com>
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, u-boot@lists.denx.de,
 =?UTF-8?Q?Pawe=c5=82_Jarosz?= <paweljarosz3691@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
References: <20211230164825.6489-1-jbx6244@gmail.com>
 <CAMty3ZD67x5NEM3rgDfHYA3EztDC7f1ACpue1SKT_dFYTKYF3g@mail.gmail.com>
 <d3e29dba-ae8f-bd0e-73f1-0912f8b5c4da@gmail.com>
 <f3890647-ccf5-0333-045d-e9a5c698524c@rock-chips.com>
 <e0d6908f-e69a-a437-4ff7-76efb2038af3@gmail.com>
From: Kever Yang <kever.yang@rock-chips.com>
In-Reply-To: <e0d6908f-e69a-a437-4ff7-76efb2038af3@gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWUJKTR5WTkJDTx8fT0
 IdHR4aVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NTo6GRw6DD5CPy0#GQlDKxks
 OAIaCxNVSlVKTU9MT0pPT0pMSU5JVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
 EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFMS0pNNwY+
X-HM-Tid: 0a7f918d160eda2ckuwsadf58140228
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220316_000701_724080_87318114 
X-CRM114-Status: GOOD (  31.25  )
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

Hi Johan, Pawel,

On 2022/3/14 23:36, Johan Jonker wrote:
>
> On 3/12/22 15:39, Kever Yang wrote:
>> Hi Johan,
>>
>> On 2022/3/12 18:01, Johan Jonker wrote:
>>> On 3/12/22 09:51, Jagan Teki wrote:
>>>> On Thu, Dec 30, 2021 at 10:18 PM Johan Jonker <jbx6244@gmail.com> wrote:
>>>>> Move ROCKCHIP_STIMER_BASE to Kconfig.
>>>>>
>>>>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>>>>> ---
>>>>>
>>>>> Changed V3:
>>>>>    add ROCKCHIP_STIMER
>>>>> ---
>>>>>   arch/arm/mach-rockchip/Kconfig        | 22 ++++++++++++++++++++++
>>>>>   arch/arm/mach-rockchip/px30/Kconfig   |  3 +++
>>>>>   arch/arm/mach-rockchip/rk3036/Kconfig |  3 +++
>>>>>   arch/arm/mach-rockchip/rk3128/Kconfig |  3 +++
>>>>>   arch/arm/mach-rockchip/rk322x/Kconfig |  3 +++
>>>>>   arch/arm/mach-rockchip/rk3288/Kconfig |  3 +++
>>>>>   arch/arm/mach-rockchip/rk3308/Kconfig | 10 ++++++----
>>>>>   arch/arm/mach-rockchip/rk3328/Kconfig |  3 +++
>>>>>   arch/arm/mach-rockchip/rk3368/Kconfig |  3 +++
>>>>>   arch/arm/mach-rockchip/rk3399/Kconfig |  3 +++
>>>>>   arch/arm/mach-rockchip/rk3568/Kconfig |  3 +++
>>>>>   include/configs/px30_common.h         |  1 -
>>>>>   include/configs/rk3036_common.h       |  1 -
>>>>>   include/configs/rk3128_common.h       |  1 -
>>>>>   include/configs/rk322x_common.h       |  1 -
>>>>>   include/configs/rk3288_common.h       |  1 -
>>>>>   include/configs/rk3308_common.h       |  1 -
>>>>>   include/configs/rk3328_common.h       |  1 -
>>>>>   include/configs/rk3368_common.h       |  1 -
>>>>>   include/configs/rk3399_common.h       |  1 -
>>>>>   include/configs/rk3568_common.h       |  1 -
>>>>>   21 files changed, 55 insertions(+), 14 deletions(-)
>>>>>
>>>>> diff --git a/arch/arm/mach-rockchip/Kconfig
> b/arch/arm/mach-rockchip/Kconfig
>>>>> index da6871eb..7a624c64 100644
>>>>> --- a/arch/arm/mach-rockchip/Kconfig
>>>>> +++ b/arch/arm/mach-rockchip/Kconfig
>>>>> @@ -343,6 +343,28 @@ config ROCKCHIP_BOOT_MODE_REG
>>>>>            The Soc will enter to different boot mode(defined in
> asm/arch-rockchip/boot_mode.h)
>>>>>            according to the value from this register.
>>>>>
>>>>> +config ROCKCHIP_STIMER
>>>>> +       bool "Rockchip STIMER support"
>>>>> +       default y
>>>>> +       depends on (ROCKCHIP_PX30||   \
>>>>> +                   ROCKCHIP_RK3036|| \
>>>>> +                   ROCKCHIP_RK3128|| \
>>>>> +                   ROCKCHIP_RK322X|| \
>>>>> +                   ROCKCHIP_RK3288|| \
>>>>> +                   ROCKCHIP_RK3308|| \
>>>>> +                   ROCKCHIP_RK3328|| \
>>>>> +                   ROCKCHIP_RK3368|| \
>>>>> +                   ROCKCHIP_RK3399|| \
>>>>> +                   ROCKCHIP_RK3568)
>>>> What if we select !(SOC-Which-don't-support-stimer). I believe the
>>>> condition check here is much simpler.
>>> The condition would be simpler that's correct, but this patch is made
>>> with rk3066 in mind and there's no ROCKCHIP_RK3066 available yet.
>>> The right approach is to only include SoC's that have a specific
>>> property/functionality linked to there specific config tag.
>>> U-boot should be generic. And we should not have to fix all dependencies
>>> all over the place when a SoC doesn't have something.
>>>
>>> Please advise how to support other SoC's like rk3066.
>> Thanks for you hard working on this, would you mind to share what's the
>> motivation for support rk3066 and MK808 board?
>> RK3066 is an SoC release at 2012, which has been EOL for a long time,
>> and MK808 is a product at 2013, almost 10 years ago.
> One of the advantages of open source is that a manufacturer doesn't
> dictate where,
> when and how long a product can be used.
> It's about freedom of choice. No matter how many obstacles are put in
> the way.
> It works in two ways. Rockchip make use of free open source for there
> products.
> Users can add there own ideas/support based on manufacturer sources.
> If that's not your thing then join a group of monopolists for software,
> but don't sabotage things here.
> It's part of the game.
>
> MK808 was one of the first products with a Rockchip SoC that hobbyists
> where able
> to run there own kernel on and still does, so we keep that heritage alive.
>
>>
>> I'm not object for enable more SoC support on the mainline, and I know
>> you have spend a lot
>> of time on this, I have do something like this before, but to be honest
>> I don't think it's a good idea to add support for
>> rk3066 on mainline now.
> If Linux is able to support the full product range then U-boot can do
> that too.
I agree with this point, my concern is the maintain of the source code 
and the lifecycle after
we add it.
Since both Powel and you declare that still RK3066 device on the market 
and some developers
are working on it, I'm happy to get them in tree, I will land patches 
after verify no broken for
other platform.

Thanks,
- Kever

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
