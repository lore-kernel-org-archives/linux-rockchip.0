Return-Path: <SRS0=TPHQ=NV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4003C432BE
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Aug 2021 19:22:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9EC5F60F3A
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Aug 2021 19:22:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9EC5F60F3A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5RoG9crpD0F90ozvcwrPiXq9G6pkLxSQQmNtuJBUl2g=; b=x/70OhNgmxwtjhRlC8ho01oKQQ
	rNKf0+w6z6GEZ9BvrIpfRw5JUNHgGurhrhBH/LhSY+9Aiqc6AV6Y7RIo3Tv+stmGMP6Q9Qk61AWRu
	x/c2EeM15tOc5+xGuDGMTjTZW1qphTp20nUcGnMpRzK/eZ6RYe391rWH3eVZpwoo1kU+uJCeUsRrZ
	91xC6nc32oMHzowDLpNpt4/NgzLbb9YMZQsQ7A8XBHW5G7VpVoRu243bwSUahL33QJqv+1nY20+NA
	BbMgt7c9bvV6cqCMV4pUndgpTxwF1hXeqzNWBcAJVtzaW1y8PifOyPOZ2Dmv6os4dtYXv5DsSVe2M
	wuB1BTbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mKmrl-000QiI-JO; Mon, 30 Aug 2021 19:22:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mKmrX-000QgY-Hg; Mon, 30 Aug 2021 19:22:32 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id A2D0A60ED6;
 Mon, 30 Aug 2021 19:22:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1630351350;
 bh=bD/PRX2r6uMy0nvYwzbiesOU91GqKICjrpxoivduALw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=T19AiTfTnKyfwpgvpfv9IKG7CwFyVDnmV/mPUC0e6TOvWEVKVJ2wDB87Y1OSsUyfp
 KC0MT9n/MLMFT5iuHKDdyH/VntBfk1Jg5XJPrY0Jqz9VxRx2/HKQr7OmSRlCfjDqu0
 EmDjt9STRLwjYp4e9OssvkLkc5066zWAv58kfEt5NbMFmDshc7TJQjCBRHy0rOYc/t
 VgbS7EXNoOCRPvoJE8BAXvc2vkcdFwDkMDeQjovoP2al0ihfkyj48q6/OM78wjy8km
 SDqeV1LuqJ57ECSpg9ZCWsGehI/lfAYSC/s7DY5rIax/0tgbyi0Z2jHbAZm+jpfKzt
 cdwLBElFdT3Hw==
Date: Mon, 30 Aug 2021 15:22:29 -0400
From: Sasha Levin <sashal@kernel.org>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: wens@kernel.org, netdev <netdev@vger.kernel.org>,
 "moderated list:ARM/STM32 ARCHITECTURE"
 <linux-stm32@st-md-mailman.stormreply.com>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Subject: Re: [PATCH] net: stmmac: dwmac-rk: fix unbalanced pm_runtime_enable
 warnings
Message-ID: <YS0v9UbzoHkiU9om@sashalap>
References: <20210823143754.14294-1-michael.riesch@wolfvision.net>
 <CAGb2v67Duk_56fOKVwZsYn2HKJ99o8WJ+d4jetD2UjDsAt9BcA@mail.gmail.com>
 <568a0825-ed65-58d7-9c9c-cecb481cf9d9@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <568a0825-ed65-58d7-9c9c-cecb481cf9d9@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210830_122231_649486_FE2AF8C1 
X-CRM114-Status: GOOD (  13.09  )
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

On Mon, Aug 30, 2021 at 09:57:51AM +0200, Michael Riesch wrote:
>Hi ChenYu,
>
>On 8/29/21 7:48 PM, Chen-Yu Tsai wrote:
>> Hi,
>>
>> On Mon, Aug 23, 2021 at 10:39 PM Michael Riesch
>> <michael.riesch@wolfvision.net> wrote:
>>>
>>> This reverts commit 2c896fb02e7f65299646f295a007bda043e0f382
>>> "net: stmmac: dwmac-rk: add pd_gmac support for rk3399" and fixes
>>> unbalanced pm_runtime_enable warnings.
>>>
>>> In the commit to be reverted, support for power management was
>>> introduced to the Rockchip glue code. Later, power management support
>>> was introduced to the stmmac core code, resulting in multiple
>>> invocations of pm_runtime_{enable,disable,get_sync,put_sync}.
>>>
>>> The multiple invocations happen in rk_gmac_powerup and
>>> stmmac_{dvr_probe, resume} as well as in rk_gmac_powerdown and
>>> stmmac_{dvr_remove, suspend}, respectively, which are always called
>>> in conjunction.
>>>
>>> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
>>
>> I just found that Ethernet stopped working on my RK3399 devices,
>> and I bisected it down to this patch.
>
>Oh dear. First patch in a kernel release for a while and I already break
>things.
>
>Cc: Sasha as this patch has just been applied to 5.13-stable.

I'll drop it for now, thanks for letting me know!

-- 
Thanks,
Sasha

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
