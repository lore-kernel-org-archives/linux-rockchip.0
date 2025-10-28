Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21FA4CCF9E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Oct 2025 09:11:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jZfv+MOGsr65V1OUEpYngMBY/7uOivV85nP0BG3tPvI=; b=Z5ELQWjKahIYre
	QlF96gfNLYc48VjI/1Pg1E/jsENfGH4Ll38+eeImbNK8NA36Eze1CNl/S9WHsH74pxX+fA0CFD63C
	Jlk9uGOksnAk9ky0ZyASwictVPdIfLFbPqx4JRdAYxkb18ezyPJTzUzfwMZJu9uDlRPK8pt9FKep+
	apEQu7ofDH7ObAb7WvfQsahfIq85gLoRp7s+jD+m9WRtHsQfp6yu6fXZ9nV2ZY1cBfOvpwupODiKY
	sol8YpAeKY7J+IwKzrzy9yoMtv/EfnXshoyVk5rQFJjl6AxpcgCIYMpifrbNRPIofRoYlKI2Z7b2I
	KEozPEqCd0n844dgcqHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDfjh-0000000FcJW-2J4R;
	Tue, 28 Oct 2025 09:11:25 +0000
Received: from smtpbg151.qq.com ([18.169.211.239])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDfje-0000000FcHG-2xio
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Oct 2025 09:11:24 +0000
X-QQ-mid: zesmtpip2t1761642629t75bdeecb
X-QQ-Originating-IP: SWPYxiJW7sXMOgywlHY286iO5iMgqwJ6qjkrQv1EkKI=
Received: from [IPV6:240f:10b:7440:1:27fe:5767 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 28 Oct 2025 17:10:24 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 1404758684792863449
Message-ID: <9BE63A25A37DE781+3dfa1aa3-a0d3-4877-94df-6e55c92a9773@radxa.com>
Date: Tue, 28 Oct 2025 18:10:22 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] dt-bindings: arm: rockchip: Reorder the Radxa board
 entries
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, jonas@kwiboo.se, dsimic@manjaro.org,
 amadeus@jmu.edu.cn, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251027122641.39396-1-naoki@radxa.com>
 <20251027122641.39396-5-naoki@radxa.com>
 <67e7badd-4b38-4f93-872b-e51a43281d3b@kernel.org>
 <6B986FE9E161F74F+f2826946-a3e9-4618-b5c8-6e29f9f6b83c@radxa.com>
 <1fc497ee-3363-49c9-93eb-20acd4373df9@kernel.org>
 <A39F9BCC6572BA03+67736ed4-86a0-4a78-98af-b2f39aeb785e@radxa.com>
 <20251028-cunning-furry-slug-4fd3dc@kuoka>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20251028-cunning-furry-slug-4fd3dc@kuoka>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: NvGGTAUhB2iWHb0P40L9ILh3FLZEsOuhmvWioYgz8sdmcjpGSrdjc9l2
	jD5xRMiZhVGZG4yty6Phpwb5mvZL8KZXBznvANSq5x5BBOrbcxsWxkwVHcIS4qLz3FvYCCp
	se6igFkxCgEPid8FfwUlRb2m7LGnDSIluHYix3SH4JznFnABtn8lsRR/df9sUItCvRkClpQ
	HnVhKAETtCe5N0TedqjT/gUjXjBpTx4fzX4vORamnvBd5IAFTfzrRb4PvgQpbLArFT1lXvL
	4drG0nhL/xzS0JlGJgQm9B9C2WWo740PccR21RJdRsJZ17qPtBXpIK/4mR4+yCNujvPYP6I
	DJIasI5RSgg15Mx3z8uLcTBF8oe9fFeKl4/RM8N+sAKjIEsfWZVtqVyVGSDepTrW2VPVQvx
	9P40Uu7UITGONSvqqJ9fGLioxwn6p7kJMYW/jhpEBUC2+CaZ5So9GFJ0YZoTNC28nFCDeW/
	Omvei+Rshds+b6Z2Jstta66Q6hBkVgULNvSLwEcerbOzJtp1Ve4XE1HXTMvF2mnhaAjh4j9
	gM70WZytU0bRFDYHAK98Wtg4GtX4yisGu39XRiWt1sLb5cruuGnRvVC5wTw0iFj9vtpO6s8
	o8a34QNq7u2VeJssbp3wMYST8LLFaWIwKRQoGxqcLaoNRjGW5/P+BACEG2sfo1ae8FZbbgI
	jNmvSt7cJSkBuMieDntnPJh97M52RLWUscVVaH62AFp/pJGUs7fIeNQxSYFrZMQ17zMekbr
	gQlFIRFpjEIkjp9RYr8rkZ1NQzZxNb/sE0s2JQMOkEwUgm/UsTj/zDTwDuaL2gLGNAIcERX
	xgcyp7iEQj1wzSYg5GREtIYAe0sp1ReIVc1vO7FiJsxfYv+nmcaeu8sh343lqCcblnEpzWA
	qIQ17tZthb1HFcOCszolGfk0o92xzuysstHGDgS+qT+en2SK04StMpf2lnPZujHOm9XJaN/
	to5cYrX/mWcelq80vFgvGl4tUMq9EBwp4Dsw=
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_021123_275180_BE527955 
X-CRM114-Status: GOOD (  13.76  )
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

Hi Krzysztof,

On 10/28/25 17:57, Krzysztof Kozlowski wrote:
> On Tue, Oct 28, 2025 at 04:29:41PM +0900, FUKAUMI Naoki wrote:
>> Hi Krzysztof,
>>
>> On 10/28/25 16:26, Krzysztof Kozlowski wrote:
>>> On 27/10/2025 23:30, FUKAUMI Naoki wrote:
>>>> Hi Krzysztof,
>>>>
>>>> On 10/28/25 04:08, Krzysztof Kozlowski wrote:
>>>>> On 27/10/2025 13:26, FUKAUMI Naoki wrote:
>>>>>> Reorder the Radxa board entries alphanumerically, with the following
>>>>>> exceptions:
>>>>>
>>>>>
>>>>> Why? You must explain that in the commit. What sorting is being used by
>>>>> this file? Why do you think your re-order matches that sorting rule?
>>>>
>>>> I understand there is no rule, only your preference. Thanks.
>>>
>>>
>>> Really there is no? Are you sure?
>>
>> Could you please tell me what sort of sorting is being used for this file?
> 
> I don't know. I am asking you, because if you re-sort something you
> clearly must have know the sorting rule. Otherwise without knowing what
> is current sorting rule, how can you be sure that you sort it correctly
> instead of just making a mess more messy?

If you don't know, how can you be sure my sorting is just making a mess 
more messy?

I'm going to add a new board (Radxa CM5) to this file. First, could you 
tell me where I should add it? Second, could you please tell me why 
that's the correct place?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best regards,
> Krzysztof
> 
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
