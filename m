Return-Path: <SRS0=DwMt=J2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDC38C433ED
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Apr 2021 06:41:34 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 48CFA613CE
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Apr 2021 06:41:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 48CFA613CE
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=infradead.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7r8A/RkKjKbW/CE0jhaQMpbI8FHqsC2szxnSbACLRV8=; b=G+62bLUk1yJAAAq5/a6Gz760P
	7ozIBYeyq9gwWAhrQ4NEhDO+A7rmzN/Uiy+sNUexLZTsCdGjKElDkFNetrNVYNBUj1/xFa/VekDr8
	b/lSM/Ymh6ThTuB+xtQeg6ZJvHB8sDxGgD0rKYDppY+lJd1QyItj1gxbjYI3YwFO0cHk/1olI+wQg
	JWsrP2cCBUgseNBFSa6GnPrnFgyCj+NTA4RNihzmPlpcYMGt0HH0GNUxASR2i0+JK/g7kjOdN3b8y
	uuhrTQ4HgUlfnIH7XNqW75yhRVjxtUro42gxQGht2GpMaw959S26BO1QSSxGXMlKlAKvsv0KcLsyV
	NcQI5sbJA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lc0Mb-005612-IA; Thu, 29 Apr 2021 06:41:29 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lc0MZ-00560p-8a
 for linux-rockchip@desiato.infradead.org; Thu, 29 Apr 2021 06:41:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=eectPFpfXLXiECozRv565wMzMoLfV81R/OySRcsjIx4=; b=uwuYZy6an6Yzrtggc09lLu7dx/
 P7MoqcJRxJWnckM11s38h5AIFZ/xy9t2z7FSvqMe8jYQZ0qQa7fCl/W1IQiSXbKQoV/z+2Qz8EnuN
 ABHiL6eAqLUMBCFaF4VBrCLgjnCd4CquwthzqQbGRxGM3xkulwS75BVpVBUFO+a3vJwZMqckDC4nv
 ZvxQqk3jUkbBmgm0VGFpd2pBuhYR03g+I4g5v2FV2r67B3gKj2bxTM+JFneIQfPZk9bGS6jSI8nQ9
 HHFu5VGYvymMmnvvXidLWXh5Y2TqKxgFqFu5dpJWTCCllyR7JO3/LV22uGXSvMpFwOy0A6g2w0RmU
 AGENQd5Q==;
Received: from hch by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lc0MP-009ILi-Rb; Thu, 29 Apr 2021 06:41:19 +0000
Date: Thu, 29 Apr 2021 07:41:17 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Johan Jonker <jbx6244@gmail.com>, Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v7] PCI: rockchip: Add Rockchip RK356X host controller
 driver
Message-ID: <20210429064117.GA2214470@infradead.org>
References: <20210414070325.924789-1-xxm@rock-chips.com>
 <CAMdYzYqf3FhYrFR1DGrP=_CbNpq5uB+J-m42Mv=c6Pu71Jcxww@mail.gmail.com>
 <5af0f6f8-bc29-f50e-ca14-94049b7d17ed@rock-chips.com>
 <CAMdYzYr=i7X22-38VyY-GQLWs+aV+ZcWwO_uDymFxmaNO8SpmA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMdYzYr=i7X22-38VyY-GQLWs+aV+ZcWwO_uDymFxmaNO8SpmA@mail.gmail.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
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

On Wed, Apr 28, 2021 at 09:42:37PM -0400, Peter Geis wrote:
> I have functional MSI support, some devices do not support MSIs
> however and need legacy INTx.
> I'd like to point out that the downstream patch does not actually work
> on downstream.
> The GFP_DMA32 flag is discarded by the slab allocator, this breaks MSI
> allocation when the PCIe driver probes.
> I hacked together my own version which works but would definitely not
> be accepted for submission.

Seriously folks.  Never, ever use GFP_DMA or GFP_DMA32 in actual driver
code.  They fundamentally don't do what you want.  Devices as a rule of
thumb do care about DMA addressability, not CPU addressability, so they
must use the DMA API to allocate the memory, and the dma mask to control
addressability.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
