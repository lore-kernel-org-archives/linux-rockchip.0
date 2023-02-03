Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA940C61DA4
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Feb 2023 15:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xpQWbpUM5P05ZeIAWG6E2XajPYfUjjF/hWRac5i/y3s=; b=WZavt8jd3iE8YX
	Y6lMiGFZziN28IRHwnhvZxT6XN6WvmUlvIhEKAWxfC5vSnEBuA7x9+aHLOtfCXvVE4cehLRDdwKCP
	om1CnVjywG/hlIcOEd7tljo48Qk4YrDGoE65WBUQNTJyTvqOico7P55Mfxd9NNDty8wO9O05YTnnf
	FZma4o/yKtl67LaXaTbVHAU3dOcJfm496o3zTqxLZjLfdIY9WjFKgqdbjH1RbwMcPmPdwwNN/1CLj
	DRnsYPMNJUuFHSVFYPOy06xsC2sY/42onVFjjMpk2MIbksUVuZTioXp9iJgk85DUzwWmvzT2C6doC
	f0YnZegzULex5mGDR7EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNxqV-002fVz-Uq; Fri, 03 Feb 2023 15:19:23 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNxqK-002fTQ-Tf; Fri, 03 Feb 2023 15:19:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8229D61EFE;
	Fri,  3 Feb 2023 15:19:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2955C433EF;
	Fri,  3 Feb 2023 15:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675437552;
	bh=8hzdeXH6nbVJhHxk8oIwz5oklsjwdv9sehbJ7yVtANU=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=FvL6gLo6MFuD/spR8WuafDDvZtd6FkTsa+myBrfVvv3+UA3eFz/CtSp2FJGGtgYo2
	 OQWEHgpsOz9SzrFjUm1mHY9CvzVFfCnU5s8nzGjl/wXRW0JMDrrrqTLYCI9Gc8D04R
	 ZbVy1AeOqfV9Wn/xd/aAoF0hRWYzgtYUZCC4jud6NBjM+Eh9TPC9HhnbkfBtRMNblK
	 65L0jzQHragNZ2tnYSsxPaq3An6U111r6VUdm2AXVO4aojyRhvFPRHj8hNbwioQRKj
	 VUkuQp4YGI5Eu9R0PKbK7DTwFOp85GUkCdCO2RVZk72p8mpZf5o8HSCVarc0tS6M1/
	 oAlkinng+Wbhw==
Message-ID: <fd66e996-6e6c-7c04-4750-420f2e77383c@kernel.org>
Date: Fri, 3 Feb 2023 16:19:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 18/18] dt-bindings: devfreq: event: convert Rockchip DFI
 binding to yaml
Content-Language: en-US
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>, linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, kernel@pegutronix.de,
 Michael Riesch <michael.riesch@wolfvision.net>
References: <20230203125012.3804008-1-s.hauer@pengutronix.de>
 <20230203125012.3804008-19-s.hauer@pengutronix.de>
 <ed9c3224-2f1a-c335-3028-6c23f40f57f4@kernel.org>
In-Reply-To: <ed9c3224-2f1a-c335-3028-6c23f40f57f4@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_071913_024985_AAC379B4 
X-CRM114-Status: GOOD (  14.80  )
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

On 03/02/2023 16:14, Krzysztof Kozlowski wrote:
> On 03/02/2023 13:50, Sascha Hauer wrote:
>> Convert the Rockchip DFI binding to yaml. While at it add the newly
>> supported rk3568-dfi to the binding.
>>
>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Please use scripts/get_maintainers.pl to get a list of necessary people
> and lists to CC.  It might happen, that command when run on an older
> kernel, gives you outdated entries.  Therefore please be sure you base
> your patches on recent Linux kernel.

BTW, for sure you already got this feedback because many patchsets from
you and from other @pengutronix were sent not using get_maintainers.pl
correctly.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
