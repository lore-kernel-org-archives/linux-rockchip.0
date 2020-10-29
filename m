Return-Path: <SRS0=CN2P=EE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBC7AC2D0A3
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2020 13:19:41 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 394712067D
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2020 13:19:41 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="RSDjPMz2"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 394712067D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eH731NdSiO+ZR9X/b7sIkRDrMJ6iMoo7BZyZPSX/SAU=; b=RSDjPMz20D3NaWYJdxXTGSOII
	vgwtT9s1dHffxNgHTiP4AG84+W7yVEaLIMK8YYjDjfhc7XNljHvYOEN3cRuT9Q0MXBoVUisWy2D2/
	9opG1F65AulDO7u0q5QbB+yXffzEuTlGJmfOX0vZjmdjYf6yYNxj7W+mxpdEFueLZRPUQGTTxaWsG
	3nDuzYUcN9zjtKiUwBzfO5a6Puj9Y7dqUsRReaSSXfrP1BTPfC+l0YV4HQLyVV3cSdhSb25ByJyCF
	Lbu+nceM/0TDuoNApAtvQExalTJo45jjV+dqdZU+ci9FaYGrTKHjOiATe6uQj0P1xBle8wmi7fN/B
	T3w4VqnXw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kY7q4-00034v-9M; Thu, 29 Oct 2020 13:19:36 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kY7po-0002wB-8y; Thu, 29 Oct 2020 13:19:22 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.58])
 by szxga07-in.huawei.com (SkyGuard) with ESMTP id 4CMQyD4Gzyz70Kr;
 Thu, 29 Oct 2020 21:19:16 +0800 (CST)
Received: from [10.174.179.62] (10.174.179.62) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.487.0; Thu, 29 Oct 2020 21:19:05 +0800
Subject: Re: [PATCH] iommu/rockchip: check return value of
 of_find_device_by_node() in rk_iommu_of_xlate()
To: Robin Murphy <robin.murphy@arm.com>, <joro@8bytes.org>, <heiko@sntech.de>, 
 <jeffy.chen@rock-chips.com>
References: <20201029092202.900218-1-yukuai3@huawei.com>
 <98dec09e-08a1-6550-fa4e-85a8104b90e1@arm.com>
From: "yukuai (C)" <yukuai3@huawei.com>
Message-ID: <35ff5111-1270-fc88-788c-4fb9e38faa85@huawei.com>
Date: Thu, 29 Oct 2020 21:19:05 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <98dec09e-08a1-6550-fa4e-85a8104b90e1@arm.com>
X-Originating-IP: [10.174.179.62]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201029_091920_684779_DA9E73C8 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-rockchip@lists.infradead.org, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 yi.zhang@huawei.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On 2020/10/29 18:08, Robin Murphy wrote:
> On 2020-10-29 09:22, Yu Kuai wrote:
>> If of_find_device_by_node() failed in rk_iommu_of_xlate(), null pointer
>> dereference will be triggered. Thus return error code if
>> of_find_device_by_node() failed.
> 
> How can that happen? (Given that ".suppress_bind_attrs = true")
> 
> Robin.

I'm not sure if that could happen...

My thought is that it's better to do such checking to aviod any possible
problem.

Thanks!
Yu Kuai

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
