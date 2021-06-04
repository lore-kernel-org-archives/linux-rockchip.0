Return-Path: <SRS0=fkR5=K6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59C18C4708F
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Jun 2021 14:57:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2AB1B6140F
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Jun 2021 14:57:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2AB1B6140F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=8bytes.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rK2B4BNpsgw8NmchmtuKeGgq0b+vYEOO7Kix5kuzqaA=; b=y2F8nlJxmOgYEO
	dqxIkGIeaczTh9wRFew1YFcSc6ck6rHeloKF/Lkl1WvGuWCr1bDlGjOCpxJ5oV6QYkSHvGVyIxmhC
	NEG8A/SdKf5mad4s5J/yFq+hoKSeb3LmAxIczoVYi/7ieHq2SjUxc2KirZUdXMmFMpmRt3d0QqDYN
	1lir8J5IbzgCGnqaZ/IjR/jMPt3VpgHHVK3l7ekd2HLIKUD6+EETtBJJzLo9JvRIzC+h6hnO0jTGG
	OBW/WZxWVr2Cli4njFZH4UrK1mMS1/7qie5h34KsyAhDRvVRrirJg8aNg14fBy+SUwshi4NsQz4X8
	/WIz0Ww+zEw6vr+oKw7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lpBG1-00E1ss-98; Fri, 04 Jun 2021 14:57:09 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lpBFo-00E1oH-3U; Fri, 04 Jun 2021 14:56:57 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id B3ED73A9; Fri,  4 Jun 2021 16:56:54 +0200 (CEST)
Date: Fri, 4 Jun 2021 16:56:53 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: will@kernel.org, robh+dt@kernel.org, heiko@sntech.de,
 xxm@rock-chips.com, robin.murphy@arm.com,
 iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH v7 0/4] Add IOMMU driver for rk356x
Message-ID: <YLo/NZaPZ6snoG2X@8bytes.org>
References: <20210525121551.606240-1-benjamin.gaignard@collabora.com>
 <YLo+wa5Z3KILTgrR@8bytes.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YLo+wa5Z3KILTgrR@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210604_075656_318975_F95BF121 
X-CRM114-Status: UNSURE (   9.46  )
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

On Fri, Jun 04, 2021 at 04:54:58PM +0200, Joerg Roedel wrote:
> On Tue, May 25, 2021 at 02:15:47PM +0200, Benjamin Gaignard wrote:
> > Benjamin Gaignard (4):
> >   dt-bindings: iommu: rockchip: Convert IOMMU to DT schema
> >   dt-bindings: iommu: rockchip: Add compatible for v2
> >   iommu: rockchip: Add internal ops to handle variants
> 
> Applied patches 1-3, thanks.

Hmm, no, unapplied. Your separate patch 4 came before the kbuild-bot
reports. Can you fix those please and submit a v8?

Thanks,

	Joerg

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
