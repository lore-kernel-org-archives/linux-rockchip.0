Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B964CC7EE24
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 May 2023 16:31:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C5Pn7GZNXFYmcRHLY5FxbawdAqGX8JigOID4Y/XlWUk=; b=BjIiJcVRd3sKAp
	//VwYZSe49OjPMkZ8XHSWzQ2oaKllx5p0WUDrArpSQVy+63cLDK2KFSWIwdoywl4EvodxAQzkYABo
	JZu+tIEXJrrhv7jQfJKAStbgxnhw8jAag0s/P4E/kFV/qF93ry53LjYZwUkSSQA3MgpEZavWCCQBe
	R0vaif1fRab16nQAPUtnlTgtxglfgKNGIeZJkL4gYPS9souaoV5hdBIKMeGY9pK/52tcOZPT/EmYI
	CtyR3gpy0rJ9coHRVqv1E7jRXL8Myr3FaZVBDGcUGoYOSFL+yAfQwAYV9y0bLFOJ2KhOSfgCzdXGz
	WYrUWLQtLjERfmeGnMnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puyLQ-00BJ5r-12;
	Fri, 05 May 2023 16:31:44 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puyLN-00BJ4u-0L;
	Fri, 05 May 2023 16:31:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 830B9632F2;
	Fri,  5 May 2023 16:31:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D466BC433EF;
	Fri,  5 May 2023 16:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683304299;
	bh=HMqKUtB9MG7yCNBxCVOwa4pBjAhJPc8uew1JrjGfRyA=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=qDuUfqRvCLJ+9yfIoQ8pl/MLTpdAJk5U5Vc4fpehF9V9SqBZc/21Qb9XTmVu75pfx
	 p1S2RyZHPBuwa+JEl5UVzP3ENI3wX3yoWe/HGaZ1+/LXX977qEr/U3dWO9g2fKaH52
	 /9dYWs8N2WVgPSyF44TVl3diqPWqegtWTrc0gtPIkjD1ujPN39l661l2wx5FwJKaGq
	 o0MU3e+x5O7gxMnoFGHH6jQpuKc4R2JoLcvh+y3VR3EEGg43MI7+/U7ZtxSxi7t6CA
	 ud6IB6PW1kfdHhu2tSa2kmGX+yQ2GFmnaTtbaO2kfpsiBcMSYu8vGcvKEr56FeM0tV
	 Y8f8YDflnYMbA==
Message-ID: <d505aba4-e345-44f0-fc70-33a69e0c5b7e@kernel.org>
Date: Fri, 5 May 2023 18:31:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v4 21/21] dt-bindings: devfreq: event: convert Rockchip
 DFI binding to yaml
Content-Language: en-US
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, kernel@pengutronix.de,
 Michael Riesch <michael.riesch@wolfvision.net>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
 <20230505113856.463650-22-s.hauer@pengutronix.de>
 <c0ee4c52-8d78-992a-22b0-911038a62b0e@kernel.org>
In-Reply-To: <c0ee4c52-8d78-992a-22b0-911038a62b0e@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_093141_180003_3B25E568 
X-CRM114-Status: GOOD (  17.54  )
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

On 05/05/2023 18:29, Krzysztof Kozlowski wrote:
> On 05/05/2023 13:38, Sascha Hauer wrote:
>> Convert the Rockchip DFI binding to yaml. While at it add the newly
>> supported rk3568-dfi to the binding.
>>
>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Please use scripts/get_maintainers.pl to get a list of necessary people
> and lists to CC.  It might happen, that command when run on an older
> kernel, gives you outdated entries.  Therefore please be sure you base
> your patches on recent Linux kernel.
> 
> You missed at least DT list (maybe more), so this won't be tested.
> Please resend and include all necessary entries.
> 

Actually you already got such comments and nothing improved here. You
just resend same patch with same bugs.

This is a waste of our time. Ignoring output of maintainers means there
is no testing and the patch does not appear in the inboxes.

I don't understand why you insist on ignoring that output.

NAK.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
