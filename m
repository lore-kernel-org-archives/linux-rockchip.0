Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D417C43458
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jul 2026 18:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5wXtNZZ6xCBDZMFp4e6qvdd4jwRQIeAHcIS3CQIo1q0=; b=qp5pCN2AeMJ5/K
	pFwDb7m+Bmyo/mRgSLT80bFCee97himNKH3btl6znpzJo86Q5jJoHwanDULMWfmiFOfFM+Li1W+Xm
	kw6X4qxHEJd5WYMT89vRKFd9nRtfsjGV3J9wUnadA2ZD0S57MrGJBxDyg2imEmVe66sqE0UeoJtBM
	YuCwg1zi200rTMD9bEEayH2SjPHAGS1atZE6Nca6Jx47oHO/AS1nkSrB1vS/W7H3GduBsvURtmhix
	9w3eDeZ45fa0Jyj67r8CZRrVlIKpevQy6PtDP5Kvc0O200upIhiV9d1shkRQ+NO0uE2Z4fXB2Jjtd
	8jC5J+2VyBh2cRFXCjeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiygj-00000007fas-1dI1;
	Sun, 12 Jul 2026 18:14:01 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiygh-00000007faA-1KVE
	for linux-rockchip@lists.infradead.org;
	Sun, 12 Jul 2026 18:14:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1783880039;
 bh=JvjkR40XVIjKCU8fvk6ZQ5E+1Jm3hNpLQMJ9KPp2Fqg=;
 b=Bxb5Mk/avGS4q6Tl/YVLS7JxfWxZdkYzb5CNF/9KPZ7BQ+rYFF89ZviHeguptlIVAPqvZkLhG
 SwRAxOMqZZ7qp5JZkWBa5QgYfeKC0pu2VQw8tsyBC6wwVcnLzKEzttFCP+DoeSXe328iysDZxoz
 6SRxsBFXZsoO7WwoW/rvGIsHJ1nydtIfwmnZuJSvtoOJz9pOjH8jxU+wh5sbhpE1Zr7wxSQtneq
 p1mcvSfG8nJfgZ1ixdM70y4fhhDFlaJ39fiyN54bOY77uwdOeruUVYcIgVQBluC4VM01XRRQ9IY
 PO3De8c5/0NfHa3uXWD6rGRJzdNVeXpDuT/2tuZJVp6Q==
X-Forward-Email-ID: 6a53d960d1fe0afac937d1ac
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.10.2
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <7c114e4b-b2a0-4246-b2da-5f671984a1c0@kwiboo.se>
Date: Sun, 12 Jul 2026 20:13:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/12] arm64: dts: rockchip: rk3588s-nanopi: add
 missing sdmmc cd pinctrl
To: Joachim Eastwood <joachim.eastwood@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 diederik@cknow-tech.com
References: <20260711-nanopi-m6-v2-0-422675a65402@gmail.com>
 <20260711-nanopi-m6-v2-4-422675a65402@gmail.com>
 <84467f61-9902-4dea-abda-6e8cb31e0238@kwiboo.xyz>
 <CAPSPb=t33bHfuEAMLWPM5=2fSyJXv5vjYD=_pSNRq6GcUz-X_w@mail.gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <CAPSPb=t33bHfuEAMLWPM5=2fSyJXv5vjYD=_pSNRq6GcUz-X_w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260712_111359_349614_89D96A54 
X-CRM114-Status: GOOD (  15.31  )
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

Hi Joachim,

On 7/12/2026 7:59 PM, Joachim Eastwood wrote:
> Hi Jonas,
> 
> On Sat, 11 Jul 2026 at 01:18, Jonas Karlman <jonas@kwiboo.xyz> wrote:
>>
>> Hi Joachim,
>>
>> On 7/11/2026 12:11 AM, Joachim Eastwood via B4 Relay wrote:
>>> From: Joachim Eastwood <joachim.eastwood@gmail.com>
>>>
>>> The cd (card detect) pin is used, but not reserved through pinctrl.
>>
>> Maybe this and some/most of the other DT changes that fixes some missing
>> bits should put first in this series and with Fixes tags?
> 
> I can of course put them first in the series. So we have the option to do so.
> 
> But what is the policy regarding "fixes"?
> I don't think they fix any critical issues, but they do make the DT
> more correct.
> So do we want to backport these to stable?
> 
> Maybe the following changes qualify:
> arm64: dts: rockchip: rk3588s-nanopi: add missing pcie rst pinctrl
> arm64: dts: rockchip: rk3588s-nanopi: remove pull up on rtc int pin
> arm64: dts: rockchip: rk3588s-nanopi: add missing sdmmc cd pinctrl
> 
> But I don't any others should be considered fixes.

At least the pcie and sdmmc "fixes" is likely something we may want to
pick to U-Boot dts/upstream as soon as they are available in the
devicetree-rebasing tree.

Regards,
Jonas

> 
> 
> best regards,
> Joachim Eastwood


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
