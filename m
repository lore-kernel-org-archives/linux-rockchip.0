Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C384E77183
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Dec 2024 00:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n3dewRHYgdSuh8vvJ021d3R+FQtmtUW99awP2UUX/C0=; b=xyPRfv/7KZD0zS
	RWHPAllcz995qnP/ktdxqJh+TSUSsVxJadqW2hBw0TZkYoyHu8q1j5gApTFjcdsiBQJ2beySf2GPI
	djH28ChvBvqo9BW2gKM1KXwRSBxDBNZlBj9T29uzljlksQx00jWY9Ek3XdmX4o91MsFmNS1KBZe5J
	VJ1Av8xBNAQDkBfRsmXys/IyQ7jrAVx4Wtb5EGsW3oKv+h3F5v5hsr4mmBZblL4x3eenqW2XDQdgl
	/c1vsMfp5LNaJ52r/9UpFqEqkvPxZ0iNqA02cJHXufT3svFUmv2KogGEL0eXVDQytuZJ6EBJYOrO0
	kah+58Fy+1vjy5YLaz8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNLrP-0000000Bod7-3WHH;
	Tue, 17 Dec 2024 00:54:51 +0000
Received: from smtpbgsg2.qq.com ([54.254.200.128])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNLkw-0000000Bmur-2wDX
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Dec 2024 00:48:12 +0000
X-QQ-mid: bizesmtpip4t1734396469tf0h3as
X-QQ-Originating-IP: xdmcjhBK4Kpmp9oApsTuf23GuMNM3gJ5QXJDWaFhDZE=
Received: from [IPV6:240f:10b:7440:1:1e5c:5a5f ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 17 Dec 2024 08:47:45 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2829160227594366246
Message-ID: <724A97E2AC940372+aef40e57-fe22-403a-a642-b5a2feae450b@radxa.com>
Date: Tue, 17 Dec 2024 09:47:45 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 10/12] arm64: dts: rockchip: Fix pmic dcdc-reg10 label
 for Radxa ROCK 5C
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-11-naoki@radxa.com>
 <997d39ac-b78c-4584-ba86-d114120bad9c@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <997d39ac-b78c-4584-ba86-d114120bad9c@kernel.org>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: OST2d686M2k211owZqeNWWUz9onT6r0ucMDYqeSqTses33GF1/80g9E7
	bYZCpOCxdTTUhFWqGr0PLhZefnWonF8lkv9wS4DdcfThpGmytRaikxhZPELHErW52Iz9egS
	2Ucl5flTBDZ28TbcVTFfI1xO5w9pOolSpKNaTtoFt1RzHH0+mbxLoKYZqoWuPTDcyxqKBhS
	KQY9UjVWQf9FjeFRH795saEJEIY8uLvIvr7byM8lyLa+OtAzdiyI8KQ+PpuCHgRGBUC+9fu
	odab7Hw7jXfD7s59G1flJpACdKDG9rwqL5Fp8DxLX+Cta96HA33Fc842IVUaA0fNvrCzhql
	rBj9yDA2uYGrFrz9rPP0/p4+VarxuLxo/eW+ry3e4XromoU19sE+9CQrU+txEKLgDWy+n26
	tNZxqIx3XAlbHLSrq+kP1WswY7XrTIJCJlEeHsH5S80ci8uGbIdQ0mvvpwcL+ncgj6sTYFa
	+qBR53EtrTCbuQDZK6ABykOEkvmp/5U7B1SKsEv+PgYWvMhnUfBHSEcXFlM5LJ7q9/JNkIc
	ShuPWFsNbUKD/iVPEciaC+sEmFigoOFzuzFu5U0PBuqfZkZShPkCa2n5bBtH9ktwqAWwvDv
	ktoHZwvOa7JarSmdtw9JHbrhrKw/cKScspDUyjw4jVPtR7b+66E8z3pgXmH6Qrc80KmDaw7
	JIsPKRf4t0GWw8rACFoEnyN57RYrNnNY6YHsn2JeSc6RE8xgSIEyADQi+UhV06av09nVtZV
	dCQB/890wofTkY5e53NEqEYUGJ1QO8u0ZkM0HnKlSO/LtP743NNIETleOqsH435v7i5NBe5
	6xjrTbaqPNNJGZaXKlrpn6iL7ft8Lh7T+ec29/Uu9Frg3+7uRtTU/mu7OZNNGS/Afaoh+K0
	/ralkLkFI6NwhVYJY8O5lmkX2sQvW4wcPenADXQf0y6/i/L0pnBKyrmRf4HnKCA0
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_164811_132263_2635D07E 
X-CRM114-Status: UNSURE (   6.25  )
X-CRM114-Notice: Please train this message.
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

On 12/16/24 22:40, Krzysztof Kozlowski wrote:
> On 16/12/2024 12:30, FUKAUMI Naoki wrote:
>> Fix pmic dcdc-reg10 label to match with schematic[1]. No functional
>> change.
>>
>> [1] https://dl.radxa.com/rock5/5c/docs/hw/v1100/radxa_rock_5c_schematic_v1100.pdf
>>
>> Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
> 
> All your commits have the same flaw. You claim there is no functional
> change, yet there is a real bug to fix.
> 
> All such trivial cleanups are not fixes and should be squashed together.

I see, I'll do "squashed together" for trivial/cosmetic/no functional 
changes without "Fixes" tag.

Thanks for pointing.

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
