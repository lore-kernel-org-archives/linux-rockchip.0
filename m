Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57C6ACDE029
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 08:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=me8IPH80+IWuqql2m19ssgzvNr65iUPp2tLwmLma5EQ=; b=BvTTjzUQfdqCT1
	Rhktyq8KDzRVPgTj2tnyqCKRSbn1MDFwYBfJFWHBYwzyKPUSht/eOcUoRRmm3G63eaUN6CxWTn5MW
	cQUaFs1CVJvCrJyE14QBGQbDFcCkCzi09qx33pTD2n7P0Ql9QUtOYRwMRr/gd4zHhLe+nuwHEp6l7
	PnZiVo2aYzPZ3pkMr2Koji8kOC3SkxhNj3hfW6fFYhSboCKJXIzNX9D3f2cq0dSQqgHTwnmYgZZcd
	Yv8KF7Jqm3KDw0PmXfjNSAhJWFSF6i08E6fyVcgrKnOogTUhnN9aPd0tskMYoup4hsP2L3sEOfGlY
	ZVd8Dri0F5R12uT3YtPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJp7N-0000000Bnzi-1EDw;
	Fri, 14 Nov 2025 08:25:17 +0000
Received: from smtpbguseast3.qq.com ([54.243.244.52])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJp7H-0000000BnyJ-3KB2
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Nov 2025 08:25:13 +0000
X-QQ-mid: zesmtpip4t1763108683t9c3db234
X-QQ-Originating-IP: 9ZyJDVQ4LZgPZiWZJnOW197GCaBeve2Kh6ODwksgxkU=
Received: from [IPV6:240f:10b:7440:1:1ea:c5f5: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 14 Nov 2025 16:24:38 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 6090844107252938263
Message-ID: <A3AD69295D2E2D65+db2dc8bd-054f-4dda-9dd1-3cc0c0feed35@radxa.com>
Date: Fri, 14 Nov 2025 17:24:38 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/3] dt-bindings: arm: rockchip: Add Radxa CM5 IO Board
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com,
 i@next.chainsx.cn, honyuenkwun@gmail.com, quentin.schulz@cherry.de,
 dsimic@manjaro.org, pbrobinson@gmail.com, amadeus@jmu.edu.cn,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
 <20251105051335.17652-2-naoki@radxa.com>
 <ce6e6369-a7e4-4a35-80f8-70ef41c3b877@kernel.org>
 <A6C1199E2A0D3F37+f3fe0fd5-4ca5-4d3d-bc1d-45f46b48f89b@radxa.com>
 <93deab54-bd5e-433e-acbc-13f6ead47f43@kernel.org>
 <2177a0f0-68df-495c-b267-18e3d9b6ca80@kernel.org>
 <D88EE9EEB2B37D36+361d448f-d260-4d78-ae6b-abf1caabb94b@radxa.com>
 <b2833988-6319-4426-8a25-c0d34acffa47@kernel.org>
 <B6224BD6578686FF+dc81e00c-46f6-4791-af8a-99cf8e880f0c@radxa.com>
 <f112b806-b204-46b5-90b2-813ad5d0ceee@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <f112b806-b204-46b5-90b2-813ad5d0ceee@kernel.org>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: NjYyKOSR1rOTz3pOGbf6hIumy+AbiGnuN2GcsRKVBSsfIR7GRv6W/IUR
	emSzFX81BsxACQcftfEVL8fp+bcpNuy/5k3EPZYRwokeDaCKMViQPMP7t4/GWQxIUxEtcup
	G5SAf0Z0/PVESvOAQ18Sn5j1/UMPVW/upnMqEgBjHix5LieeUq/zt1+u2E6aN17fwew0FAK
	F/7TYDBZk3uo3mT7+b1qa+uQOPpKOKWNgc0+7FdGwHw7K8p/7WXG+Ca3WUfnRfBm84yjTkQ
	2YiYBx414OfUgDk9AEIjzmay7lgE8QwPHTHZnho2Q2+4Qx5gBTmNqiVmoXBOXsg9WqmQZ3a
	1GSRR9NUZz9a3OIOTzL0FwUpuoyAB2G1BRWKmeQoCYFvy6qxfibeIqjqD/9cNWuBl1xy3oh
	ndq1wVayzvZ0xRopFfpDwGhcfHnYnqcE2+5EQxU9ZlDDZUerMCR5Vmd0naQyYKgoaQuOwC7
	izHjJ0Z/DrgS+oQ7lfX4xhhtxyitHQ9aF1u3xAQ2m9bylMbkyamWgPOAjiwtN/BwHPjKyES
	3897x+H0OET747ObSNjuBo20s30InxqSwSCvm4bU0g28ZA+WXR+wRyzt3I7YtF3NDoczrey
	RJ8aaKzOAycA7nF9T9OG5IdGwYoJ7vRusORzowx/buRnRMn0jSWHbEU0uwsLu+XpOWbu1+R
	gxtknVMQvc+FHwaPXteWmF9qr7dnZ0eJo0qBc0c+jOPm54vN5e3/LwSLLhyJnCv6LhT2C60
	4R2EpQ9R10O+3IjEdn7nytAVQCop8zT+1pPdm3zwowhO47oLsPM5art5+uZ2wm+WRRwxpwV
	/4HbwMMTpKeS0zkGgACE7pS61qKrrHBbguE+FV245+AGLzpbfUc3Nwgcoz/K/TyGLIIDeel
	DJJ3sJp2ijQVcri045rjiufyqn3gcANsQdWZwz8z6daxdLhjdNr3uiZna74f/xKTi0wfxs6
	ELC5GoLAxugyzaNPCB1ogUlSQuSXW6uGEmFrUNcuwQIMdWO6Bz+GHoZNC2njBRBp8zssT+c
	V3Aq3zAvwgueYVOZLSjRE5wivZutOn31QtVLEqU24GWDt4secrfmrBIpetq6WJOXx7Wb+zK
	evUK4qmDvvydyVZuEFSPeJQQbeGi4trpA==
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_002512_398287_EF2A05DD 
X-CRM114-Status: GOOD (  15.26  )
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

On 11/14/25 16:51, Krzysztof Kozlowski wrote:
> On 14/11/2025 08:47, FUKAUMI Naoki wrote:
>> On 11/14/25 16:42, Krzysztof Kozlowski wrote:
>>> On 14/11/2025 08:37, FUKAUMI Naoki wrote:
>>>> Hi Krzysztof,
>>>>
>>>> On 11/14/25 16:12, Krzysztof Kozlowski wrote:
>>>>> On 05/11/2025 08:08, Krzysztof Kozlowski wrote:
>>>>>> On 05/11/2025 07:57, FUKAUMI Naoki wrote:
>>>>>>> On 11/5/25 15:43, Krzysztof Kozlowski wrote:
>>>>>>>> On 05/11/2025 06:13, FUKAUMI Naoki wrote:
>>>>>>>>> Add device tree binding documentation for the Radxa CM5 IO Board.
>>>>>>>>>
>>>>>>>>> Link: https://dl.radxa.com/cm5/radxa_cm5_product_brief.pdf
>>>>>>>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>>>>>>>> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
>>>>>>>>
>>>>>>>> Wrong DCO chain.
>>>>>>>>
>>>>>>>>> ---
>>>>>>>>>      Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
>>>>>>>>
>>>>>>>> NAK, you just stolen ownership of an already posted patch.
>>>>>>>
>>>>>>> Read "Changes in v6" and patches; my patches are not the same as v5.
>>>>>>> Your reply is totally inappropriate.
>>>>>>
>>>>>> Inappropriate is taking authorship of someone's patch, because we all
>>>>>> expect to preserve the original authorship. That's not only basic
>>>>>> decency but actually a standard.
>>>>>>
>>>>>> Additionally, read Joseph's reply that he wants to continue the work:
>>>>>> https://lore.kernel.org/all/CAMWSM7iHtAxewW4JkRqRsifVnccqeFviaCgeOyprKDr92FOurg@mail.gmail.com/
>>>>>>
>>>>>> You clearly do not understand how to continue with someone's work.
>>>>>>
>>>>>> It is still a NAK.
>>>>>
>>>>> And I still wait for justification why you took authorship of this
>>>>> patch, because to my eye you changed here nothing.
>>>>>
>>>>> So what did you change HERE that you think you are the author now?
>>>>
>>>> Changes in v6:
>>>> (Patch 1/3)
>>>> - Fix description; "Radxa CM5" is the correct name
>>>
>>> HERE, in this patch. Don't paste me hundreds of unrelated code. Write
>>> concise and precise answers/comments.
>>
>> https://lore.kernel.org/linux-rockchip/AE0735A6C797CCFF+10496d73-7c0a-4884-9561-24721305a24f@radxa.com/
>>
>> | By the way, at some point I switched from "continuing your work" to
>> | "recreating a new one based on my current work." The results of my
>> | current work(*3) have changed significantly.
> 
> So next time I will take your patch, your code, say "I recreated it" and
> submit under my authorship and for you it is fine?

Regarding CM5 patches, I'm fine.

> Please take Joseph's patch instead. Read submitting patches doc to
> understand which one more tag has to be added when sending somoene
> else's work.
> 
> In the future, I sincerely suggest avoiding re-creating people's work
> but building on top, because you just duplicate the effort.

I understand that you don't understand how I made efforts to build my 
work on top of Joseph's patches.

Thank you for your attention.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best regards,
> Krzysztof
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
