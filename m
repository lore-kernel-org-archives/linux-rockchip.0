Return-Path: <SRS0=fkR5=K6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F376C07E94
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Jun 2021 15:44:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E1B1C613D8
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Jun 2021 15:44:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E1B1C613D8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=8bytes.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UswbPDm5iAuZ8WseRSTmtlRt4P58pvFmtCxQnBAz/Jg=; b=Eut/7LH00+2UoB
	UlNInlmVR2KgSJ3ae2opKpqzlPzhncr9K7Iv9Wpy1IcBD8/mQDNKIzMDskWKga+QG56EWq0kTcJuZ
	1IByCCkrJp45OfLJjMOJXHoNhib2z8qOy4r/nUtYxmLZ032CaklZvvXqGxgTR5ncrmy+Yi2IRXgbO
	+tkeuNKsAEnsaeSkS2w6X3Nojy5gCi8/XGPER6JLVEXA3V4un92oJ4YcA/n2eiabiu0VTGVsOlzNV
	Zz0WBsTSu6fvAb9ntPuWFX3PAap5kS2+jX+ptWnXjfNB43SKhtm3Q6tSom1One3SCRXHlH2mht8EQ
	jTuRZ/k1gISt7+Cz6EUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lpC0B-00EDwR-JP; Fri, 04 Jun 2021 15:44:51 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lpC09-00EDtx-7c
 for linux-rockchip@lists.infradead.org; Fri, 04 Jun 2021 15:44:50 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 993B93A9; Fri,  4 Jun 2021 17:44:46 +0200 (CEST)
Date: Fri, 4 Jun 2021 17:44:45 +0200
From: joro <joro@8bytes.org>
To: Robin Murphy <robin.murphy@arm.com>
Cc: "xxm@rock-chips.com" <xxm@rock-chips.com>, hch <hch@lst.de>,
 will <will@kernel.org>, iommu <iommu@lists.linux-foundation.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>
Subject: Re: Different type iommus integrated in a SoC
Message-ID: <YLpKbRVU1YPD/73L@8bytes.org>
References: <2021052710373173260118@rock-chips.com>
 <5d7127d5-b73c-2002-1734-98aab2295c8e@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5d7127d5-b73c-2002-1734-98aab2295c8e@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210604_084449_466048_9D171E58 
X-CRM114-Status: GOOD (  13.00  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Jun 03, 2021 at 01:05:43PM +0100, Robin Murphy wrote:
> Hooray! I've been forecasting this for years, but the cases we regularly hit
> with internal FPGA prototyping (nor the secret unused MMU-400 I found on
> RK3288) have never really been a strong enough argument to stand behind.
> 
> Based on what I remember from looking into this a few years ago, converting
> *most* of the API to per-device ops (now via dev->iommu) is trivial; the
> main challenge will be getting the per-device data bootstrapped in
> iommu_probe_device(), which would probably need to rely on the fwspec and/or
> list of registered IOMMU instances.
> 
> The other notable thing which will need to change is the domain allocation
> interface, but in practice I think everyone who calls iommu_domain_alloc()
> today is in fact doing so for a specific device, so I don't think it's as
> big a problem as it might first appear.

Yeah, I think for that we have to give up on the promise that a domain
can be assigned to _any_ device. But this promise doesn't even hold true
now when there are several IOMMU of the same type but with different
feature sets in a system.

So I happily review patches enabling the Multi-IOMMU SOCs :)

Regards,

	Joerg

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
