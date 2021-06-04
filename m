Return-Path: <SRS0=fkR5=K6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2528C07E94
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Jun 2021 15:13:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6D7DE613EA
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Jun 2021 15:13:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6D7DE613EA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=8bytes.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AexRCKXB7PtjoCo2wiWf1MlaS6TKOo5Bbm6JaVqH8D0=; b=BOgCYx/8HvPVYg
	ue5mCFQUjfhGjbCUrdEhlZUsB22JzPNtrKuwMtGfHIENXzGk4vI/ijmIWOIGYE02XkJeUKdaNCefx
	AIeJxwfn9zdIpsf0iNhVyeI+H/Fm0UQKTxqPz82/9hwUuqTbf4cHLtpnaiWAuntIsF1N6lH3UBScT
	SrOf5CggaJmTy7Joe/lVqzRtGcGq1IvbX4of/rdJdnTuX1ONRiMHFWLKT/Tno9ZP3GVcgCdQ/RkcC
	JHk80ZszdINifcfuk2RaUcLGLjYC6Kg1NFlo7IKzeoo2cZVxxYzPjQJXSWNXlCp7sXoKKTe5q+n5E
	RA9WFIjsP1vrUm0Hlv1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lpBW0-00E6pd-JR; Fri, 04 Jun 2021 15:13:40 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lpBUE-00E5LK-IM; Fri, 04 Jun 2021 15:11:55 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 77ED03A9; Fri,  4 Jun 2021 17:11:48 +0200 (CEST)
Date: Fri, 4 Jun 2021 17:11:47 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Robin Murphy <robin.murphy@arm.com>
Cc: will@kernel.org, heiko@sntech.de, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, benjamin.gaignard@collabora.com,
 xxm@rock-chips.com
Subject: Re: [PATCH] iommu/rockchip: Remove redundant DMA syncs
Message-ID: <YLpCs7OywLy2ZQTH@8bytes.org>
References: <5c29a9ff0a20df0167635b1901f94b5195c1fb28.1621604979.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5c29a9ff0a20df0167635b1901f94b5195c1fb28.1621604979.git.robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210604_081150_798684_4FC92C47 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
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

On Fri, May 21, 2021 at 02:49:39PM +0100, Robin Murphy wrote:
> When we allocate new pagetable pages, we don't modify them between the
> initial dma_map_single() call and the dma_sync_single_for_device() call
> via rk_iommu_flush(), so the latter is entirely pointless.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/iommu/rockchip-iommu.c | 3 ---
>  1 file changed, 3 deletions(-)

Applied, thanks Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
