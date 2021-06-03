Return-Path: <SRS0=PA1q=K5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6554FC47096
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Jun 2021 12:06:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2EAB7613E9
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Jun 2021 12:06:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2EAB7613E9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Od0XBjJMTwdcNy0MofhJF5QuwEd6z5q4ZePKsY7RVNY=; b=xCQC88z4HAp736eRrBBxhcRTP4
	zvzFg6G6GoGytV/f9woX1Ff9/7II03UC1tLlDp45eXKudEVSqlhqEUTTeCvYnN0ikOu6Q4iktMSRQ
	tIN3To5Znn3gOneyqkwXAtvP0mewUrRqf0pxo3b3+L6tMGVE36CQZ5tr72eP/duVdq6NFNAS61LMm
	ejTOqR2RIWI4NtyF5clx3f80ucIUOXmA34KFHgWjVw1OUXSZqUGJiYsIveCEGObZelvAsBxx8kQgt
	GWzucsXRWAKDU4uxGTu7A+s3gV5s01ZLpHJn69IsVH1xynj8EbcAXPKTb7HhrTFz05G9rEXdXwyh+
	8AnvLXWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lom6m-008Xob-UJ; Thu, 03 Jun 2021 12:05:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lom6j-008XmH-EZ
 for linux-rockchip@lists.infradead.org; Thu, 03 Jun 2021 12:05:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CB6A21063;
 Thu,  3 Jun 2021 05:05:50 -0700 (PDT)
Received: from [10.57.73.64] (unknown [10.57.73.64])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D4AE23F774;
 Thu,  3 Jun 2021 05:05:49 -0700 (PDT)
Subject: Re: Different type iommus integrated in a SoC
To: "xxm@rock-chips.com" <xxm@rock-chips.com>, hch <hch@lst.de>,
 joro <joro@8bytes.org>, will <will@kernel.org>
Cc: iommu <iommu@lists.linux-foundation.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>
References: <2021052710373173260118@rock-chips.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <5d7127d5-b73c-2002-1734-98aab2295c8e@arm.com>
Date: Thu, 3 Jun 2021 13:05:43 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <2021052710373173260118@rock-chips.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210603_050553_589017_7DAE5AE3 
X-CRM114-Status: GOOD (  14.79  )
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

On 2021-05-27 03:37, xxm@rock-chips.com wrote:
> Hi all,
> 
> I have a SoC integrate with two different types of iommus, one is ARM SMMU, serves the PCIe/SATA/USB,
> the others are vendor specific iommus, serves display device and multimedia device.
> 
> In the current linux kernel, the iommu framework seems only support one type iommu at runtime, if enable both types iommu, only one type can work.
> Is there any way to support this kind of SoC?

Hooray! I've been forecasting this for years, but the cases we regularly 
hit with internal FPGA prototyping (nor the secret unused MMU-400 I 
found on RK3288) have never really been a strong enough argument to 
stand behind.

Based on what I remember from looking into this a few years ago, 
converting *most* of the API to per-device ops (now via dev->iommu) is 
trivial; the main challenge will be getting the per-device data 
bootstrapped in iommu_probe_device(), which would probably need to rely 
on the fwspec and/or list of registered IOMMU instances.

The other notable thing which will need to change is the domain 
allocation interface, but in practice I think everyone who calls 
iommu_domain_alloc() today is in fact doing so for a specific device, so 
I don't think it's as big a problem as it might first appear.

Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
