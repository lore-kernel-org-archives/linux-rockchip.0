Return-Path: <SRS0=bU6c=P5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 273F6C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Nov 2021 00:45:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DBE5B61181
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Nov 2021 00:45:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DBE5B61181
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Meutvh4HbMd8eEGvvO+tJRDqVYXLLvKV8bCjH5BoUPU=; b=czVMOZpiaMzcAHS7xigEuM/MlN
	dvcBxlwrLay7ocgeZxsqkaPjmNe9gxxJF4Jcd/DFYqSVM3gZAKCetzleglj/Ax3m3CTtmUjFe2oTn
	D04g8z+W3CiM9x9Q6STcodWOoz5ge+KrkZL9XeVfZ3wfnyG8L4sjIz6rAtMPjAhvjaK5HrQYXQPyF
	JK3+jAd89xg5CmKPx4KuMZH8ZIgqoYCSjaRMCu6SPMexT5lxtK68UYy5Mr9F3q5eDDFaIThq54SZn
	16fEisc/eaVRdfmUZRCKzhrQFXlFChl2C2DGhcSdj0hiXBO2UywAZm/3RMbAgG8myQJyLqltH4c6r
	UT1SiN9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mkbjW-004CzH-LQ; Wed, 10 Nov 2021 00:44:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mkbjK-004Cxs-Cg; Wed, 10 Nov 2021 00:44:47 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 612F361181;
 Wed, 10 Nov 2021 00:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1636505085;
 bh=tBqFQiiw9vqZZssoZ0S0NgR+UhV7SYeIaE17u5h2RS4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FK+Ut5ifG886KM7+bhYz5EJbVFYjcr7/oRrSuTnJAc2yk/DlDdzOt6MgPitvbhU58
 37sFE9Bm/Gbifg2KU1KAr9MBXbcGUTp3yuVxru/nSBvC+QYfC5eNhb36UCQ3mPWBaY
 cvZ0+3H149wGy0B+mKVXvCZHs101U/TR1D42GED4nCcPA3SzesjQ1v1vpuxCl+tSFP
 gqi3QhhlW2nSofytRoZU55h9peYdOQlxL8cZkro7h50GjqxI/stXbgps10x1Lz7z1O
 I6agWthX2Bdd9P1LijBuYSkoUBW64gBLA9jHSY95cuHA/Fl8K8vrIZ6f+1T+N3KCTL
 PK2VddGMhY2nw==
Date: Tue, 9 Nov 2021 19:44:44 -0500
From: Sasha Levin <sashal@kernel.org>
To: Brian Norris <briannorris@chromium.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Leo Yan <leo.yan@linaro.org>, Chen-Yu Tsai <wenst@chromium.org>,
 Douglas Anderson <dianders@chromium.org>,
 Heiko Stuebner <heiko@sntech.de>, robh+dt@kernel.org,
 pawel.moll@arm.com, mark.rutland@arm.com,
 ijc+devicetree@hellion.org.uk, galak@codeaurora.org,
 catalin.marinas@arm.com, will.deacon@arm.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH AUTOSEL 5.15 17/82] arm64: dts: rockchip: add Coresight
 debug range for RK3399
Message-ID: <YYsV/OU47QlolwOx@sashalap>
References: <20211109221641.1233217-1-sashal@kernel.org>
 <20211109221641.1233217-17-sashal@kernel.org>
 <CA+ASDXNcC4_MpURRjbeXsyXsQ9Qte_YgoXFCJUKtrSWpZsHn-g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+ASDXNcC4_MpURRjbeXsyXsQ9Qte_YgoXFCJUKtrSWpZsHn-g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211109_164446_494711_50909468 
X-CRM114-Status: GOOD (  14.57  )
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

On Tue, Nov 09, 2021 at 03:25:39PM -0800, Brian Norris wrote:
>On Tue, Nov 9, 2021 at 2:17 PM Sasha Levin <sashal@kernel.org> wrote:
>>
>> From: Brian Norris <briannorris@chromium.org>
>>
>> [ Upstream commit 75dccea503b8e176ad044175e891d7bb291b6ba0 ]
>>
>> Per Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt.
>>
>> This IP block can be used for sampling the PC of any given CPU, which is
>> useful in certain panic scenarios where you can't get the CPU to stop
>> cleanly (e.g., hard lockup).
>
>I don't understand why this is being backported to -stable. First of
>all, it won't work because it's missing dependencies (specifically,
>around the RK3399 clock driver). But even if it did, I don't see how
>this is a candidate for -stable.
>
>Methinks the AI has gone too far again.

Possibly.

We try to take patches that enable existing hardware (or hardware
features) where the logic is already in the kernel but it's missing
something like adding a new PCI ID or a quirk.

This also seems to happen with devicetree files which is why this patch
got pulled in.

I'll drop it if it depends on patches that didn't make it in. Thanks!

-- 
Thanks,
Sasha

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
