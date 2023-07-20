Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 571C8EB64DA
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jul 2023 06:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R2o1gFDVDk33JlR0fPA3TnJK4TxdEXyFTCgBaKFoKmI=; b=AICdq56cfWJFBM
	PR6KZwhslcS8GVj6nI+SXQwrHjl8bAXt+udY4vgGgXKKYWzOJeq+PQb9xzt1WWNedx24ldqAqu3xc
	e1JRbZp1QfUTsGuQd2zMofU165GKRzE4u5vu3yUw4MhSC3YiH0WjVL4oKKlW7wQH7d4dm/oZ5ShqB
	ZvklvoMDx3itHGdY5lXWL78gKzPhtjwmmrBR7U2WUwzdMrkVq1rs85osDQPWYou7pjhCnyaHlQ0Gw
	91Ghj/19l/eF4czTfswRInj2ycJ8/ODMgyA3bQuT80G6PjKRjQb+m3rTkp1imCMqO6OUto3pEuiEr
	chuyqe4f7wPTWtfvNtow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMMtF-009tss-1v;
	Thu, 20 Jul 2023 06:11:53 +0000
Received: from mga01.intel.com ([192.55.52.88])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMMtC-009tqt-1Q;
	Thu, 20 Jul 2023 06:11:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1689833510; x=1721369510;
  h=message-id:date:mime-version:cc:subject:to:references:
   from:in-reply-to:content-transfer-encoding;
  bh=Sp/D0IoRlThT3xMqxSlsQoLksVxUt7yQUAZqjq0Puqs=;
  b=mlSR1PTt2uvg2QOy5q2YE0SmXiyAOpzfgFvoLM4mEyNdUZdsZM8HLlme
   +T57szokxlzXTgS3Q4TZqq63flCm7ys/lFnt04jp5iWhwYedo2IszwDzj
   +Rnqq35DYBzY0sFMOV+1hfnn4+rIzEhoK+Q9XFm+JTkTwXQ9zGXQeit83
   ve74LUdCi96+37mU5w+mWE/GZfezJPDhA0gJiVjJOWZSyCggq/tSQFUOM
   TlabAMVH1H4Wi8qzLTy0XHVTc9J2kKUD26khb6t163R8kZXiv1DWUypNJ
   aFetjCGhm3y9VlGjz2UXgxCPrMYG5L9sPhAkXDsuWACgIpsJOogIguP5e
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="397516205"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; 
   d="scan'208";a="397516205"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Jul 2023 23:11:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="898170973"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; 
   d="scan'208";a="898170973"
Received: from blu2-mobl.ccr.corp.intel.com (HELO [10.252.191.114]) ([10.252.191.114])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Jul 2023 23:11:36 -0700
Message-ID: <c7dd16ba-e4ab-b531-4a31-d310d1f943cc@linux.intel.com>
Date: Thu, 20 Jul 2023 14:11:32 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Cc: baolu.lu@linux.intel.com, Alex Williamson <alex.williamson@redhat.com>
Subject: Re: [PATCH 01/10] iommu: Remove useless group refcounting
To: Jason Gunthorpe <jgg@nvidia.com>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 David Woodhouse <dwmw2@infradead.org>, Heiko Stuebner <heiko@sntech.de>,
 iommu@lists.linux.dev, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Joerg Roedel <joro@8bytes.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
 Orson Zhai <orsonzhai@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>,
 Will Deacon <will@kernel.org>, Chunyan Zhang <zhang.lyra@gmail.com>
References: <1-v1-3c8177327a47+256-iommu_group_locking_jgg@nvidia.com>
Content-Language: en-US
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <1-v1-3c8177327a47+256-iommu_group_locking_jgg@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230719_231150_488809_8D555EC8 
X-CRM114-Status: GOOD (  15.34  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2023/7/19 3:05, Jason Gunthorpe wrote:
> Several functions obtain the group reference and then release it before
> returning. This gives the impression that the refcount is protecting
> something for the duration of the function.
> 
> In truth all of these functions are called in places that know a device
> driver is probed to the device and our locking rules already require
> that dev->iommu_group cannot change while a driver is attached to the
> struct device.
> 
> If this was not the case then this code is already at risk of triggering
> UAF as it is racy if the dev->iommu_group is concurrently going to
> NULL/free. refcount debugging will throw a WARN if kobject_get() is
> called on a 0 refcount object to highlight the bug.
> 
> Remove the confusing refcounting and leave behind a comment about the
> restriction.
> 
> Signed-off-by: Jason Gunthorpe<jgg@nvidia.com>

Reviewed-by: Lu Baolu <baolu.lu@linux.intel.com>

Best regards,
baolu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
