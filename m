Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05A89C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Feb 2022 10:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dSD5w1/e7B8NhRVV9WuV+iAqlw8jOG3aU3DM7ECUwks=; b=KB6sBu6V1TWtdq
	iL9KA6keiasSgQv0CFcFibzuE+AqJ2fJERiXyJhBNUbzKoD7b9e0D0mJSGokrOESuEca/CWKxOKDE
	1B3kgSKyv2sjc/1mYrJo64pK2pWIH3Lv0+JKfQbRNdZvsKZnBay4Vn8MXGNXwZ+5wWn5zNQSRkoFm
	P1j8JO/w7TMNP1zuuVNgHYcgSyxHPO9htdnn+XRTPABqWDWYvVeScjcwXxfvb+/ALULyWsqoKMFFr
	xJOtHyxJdYJRg0IJmb3QIjHy6s/DIxDwb92niK8MMVYmjJhvL1WTqhgmMUrDMQ7Q+mOjyNZ3n12MH
	MVoMKVsvCUB7tei12LpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNY60-004UvL-1h; Fri, 25 Feb 2022 10:45:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNY5x-004Uta-Dt
 for linux-rockchip@lists.infradead.org; Fri, 25 Feb 2022 10:45:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0C47D106F;
 Fri, 25 Feb 2022 02:45:01 -0800 (PST)
Received: from [10.57.39.47] (unknown [10.57.39.47])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5F2A03F70D;
 Fri, 25 Feb 2022 02:44:59 -0800 (PST)
Message-ID: <6ba1c897-a932-915e-1415-1bb685754305@arm.com>
Date: Fri, 25 Feb 2022 10:44:55 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH v3] dt-bindings: mfd: rk808: Convert bindings to yaml
Content-Language: en-GB
To: Rob Herring <robh@kernel.org>
Cc: Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org,
 lee.jones@linaro.org, heiko@sntech.de, zyw@rock-chips.com,
 zhangqing@rock-chips.com, linux-rockchip@lists.infradead.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20220215211548.31940-1-macroalpha82@gmail.com>
 <9142ff41-4e95-3d52-bbe3-4f638b7d0fb2@arm.com>
 <YhfcxaaQgO7eDOXH@robh.at.kernel.org>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <YhfcxaaQgO7eDOXH@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_024505_554793_B91DA490 
X-CRM114-Status: GOOD (  16.96  )
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

On 2022-02-24 19:30, Rob Herring wrote:
[...]
>>> +required:
>>> +  - compatible
>>> +  - reg
>>> +  - interrupts
>>> +  - "#clock-cells"
>>
>> Is this actually required (ditto elsewhere)? Technically it's only necessary
>> if there are any clock consumers targeting this node, so arguably it should
>> be the clock binding's responsibility to validate that.
>>
>> It wouldn't make much sense for a dedicated clock controller to omit
>> #clock-cells such that it couldn't have any consumers, but given that these
>> things are primarily PMICs I think it's reasonable to allow a board not to
>> care about the clocks at all if it doesn't use them. I know that the
>> original binding claimed it was required, but if we're already relaxing that
>> for RK805 here then we may as well relax it entirely.
> 
> Fair enough. However, if the consumer could be in an overlay, then I
> think we want it to be required and not make the overlay add the
> property. Properties just appearing within nodes at runtime is likely
> not well supported in OSs.

Ah yes, that's an angle I hadn't considered, and I reckon it clearly 
answers my original question in the affirmative :)

Indeed these clock outputs are often hooked up to SDIO WiFi modules, and 
I'm sure I *have* seen boards which put such modules on pluggable 
daughterboards in a manner which could reasonably use overlays, so in 
principle it does seem like a realistic concern. I'm happy with setting 
a general principle that if a clock output is exposed on a physical pin, 
then at the DTS level we can't know for sure that it *won't* be consumed 
(even if the original board design didn't intend it), therefore the 
device is always a potential clock controller and "#clock-cells" should 
be required. In that case, the consistency argument would fall the other 
way, to enforcing it for RK805 as well.

Cheers,
Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
