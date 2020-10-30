Return-Path: <SRS0=455t=EF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E43FC4742C
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 01:27:49 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B1BF9206BE
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 01:27:48 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="vVKcBGYS"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B1BF9206BE
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/oA7FXPHegTFFy+wYoLwptwHffoQl7y+g0FLpxPM6WQ=; b=vVKcBGYSeN3UjRtJD9gvWw43U
	thyhxiZRS5Hwg29W0Pndi80G7M+mR5A7885ThHA9jrzHwI+TxNe6TIlGsVI1ZiNt32qPHvPVMqN5f
	8vMTSU6/21T7q+p7sAxbA1iHycvdeqcjBFf4JKwOLU2UbkN7nm88rNRGKkycvO+T52OBNuuTag0/0
	ciukA+3oCyzgS+lQ85sL2HvRsY8lINgMLRkDlwyOJYItbD9zgBny30szZvd5kv5aUJBTqwKD6yMAy
	/GOreEFG/Wwv5qOOf6bZGwEz9USgjyswA1khCYUTzBsDn1Ob2xdX6motEJ+OgXyTtdoM4KDicfd5J
	8RI29IZMg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kYJCg-0002nF-Ae; Fri, 30 Oct 2020 01:27:42 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYJCc-0002mA-GK; Fri, 30 Oct 2020 01:27:39 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.58])
 by szxga07-in.huawei.com (SkyGuard) with ESMTP id 4CMl6b5hklz70G5;
 Fri, 30 Oct 2020 09:27:35 +0800 (CST)
Received: from [10.174.179.62] (10.174.179.62) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.487.0; Fri, 30 Oct 2020 09:27:23 +0800
Subject: Re: [PATCH] iommu/rockchip: check return value of
 of_find_device_by_node() in rk_iommu_of_xlate()
To: Robin Murphy <robin.murphy@arm.com>, <joro@8bytes.org>, <heiko@sntech.de>, 
 <jeffy.chen@rock-chips.com>
References: <20201029092202.900218-1-yukuai3@huawei.com>
 <98dec09e-08a1-6550-fa4e-85a8104b90e1@arm.com>
 <35ff5111-1270-fc88-788c-4fb9e38faa85@huawei.com>
 <d5442e6b-2a6b-a8f9-2056-2c0c81e88a01@arm.com>
From: "yukuai (C)" <yukuai3@huawei.com>
Message-ID: <e3805bee-347a-1e66-b2ca-48f06df6f702@huawei.com>
Date: Fri, 30 Oct 2020 09:27:23 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <d5442e6b-2a6b-a8f9-2056-2c0c81e88a01@arm.com>
X-Originating-IP: [10.174.179.62]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201029_212738_809541_C085BFE3 
X-CRM114-Status: GOOD (  14.92  )
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


On 2020/10/29 21:51, Robin Murphy wrote:
> On 2020-10-29 13:19, yukuai (C) wrote:
>>
>> On 2020/10/29 18:08, Robin Murphy wrote:
>>> On 2020-10-29 09:22, Yu Kuai wrote:
>>>> If of_find_device_by_node() failed in rk_iommu_of_xlate(), null pointer
>>>> dereference will be triggered. Thus return error code if
>>>> of_find_device_by_node() failed.
>>>
>>> How can that happen? (Given that ".suppress_bind_attrs = true")
>>>
>>> Robin.
>>
>> I'm not sure if that could happen...
>>
>> My thought is that it's better to do such checking to aviod any possible
>> problem.
> 
> ->of_xlate() is only invoked on the specific set of ops returned by 
> iommu_ops_from_fwnode(). In turn, iommu_ops_from_fwnode() will only 
> return those ops if the driver has successfully probed and called 
> iommu_register_device() with the relevant DT node. For the driver to 
> have been able to probe at all, a platform device associated with that 
> DT node must have been created, and therefore of_find_device_by_node() 
> cannot fail.
> 
> If there ever were some problem serious enough to break that fundamental 
> assumption, then I *want* these drivers to crash right here, with a nice 
> clear stack trace to start debugging from. So no, I firmly disagree that 
> adding redundant code, which will never do anything except attempt to 
> paper over catastrophic memory corruption, is "better". Sorry :)
> 

Sounds reasonable, thanks for your explanation

Yu Kuai

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
