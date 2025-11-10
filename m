Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 234AFCCFA13
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Nov 2025 14:48:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rgNRbWHqc3LjcEPtCMQ9HxMwW2dcvKhbUXlh1PdCDBw=; b=ymIPDMvNxSwge2
	HYtUzRvh84Vj0loX4ZumgyhWGe5SSIx4sLYnOB/2QdCcju3TbQk6qr2vkNGBWXuQ3gZbKe5InserA
	dIit+WhPP9V9YC3kl3bt5wTZnqssuC+Ys6nR6DDMxPzUekJmdjEwq9yauFlIMk2jlulq2qUGYIaNl
	svxoFWVjP0jm2H/z7uFTQMARMq2hOTbMwQXg2bsFWf+piZNTDf6NgeSi3DUd8501wILSCWHzBaAKS
	IogpODnoXAVf4Ggvx4/AAQkhMgUGyDZtKjOjB8VbbK4YoVx5uGEVFJPMwb9Xuhyc6BYwsFWAELzs8
	kvjaloUby44TFp3bk91Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vITBy-00000005ckl-2JIC;
	Mon, 10 Nov 2025 14:48:26 +0000
Received: from smtpbg154.qq.com ([15.184.224.54])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vITBv-00000005cj3-3TFE
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Nov 2025 14:48:25 +0000
X-QQ-mid: zesmtpip3t1762786033t08d032cb
X-QQ-Originating-IP: voNkbizcau1Eu9AtsxWyVYNw7KD/NBBv5J8vVBGWGpo=
Received: from [IPV6:240f:10b:7440:1:64e0:6ba: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 10 Nov 2025 22:47:06 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 8718075699599645252
Message-ID: <8FF67CE920D32716+348efd12-16df-48aa-880c-61805f0ffe15@radxa.com>
Date: Mon, 10 Nov 2025 23:47:05 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Make eeprom read-only for Radxa
 ROCK 5A
To: Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, jbx6244@gmail.com, pbrobinson@gmail.com,
 kylepzak@projectinitiative.io, damon.ding@rock-chips.com,
 sebastian.reichel@collabora.com, amadeus@jmu.edu.cn,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251110035455.839863-1-naoki@radxa.com>
 <20251110035455.839863-2-naoki@radxa.com>
 <36843804-433a-5c0c-4961-451b44d70bc4@manjaro.org>
 <38861A00B4F4BA62+e3221913-43e5-4335-9aaf-9b9eed5834ac@radxa.com>
 <65f17890-c052-f303-4731-f882946df1f1@manjaro.org>
 <8934442FCE2020A5+855829eb-e783-4aa5-b4a1-13b0a519c46d@radxa.com>
 <06218e17-0bbc-9606-46b4-9a50d1177170@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <06218e17-0bbc-9606-46b4-9a50d1177170@manjaro.org>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: Nc4Sv39/e83W8uDpdayBVrcXZzPN+Zbk5+xEfjp27DCnHTlaHOH5DL+o
	tuWXmr113NvcBpTru7wD4k5UQIzYBmXHkljV2rsIX5YX8f0Pak0cunCbAKSy0cs55dVh7MT
	7wKBMmka1FLCdeGlzsoZRAgDhdyKJwyxW6aRxkWg1oKUT40PwHaxTMXVmv9rCDxH3i9cRFk
	OdQIUMKVdJ5hVu7MWTfde/a3quiQlwpyqoGSX3nGjDgQh3LreHThr8MNS7Bm8RlCxipWI2p
	8tJiPx6q60stz3IkkcDq0+ApaGdOIQ4fW++cvENQ1VbOPI8N+mkm4lvoVICsGG6nu5mH6+8
	YUhhoCGEtxvJjeZMVO3gpqPFCpjqISCRxqhs2uRAntyKJpVZeR4c0rSQ0aWl1V08tSsf5KT
	Z00kZDbojirD9R34hZkjoWT2J1qCO00OupokDnVX3pu2PitPAGHeZdvv/7z0CI4O1bXv5w6
	Wi/uZfJ7VrhRqdL2Mr2jsO+N7Ix6X7h7RYq/DPwVmSWJRpMWj4c9n4T+W9g0EFFGCnkglXw
	3G4U8qvRiJxWqwYacGdGsu33zRI2j1ZjeDWZYFjQcQN5m3fDQ+WE37Pl7pHpK/PiZu0150l
	qlXGYUO/V4KrnmmgSOqck7WQuGpdgyNi51dQxCXMCoFu0M9sW8miLPyKrcscH8Tf+Wrq2/I
	lZJEHDNkATiNkBLZb5m+s6c1PIJtHiU7NCHe3SX2ZgiOo7qESsiQepZMB6v1nDjpptFbsno
	SqmHJWkofml1gynN0OOPCbBjCr6C97YLyePOI4Qxcfml65yaXdL2sqUFhtWrLCNj/mCW33R
	hV05IbjBgguDlX9CHr3b1IP+fhYtcGOp0H78ZIxQcHUXaIsiBqSNDX6QR1wQusxbp5OFAxf
	dx3BUzz553ClbrEbZgSya3fIDAWvHbaw+/pBiwdai6U+MKD3axjMMFuKoErS+zSBG5hgXnd
	WPNjFKgU6DhJTCRuuNL+pYPfvBqiY+OKgdw/r34XoFdk90JsGnpwRo5Yi
X-QQ-XMRINFO: OWPUhxQsoeAVDbp3OJHYyFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_064824_511181_2ABDE21E 
X-CRM114-Status: GOOD (  13.74  )
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

Hi Dragan,

On 11/10/25 23:37, Dragan Simic wrote:
> On Monday, November 10, 2025 10:44 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
>> On 11/10/25 16:38, Dragan Simic wrote:
>> (snip)>>> Additionally, it would make sense to squash this patch and your
>>>>> other patch that addresses the ROCK 5C together.  They're very
>>>>> similar and having them together in a single commit might actually
>>>>> help the people browsing the repository understand it better.
>>>>
>>>> I'll drop eeprom patch from ROCK 5C v7 patch series, and squash eeprom
>>>> patches for ROCK 3C/5A/5C.
>>>
>>> Thanks!
>>
>> I'm preparing a patch series for Radxa ROCK 5A and I just remembered
>> that the eeprom node in 5a.dts is totally incorrect. The eeprom is on
>> i2c0, not on i2c2.
>>
>> I'm planning to include this eeprom fix as a part of the patch series
>> for 5A.
> 
> You're right, and I managed to miss that during my review. :/
> 
> It would be good if you'd prepare and send a separate, two-patch
> series with just the I2C bus fix for the ROCK 5A and the squashed
> patch that makes the EEPROMs read-only on three boards.  Reviewing
> and accepting large changes split into smaller portions is always
> easier.

I see. I'll do it first.

Thank you very much for your advice!

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
