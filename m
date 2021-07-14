Return-Path: <SRS0=C1EW=MG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E8F7C07E9A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 10:41:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D5B0261260
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 10:41:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D5B0261260
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=8bytes.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=52y2JnK+sjzAwF04xpPqWsI1iV691liMBXSfhTVQQQ8=; b=1DKaREFnKJ1EqP
	2WDrz3u5HhgO/oxFbup2aI/8klzJ22KiXLlqUQajFghcb6B/QvC+aqL2BG9b1mAGCWaHpLmrtb8gj
	20RljqYbDEujynTvcdlVUUecb7bTFakthxqWuGCuugDEuzWhMPNCTq/CKacogMkWTr8bW3hP1WuKO
	Ny6LS/3xEwa1axoXtGzcxtRUopJmL8Lipttc5cageLHVuNVhGbpOWSDAvGwN9ZAesRhUFvSPY56uQ
	Pp400urDf62hJREqiaZ17cVy96Qnt+SOHBX0K+5IxqDaB7otTiayYJONpXpvj/moElJZPwhAuGklm
	09vO+6CbK0X9hAgSpR+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3cKc-00DCfi-Sc; Wed, 14 Jul 2021 10:41:34 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3cJG-00DCD9-0p; Wed, 14 Jul 2021 10:40:11 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 5C4CB352; Wed, 14 Jul 2021 12:40:08 +0200 (CEST)
Date: Wed, 14 Jul 2021 12:40:06 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: will@kernel.org, heiko@sntech.de, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v3] iommu/rockchip: Fix physical address decoding
Message-ID: <YO6/BuhfxO3R5H0y@8bytes.org>
References: <20210712101232.318589-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210712101232.318589-1-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_034010_276617_E53ED94E 
X-CRM114-Status: UNSURE (   8.99  )
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

On Mon, Jul 12, 2021 at 12:12:32PM +0200, Benjamin Gaignard wrote:
> Restore bits 39 to 32 at correct position.
> It reverses the operation done in rk_dma_addr_dte_v2().
> 
> Fixes: c55356c534aa ("iommu: rockchip: Add support for iommu v2")
> 
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> version 3:
>  - change commit header to match with IOMMU tree convention

Applied, thanks.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
