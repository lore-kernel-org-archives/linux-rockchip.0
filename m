Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25553C02185
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Jan 2025 10:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mtcl4D454DmdAv/P7V3u4v7U8pUs/B8k5N9BJRi23hQ=; b=jHEiIIkKprqXGkGHF9d6qpl1X9
	ZAmzyC1x4dJXIftChWQzURkoO5p6eS1uNFGyflysqu+Ss9eVwY/ixSQKfIZs/KnK0vMVvOXGnsQBl
	jx+LfrYffJm/9gTtQgiaX01IvvvxZQXBdHvDLc0D8rl4dgAKvexxuPLzC6Gb61o/nMCyuQhfY7ydd
	4SdP604MKdUwtZSs9FFOjhuQO8/6+OyfWg+Qgq2ZD8FinxdTpUQ/peLInIi5jReACP/qndrj6BwDI
	pQv5Yk2M+Q6DqlXb6tU+lj4aHDjUC1Won+SAFqb0fah8p8I+WDZZtpL3VTVD7pVrzt9HygFhfYRno
	0nwX28Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZ5ns-00000002AO6-2GXj;
	Sat, 18 Jan 2025 10:11:44 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZ5mb-00000002AGb-1aHD;
	Sat, 18 Jan 2025 10:10:26 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1737195023;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6ZZx2BEkDx4mW0pQwg2HX+RFPltv1/ykO1ohHF0qpcs=;
	b=n47w4SEL5hoTEv9QUimAbbvOHXB2hSIap+8T0tpBPE1pkKAzl7r4Cw/6a1/1fxRKFQT6it
	EpDgzKTAEzg7+tNCetXsdRE5vDHd8Y5O7Zh5A9dyFyNNo6HXSqkKJKOQ98PnXKtIQvbX8W
	tCWpzKDOSw6Lzq61QqxO1dlVKVlJrivMlU/kEu2Xwl7eUWHuoK35q/D+3PHV5kH97GevNl
	JBBS/FGOd38HRmaHOPGqxjOSuFKHK1j8alFGuDLn/xil1sONSz3eIvL/r3u7b7jcax2CM7
	TOdDl39oyi09pGnSb5s7FB4fePyG+WWdRLdyV9NRLSsLujiqJ9RfaxY3NPz6Mw==
Date: Sat, 18 Jan 2025 11:10:22 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Diederik de Haas <didi.debian@cknow.org>, Peter Geis
 <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>, zyw@rock-chips.com,
 kever.yang@rock-chips.com, frank.wang@rock-chips.com,
 william.wu@rock-chips.com, wulf@rock-chips.com,
 linux-rockchip@lists.infradead.org, Alex Bee <knaerzche@gmail.com>, Conor
 Dooley <conor+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>, Jonas
 Karlman <jonas@kwiboo.se>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob
 Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v1 4/6] arm64: dts: rockchip: add rk3328 usb3 phy node
In-Reply-To: <735d89df-9954-44bd-aca6-4bb165737626@kernel.org>
References: <20250115012628.1035928-1-pgwipeout@gmail.com>
 <20250115012628.1035928-5-pgwipeout@gmail.com>
 <7c7ce820-8a9b-46df-b143-f77835b7e5a0@kernel.org>
 <D73NJYSP62XH.28CVZPNUE21H3@cknow.org>
 <1bc91b4214a1099801aaed6b3ef81ef3@manjaro.org>
 <dcfb46e8-f29a-4eee-b8f8-1ff774f272ce@kernel.org>
 <60ced7df829e7c10e264627cc0947762@manjaro.org>
 <20b474be-301e-4dc3-9eb7-77e9ef075191@kernel.org>
 <3d9ce9fd9b6309553b5669e111bc4200@manjaro.org>
 <735d89df-9954-44bd-aca6-4bb165737626@kernel.org>
Message-ID: <7ab853de15e1c183ef184d2700a13d98@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250118_021025_736021_1A8CBEAF 
X-CRM114-Status: GOOD (  18.71  )
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

On 2025-01-18 10:52, Krzysztof Kozlowski wrote:
> On 18/01/2025 10:43, Dragan Simic wrote:
>>>> 
>>>> Please see the commit bdc48fa11e46 (checkpatch/coding-style: 
>>>> deprecate
>>>> 80-column warning, 2020-05-29), which clearly shows that the 
>>>> 80-column
>>>> rule is still _preferred_, but no longer _mandatory_.
>>> 
>>> I brought that commit, but nice that you also found it.
>>> 
>>> Still: read the coding style, not checkpatch tool.
>>> 
>>>>>> 80 columns is really not much (for the record, I've been around 
>>>>>> when
>>>>>> using 80x25 _physical_ CRT screens was the norm).
>>>>> 
>>>>> You mistake agreement on dropping strong restriction in 2020 in
>>>>> checkpatch, which is "not for years" and even read that commit: 
>>>>> "Yes,
>>>>> staying withing 80 columns is certainly still _preferred_."
>>>>> 
>>>>> Checkpatch is not coding style. Since when it would be? It's just a
>>>>> tool.
>>>>> 
>>>>> And there were more talks and the 80-preference got relaxed yet 
>>>>> still
>>>>> "not for years" (last talk was 2022?) and sill kernel coding style 
>>>>> is
>>>>> here specific.
>>>> 
>>>> It's perhaps again about the semantics, this time about the meaning
>>>> of "for years".  I don't think there's some strict definition of 
>>>> that
>>>> term, so perhaps different people see it differently.
>>>> 
>>>> To get back to the above-mentioned commit bdc48fa11e46, the 
>>>> 80-column
>>>> limit has obviously been lifted, putting the new 100-column limit as
>>> 
>>> "Lifted" on *CHECKPATCH*, not on coding style. Do you see the
> 
> Repeating myself about because you are not addressing the actual 
> difference.

Please see below.

>>> difference? One is a helper tool which people were using blindly and
>>> wrapping lines without thinking, claiming that checkpatch told them 
>>> to
>>> do so. Other is the actual coding style.
>>> 
>>> You claim that coding style was changed. This never happened.
>> 
>> It was obviously changed in the commit bdc48fa11e46, by making the
>> 80-column width preferred, instead of if being mandatory.  The way
>> I read the changes to the coding style introduced in that commit,
>> it's now possible to go over 80 columns, up to 100 columns, _if_
>> that actually improves the readability of the source code.
> 
> The commit is for checkpatch. Point to the change in coding style. You
> are bringing argument for checkpatch, so only a tool, as argument for
> coding style. Again, coding style did not change since years.

Commit bdc48fa11e46 obviously addresses 
Documentation/process/coding-style.rst
as well, as visible in the quotation from the commit below:

   -The limit on the length of lines is 80 columns and this is a strongly
   -preferred limit.
   -
   -Statements longer than 80 columns will be broken into sensible 
chunks, unless
   -exceeding 80 columns significantly increases readability and does not 
hide
   -information. Descendants are always substantially shorter than the 
parent and
   -are placed substantially to the right. The same applies to function 
headers
   -with a long argument list. However, never break user-visible strings 
such as
   -printk messages, because that breaks the ability to grep for them.
   +The preferred limit on the length of a single line is 80 columns.
   +
   +Statements longer than 80 columns should be broken into sensible 
chunks,
   +unless exceeding 80 columns significantly increases readability and 
does
   +not hide information.
   +
   +Descendants are always substantially shorter than the parent and are
   +are placed substantially to the right.  A very commonly used style
   +is to align descendants to a function open parenthesis.
   +
   +These same rules are applied to function headers with a long argument 
list.
   +
   +However, never break user-visible strings such as printk messages 
because
   +that breaks the ability to grep for them.

I think it's obvious that the 80-column width is no longer _strongly_
preferred, but has been demoted to some kind of a bit weaker preference.

Also, please note that the coding style explicitly says that the 80-
column rule is to be followed "unless exceeding 80 columns significantly
increases readability and does not hide information".

This just reinforces my opinion that the readability is what matters
most when deciding on the column width, instead of following the rules
blindly, both when deciding whether to wrap some lines at column 50,
for example, or to wrap them at column 98.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
