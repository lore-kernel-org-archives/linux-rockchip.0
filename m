Return-Path: <SRS0=fNsx=LT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F65CC2B9F4
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jun 2021 14:32:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5C99B61956
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jun 2021 14:32:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5C99B61956
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=7FaAjAE3QGTNovOQfpd68sUJmIowuZxpIWkitdNRaYE=; b=YTs8uGu2+JHyHV
	fDkkUyVf8i3AelqmOIASuA8RY1qaT8ZbqBTmAatoWSVXmLJ1C/JX00nh6E406EZ0ZSDh9E5K2dsKy
	y2j3K900U4FN71yY6+r97p0Q+xLpHcM47aTdlqtRyCdv8bxgitaQpJcCu4/lQh1qM29aCJGhlnsI8
	UMymHLgioB+4opfz37eHLmWc/RhQgxmWsx2rt4dMgugry21JRgLJC58CBahdUTJZQo+FmKHaKK8qI
	j/R0Gxvhox2/yd652ugiKJUonrP1T00V+n3s5zdpaxPz0vgs6EJf3syxlGs8UZt/SQeJ3PFhiM2IL
	1iMnFQ5+dq60pURjYgdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwmsz-001xQ6-Hs; Fri, 25 Jun 2021 14:32:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwmsn-001xOM-5l; Fri, 25 Jun 2021 14:32:38 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id A6DCB61953;
 Fri, 25 Jun 2021 14:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624631556;
 bh=2Rsr+frvlcCR/IKRspsnz6sq84iOA0m+JQ4nu1bYRWY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=JFEbQu3OYlq7C7dwQ8IB+5DV/KhwM33GLo/pQSDGvu69txLQYrnZWwANbYWJ002R+
 0nk7eSMXPs+nDjIVwzqAMvV8Os6cy99lHC0D9QG6JZyJI1w5iE+WCoMpgxTImv4RHH
 FlmXeTju1AUiQ87JOtSNEfio7CmstAtjC23VHFzP0jDWVZGcOlHJ/CS4w9ViC8CZs9
 86rCNNOqeHhULLa1ak4Nb+2GX8qnfiFZlz/VvcQjr7w2XAaO+oQS9Cw+0ojazRbMMt
 W1BLmXGbTStGPUJA9iHlZ2kFXbHpJdse1vwiGCwCKEW2LT6goSl07skkmVTPafRRy5
 rrcRgt1Mu/G6A==
Date: Fri, 25 Jun 2021 09:32:35 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Javier Martinez Canillas <javierm@redhat.com>
Cc: linux-kernel@vger.kernel.org, Peter Robinson <pbrobinson@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Michal Simek <michal.simek@xilinx.com>,
 Ley Foon Tan <ley.foon.tan@intel.com>, rfi@lists.rocketboards.org,
 Jingoo Han <jingoohan1@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org
Subject: Re: [PATCH v2] PCI: rockchip: Avoid accessing PCIe registers with
 clocks gated
Message-ID: <20210625143235.GA3624355@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5bee3702-595b-f57b-f962-28644b7e646f@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_073237_271611_464EA408 
X-CRM114-Status: GOOD (  14.28  )
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

On Fri, Jun 25, 2021 at 09:09:36AM +0200, Javier Martinez Canillas wrote:
> On 6/25/21 12:40 AM, Bjorn Helgaas wrote:

> > I think this is also an issue with the following other drivers.  They all
> > set the handler to something that uses an IRQ domain before they
> > actually initialize the domain:
> 
> Yes, I agreed with your assessment and also noticed that others drivers have
> similar issues. I just don't have any of those platforms to try to reproduce
> the bugs and test a fix.

Even if you don't have other platforms for testing, I'm thrilled when
folks point out issues with them and (given time and inclination) post
patches for them.

I'd much rather fix *all* instances of the problem than just one, even
if we can't test them all.  Frequently driver maintainers will review
and test patches for their hardware even if we can't.

Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
