Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8F46C28B30
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Mar 2025 08:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tc0qxfTetjKWYzXVOiXqSRpaMZKYLqzKiHPDEWtrs30=; b=2NEskZ32EyvsHN
	FoLKxUZVa0dW4wkuZTzhYmFActk7XJx1Nc/MY/+gcEor9Ew+qjkxBYNv7KtlBdJeip+nNnxnMPLoT
	jmAVhFYxOLUJBk0uMwe3EXf4M2DnAXvOSEX5Y4ffp36hJ/7nBehRNTmz7Bt8K5EoVfJkkwo4C5H9O
	Aa4TFRaa+62ZLEb0Pg2NDXOpf5wJrtIhhFLeae2ZvUjnqzlgkFJ8EoNgj/iWiBsoIgyve0BU4Vs5J
	xV6UubLcsXZyOGEoUC6gHjMMz3jC3lSet5F6VVbUfIq7QAgXh0OHYnlj2XDCvsK4w46nLJEP5wHF5
	HkPsmMlwDBEcRYrkjncw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvAqJ-0000000BTbw-1UDb;
	Thu, 20 Mar 2025 08:01:31 +0000
Received: from mail.8bytes.org ([85.214.250.239])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvAni-0000000BTMm-1biP;
	Thu, 20 Mar 2025 07:58:51 +0000
Received: from 8bytes.org (p4ffe03ae.dip0.t-ipconnect.de [79.254.3.174])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.8bytes.org (Postfix) with ESMTPSA id 4D23243205;
	Thu, 20 Mar 2025 08:58:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=8bytes.org;
	s=default; t=1742457524;
	bh=//jdBfnXwxoZZQ2/rQLQjvxB+8O3hzDtgcpEsDOaSFE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aP+qd4UWA/ptWrgYN0yl9WJNgNxr6zQkaY4qJCrqxnVFSjDX4+dHy9o467D+Fc2Mr
	 PKouyAiZ7KGNXkipmD9vdHKH4LBqzPJqbhmmtlK8HtIWdK36EBk4L4+0briIhkLp9z
	 zx9XexvVs4ekH4ZIocTRMlxHms7IrxiVwOhnCNvcNiyk2NsIYcfpMJLYXdGJpUO8qM
	 Hp/SPk2FW14d7AEZJaOkYxBx9AzQZIXM9iHtaKviS51/ORxZWRsuEpq+Z1goSx8P01
	 wpoGdn0LTpli76eLMMP+YLTSDqieqBStvAR5CIjM+QKnE1a+XVAHYZjKfbFAQq8pvR
	 MqhU9uuXCig3w==
Date: Thu, 20 Mar 2025 08:58:43 +0100
From: Joerg Roedel <joro@8bytes.org>
To: Robin Murphy <robin.murphy@arm.com>
Cc: will@kernel.org, iommu@lists.linux.dev,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, heiko@sntech.de
Subject: Re: [PATCH 0/3] Rockchip IOMMU fixes
Message-ID: <Z9vKs63e1s73MauO@8bytes.org>
References: <cover.1741886382.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1741886382.git.robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_005850_637439_7078D63A 
X-CRM114-Status: GOOD (  13.52  )
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

On Thu, Mar 13, 2025 at 05:31:03PM +0000, Robin Murphy wrote:
> Hi all,
> 
> I was expecting my DT probing change to flush out issues, and it seems
> some weaknesses in rockchip-iommu were the first to show. The first two
> patches here get things working again for me on my RK3399 NanoPC-T4
> (with a console on HDMI exercising the VOP MMU), the 3rd patch just
> finishes the cleanup since I was there and could test it.
> 
> Thanks,
> Robin.
> 
> Robin Murphy (3):
>   iommu/rockchip: Allocate per-device data sensibly
>   iommu/rockchip: Register in a sensible order
>   iommu/rockchip: Retire global dma_dev workaround
> 
>  drivers/iommu/rockchip-iommu.c | 61 +++++++++++++++-------------------
>  1 file changed, 26 insertions(+), 35 deletions(-)

Applied, thanks.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
